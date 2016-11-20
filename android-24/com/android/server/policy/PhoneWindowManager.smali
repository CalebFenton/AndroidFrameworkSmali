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

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

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

.field mNavigationBarOnBottom:Z

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

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
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
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->notifyScreenshotError()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;JZI)V
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

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenuInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p1, "screenshotType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

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

.method static synthetic -wrap20(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Landroid/view/WindowManagerPolicy$InputConsumer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 250
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 251
    const/4 v1, 0x4

    #@6
    .line 250
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 252
    const/16 v1, 0xd

    #@c
    .line 250
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
    .line 280
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1d
    .line 281
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1f
    .line 282
    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    #@22
    const/16 v2, 0x40

    #@24
    .line 281
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@27
    .line 283
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@29
    .line 284
    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    #@2c
    const/16 v2, 0x41

    #@2e
    .line 283
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@31
    .line 285
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@33
    .line 286
    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    #@36
    const/16 v2, 0xcf

    #@38
    .line 285
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3b
    .line 287
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@3d
    .line 288
    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    #@40
    const/16 v2, 0xd0

    #@42
    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@45
    .line 289
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@47
    .line 290
    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    #@4a
    const/16 v2, 0xd1

    #@4c
    .line 289
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@4f
    .line 291
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@51
    .line 292
    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    #@54
    const/16 v2, 0xd2

    #@56
    .line 291
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@59
    .line 547
    new-instance v0, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5e
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@60
    .line 548
    new-instance v0, Landroid/graphics/Rect;

    #@62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@65
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@67
    .line 549
    new-instance v0, Landroid/graphics/Rect;

    #@69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6c
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@6e
    .line 550
    new-instance v0, Landroid/graphics/Rect;

    #@70
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@73
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@75
    .line 551
    new-instance v0, Landroid/graphics/Rect;

    #@77
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@7c
    .line 552
    new-instance v0, Landroid/graphics/Rect;

    #@7e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@81
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@83
    .line 553
    new-instance v0, Landroid/graphics/Rect;

    #@85
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@88
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@8a
    .line 554
    new-instance v0, Landroid/graphics/Rect;

    #@8c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8f
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@91
    .line 555
    new-instance v0, Landroid/graphics/Rect;

    #@93
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@96
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@98
    .line 556
    new-instance v0, Landroid/graphics/Rect;

    #@9a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9d
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@9f
    .line 2960
    const/16 v0, 0x7d3

    #@a1
    .line 2961
    const/16 v1, 0x7da

    #@a3
    .line 2959
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
    .line 303
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@f
    .line 317
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@16
    .line 350
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@18
    .line 353
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a
    .line 355
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c
    .line 356
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@1e
    .line 357
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    #@20
    .line 358
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@22
    .line 359
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@24
    .line 360
    new-array v0, v3, [I

    #@26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@28
    .line 361
    new-array v0, v3, [I

    #@2a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@2c
    .line 362
    new-array v0, v3, [I

    #@2e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@30
    .line 363
    new-array v0, v3, [I

    #@32
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@34
    .line 365
    new-instance v0, Landroid/util/LongSparseArray;

    #@36
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@3b
    .line 369
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@3d
    .line 373
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@42
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@44
    .line 380
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    #@46
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@49
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@4b
    .line 390
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d
    .line 391
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4f
    .line 413
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@51
    .line 414
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@53
    .line 424
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@55
    .line 439
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@57
    .line 441
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@59
    .line 442
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@5b
    .line 446
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@5d
    .line 466
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@5f
    .line 467
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@61
    .line 468
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@63
    .line 469
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@65
    .line 472
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@67
    .line 529
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@69
    .line 531
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@6b
    .line 534
    new-instance v0, Landroid/graphics/Rect;

    #@6d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@72
    .line 535
    new-instance v0, Landroid/graphics/Rect;

    #@74
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@77
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@79
    .line 536
    new-instance v0, Landroid/graphics/Rect;

    #@7b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    #@80
    .line 537
    new-instance v0, Landroid/graphics/Rect;

    #@82
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@85
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    #@87
    .line 541
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@89
    .line 545
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@8b
    .line 562
    new-instance v0, Ljava/util/HashSet;

    #@8d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@90
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@92
    .line 563
    new-instance v0, Ljava/util/HashSet;

    #@94
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@97
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@99
    .line 568
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@9b
    .line 577
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@9d
    .line 635
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@9f
    .line 636
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@a1
    .line 637
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@a3
    .line 638
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@a5
    .line 640
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@a7
    .line 641
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@a9
    .line 642
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@ab
    .line 643
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@ad
    .line 695
    new-instance v0, Landroid/util/SparseArray;

    #@af
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@b2
    .line 694
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@b4
    .line 698
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    #@b6
    const/16 v1, 0x64

    #@b8
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    #@bb
    .line 697
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    #@bd
    .line 700
    new-instance v0, Landroid/util/MutableBoolean;

    #@bf
    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    #@c2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@c4
    .line 794
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    #@c6
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@c9
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@cb
    .line 887
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    #@cd
    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    #@d0
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@d2
    .line 889
    new-instance v0, Lcom/android/server/policy/BarController;

    #@d4
    const-string/jumbo v1, "NavigationBar"

    #@d7
    .line 890
    const/high16 v2, 0x8000000

    #@d9
    .line 891
    const/high16 v3, 0x20000000

    #@db
    .line 892
    const/high16 v4, -0x80000000

    #@dd
    .line 893
    const/4 v5, 0x2

    #@de
    .line 894
    const/high16 v6, 0x8000000

    #@e0
    .line 895
    const v7, 0x8000

    #@e3
    .line 889
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    #@e6
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@e8
    .line 1334
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    #@ea
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@ed
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@ef
    .line 1358
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@f1
    invoke-direct {v0, p0, v8}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;)V

    #@f4
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@f6
    .line 1487
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    #@f8
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@fb
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@fd
    .line 3722
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    #@ff
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@102
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    #@104
    .line 3793
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    #@106
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@109
    .line 3792
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@10b
    .line 5352
    new-instance v0, Ljava/lang/Object;

    #@10d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@110
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@112
    .line 5353
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@114
    .line 5355
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    #@116
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@119
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@11b
    .line 5987
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    #@11d
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@120
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@122
    .line 6008
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    #@124
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@127
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@129
    .line 6023
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    #@12b
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@12e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@130
    .line 6044
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    #@132
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@135
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@137
    .line 6768
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@139
    .line 6881
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
    .line 6948
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 6949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 6950
    const/4 v1, 0x3

    #@f
    .line 6951
    const/4 v4, 0x1

    #@10
    .line 6949
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@13
    .line 6956
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v0

    #@16
    .line 6957
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v0

    #@1a
    .line 6947
    return-void

    #@1b
    .line 6952
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@1d
    if-nez v0, :cond_0

    #@1f
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 6953
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@25
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    #@28
    goto :goto_0

    #@29
    .line 6956
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
    .line 4270
    and-int/lit16 v0, p1, 0x100

    #@2
    if-eqz v0, :cond_3

    #@4
    .line 4273
    and-int/lit16 v0, p2, 0x400

    #@6
    if-eqz v0, :cond_4

    #@8
    .line 4274
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
    .line 4275
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
    .line 4276
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
    .line 4277
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
    .line 4269
    :cond_3
    :goto_0
    return-void

    #@31
    .line 4279
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
    .line 4280
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
    .line 4281
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
    .line 4282
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
    .locals 1

    #@0
    .prologue
    .line 7510
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@2
    return v0
.end method

.method private static awakenDreams()V
    .locals 2

    #@0
    .prologue
    .line 2927
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@3
    move-result-object v0

    #@4
    .line 2928
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    #@6
    .line 2930
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2926
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2931
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
    .line 1255
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@3
    .line 1257
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 1254
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 1261
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string/jumbo v1, "android.intent.action.VOICE_ASSIST"

    #@e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 1262
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@13
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    goto :goto_0

    #@17
    .line 1257
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
    .line 3893
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v4, v5, v5, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@6
    .line 3894
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    #@b
    .line 3895
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@10
    .line 3896
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@12
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@14
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@16
    sub-int v1, v4, v5

    #@18
    .line 3897
    .local v1, "leftInset":I
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@1a
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1c
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@1e
    sub-int v3, v4, v5

    #@20
    .line 3898
    .local v3, "topInset":I
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@22
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@24
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@26
    sub-int v2, v4, v5

    #@28
    .line 3899
    .local v2, "rightInset":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@2e
    sub-int v0, v4, v5

    #@30
    .line 3900
    .local v0, "bottomInset":I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    .line 3892
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    #@0
    .prologue
    .line 1893
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
    .line 4289
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
    .line 4291
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
    .line 4292
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    #@1b
    .line 4293
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    #@1d
    :goto_2
    return v3

    #@1e
    .line 4289
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
    .line 4291
    goto :goto_1

    #@22
    .restart local v0    # "altFocusableIm":Z
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    move v3, v4

    #@23
    .line 4293
    goto :goto_2
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    #@0
    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1142
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@7
    .line 1143
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0x12

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 1140
    :cond_0
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    #@0
    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1135
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@7
    .line 1136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0xe

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 1133
    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    #@0
    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 1330
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 3616
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3617
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@7
    .line 3618
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@a
    move-result-object v0

    #@b
    .line 3619
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@d
    .line 3620
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    #@10
    .line 3615
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    return-void
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    #@0
    .prologue
    .line 7488
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@2
    or-int/lit8 v0, v1, 0x7

    #@4
    .line 7489
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 7490
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@a
    .line 7491
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    #@f
    .line 7487
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
    .line 7458
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@2
    if-nez v0, :cond_3

    #@4
    .line 7459
    if-nez p2, :cond_0

    #@6
    if-nez p3, :cond_0

    #@8
    if-eqz p4, :cond_1

    #@a
    .line 7460
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    #@d
    move-result p1

    #@e
    .line 7472
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_2

    #@14
    .line 7473
    const v0, 0x7fffffff

    #@17
    and-int/2addr p1, v0

    #@18
    .line 7475
    :cond_2
    return p1

    #@19
    .line 7462
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 7463
    if-eqz p4, :cond_4

    #@20
    .line 7464
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    #@23
    move-result p1

    #@24
    goto :goto_0

    #@25
    .line 7465
    :cond_4
    if-eqz p3, :cond_5

    #@27
    .line 7466
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    #@2a
    move-result p1

    #@2b
    goto :goto_0

    #@2c
    .line 7468
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
    .line 2024
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2025
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@9
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@c
    .line 2026
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
    .line 2027
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@19
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@1c
    .line 2028
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@1e
    .line 2023
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    #@0
    .prologue
    .line 3655
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 3656
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 3657
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    #@9
    .line 3654
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5884
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5885
    return-void

    #@7
    .line 5887
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a
    move-result v7

    #@b
    .line 5888
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    #@d
    .line 5890
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 5891
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    #@16
    .line 5883
    :cond_1
    :goto_0
    return-void

    #@17
    .line 5894
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@1a
    move-result-object v0

    #@1b
    .line 5895
    const-string/jumbo v5, "WindowManager"

    #@1e
    .line 5894
    const/4 v1, 0x1

    #@1f
    .line 5895
    const/high16 v2, -0x80000000

    #@21
    .line 5894
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 5896
    :catch_0
    move-exception v6

    #@26
    .line 5897
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@29
    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    #@2c
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0

    #@30
    .line 5902
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@33
    move-result-object v0

    #@34
    .line 5903
    const-string/jumbo v5, "WindowManager"

    #@37
    .line 5902
    const/4 v1, -0x1

    #@38
    .line 5903
    const/high16 v2, -0x80000000

    #@3a
    .line 5902
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 5904
    :catch_1
    move-exception v6

    #@3f
    .line 5905
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@42
    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    #@45
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_0

    #@49
    .line 5910
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_1

    #@4f
    .line 5911
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@52
    move-result-object v0

    #@53
    .line 5913
    const-string/jumbo v5, "WindowManager"

    #@56
    .line 5912
    const/16 v1, 0x65

    #@58
    .line 5913
    const/high16 v2, -0x80000000

    #@5a
    .line 5911
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@5d
    goto :goto_0

    #@5e
    .line 5915
    :catch_2
    move-exception v6

    #@5f
    .line 5916
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@62
    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    #@65
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0

    #@69
    .line 5891
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
    .line 1268
    if-eqz p1, :cond_0

    #@2
    .line 1269
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    #@5
    .line 1267
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
    .line 7322
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
    .line 1997
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1998
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    #@7
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@e
    .line 1999
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    #@14
    .line 2000
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@16
    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    #@19
    .line 2003
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    #@1b
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d
    .line 2004
    const/16 v2, 0x518

    #@1f
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    .line 2008
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 2009
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@29
    const/high16 v3, 0x1000000

    #@2b
    or-int/2addr v2, v3

    #@2c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2e
    .line 2010
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@30
    or-int/lit8 v2, v2, 0x2

    #@32
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@34
    .line 2013
    :cond_0
    const/4 v2, -0x3

    #@35
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@37
    .line 2014
    const-string/jumbo v2, "PointerLocation"

    #@3a
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3d
    .line 2016
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3f
    const-string/jumbo v3, "window"

    #@42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 2015
    check-cast v1, Landroid/view/WindowManager;

    #@48
    .line 2017
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4a
    or-int/lit8 v2, v2, 0x2

    #@4c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4e
    .line 2018
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@50
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@53
    .line 2019
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@55
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@57
    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@5a
    .line 1996
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    #@0
    .prologue
    .line 6164
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6165
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
    .line 6166
    return-void

    #@d
    .line 6169
    :cond_1
    const/4 v0, 0x1

    #@e
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 6171
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@16
    const/4 v2, 0x6

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 6173
    :cond_2
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 6178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@22
    .line 6179
    const-wide/16 v2, 0x3e8

    #@24
    .line 6178
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    #@27
    .line 6163
    return-void

    #@28
    .line 6164
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
    .line 1126
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@3
    .line 1127
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@5
    .line 1128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    .line 1125
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    #@0
    .prologue
    .line 6250
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 6253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v3

    #@7
    .line 6257
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 6265
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
    .line 6266
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 6271
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@20
    .line 6272
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    #@21
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@23
    .line 6273
    const/4 v3, 0x1

    #@24
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@26
    .line 6277
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@28
    if-nez v3, :cond_5

    #@2a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 6278
    const/4 v3, 0x1

    #@2f
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@31
    .line 6279
    const/4 v0, 0x1

    #@32
    .line 6280
    .local v0, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 6281
    const/4 v3, 0x0

    #@37
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@39
    .line 6282
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    :cond_1
    :goto_0
    monitor-exit v4

    #@3d
    .line 6289
    if-eqz v1, :cond_2

    #@3f
    .line 6290
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    #@42
    .line 6293
    :cond_2
    if-eqz v0, :cond_3

    #@44
    .line 6295
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@46
    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@49
    .line 6249
    :cond_3
    :goto_1
    return-void

    #@4a
    .line 6250
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
    .line 6267
    return-void

    #@4f
    .line 6285
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_5
    const/4 v0, 0x0

    #@50
    .restart local v0    # "enableScreen":Z
    goto :goto_0

    #@51
    .line 6257
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    #@52
    monitor-exit v4

    #@53
    throw v3

    #@54
    .line 6296
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
    .line 6238
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6239
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
    .line 6240
    return-void

    #@d
    .line 6243
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
    .line 6246
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    #@14
    .line 6237
    return-void

    #@15
    .line 6238
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
    .line 7326
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v2

    #@8
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@a
    .line 7327
    const/high16 v3, 0x20000

    #@c
    .line 7326
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
    .line 2948
    const-string/jumbo v1, "audio"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 2947
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v0

    #@b
    .line 2949
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    #@d
    .line 2950
    const-string/jumbo v1, "WindowManager"

    #@10
    const-string/jumbo v2, "Unable to find IAudioService interface."

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 2952
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    #@0
    .prologue
    .line 2939
    const-string/jumbo v0, "dreams"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 2938
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
    .line 1411
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1412
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@7
    .line 1413
    const-string/jumbo v3, "hdmi_control"

    #@a
    .line 1412
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@10
    .line 1414
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    #@11
    .line 1415
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    #@13
    .line 1416
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@16
    move-result-object v0

    #@17
    .line 1418
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@19
    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    #@1c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@1e
    .line 1420
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
    .line 6696
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@4
    move-result-object v0

    #@5
    .line 6697
    .local v0, "ar":[I
    if-nez v0, :cond_0

    #@7
    .line 6698
    return-object v3

    #@8
    .line 6700
    :cond_0
    array-length v3, v0

    #@9
    new-array v2, v3, [J

    #@b
    .line 6701
    .local v2, "out":[J
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 6702
    aget v3, v0, v1

    #@11
    int-to-long v4, v3

    #@12
    aput-wide v4, v2, v1

    #@14
    .line 6701
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6704
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    #@0
    .prologue
    .line 1223
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1224
    const/4 v0, 0x3

    #@5
    return v0

    #@6
    .line 1226
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1227
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 1229
    :cond_1
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    #@0
    .prologue
    .line 2472
    and-int/lit8 v0, p2, 0xf

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 2473
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@7
    aget v0, v0, p1

    #@9
    return v0

    #@a
    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@c
    aget v0, v0, p1

    #@e
    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    #@0
    .prologue
    .line 2451
    and-int/lit8 v0, p2, 0xf

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 2452
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@7
    aget v0, v0, p1

    #@9
    return v0

    #@a
    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@c
    aget v0, v0, p1

    #@e
    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    #@0
    .prologue
    .line 1291
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1292
    const/4 v0, 0x3

    #@7
    return v0

    #@8
    .line 1294
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@a
    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    #@0
    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1325
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
    .line 1324
    const/high16 v1, 0x40200000    # 2.5f

    #@15
    mul-float/2addr v0, v1

    #@16
    float-to-long v0, v0

    #@17
    return-wide v0

    #@18
    .line 1327
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
    .line 3601
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3602
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
    .line 3604
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
    .line 1466
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1467
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@7
    .line 1468
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@a
    .line 1465
    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6302
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 6303
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 6304
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 6305
    return-void

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 6309
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 6311
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@14
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@17
    .line 6312
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@19
    .line 6301
    :cond_1
    return-void

    #@1a
    .line 6302
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
    .line 1446
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1447
    return-void

    #@7
    .line 1449
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@a
    .line 1450
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@d
    .line 1452
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@f
    packed-switch v0, :pswitch_data_0

    #@12
    .line 1460
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
    .line 1445
    :goto_0
    return-void

    #@2f
    .line 1454
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@32
    goto :goto_0

    #@33
    .line 1457
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@36
    goto :goto_0

    #@37
    .line 1452
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
    .line 1392
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    #@7
    .line 1396
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
    .line 1397
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@19
    .line 1398
    return-void

    #@1a
    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@1d
    .line 1390
    return-void
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1302
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
    .line 1298
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
    .line 3662
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3663
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3664
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3665
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    #@c
    .line 3661
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
    .line 3518
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    #@4
    move-result v0

    #@5
    .line 3519
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3520
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    #@c
    move-result-wide v2

    #@d
    .line 3522
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-nez v1, :cond_0

    #@13
    .line 3523
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 3526
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
    const/16 v12, 0xe

    #@2
    const/4 v7, 0x1

    #@3
    .line 1006
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v8

    #@9
    if-nez v8, :cond_0

    #@b
    .line 1007
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@10
    .line 1011
    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@12
    if-eqz v8, :cond_1

    #@14
    .line 1012
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@16
    const/16 v9, 0xd

    #@18
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    #@1b
    .line 1017
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1d
    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v10

    #@21
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@23
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@26
    move-result v9

    #@27
    .line 1017
    invoke-virtual {v8, p2, v10, v11, v9}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    #@2a
    move-result v5

    #@2b
    .line 1019
    .local v5, "panic":Z
    if-eqz v5, :cond_2

    #@2d
    .line 1020
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2f
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@31
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@34
    .line 1024
    :cond_2
    if-eqz p2, :cond_3

    #@36
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@38
    if-eqz v8, :cond_7

    #@3a
    .line 1032
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@3d
    move-result-object v6

    #@3e
    .line 1033
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    #@3f
    .line 1034
    .local v2, "hungUp":Z
    if-eqz v6, :cond_4

    #@41
    .line 1035
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_8

    #@47
    .line 1038
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@4a
    .line 1049
    .end local v2    # "hungUp":Z
    :cond_4
    :goto_1
    const-class v8, Lcom/android/server/GestureLauncherService;

    #@4c
    .line 1048
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/android/server/GestureLauncherService;

    #@52
    .line 1050
    .local v0, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v1, 0x0

    #@53
    .line 1051
    .local v1, "gesturedServiceIntercepted":Z
    if-eqz v0, :cond_5

    #@55
    .line 1053
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@57
    .line 1052
    invoke-virtual {v0, p1, p2, v8}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    #@5a
    move-result v1

    #@5b
    .line 1054
    .local v1, "gesturedServiceIntercepted":Z
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@5d
    iget-boolean v8, v8, Landroid/util/MutableBoolean;->value:Z

    #@5f
    if-eqz v8, :cond_5

    #@61
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@63
    if-eqz v8, :cond_5

    #@65
    .line 1055
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@67
    .line 1061
    .end local v1    # "gesturedServiceIntercepted":Z
    :cond_5
    if-nez v2, :cond_9

    #@69
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@6b
    if-nez v8, :cond_9

    #@6d
    .line 1062
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@6f
    .line 1061
    if-nez v8, :cond_9

    #@71
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@73
    .line 1063
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@75
    if-nez v8, :cond_6

    #@77
    .line 1064
    if-eqz p2, :cond_a

    #@79
    .line 1067
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@7c
    move-result v8

    #@7d
    if-eqz v8, :cond_6

    #@7f
    .line 1068
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@81
    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@84
    move-result-object v4

    #@85
    .line 1069
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    #@88
    .line 1070
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@8a
    .line 1071
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8c
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@93
    move-result-wide v8

    #@94
    .line 1070
    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@97
    .line 1004
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    :goto_3
    return-void

    #@98
    .line 1025
    .end local v0    # "gestureService":Lcom/android/server/GestureLauncherService;
    .end local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@9b
    move-result v8

    #@9c
    and-int/lit16 v8, v8, 0x400

    #@9e
    if-nez v8, :cond_3

    #@a0
    .line 1026
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@a2
    .line 1027
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@a5
    move-result-wide v8

    #@a6
    iput-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@a8
    .line 1028
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@ab
    goto :goto_0

    #@ac
    .line 1039
    .restart local v2    # "hungUp":Z
    .restart local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_8
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@ae
    and-int/lit8 v8, v8, 0x2

    #@b0
    if-eqz v8, :cond_4

    #@b2
    .line 1041
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@b5
    move-result v8

    #@b6
    .line 1039
    if-eqz v8, :cond_4

    #@b8
    if-eqz p2, :cond_4

    #@ba
    .line 1044
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->endCall()Z

    #@bd
    move-result v2

    #@be
    .local v2, "hungUp":Z
    goto :goto_1

    #@bf
    .end local v2    # "hungUp":Z
    .restart local v0    # "gestureService":Lcom/android/server/GestureLauncherService;
    :cond_9
    move v1, v7

    #@c0
    .line 1061
    goto :goto_2

    #@c1
    .line 1074
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@c4
    move-result-wide v8

    #@c5
    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@c8
    .line 1076
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@ca
    if-eqz v8, :cond_b

    #@cc
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@cf
    move-result v8

    #@d0
    if-eqz v8, :cond_b

    #@d2
    .line 1077
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@d4
    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@d7
    move-result-object v4

    #@d8
    .line 1078
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    #@db
    .line 1079
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@dd
    .line 1080
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@df
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@e2
    move-result-object v9

    #@e3
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@e6
    move-result-wide v10

    #@e7
    .line 1079
    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@ea
    .line 1081
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@ec
    goto :goto_3

    #@ed
    .line 1083
    .end local v4    # "msg":Landroid/os/Message;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@f0
    move-result v3

    #@f1
    .line 1085
    .local v3, "maxCount":I
    if-gt v3, v7, :cond_c

    #@f3
    .line 1086
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@f5
    goto :goto_3

    #@f6
    .line 1088
    :cond_c
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@f8
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
    .line 1096
    if-nez p3, :cond_1

    #@4
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@6
    .line 1097
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@8
    .line 1098
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@b
    .line 1099
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@e
    .line 1101
    if-nez v2, :cond_3

    #@10
    .line 1103
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@12
    add-int/lit8 v7, v7, 0x1

    #@14
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@16
    .line 1105
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@19
    move-result v3

    #@1a
    .line 1106
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@1d
    move-result-wide v0

    #@1e
    .line 1107
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@20
    if-ge v7, v3, :cond_2

    #@22
    .line 1110
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@24
    .line 1111
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
    .line 1110
    const/16 v10, 0xd

    #@2f
    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@32
    move-result-object v4

    #@33
    .line 1112
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@36
    .line 1113
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
    .line 1114
    return-void

    #@41
    .line 1096
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    #@42
    .local v2, "handled":Z
    goto :goto_0

    #@43
    .line 1118
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@45
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    #@48
    .line 1122
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@4b
    .line 1095
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
    .line 1306
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1307
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@9
    .line 1306
    if-eqz v2, :cond_0

    #@b
    .line 1307
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@d
    .line 1306
    if-eqz v2, :cond_0

    #@f
    .line 1308
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1305
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1309
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@17
    move-result-wide v0

    #@18
    .line 1310
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@1a
    add-long/2addr v2, v6

    #@1b
    cmp-long v2, v0, v2

    #@1d
    if-gtz v2, :cond_0

    #@1f
    .line 1311
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@21
    add-long/2addr v2, v6

    #@22
    cmp-long v2, v0, v2

    #@24
    if-gtz v2, :cond_0

    #@26
    .line 1313
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@28
    .line 1314
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@2b
    .line 1315
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@2d
    invoke-virtual {v2, v4}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@30
    .line 1316
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

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 6653
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
    .line 5025
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4
    if-nez v1, :cond_0

    #@6
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@8
    if-nez v1, :cond_0

    #@a
    .line 5026
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 5027
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@10
    if-ne v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 5025
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
    .line 7164
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 7165
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    #@b
    .line 7164
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
    .line 2247
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2253
    return v1

    #@6
    .line 2249
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
    .line 2251
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
    .line 2247
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
    .line 7496
    const/16 v0, 0x1800

    #@3
    .line 7497
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 7498
    and-int/lit8 v2, p1, 0x2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 7499
    and-int/lit16 v2, p1, 0x1800

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 7500
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@12
    move-result v1

    #@13
    .line 7497
    :cond_0
    return v1
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6338
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 6339
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
    .line 6649
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

.method private isNavigationBarOnBottom(II)Z
    .locals 2
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 4188
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    if-ge p1, p2, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private isRoundWindow()Z
    .locals 1

    #@0
    .prologue
    .line 1498
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
    .line 5239
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5240
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
    .line 5239
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
    .line 7159
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 7160
    const-string/jumbo v3, "theater_mode_on"

    #@b
    .line 7159
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
    .line 5784
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 5790
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 5788
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 5784
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
    .line 5802
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 5825
    return v0

    #@6
    .line 5807
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
    .line 5823
    :sswitch_1
    return v1

    #@e
    .line 5802
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
    .line 3563
    const-string/jumbo v2, "assist"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@6
    .line 3564
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3566
    return-void

    #@d
    .line 3568
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 3569
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v2, -0x80000000

    #@10
    if-le p2, v2, :cond_1

    #@12
    .line 3570
    new-instance v0, Landroid/os/Bundle;

    #@14
    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@17
    .line 3571
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    #@1a
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 3573
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
    .line 3574
    const/4 v3, 0x4

    #@2c
    .line 3573
    if-ne v2, v3, :cond_3

    #@2e
    .line 3576
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
    .line 3577
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3c
    move-result v3

    #@3d
    .line 3576
    invoke-virtual {v2, p1, v3, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@40
    .line 3562
    :cond_2
    :goto_0
    return-void

    #@41
    .line 3579
    :cond_3
    if-eqz p1, :cond_5

    #@43
    .line 3580
    if-nez v0, :cond_4

    #@45
    .line 3581
    new-instance v0, Landroid/os/Bundle;

    #@47
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@4a
    .line 3583
    :cond_4
    const/4 v2, 0x1

    #@4b
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4e
    .line 3585
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@51
    move-result-object v1

    #@52
    .line 3586
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_2

    #@54
    .line 3587
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
    .line 3543
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@5
    .line 3544
    const-string/jumbo v3, "assist"

    #@8
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@b
    .line 3547
    new-instance v1, Landroid/content/Intent;

    #@d
    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    #@10
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 3548
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@18
    .line 3552
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    #@1b
    move-result-object v2

    #@1c
    .line 3553
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    #@1e
    .line 3554
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    #@21
    .line 3556
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 3542
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    #@27
    .line 3557
    :catch_0
    move-exception v0

    #@28
    .line 3558
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    #@2b
    const-string/jumbo v4, "No activity to handle assist long press action."

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method private layoutNavigationBar(IIIIIILandroid/graphics/Rect;ZZZZ)Z
    .locals 14
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "overscanRight"    # I
    .param p6, "overscanBottom"    # I
    .param p7, "dcf"    # Landroid/graphics/Rect;
    .param p8, "navVisible"    # Z
    .param p9, "navTranslucent"    # Z
    .param p10, "navAllowedHidden"    # Z
    .param p11, "statusBarExpandedNotKeyguard"    # Z

    #@0
    .prologue
    .line 4108
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v2, :cond_7

    #@4
    .line 4109
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@6
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    #@9
    move-result v13

    #@a
    .line 4114
    .local v13, "transientNavBarShowing":Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->isNavigationBarOnBottom(II)Z

    #@d
    move-result v2

    #@e
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@10
    .line 4115
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@12
    if-eqz v2, :cond_4

    #@14
    .line 4117
    sub-int v2, p2, p6

    #@16
    .line 4118
    move/from16 v0, p3

    #@18
    move/from16 v1, p4

    #@1a
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@1d
    move-result v3

    #@1e
    .line 4117
    sub-int v12, v2, v3

    #@20
    .line 4119
    .local v12, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@22
    sub-int v3, p2, p6

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {v2, v4, v12, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@28
    .line 4120
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@2a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2c
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@2e
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@30
    .line 4121
    if-eqz v13, :cond_1

    #@32
    .line 4122
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@34
    const/4 v3, 0x1

    #@35
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@38
    .line 4133
    :goto_0
    if-eqz p8, :cond_0

    #@3a
    if-eqz p9, :cond_3

    #@3c
    .line 4170
    .end local v12    # "top":I
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@3e
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@40
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@42
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@44
    .line 4171
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@46
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@48
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@4a
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@4c
    .line 4172
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@4e
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@50
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@52
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@54
    .line 4173
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@56
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@58
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@5a
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@5c
    .line 4174
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5e
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@61
    move-result v2

    #@62
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@64
    .line 4176
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@66
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@68
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6a
    .line 4177
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6c
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6e
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@70
    .line 4178
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@72
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@74
    move-object/from16 v8, p7

    #@76
    .line 4176
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@79
    .line 4180
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@7b
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_7

    #@81
    .line 4181
    const/4 v2, 0x1

    #@82
    return v2

    #@83
    .line 4123
    .restart local v12    # "top":I
    :cond_1
    if-eqz p8, :cond_2

    #@85
    .line 4124
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@87
    const/4 v3, 0x1

    #@88
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@8b
    .line 4125
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@8d
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@8f
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@91
    .line 4126
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@93
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@95
    sub-int/2addr v2, v3

    #@96
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@98
    .line 4127
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@9a
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@9c
    sub-int/2addr v2, v3

    #@9d
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@9f
    goto :goto_0

    #@a0
    .line 4131
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@a2
    move/from16 v0, p11

    #@a4
    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@a7
    goto :goto_0

    #@a8
    .line 4133
    :cond_3
    if-nez p10, :cond_0

    #@aa
    .line 4134
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@ac
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@af
    move-result v2

    #@b0
    if-nez v2, :cond_0

    #@b2
    .line 4135
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@b4
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@b7
    move-result v2

    #@b8
    if-nez v2, :cond_0

    #@ba
    .line 4139
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@bc
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@be
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@c0
    goto/16 :goto_1

    #@c2
    .line 4143
    .end local v12    # "top":I
    :cond_4
    sub-int v2, p1, p5

    #@c4
    .line 4144
    move/from16 v0, p3

    #@c6
    move/from16 v1, p4

    #@c8
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@cb
    move-result v3

    #@cc
    .line 4143
    sub-int v11, v2, v3

    #@ce
    .line 4145
    .local v11, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@d0
    sub-int v3, p1, p5

    #@d2
    const/4 v4, 0x0

    #@d3
    move/from16 v0, p2

    #@d5
    invoke-virtual {v2, v11, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@d8
    .line 4146
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@da
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@dc
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@de
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@e0
    .line 4147
    if-eqz v13, :cond_5

    #@e2
    .line 4148
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@e4
    const/4 v3, 0x1

    #@e5
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@e8
    .line 4159
    :goto_2
    if-eqz p8, :cond_0

    #@ea
    if-nez p9, :cond_0

    #@ec
    if-nez p10, :cond_0

    #@ee
    .line 4160
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@f0
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@f3
    move-result v2

    #@f4
    if-nez v2, :cond_0

    #@f6
    .line 4161
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@f8
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@fb
    move-result v2

    #@fc
    if-nez v2, :cond_0

    #@fe
    .line 4165
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@100
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@102
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@104
    goto/16 :goto_1

    #@106
    .line 4149
    :cond_5
    if-eqz p8, :cond_6

    #@108
    .line 4150
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@10a
    const/4 v3, 0x1

    #@10b
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@10e
    .line 4151
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@110
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@112
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@114
    .line 4152
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@116
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@118
    sub-int/2addr v2, v3

    #@119
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@11b
    .line 4153
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@11d
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@11f
    sub-int/2addr v2, v3

    #@120
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@122
    goto :goto_2

    #@123
    .line 4157
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@125
    move/from16 v0, p11

    #@127
    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@12a
    goto :goto_2

    #@12b
    .line 4184
    .end local v11    # "left":I
    .end local v13    # "transientNavBarShowing":Z
    :cond_7
    const/4 v2, 0x0

    #@12c
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
    .line 4040
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4042
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@6
    iput v0, p3, Landroid/graphics/Rect;->left:I

    #@8
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@a
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@c
    .line 4043
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@e
    iput v0, p3, Landroid/graphics/Rect;->top:I

    #@10
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@12
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@14
    .line 4044
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
    .line 4045
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@21
    .line 4046
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@23
    .line 4045
    add-int/2addr v0, v1

    #@24
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    #@26
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@28
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 4047
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2c
    iput v0, p4, Landroid/graphics/Rect;->left:I

    #@2e
    .line 4048
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@30
    iput v0, p4, Landroid/graphics/Rect;->top:I

    #@32
    .line 4049
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@34
    iput v0, p4, Landroid/graphics/Rect;->right:I

    #@36
    .line 4050
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@38
    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    #@3a
    .line 4052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3c
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@42
    .line 4055
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
    .line 4060
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@52
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@54
    add-int/2addr v0, v1

    #@55
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@57
    .line 4062
    const/high16 v0, 0x4000000

    #@59
    and-int v0, v0, p6

    #@5b
    if-eqz v0, :cond_3

    #@5d
    const/4 v9, 0x1

    #@5e
    .line 4064
    .local v9, "statusBarTransient":Z
    :goto_0
    const v0, 0x40000008    # 2.000002f

    #@61
    .line 4063
    and-int v0, v0, p6

    #@63
    if-eqz v0, :cond_4

    #@65
    const/4 v10, 0x1

    #@66
    .line 4065
    .local v10, "statusBarTranslucent":Z
    :goto_1
    if-nez p7, :cond_0

    #@68
    .line 4066
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@6b
    move-result v0

    #@6c
    and-int/2addr v10, v0

    #@6d
    .line 4071
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
    .line 4089
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
    .line 4097
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
    .line 4098
    const/4 v0, 0x1

    #@90
    return v0

    #@91
    .line 4062
    .end local v9    # "statusBarTransient":Z
    :cond_3
    const/4 v9, 0x0

    #@92
    .restart local v9    # "statusBarTransient":Z
    goto :goto_0

    #@93
    .line 4063
    :cond_4
    const/4 v10, 0x0

    #@94
    .restart local v10    # "statusBarTranslucent":Z
    goto :goto_1

    #@95
    .line 4075
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
    .line 4077
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@9e
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@a0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@a2
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@a4
    .line 4078
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@a6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@a8
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@aa
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@ac
    .line 4079
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@ae
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@b0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@b2
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@b4
    .line 4080
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
    .line 4090
    :cond_6
    if-nez v9, :cond_2

    #@bf
    if-nez v10, :cond_2

    #@c1
    .line 4091
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@c3
    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    #@c6
    move-result v0

    #@c7
    if-nez v0, :cond_2

    #@c9
    .line 4095
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
    .line 4101
    .end local v9    # "statusBarTransient":Z
    :cond_7
    const/4 v0, 0x0

    #@d2
    return v0
.end method

.method private notifyScreenshotError()V
    .locals 4

    #@0
    .prologue
    .line 5431
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v2, "com.android.systemui"

    #@5
    .line 5432
    const-string/jumbo v3, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    #@8
    .line 5431
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 5433
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    #@d
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    #@10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 5434
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 5435
    const/high16 v2, 0x14000000

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 5437
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1f
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@22
    .line 5429
    return-void
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4820
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
    .line 4821
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4822
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4823
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@1d
    .line 4825
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1f
    if-le v1, v0, :cond_1

    #@21
    .line 4826
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@23
    .line 4828
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@26
    move-result-object v1

    #@27
    iget v0, v1, Landroid/graphics/Rect;->top:I

    #@29
    .line 4829
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    #@2c
    move-result-object v1

    #@2d
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@2f
    add-int/2addr v0, v1

    #@30
    .line 4830
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@32
    if-le v1, v0, :cond_2

    #@34
    .line 4831
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@36
    .line 4819
    :cond_2
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4839
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
    .line 4840
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4841
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4842
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1d
    .line 4838
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    #@0
    .prologue
    .line 7144
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 7145
    return-void

    #@7
    .line 7147
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    .line 7148
    const-string/jumbo v3, "audio"

    #@c
    .line 7147
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/media/AudioManager;

    #@12
    .line 7149
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 7150
    return-void

    #@19
    .line 7152
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b
    .line 7153
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@1d
    .line 7152
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@20
    move-result-object v1

    #@21
    .line 7154
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    #@22
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    #@25
    .line 7155
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    #@28
    .line 7143
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
    .line 1233
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    #@6
    move-result v0

    #@7
    .line 1234
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1232
    :goto_0
    :pswitch_0
    return-void

    #@b
    .line 1238
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@d
    .line 1239
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1240
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@16
    .line 1242
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    #@19
    goto :goto_0

    #@1a
    .line 1246
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@1c
    .line 1247
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@1f
    .line 1248
    const-string/jumbo v3, "globalactions"

    #@22
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@25
    .line 1249
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
    .line 1234
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
    .line 1185
    packed-switch p4, :pswitch_data_0

    #@4
    .line 1184
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@5
    .line 1189
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1190
    const-string/jumbo v0, "WindowManager"

    #@e
    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    goto :goto_0

    #@15
    .line 1194
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1195
    const-string/jumbo v0, "WindowManager"

    #@1e
    const-string/jumbo v1, "Toggling theater mode off."

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1196
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@29
    move-result-object v0

    #@2a
    .line 1197
    const-string/jumbo v1, "theater_mode_on"

    #@2d
    .line 1196
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@30
    .line 1198
    if-nez p3, :cond_0

    #@32
    .line 1199
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@35
    goto :goto_0

    #@36
    .line 1202
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@39
    const-string/jumbo v1, "Toggling theater mode on."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1203
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v0

    #@45
    .line 1204
    const-string/jumbo v1, "theater_mode_on"

    #@48
    const/4 v2, 0x1

    #@49
    .line 1203
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@4c
    .line 1206
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@4e
    if-eqz v0, :cond_0

    #@50
    if-eqz p3, :cond_0

    #@52
    .line 1207
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@54
    .line 1208
    const/4 v1, 0x4

    #@55
    .line 1207
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@58
    goto :goto_0

    #@59
    .line 1213
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    #@5c
    const-string/jumbo v1, "Starting brightness boost."

    #@5f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1214
    if-nez p3, :cond_3

    #@64
    .line 1215
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@67
    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@69
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    #@6c
    goto :goto_0

    #@6d
    .line 1185
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
    .line 1148
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 1154
    :cond_0
    const/4 v0, 0x2

    #@c
    if-ne p4, v0, :cond_3

    #@e
    .line 1155
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@13
    .line 1147
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@14
    .line 1149
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@17
    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1151
    return-void

    #@1e
    .line 1156
    :cond_3
    const/4 v0, 0x3

    #@1f
    if-ne p4, v0, :cond_4

    #@21
    .line 1157
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@26
    goto :goto_0

    #@27
    .line 1158
    :cond_4
    if-eqz p3, :cond_1

    #@29
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 1159
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@2f
    packed-switch v0, :pswitch_data_0

    #@32
    goto :goto_0

    #@33
    .line 1163
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@35
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@38
    goto :goto_0

    #@39
    .line 1167
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@3b
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@3e
    goto :goto_0

    #@3f
    .line 1172
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@41
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@44
    .line 1175
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@47
    goto :goto_0

    #@48
    .line 1178
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4b
    goto :goto_0

    #@4c
    .line 1159
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
    .line 3608
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3609
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3610
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3611
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    #@c
    .line 3607
    :cond_0
    return-void
.end method

.method private readCameraLensCoverState()V
    .locals 1

    #@0
    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@8
    .line 2242
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
    .line 1779
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 1782
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e005a

    #@b
    .line 1781
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@11
    .line 1783
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@13
    if-ltz v1, :cond_0

    #@15
    .line 1784
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@17
    const/4 v2, 0x2

    #@18
    if-le v1, v2, :cond_1

    #@1a
    .line 1785
    :cond_0
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@1c
    .line 1789
    :cond_1
    const v1, 0x10e005b

    #@1f
    .line 1788
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@25
    .line 1790
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@27
    if-ltz v1, :cond_2

    #@29
    .line 1791
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2b
    if-le v1, v4, :cond_3

    #@2d
    .line 1792
    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2f
    .line 1795
    :cond_3
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@31
    .line 1796
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
    .line 1797
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@42
    .line 1801
    :cond_4
    const v1, 0x10e009d

    #@45
    .line 1800
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@48
    move-result v1

    #@49
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@4b
    .line 1778
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    #@0
    .prologue
    .line 2034
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
    .line 2035
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    #@d
    .line 2048
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    #@e
    return v2

    #@f
    .line 2037
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 2039
    :sswitch_1
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 2041
    :sswitch_2
    const/4 v2, 0x2

    #@14
    return v2

    #@15
    .line 2043
    :sswitch_3
    const/4 v2, 0x3

    #@16
    return v2

    #@17
    .line 2045
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    #@19
    .line 2035
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
    .line 6059
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 6060
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
    .line 6062
    return-void

    #@f
    .line 6064
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@11
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    #@14
    move-result v1

    #@15
    .line 6065
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    #@1a
    move-result v0

    #@1b
    .line 6066
    .local v0, "nb":Z
    if-nez v1, :cond_1

    #@1d
    if-eqz v0, :cond_5

    #@1f
    .line 6068
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
    .line 6070
    return-void

    #@27
    .line 6072
    :cond_2
    if-eqz v1, :cond_3

    #@29
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@2b
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@2e
    .line 6073
    :cond_3
    if-eqz v0, :cond_4

    #@30
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@32
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    #@35
    .line 6074
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@37
    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    #@3a
    .line 6075
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    :cond_5
    monitor-exit v3

    #@3e
    .line 6058
    return-void

    #@3f
    .line 6059
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

.method private selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2825
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@4
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    #@7
    move-result v2

    #@8
    .line 2828
    .local v2, "insets":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@b
    move-result-object v1

    #@c
    .line 2829
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@e
    if-eqz v9, :cond_4

    #@10
    .line 2830
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@12
    if-eqz v9, :cond_1

    #@14
    .line 2831
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v9, v2

    #@17
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@1c
    move-result-object v10

    #@1d
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@1f
    if-lt v9, v10, :cond_1

    #@21
    .line 2830
    const/4 v0, 0x1

    #@22
    .line 2834
    .local v0, "behindNavBar":Z
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@25
    move-result v9

    #@26
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@29
    move-result v10

    #@2a
    if-le v9, v10, :cond_5

    #@2c
    move v3, v7

    #@2d
    .line 2835
    .local v3, "landscape":Z
    :goto_1
    if-eqz v3, :cond_8

    #@2f
    iget v9, v1, Landroid/graphics/Rect;->right:I

    #@31
    sub-int/2addr v9, v2

    #@32
    if-lez v9, :cond_6

    #@34
    .line 2836
    iget v9, v1, Landroid/graphics/Rect;->left:I

    #@36
    add-int/2addr v9, v2

    #@37
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@3a
    move-result-object v10

    #@3b
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@3d
    if-lt v9, v10, :cond_7

    #@3f
    const/4 v5, 0x1

    #@40
    .line 2837
    .local v5, "offscreenLandscape":Z
    :goto_2
    if-nez v3, :cond_b

    #@42
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@44
    sub-int/2addr v9, v2

    #@45
    if-lez v9, :cond_9

    #@47
    .line 2838
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    #@49
    add-int/2addr v9, v2

    #@4a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@4d
    move-result-object v10

    #@4e
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@50
    if-lt v9, v10, :cond_a

    #@52
    const/4 v6, 0x1

    #@53
    .line 2839
    .local v6, "offscreenPortrait":Z
    :goto_3
    if-nez v5, :cond_c

    #@55
    move v4, v6

    #@56
    .line 2840
    :goto_4
    if-nez v0, :cond_0

    #@58
    if-eqz v4, :cond_d

    #@5a
    .line 2841
    :cond_0
    return v8

    #@5b
    .line 2832
    .end local v0    # "behindNavBar":Z
    .end local v3    # "landscape":Z
    .end local v5    # "offscreenLandscape":Z
    .end local v6    # "offscreenPortrait":Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@5d
    if-nez v9, :cond_3

    #@5f
    .line 2833
    iget v9, v1, Landroid/graphics/Rect;->left:I

    #@61
    add-int/2addr v9, v2

    #@62
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@64
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@67
    move-result-object v10

    #@68
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@6a
    if-lt v9, v10, :cond_2

    #@6c
    const/4 v0, 0x1

    #@6d
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@6e
    .end local v0    # "behindNavBar":Z
    :cond_2
    const/4 v0, 0x0

    #@6f
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@70
    .line 2832
    .end local v0    # "behindNavBar":Z
    :cond_3
    const/4 v0, 0x0

    #@71
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@72
    .line 2829
    .end local v0    # "behindNavBar":Z
    :cond_4
    const/4 v0, 0x0

    #@73
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@74
    :cond_5
    move v3, v8

    #@75
    .line 2834
    goto :goto_1

    #@76
    .line 2835
    .restart local v3    # "landscape":Z
    :cond_6
    const/4 v5, 0x1

    #@77
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@78
    .line 2836
    .end local v5    # "offscreenLandscape":Z
    :cond_7
    const/4 v5, 0x0

    #@79
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@7a
    .line 2835
    .end local v5    # "offscreenLandscape":Z
    :cond_8
    const/4 v5, 0x0

    #@7b
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@7c
    .line 2837
    :cond_9
    const/4 v6, 0x1

    #@7d
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@7e
    .line 2838
    .end local v6    # "offscreenPortrait":Z
    :cond_a
    const/4 v6, 0x0

    #@7f
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@80
    .line 2837
    .end local v6    # "offscreenPortrait":Z
    :cond_b
    const/4 v6, 0x0

    #@81
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@82
    .line 2839
    :cond_c
    const/4 v4, 0x1

    #@83
    .local v4, "offscreen":Z
    goto :goto_4

    #@84
    .line 2843
    .end local v4    # "offscreen":Z
    :cond_d
    if-eq p2, v7, :cond_e

    #@86
    const/4 v7, 0x3

    #@87
    if-ne p2, v7, :cond_f

    #@89
    .line 2844
    :cond_e
    const/high16 v7, 0x10a0000

    #@8b
    return v7

    #@8c
    .line 2845
    :cond_f
    const/4 v7, 0x2

    #@8d
    if-ne p2, v7, :cond_10

    #@8f
    .line 2846
    const v7, 0x10a0001

    #@92
    return v7

    #@93
    .line 2848
    :cond_10
    return v8
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
    .line 5220
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@4
    .line 5221
    .local v1, "wasOccluded":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@9
    move-result v0

    #@a
    .line 5222
    .local v0, "showing":Z
    if-eqz v1, :cond_0

    #@c
    if-eqz p1, :cond_1

    #@e
    .line 5227
    :cond_0
    if-nez v1, :cond_2

    #@10
    if-eqz p1, :cond_2

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 5228
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@16
    .line 5229
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    #@1b
    .line 5230
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
    .line 5231
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
    .line 5232
    return v5

    #@36
    .line 5222
    :cond_1
    if-eqz v0, :cond_0

    #@38
    .line 5223
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@3a
    .line 5224
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3c
    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    #@3f
    .line 5225
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
    .line 5226
    return v5

    #@4c
    .line 5234
    :cond_2
    return v3
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 7479
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
    .line 7483
    const v0, -0x8001

    #@3
    and-int/2addr p1, v0

    #@4
    .line 7484
    const/high16 v0, -0x80000000

    #@6
    or-int/2addr p1, v0

    #@7
    return p1
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 5855
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
    if-ne v5, v3, :cond_3

    #@e
    :cond_0
    move v0, v3

    #@f
    .line 5857
    .local v0, "displayOff":Z
    :goto_0
    if-eqz v0, :cond_1

    #@11
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    #@13
    if-eqz v5, :cond_4

    #@15
    .line 5862
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    if-eqz v0, :cond_5

    #@1d
    .line 5868
    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@20
    move-result-object v1

    #@21
    .line 5871
    .local v1, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v1, :cond_6

    #@23
    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_6

    #@29
    .line 5872
    return v3

    #@2a
    .end local v0    # "displayOff":Z
    .end local v1    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_3
    move v0, v4

    #@2b
    .line 5855
    goto :goto_0

    #@2c
    .line 5858
    .restart local v0    # "displayOff":Z
    :cond_4
    return v4

    #@2d
    .line 5863
    :cond_5
    return v3

    #@2e
    .line 5874
    .restart local v1    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v2

    #@2f
    .line 5875
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WindowManager"

    #@32
    const-string/jumbo v5, "RemoteException when checking if dreaming"

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 5880
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    return v4
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1991
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
    .line 1992
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1993
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
    .line 3904
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
    .line 3640
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3641
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3642
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3643
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(ZZ)V

    #@c
    .line 3639
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
    .line 1474
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 1475
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 1476
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@11
    .line 1477
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 1472
    return-void
.end method

.method private showTvPictureInPictureMenuInternal()V
    .locals 1

    #@0
    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 1482
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 1483
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTvPictureInPictureMenu()V

    #@9
    .line 1480
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
    .line 1274
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1275
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@9
    .line 1273
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 1280
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1279
    :goto_0
    return-void

    #@6
    .line 1283
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    #@9
    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1284
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@11
    .line 1285
    const/4 v1, 0x6

    #@12
    const/4 v2, 0x0

    #@13
    .line 1284
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@16
    goto :goto_0

    #@17
    .line 1280
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
    .line 3593
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3594
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b
    .line 3592
    :goto_0
    return-void

    #@c
    .line 3596
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
    .line 5369
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 5370
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v3, :cond_0

    #@7
    monitor-exit v4

    #@8
    .line 5371
    return-void

    #@9
    .line 5373
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    #@b
    const-string/jumbo v3, "com.android.systemui"

    #@e
    .line 5374
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    #@11
    .line 5373
    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 5375
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    #@16
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@19
    .line 5376
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1c
    .line 5377
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    #@1e
    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    #@21
    .line 5417
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23
    .line 5419
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@25
    .line 5418
    const v6, 0x2000001

    #@28
    .line 5417
    invoke-virtual {v3, v2, v0, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 5420
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@30
    .line 5421
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
    .line 5368
    return-void

    #@3b
    .line 5369
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
    .line 3648
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 3649
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 3650
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    #@9
    .line 3647
    :cond_0
    return-void
.end method

.method private toggleRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 3626
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3627
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3628
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3629
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    #@c
    .line 3625
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
    .line 6914
    if-eqz p1, :cond_1

    #@3
    .line 6915
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6916
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
    .line 6913
    :cond_0
    :goto_0
    return-void

    #@13
    .line 6919
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 6920
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 6921
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
    .line 7302
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
    .line 7306
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 7307
    if-ne v0, p2, :cond_3

    #@10
    .line 7310
    and-int/lit16 p1, p1, -0x2001

    #@12
    .line 7311
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@15
    move-result v1

    #@16
    and-int/lit16 v1, v1, 0x2000

    #@18
    or-int/2addr p1, v1

    #@19
    .line 7318
    :cond_1
    :goto_1
    return p1

    #@1a
    .line 7303
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c
    goto :goto_0

    #@1d
    .line 7313
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
    .line 7315
    and-int/lit16 p1, p1, -0x2001

    #@27
    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    #@0
    .prologue
    .line 6896
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v2

    #@3
    .line 6897
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 6898
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
    .line 6899
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@19
    if-eq v1, v0, :cond_0

    #@1b
    .line 6900
    if-eqz v0, :cond_2

    #@1d
    .line 6902
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@21
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@24
    .line 6903
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
    .line 6908
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_0
    monitor-exit v2

    #@31
    .line 6895
    return-void

    #@32
    .line 6897
    :cond_1
    const/4 v0, 0x0

    #@33
    .local v0, "enable":Z
    goto :goto_0

    #@34
    .line 6906
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
    .line 6896
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
    .line 6927
    if-eqz p1, :cond_1

    #@3
    .line 6928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6929
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
    .line 6926
    :cond_0
    :goto_0
    return-void

    #@13
    .line 6932
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 6933
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 6934
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@1e
    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 36
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    #@0
    .prologue
    .line 7331
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@4
    move-object/from16 v31, v0

    #@6
    const/16 v32, 0x3

    #@8
    invoke-virtual/range {v31 .. v32}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@b
    move-result v7

    #@c
    .line 7333
    .local v7, "dockedStackVisible":Z
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@10
    move-object/from16 v31, v0

    #@12
    const/16 v32, 0x2

    #@14
    invoke-virtual/range {v31 .. v32}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@17
    move-result v11

    #@18
    .line 7334
    .local v11, "freeformStackVisible":Z
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@1c
    move-object/from16 v31, v0

    #@1e
    invoke-virtual/range {v31 .. v31}, Landroid/view/WindowManagerInternal;->isDockedDividerResizing()Z

    #@21
    move-result v26

    #@22
    .line 7339
    .local v26, "resizing":Z
    if-nez v7, :cond_b

    #@24
    if-nez v11, :cond_b

    #@26
    move/from16 v31, v26

    #@28
    :goto_0
    move/from16 v0, v31

    #@2a
    move-object/from16 v1, p0

    #@2c
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@2e
    .line 7340
    move-object/from16 v0, p0

    #@30
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@32
    move/from16 v31, v0

    #@34
    if-eqz v31, :cond_0

    #@36
    move-object/from16 v0, p0

    #@38
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@3a
    move/from16 v31, v0

    #@3c
    if-eqz v31, :cond_c

    #@3e
    :cond_0
    const/4 v10, 0x0

    #@3f
    .line 7343
    .local v10, "forceOpaqueStatusBar":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@42
    move-result v31

    #@43
    if-eqz v31, :cond_1

    #@45
    move-object/from16 v0, p0

    #@47
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@49
    move/from16 v31, v0

    #@4b
    if-eqz v31, :cond_d

    #@4d
    .line 7345
    :cond_1
    move-object/from16 v0, p0

    #@4f
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@51
    .line 7346
    .local v13, "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_2
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@55
    move-object/from16 v31, v0

    #@57
    move-object/from16 v0, v31

    #@59
    move/from16 v1, p3

    #@5b
    move/from16 v2, p2

    #@5d
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@60
    move-result p3

    #@61
    .line 7347
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@65
    move-object/from16 v31, v0

    #@67
    move-object/from16 v0, v31

    #@69
    move/from16 v1, p3

    #@6b
    move/from16 v2, p2

    #@6d
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@70
    move-result p3

    #@71
    .line 7348
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@75
    move-object/from16 v31, v0

    #@77
    .line 7349
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@7b
    move-object/from16 v32, v0

    #@7d
    const/16 v33, 0x0

    #@7f
    const/16 v34, 0x0

    #@81
    .line 7348
    invoke-virtual/range {v31 .. v34}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@84
    move-result v8

    #@85
    .line 7352
    .local v8, "dockedVis":I
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@89
    move-object/from16 v31, v0

    #@8b
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, v31

    #@8f
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@92
    move-result v31

    #@93
    if-eqz v31, :cond_e

    #@95
    .line 7353
    const/high16 v31, 0x40000000    # 2.0f

    #@97
    and-int v31, v31, p3

    #@99
    if-nez v31, :cond_e

    #@9b
    .line 7352
    const/4 v12, 0x1

    #@9c
    .line 7356
    :goto_3
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a0
    move-object/from16 v31, v0

    #@a2
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v31

    #@a6
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@a9
    move-result v31

    #@aa
    if-eqz v31, :cond_f

    #@ac
    .line 7357
    const/high16 v31, 0x40000000    # 2.0f

    #@ae
    and-int v31, v31, v8

    #@b0
    if-nez v31, :cond_f

    #@b2
    .line 7356
    const/4 v6, 0x1

    #@b3
    .line 7361
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@b6
    move-result-object v31

    #@b7
    move-object/from16 v0, v31

    #@b9
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@bb
    move/from16 v30, v0

    #@bd
    .line 7362
    .local v30, "type":I
    const/16 v31, 0x7d0

    #@bf
    move/from16 v0, v30

    #@c1
    move/from16 v1, v31

    #@c3
    if-ne v0, v1, :cond_10

    #@c5
    const/16 v27, 0x1

    #@c7
    .line 7363
    .local v27, "statusBarHasFocus":Z
    :goto_5
    if-eqz v27, :cond_2

    #@c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@cc
    move-result v31

    #@cd
    if-eqz v31, :cond_11

    #@cf
    .line 7375
    :cond_2
    :goto_6
    if-eqz v12, :cond_13

    #@d1
    if-eqz v6, :cond_13

    #@d3
    .line 7376
    or-int/lit8 p3, p3, 0x8

    #@d5
    .line 7377
    const v31, -0x40000001    # -1.9999999f

    #@d8
    and-int p3, p3, v31

    #@da
    .line 7383
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    #@dc
    move/from16 v1, p3

    #@de
    move/from16 v2, v26

    #@e0
    invoke-direct {v0, v1, v7, v11, v2}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    #@e3
    move-result p3

    #@e4
    .line 7387
    move/from16 v0, p3

    #@e6
    and-int/lit16 v0, v0, 0x1000

    #@e8
    move/from16 v31, v0

    #@ea
    if-eqz v31, :cond_15

    #@ec
    const/16 v18, 0x1

    #@ee
    .line 7389
    .local v18, "immersiveSticky":Z
    :goto_8
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f2
    move-object/from16 v31, v0

    #@f4
    if-eqz v31, :cond_17

    #@f6
    .line 7390
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@fa
    move-object/from16 v31, v0

    #@fc
    const/16 v32, 0x0

    #@fe
    invoke-static/range {v31 .. v32}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@101
    move-result v31

    #@102
    move/from16 v0, v31

    #@104
    and-int/lit16 v0, v0, 0x400

    #@106
    move/from16 v31, v0

    #@108
    if-eqz v31, :cond_16

    #@10a
    const/16 v16, 0x1

    #@10c
    .line 7393
    .local v16, "hideStatusBarWM":Z
    :goto_9
    and-int/lit8 v31, p3, 0x4

    #@10e
    if-eqz v31, :cond_18

    #@110
    const/4 v15, 0x1

    #@111
    .line 7395
    .local v15, "hideStatusBarSysui":Z
    :goto_a
    and-int/lit8 v31, p3, 0x2

    #@113
    if-eqz v31, :cond_19

    #@115
    const/4 v14, 0x1

    #@116
    .line 7397
    .local v14, "hideNavBarSysui":Z
    :goto_b
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@11a
    move-object/from16 v31, v0

    #@11c
    if-eqz v31, :cond_1e

    #@11e
    .line 7398
    if-nez v27, :cond_1a

    #@120
    move-object/from16 v0, p0

    #@122
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@124
    move/from16 v31, v0

    #@126
    if-nez v31, :cond_1d

    #@128
    .line 7399
    if-nez v16, :cond_1b

    #@12a
    if-eqz v15, :cond_1c

    #@12c
    move/from16 v29, v18

    #@12e
    .line 7401
    :goto_c
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@132
    move-object/from16 v31, v0

    #@134
    if-eqz v31, :cond_4

    #@136
    .line 7402
    move-object/from16 v0, p0

    #@138
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@13a
    move/from16 v31, v0

    #@13c
    if-eqz v31, :cond_1f

    #@13e
    .line 7401
    :cond_4
    const/16 v28, 0x0

    #@140
    .line 7404
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@143
    move-result-wide v22

    #@144
    .line 7405
    .local v22, "now":J
    move-object/from16 v0, p0

    #@146
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@148
    move-wide/from16 v32, v0

    #@14a
    const-wide/16 v34, 0x0

    #@14c
    cmp-long v31, v32, v34

    #@14e
    if-eqz v31, :cond_21

    #@150
    .line 7406
    move-object/from16 v0, p0

    #@152
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@154
    move-wide/from16 v32, v0

    #@156
    sub-long v32, v22, v32

    #@158
    const-wide/16 v34, 0x7530

    #@15a
    cmp-long v31, v32, v34

    #@15c
    if-gtz v31, :cond_20

    #@15e
    const/16 v24, 0x1

    #@160
    .line 7407
    .local v24, "pendingPanic":Z
    :goto_e
    if-eqz v24, :cond_5

    #@162
    if-eqz v14, :cond_5

    #@164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@167
    move-result v31

    #@168
    if-eqz v31, :cond_22

    #@16a
    .line 7415
    :cond_5
    :goto_f
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@16e
    move-object/from16 v31, v0

    #@170
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    #@173
    move-result v31

    #@174
    if-eqz v31, :cond_6

    #@176
    .line 7416
    if-eqz v29, :cond_23

    #@178
    .line 7415
    :cond_6
    const/4 v5, 0x0

    #@179
    .line 7417
    :goto_10
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17d
    move-object/from16 v31, v0

    #@17f
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    #@182
    move-result v31

    #@183
    if-eqz v31, :cond_25

    #@185
    .line 7418
    if-eqz v28, :cond_24

    #@187
    const/4 v4, 0x0

    #@188
    .line 7419
    .local v4, "denyTransientNav":Z
    :goto_11
    if-nez v5, :cond_7

    #@18a
    if-nez v4, :cond_7

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@190
    move/from16 v31, v0

    #@192
    if-eqz v31, :cond_8

    #@194
    .line 7421
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    #@197
    .line 7422
    and-int/lit8 p3, p3, -0x8

    #@199
    .line 7425
    :cond_8
    move/from16 v0, p3

    #@19b
    and-int/lit16 v0, v0, 0x800

    #@19d
    move/from16 v31, v0

    #@19f
    if-eqz v31, :cond_26

    #@1a1
    const/16 v17, 0x1

    #@1a3
    .line 7426
    .local v17, "immersive":Z
    :goto_12
    move/from16 v0, p3

    #@1a5
    and-int/lit16 v0, v0, 0x1000

    #@1a7
    move/from16 v31, v0

    #@1a9
    if-eqz v31, :cond_27

    #@1ab
    const/16 v18, 0x1

    #@1ad
    .line 7427
    :goto_13
    if-nez v17, :cond_28

    #@1af
    move/from16 v19, v18

    #@1b1
    .line 7429
    :goto_14
    if-eqz v14, :cond_9

    #@1b3
    if-eqz v19, :cond_29

    #@1b5
    .line 7436
    :cond_9
    :goto_15
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@1b9
    move-object/from16 v31, v0

    #@1bb
    move-object/from16 v0, v31

    #@1bd
    move/from16 v1, v29

    #@1bf
    move/from16 v2, p2

    #@1c1
    move/from16 v3, p3

    #@1c3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@1c6
    move-result p3

    #@1c7
    .line 7439
    move-object/from16 v0, p0

    #@1c9
    move/from16 v1, p2

    #@1cb
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@1ce
    move-result v21

    #@1cf
    .line 7440
    .local v21, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, p3

    #@1d3
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@1d6
    move-result v20

    #@1d7
    .line 7441
    .local v20, "newImmersiveMode":Z
    if-eqz p1, :cond_a

    #@1d9
    move/from16 v0, v21

    #@1db
    move/from16 v1, v20

    #@1dd
    if-eq v0, v1, :cond_a

    #@1df
    .line 7442
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@1e2
    move-result-object v25

    #@1e3
    .line 7443
    .local v25, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1e7
    move-object/from16 v31, v0

    #@1e9
    .line 7444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@1ec
    move-result v32

    #@1ed
    .line 7443
    move-object/from16 v0, v31

    #@1ef
    move-object/from16 v1, v25

    #@1f1
    move/from16 v2, v20

    #@1f3
    move/from16 v3, v32

    #@1f5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZ)V

    #@1f8
    .line 7447
    .end local v25    # "pkg":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@1fc
    move-object/from16 v31, v0

    #@1fe
    move-object/from16 v0, v31

    #@200
    move/from16 v1, v28

    #@202
    move/from16 v2, p2

    #@204
    move/from16 v3, p3

    #@206
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    #@209
    move-result p3

    #@20a
    .line 7449
    return p3

    #@20b
    .line 7339
    .end local v4    # "denyTransientNav":Z
    .end local v8    # "dockedVis":I
    .end local v10    # "forceOpaqueStatusBar":Z
    .end local v13    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v14    # "hideNavBarSysui":Z
    .end local v15    # "hideStatusBarSysui":Z
    .end local v16    # "hideStatusBarWM":Z
    .end local v17    # "immersive":Z
    .end local v18    # "immersiveSticky":Z
    .end local v20    # "newImmersiveMode":Z
    .end local v21    # "oldImmersiveMode":Z
    .end local v22    # "now":J
    .end local v24    # "pendingPanic":Z
    .end local v27    # "statusBarHasFocus":Z
    .end local v30    # "type":I
    :cond_b
    const/16 v31, 0x1

    #@20d
    goto/16 :goto_0

    #@20f
    .line 7340
    :cond_c
    const/4 v10, 0x1

    #@210
    .restart local v10    # "forceOpaqueStatusBar":Z
    goto/16 :goto_1

    #@212
    .line 7344
    :cond_d
    move-object/from16 v0, p0

    #@214
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@216
    .restart local v13    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_2

    #@218
    .line 7354
    .restart local v8    # "dockedVis":I
    :cond_e
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@21c
    move-object/from16 v31, v0

    #@21e
    move-object/from16 v0, p0

    #@220
    move-object/from16 v1, v31

    #@222
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@225
    move-result v12

    #@226
    .local v12, "fullscreenDrawsStatusBarBackground":Z
    goto/16 :goto_3

    #@228
    .line 7358
    .end local v12    # "fullscreenDrawsStatusBarBackground":Z
    :cond_f
    move-object/from16 v0, p0

    #@22a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@22c
    move-object/from16 v31, v0

    #@22e
    move-object/from16 v0, p0

    #@230
    move-object/from16 v1, v31

    #@232
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@235
    move-result v6

    #@236
    .local v6, "dockedDrawsStatusBarBackground":Z
    goto/16 :goto_4

    #@238
    .line 7362
    .end local v6    # "dockedDrawsStatusBarBackground":Z
    .restart local v30    # "type":I
    :cond_10
    const/16 v27, 0x0

    #@23a
    goto/16 :goto_5

    #@23c
    .line 7364
    .restart local v27    # "statusBarHasFocus":Z
    :cond_11
    const/16 v9, 0x3806

    #@23e
    .line 7369
    .local v9, "flags":I
    move-object/from16 v0, p0

    #@240
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@242
    move/from16 v31, v0

    #@244
    if-eqz v31, :cond_12

    #@246
    .line 7370
    const v9, -0x3fffc7fa

    #@249
    .line 7372
    :cond_12
    not-int v0, v9

    #@24a
    move/from16 v31, v0

    #@24c
    and-int v31, v31, p3

    #@24e
    and-int v32, p2, v9

    #@250
    or-int p3, v31, v32

    #@252
    goto/16 :goto_6

    #@254
    .line 7378
    .end local v9    # "flags":I
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@257
    move-result v31

    #@258
    if-nez v31, :cond_14

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@25e
    move-object/from16 v31, v0

    #@260
    move-object/from16 v0, v31

    #@262
    if-eq v13, v0, :cond_14

    #@264
    .line 7380
    :goto_16
    const v31, -0x40000009    # -1.9999989f

    #@267
    and-int p3, p3, v31

    #@269
    goto/16 :goto_7

    #@26b
    .line 7378
    :cond_14
    if-eqz v10, :cond_3

    #@26d
    goto :goto_16

    #@26e
    .line 7387
    :cond_15
    const/16 v18, 0x0

    #@270
    .restart local v18    # "immersiveSticky":Z
    goto/16 :goto_8

    #@272
    .line 7390
    :cond_16
    const/16 v16, 0x0

    #@274
    .restart local v16    # "hideStatusBarWM":Z
    goto/16 :goto_9

    #@276
    .line 7389
    .end local v16    # "hideStatusBarWM":Z
    :cond_17
    const/16 v16, 0x0

    #@278
    .restart local v16    # "hideStatusBarWM":Z
    goto/16 :goto_9

    #@27a
    .line 7393
    :cond_18
    const/4 v15, 0x0

    #@27b
    .restart local v15    # "hideStatusBarSysui":Z
    goto/16 :goto_a

    #@27d
    .line 7395
    :cond_19
    const/4 v14, 0x0

    #@27e
    .restart local v14    # "hideNavBarSysui":Z
    goto/16 :goto_b

    #@280
    .line 7398
    :cond_1a
    const/16 v29, 0x1

    #@282
    .local v29, "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@284
    .line 7399
    .end local v29    # "transientStatusBarAllowed":Z
    :cond_1b
    const/16 v29, 0x1

    #@286
    .restart local v29    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@288
    .end local v29    # "transientStatusBarAllowed":Z
    :cond_1c
    const/16 v29, 0x0

    #@28a
    .restart local v29    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@28c
    .line 7398
    .end local v29    # "transientStatusBarAllowed":Z
    :cond_1d
    const/16 v29, 0x0

    #@28e
    .restart local v29    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@290
    .line 7397
    .end local v29    # "transientStatusBarAllowed":Z
    :cond_1e
    const/16 v29, 0x0

    #@292
    .restart local v29    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@294
    .line 7401
    .end local v29    # "transientStatusBarAllowed":Z
    :cond_1f
    if-eqz v14, :cond_4

    #@296
    .line 7402
    move/from16 v28, v18

    #@298
    .local v28, "transientNavBarAllowed":Z
    goto/16 :goto_d

    #@29a
    .line 7406
    .end local v28    # "transientNavBarAllowed":Z
    .restart local v22    # "now":J
    :cond_20
    const/16 v24, 0x0

    #@29c
    goto/16 :goto_e

    #@29e
    .line 7405
    :cond_21
    const/16 v24, 0x0

    #@2a0
    goto/16 :goto_e

    #@2a2
    .line 7407
    .restart local v24    # "pendingPanic":Z
    :cond_22
    move-object/from16 v0, p0

    #@2a4
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@2a6
    move/from16 v31, v0

    #@2a8
    if-eqz v31, :cond_5

    #@2aa
    .line 7410
    const-wide/16 v32, 0x0

    #@2ac
    move-wide/from16 v0, v32

    #@2ae
    move-object/from16 v2, p0

    #@2b0
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@2b2
    .line 7411
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@2b6
    move-object/from16 v31, v0

    #@2b8
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@2bb
    .line 7412
    move-object/from16 v0, p0

    #@2bd
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@2bf
    move-object/from16 v31, v0

    #@2c1
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/BarController;->showTransient()V

    #@2c4
    goto/16 :goto_f

    #@2c6
    .line 7416
    :cond_23
    move v5, v15

    #@2c7
    .local v5, "denyTransientStatus":Z
    goto/16 :goto_10

    #@2c9
    .line 7418
    .end local v5    # "denyTransientStatus":Z
    :cond_24
    const/4 v4, 0x1

    #@2ca
    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_11

    #@2cc
    .line 7417
    .end local v4    # "denyTransientNav":Z
    :cond_25
    const/4 v4, 0x0

    #@2cd
    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_11

    #@2cf
    .line 7425
    :cond_26
    const/16 v17, 0x0

    #@2d1
    .restart local v17    # "immersive":Z
    goto/16 :goto_12

    #@2d3
    .line 7426
    :cond_27
    const/16 v18, 0x0

    #@2d5
    goto/16 :goto_13

    #@2d7
    .line 7427
    :cond_28
    const/16 v19, 0x1

    #@2d9
    .local v19, "navAllowedHidden":Z
    goto/16 :goto_14

    #@2db
    .line 7429
    .end local v19    # "navAllowedHidden":Z
    :cond_29
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@2de
    move-result v31

    #@2df
    move-object/from16 v0, p0

    #@2e1
    move/from16 v1, v31

    #@2e3
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@2e6
    move-result v31

    #@2e7
    .line 7430
    const/16 v32, 0x7e6

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    move/from16 v1, v32

    #@2ed
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@2f0
    move-result v32

    #@2f1
    .line 7429
    move/from16 v0, v31

    #@2f3
    move/from16 v1, v32

    #@2f5
    if-le v0, v1, :cond_9

    #@2f7
    .line 7433
    and-int/lit8 p3, p3, -0x3

    #@2f9
    goto/16 :goto_15
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 15

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v14, 0x0

    #@2
    .line 7240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    .line 7242
    .local v7, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v7, :cond_1

    #@a
    .line 7243
    return v14

    #@b
    .line 7241
    .end local v7    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@d
    goto :goto_0

    #@e
    .line 7245
    .restart local v7    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@11
    move-result-object v0

    #@12
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@14
    and-int/lit16 v0, v0, 0x400

    #@16
    if-eqz v0, :cond_2

    #@18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 7252
    return v14

    #@1d
    .line 7255
    :cond_2
    invoke-static {v7, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@20
    move-result v0

    #@21
    .line 7256
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@23
    not-int v1, v1

    #@24
    .line 7255
    and-int/2addr v0, v1

    #@25
    .line 7257
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@27
    not-int v1, v1

    #@28
    .line 7255
    and-int v12, v0, v1

    #@2a
    .line 7258
    .local v12, "tmpVisibility":I
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@2c
    if-eqz v0, :cond_3

    #@2e
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@31
    move-result v0

    #@32
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@34
    if-ge v0, v1, :cond_3

    #@36
    .line 7259
    const/4 v0, 0x7

    #@37
    invoke-static {v7, v0}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@3a
    move-result v0

    #@3b
    not-int v0, v0

    #@3c
    and-int/2addr v12, v0

    #@3d
    .line 7263
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@3f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@41
    .line 7262
    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    #@44
    move-result v3

    #@45
    .line 7265
    .local v3, "fullscreenVisibility":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@47
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@49
    .line 7264
    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    #@4c
    move-result v4

    #@4d
    .line 7266
    .local v4, "dockedVisibility":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@4f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@51
    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    #@54
    .line 7267
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@56
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@58
    const/4 v13, 0x3

    #@59
    invoke-interface {v0, v13, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    #@5c
    .line 7268
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@5e
    invoke-direct {p0, v7, v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@61
    move-result v2

    #@62
    .line 7269
    .local v2, "visibility":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@64
    xor-int v9, v2, v0

    #@66
    .line 7270
    .local v9, "diff":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    #@68
    xor-int v11, v3, v0

    #@6a
    .line 7271
    .local v11, "fullscreenDiff":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    #@6c
    xor-int v10, v4, v0

    #@6e
    .line 7272
    .local v10, "dockedDiff":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@70
    invoke-interface {v7, v0}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@73
    move-result v8

    #@74
    .line 7273
    .local v8, "needsMenu":Z
    if-nez v9, :cond_4

    #@76
    if-nez v11, :cond_4

    #@78
    if-nez v10, :cond_4

    #@7a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@7c
    if-ne v0, v8, :cond_4

    #@7e
    .line 7274
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@80
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@83
    move-result-object v1

    #@84
    if-ne v0, v1, :cond_4

    #@86
    .line 7275
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    #@88
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@8a
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v0

    #@8e
    .line 7273
    if-eqz v0, :cond_4

    #@90
    .line 7276
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    #@92
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@94
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v0

    #@98
    .line 7273
    if-eqz v0, :cond_4

    #@9a
    .line 7277
    return v14

    #@9b
    .line 7279
    :cond_4
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@9d
    .line 7280
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    #@9f
    .line 7281
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    #@a1
    .line 7282
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@a3
    .line 7283
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@a6
    move-result-object v0

    #@a7
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@a9
    .line 7284
    new-instance v5, Landroid/graphics/Rect;

    #@ab
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@ad
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b0
    .line 7285
    .local v5, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    #@b2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@b4
    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b7
    .line 7286
    .local v6, "dockedStackBounds":Landroid/graphics/Rect;
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b9
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$22;

    #@bb
    move-object v1, p0

    #@bc
    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    #@bf
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c2
    .line 7298
    return v9
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    #@0
    .prologue
    .line 1983
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1984
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    #@b
    .line 1982
    :goto_0
    return-void

    #@c
    .line 1986
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
    .line 6149
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@4
    move-result v0

    #@5
    .line 6150
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6151
    return v3

    #@a
    .line 6154
    :cond_0
    if-eqz v0, :cond_1

    #@c
    .line 6155
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v1

    #@12
    .line 6156
    const-string/jumbo v2, "theater_mode_on"

    #@15
    .line 6155
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@18
    .line 6159
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@1a
    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@1d
    .line 6160
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 6145
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@2
    const-string/jumbo v1, "android.policy:POWER"

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@8
    .line 6144
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
    .line 2549
    if-nez p2, :cond_0

    #@2
    .line 2550
    const/4 v13, 0x0

    #@3
    return-object v13

    #@4
    .line 2553
    :cond_0
    const/4 v12, 0x0

    #@5
    .line 2554
    .local v12, "wm":Landroid/view/WindowManager;
    const/4 v10, 0x0

    #@6
    .line 2557
    .local v10, "view":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    .line 2561
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
    .line 2563
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
    .line 2564
    move/from16 v0, p3

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 2570
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
    .line 2573
    move-object/from16 v0, p10

    #@2a
    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@2d
    move-result-object v6

    #@2e
    .line 2574
    .local v6, "overrideContext":Landroid/content/Context;
    move/from16 v0, p3

    #@30
    invoke-virtual {v6, v0}, Landroid/content/Context;->setTheme(I)V

    #@33
    .line 2576
    sget-object v13, Lcom/android/internal/R$styleable;->Window:[I

    #@35
    .line 2575
    invoke-virtual {v6, v13}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@38
    move-result-object v9

    #@39
    .line 2577
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    #@3a
    const/4 v14, 0x0

    #@3b
    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3e
    move-result v8

    #@3f
    .line 2578
    .local v8, "resId":I
    if-eqz v8, :cond_3

    #@41
    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v13

    #@45
    if-eqz v13, :cond_3

    #@47
    .line 2584
    move-object v1, v6

    #@48
    .line 2588
    .end local v6    # "overrideContext":Landroid/content/Context;
    .end local v8    # "resId":I
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v11, Lcom/android/internal/policy/PhoneWindow;

    #@4a
    invoke-direct {v11, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@4d
    .line 2589
    .local v11, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v13, 0x1

    #@4e
    invoke-virtual {v11, v13}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    #@51
    .line 2591
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
    .line 2593
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_7

    #@5e
    .line 2594
    const/4 v13, 0x1

    #@5f
    invoke-virtual {v11, v5, v13}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    #@62
    .line 2600
    :goto_1
    const/4 v13, 0x3

    #@63
    .line 2599
    invoke-virtual {v11, v13}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@66
    .line 2602
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
    .line 2606
    :try_start_3
    move-object/from16 v0, p0

    #@71
    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    if-eqz v14, :cond_4

    #@75
    .line 2607
    const/high16 v14, 0x80000

    #@77
    or-int p9, p9, v14

    #@79
    :cond_4
    :try_start_4
    monitor-exit v13

    #@7a
    .line 2616
    or-int/lit8 v13, p9, 0x10

    #@7c
    or-int/lit8 v13, v13, 0x8

    #@7e
    .line 2619
    const/high16 v14, 0x20000

    #@80
    .line 2616
    or-int/2addr v13, v14

    #@81
    .line 2620
    or-int/lit8 v14, p9, 0x10

    #@83
    or-int/lit8 v14, v14, 0x8

    #@85
    .line 2623
    const/high16 v15, 0x20000

    #@87
    .line 2620
    or-int/2addr v14, v15

    #@88
    .line 2615
    invoke-virtual {v11, v13, v14}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@8b
    .line 2625
    move/from16 v0, p7

    #@8d
    invoke-virtual {v11, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    #@90
    .line 2626
    move/from16 v0, p8

    #@92
    invoke-virtual {v11, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    #@95
    .line 2628
    const/4 v13, -0x1

    #@96
    .line 2629
    const/4 v14, -0x1

    #@97
    .line 2628
    invoke-virtual {v11, v13, v14}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    #@9a
    .line 2631
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9d
    move-result-object v7

    #@9e
    .line 2632
    .local v7, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    #@a0
    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@a2
    .line 2633
    move-object/from16 v0, p2

    #@a4
    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@a6
    .line 2634
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@a9
    move-result-object v13

    #@aa
    .line 2635
    const/16 v14, 0x8

    #@ac
    const/4 v15, 0x0

    #@ad
    .line 2634
    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b0
    move-result v13

    #@b1
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@b3
    .line 2636
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b5
    or-int/lit8 v13, v13, 0x1

    #@b7
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b9
    .line 2638
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@bb
    or-int/lit8 v13, v13, 0x10

    #@bd
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@bf
    .line 2640
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@c2
    move-result v13

    #@c3
    if-nez v13, :cond_5

    #@c5
    .line 2641
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@c7
    or-int/lit16 v13, v13, 0x80

    #@c9
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@cb
    .line 2644
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
    .line 2646
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
    .line 2647
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    #@f2
    move-result-object v10

    #@f3
    .line 2652
    .local v10, "view":Landroid/view/View;
    invoke-interface {v12, v10, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@f6
    .line 2656
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
    .line 2667
    :goto_2
    if-eqz v10, :cond_6

    #@ff
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@102
    move-result-object v14

    #@103
    if-nez v14, :cond_6

    #@105
    .line 2668
    const-string/jumbo v14, "WindowManager"

    #@108
    const-string/jumbo v15, "view not successfully added to wm, removing view"

    #@10b
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 2669
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@111
    .line 2656
    :cond_6
    return-object v13

    #@112
    .line 2596
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
    .line 2657
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    #@11b
    .line 2659
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
    .line 2660
    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    #@133
    move-result-object v15

    #@134
    .line 2659
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
    .line 2667
    if-eqz v10, :cond_8

    #@141
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@144
    move-result-object v13

    #@145
    if-nez v13, :cond_8

    #@147
    .line 2668
    const-string/jumbo v13, "WindowManager"

    #@14a
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@14d
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 2669
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@153
    .line 2673
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_3
    const/4 v13, 0x0

    #@154
    return-object v13

    #@155
    .line 2602
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
    .line 2661
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v4

    #@159
    .line 2665
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
    .line 2667
    if-eqz v10, :cond_8

    #@177
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17a
    move-result-object v13

    #@17b
    if-nez v13, :cond_8

    #@17d
    .line 2668
    const-string/jumbo v13, "WindowManager"

    #@180
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@183
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    .line 2669
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@189
    goto :goto_3

    #@18a
    .line 2656
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
    .line 2666
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v7    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catchall_1
    move-exception v13

    #@18e
    .line 2667
    if-eqz v10, :cond_a

    #@190
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@193
    move-result-object v14

    #@194
    if-nez v14, :cond_a

    #@196
    .line 2668
    const-string/jumbo v14, "WindowManager"

    #@199
    const-string/jumbo v15, "view not successfully added to wm, removing view"

    #@19c
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19f
    .line 2669
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@1a2
    .line 2666
    :cond_a
    throw v13

    #@1a3
    .line 2565
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
    .line 2261
    and-int/lit8 v2, p2, 0x1

    #@5
    if-eqz v2, :cond_0

    #@7
    move v0, v1

    #@8
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    #@a
    .line 2263
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@d
    .line 2264
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@10
    .line 2266
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@12
    if-eq v0, v1, :cond_1

    #@14
    .line 2267
    if-ne p2, v1, :cond_2

    #@16
    .line 2268
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@1b
    move-result v0

    #@1c
    .line 2266
    if-eqz v0, :cond_2

    #@1e
    .line 2269
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@20
    .line 2270
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@22
    if-nez v0, :cond_2

    #@24
    .line 2271
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@26
    .line 2275
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@28
    if-eq v0, v1, :cond_3

    #@2a
    .line 2276
    if-ne p3, v1, :cond_4

    #@2c
    .line 2277
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@2e
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@31
    move-result v0

    #@32
    .line 2275
    if-eqz v0, :cond_4

    #@34
    .line 2278
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@36
    .line 2260
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3803
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@4
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@6
    invoke-virtual {v0, v3, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    #@9
    .line 3804
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@b
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@d
    invoke-virtual {v0, v3, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    #@10
    .line 3805
    and-int/lit16 v0, p1, 0x4000

    #@12
    if-lez v0, :cond_0

    #@14
    move v0, v1

    #@15
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@17
    .line 3806
    const/high16 v0, 0x10000

    #@19
    and-int/2addr v0, p1

    #@1a
    if-lez v0, :cond_1

    #@1c
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    #@1e
    .line 3810
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@20
    and-int/2addr v0, p1

    #@21
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@23
    .line 3813
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@25
    not-int v0, v0

    #@26
    and-int/2addr v0, p1

    #@27
    .line 3814
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@29
    not-int v1, v1

    #@2a
    .line 3813
    and-int/2addr v0, v1

    #@2b
    return v0

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 3805
    goto :goto_0

    #@2e
    :cond_1
    move v1, v2

    #@2f
    .line 3806
    goto :goto_1
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/high16 v3, -0x80000000

    #@3
    .line 2197
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5
    sparse-switch v1, :sswitch_data_0

    #@8
    .line 2218
    :cond_0
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    const/16 v2, 0x7d0

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 2220
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@10
    and-int/lit16 v1, v1, -0x401

    #@12
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@14
    .line 2223
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_4

    #@1a
    .line 2224
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1c
    and-int/2addr v1, v3

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 2225
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@21
    or-int/lit16 v1, v1, 0x200

    #@23
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@25
    .line 2228
    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@27
    const/high16 v2, 0x20000

    #@29
    and-int/2addr v1, v2

    #@2a
    if-eqz v1, :cond_5

    #@2c
    const/4 v0, 0x1

    #@2d
    .line 2230
    .local v0, "forceWindowDrawsStatusBarBackground":Z
    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f
    and-int/2addr v1, v3

    #@30
    if-nez v1, :cond_3

    #@32
    .line 2231
    if-eqz v0, :cond_4

    #@34
    .line 2232
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@36
    if-ne v1, v4, :cond_4

    #@38
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@3a
    if-ne v1, v4, :cond_4

    #@3c
    .line 2233
    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@3e
    or-int/lit16 v1, v1, 0x400

    #@40
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@42
    .line 2196
    .end local v0    # "forceWindowDrawsStatusBarBackground":Z
    :cond_4
    return-void

    #@43
    .line 2201
    :sswitch_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@45
    or-int/lit8 v1, v1, 0x18

    #@47
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@49
    .line 2203
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4b
    const v2, -0x40001

    #@4e
    and-int/2addr v1, v2

    #@4f
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@51
    goto :goto_0

    #@52
    .line 2211
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@54
    if-eqz v1, :cond_0

    #@56
    .line 2212
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@58
    const v2, -0x100001

    #@5b
    and-int/2addr v1, v2

    #@5c
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5e
    .line 2213
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@60
    and-int/lit16 v1, v1, -0x401

    #@62
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@64
    goto :goto_0

    #@65
    .line 2228
    :cond_5
    const/4 v0, 0x0

    #@66
    .restart local v0    # "forceWindowDrawsStatusBarBackground":Z
    goto :goto_1

    #@67
    .line 2197
    nop

    #@68
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
    .line 5245
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
    .line 5247
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 5249
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
    .line 4884
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@3
    move-result v3

    #@4
    .line 4885
    .local v3, "fl":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    if-nez v7, :cond_0

    #@8
    .line 4886
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@b
    move-result v7

    #@c
    .line 4885
    if-eqz v7, :cond_0

    #@e
    .line 4886
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10
    const/16 v8, 0x7db

    #@12
    if-ne v7, v8, :cond_0

    #@14
    .line 4887
    const/4 v7, 0x1

    #@15
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@17
    .line 4888
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@1a
    move-result v7

    #@1b
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@1d
    .line 4890
    :cond_0
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1f
    const/16 v8, 0x7d0

    #@21
    if-ne v7, v8, :cond_2

    #@23
    .line 4891
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@25
    and-int/lit16 v7, v7, 0x400

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 4892
    const/4 v7, 0x1

    #@2a
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@2c
    .line 4893
    const/4 v7, 0x1

    #@2d
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@2f
    .line 4895
    :cond_1
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@31
    and-int/lit16 v7, v7, 0x1000

    #@33
    if-eqz v7, :cond_2

    #@35
    .line 4896
    const/4 v7, 0x1

    #@36
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@38
    .line 4900
    :cond_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3a
    const/4 v8, 0x1

    #@3b
    if-lt v7, v8, :cond_a

    #@3d
    .line 4901
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3f
    const/16 v8, 0x7d0

    #@41
    if-ge v7, v8, :cond_9

    #@43
    const/4 v1, 0x1

    #@44
    .line 4902
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v7, 0x80000

    #@46
    and-int/2addr v7, v3

    #@47
    if-eqz v7, :cond_b

    #@49
    const/4 v5, 0x1

    #@4a
    .line 4903
    .local v5, "showWhenLocked":Z
    :goto_1
    const/high16 v7, 0x400000

    #@4c
    and-int/2addr v7, v3

    #@4d
    if-eqz v7, :cond_c

    #@4f
    const/4 v2, 0x1

    #@50
    .line 4904
    .local v2, "dismissKeyguard":Z
    :goto_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    #@53
    move-result v6

    #@54
    .line 4905
    .local v6, "stackId":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@56
    if-nez v7, :cond_3

    #@58
    .line 4906
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@5b
    move-result v7

    #@5c
    .line 4905
    if-eqz v7, :cond_3

    #@5e
    .line 4906
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_d

    #@64
    .line 4987
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@66
    if-nez v7, :cond_4

    #@68
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@6a
    if-nez v7, :cond_4

    #@6c
    .line 4992
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
    .line 4993
    const/4 v7, 0x1

    #@7b
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@7d
    .line 4994
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@7f
    .line 4999
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
    if-eqz v7, :cond_20

    #@8b
    :cond_5
    const/4 v4, 0x0

    #@8c
    .line 5000
    .local v4, "reallyVisible":Z
    :goto_4
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@8e
    if-nez v7, :cond_6

    #@90
    if-eqz v4, :cond_6

    #@92
    .line 5001
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@95
    move-result v7

    #@96
    .line 5000
    if-eqz v7, :cond_6

    #@98
    .line 5001
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    #@9b
    move-result v7

    #@9c
    .line 5000
    if-eqz v7, :cond_6

    #@9e
    .line 5002
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a0
    .line 5008
    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a2
    if-nez v7, :cond_7

    #@a4
    if-eqz v4, :cond_7

    #@a6
    if-eqz v1, :cond_7

    #@a8
    if-nez p3, :cond_7

    #@aa
    .line 5009
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    #@ad
    move-result v7

    #@ae
    .line 5008
    if-eqz v7, :cond_7

    #@b0
    .line 5009
    const/4 v7, 0x3

    #@b1
    if-ne v6, v7, :cond_7

    #@b3
    .line 5010
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b5
    .line 5011
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b7
    if-nez v7, :cond_7

    #@b9
    .line 5012
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@bb
    .line 5018
    :cond_7
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@bd
    if-nez v7, :cond_8

    #@bf
    if-eqz v4, :cond_8

    #@c1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@c4
    move-result v7

    #@c5
    if-eqz v7, :cond_8

    #@c7
    .line 5019
    const/4 v7, 0x3

    #@c8
    if-ne v6, v7, :cond_8

    #@ca
    .line 5020
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@cc
    .line 4881
    :cond_8
    return-void

    #@cd
    .line 4901
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "reallyVisible":Z
    .end local v5    # "showWhenLocked":Z
    .end local v6    # "stackId":I
    :cond_9
    const/4 v1, 0x0

    #@ce
    .restart local v1    # "appWindow":Z
    goto/16 :goto_0

    #@d0
    .line 4900
    .end local v1    # "appWindow":Z
    :cond_a
    const/4 v1, 0x0

    #@d1
    .restart local v1    # "appWindow":Z
    goto/16 :goto_0

    #@d3
    .line 4902
    :cond_b
    const/4 v5, 0x0

    #@d4
    .restart local v5    # "showWhenLocked":Z
    goto/16 :goto_1

    #@d6
    .line 4903
    :cond_c
    const/4 v2, 0x0

    #@d7
    .restart local v2    # "dismissKeyguard":Z
    goto/16 :goto_2

    #@d9
    .line 4907
    .restart local v6    # "stackId":I
    :cond_d
    and-int/lit16 v7, v3, 0x800

    #@db
    if-eqz v7, :cond_e

    #@dd
    .line 4908
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@df
    and-int/lit16 v7, v7, 0x400

    #@e1
    if-eqz v7, :cond_17

    #@e3
    .line 4909
    const/4 v7, 0x1

    #@e4
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@e6
    .line 4914
    :cond_e
    :goto_5
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e8
    const/16 v8, 0x7e7

    #@ea
    if-ne v7, v8, :cond_10

    #@ec
    .line 4917
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@ee
    if-eqz v7, :cond_f

    #@f0
    .line 4918
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@f3
    move-result v7

    #@f4
    if-eqz v7, :cond_10

    #@f6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    #@f9
    move-result v7

    #@fa
    .line 4917
    if-eqz v7, :cond_10

    #@fc
    .line 4919
    :cond_f
    const/4 v7, 0x1

    #@fd
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@ff
    .line 4920
    const/4 v1, 0x1

    #@100
    .line 4924
    :cond_10
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@103
    move-result-object v0

    #@104
    .line 4929
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_4

    #@106
    if-nez p3, :cond_4

    #@108
    .line 4930
    if-eqz v5, :cond_19

    #@10a
    .line 4932
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@10c
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@10f
    .line 4933
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@111
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@114
    .line 4934
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@116
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@119
    move-result v7

    #@11a
    if-eqz v7, :cond_13

    #@11c
    .line 4935
    if-eqz v2, :cond_11

    #@11e
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@120
    if-eqz v7, :cond_18

    #@122
    .line 4937
    :cond_11
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@125
    move-result v7

    #@126
    if-nez v7, :cond_12

    #@128
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@12b
    move-result v7

    #@12c
    if-eqz v7, :cond_13

    #@12e
    .line 4938
    :cond_12
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@130
    .line 4939
    const/4 v7, 0x1

    #@131
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@133
    .line 4940
    const/4 v7, 0x0

    #@134
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@136
    .line 4953
    :cond_13
    :goto_6
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    #@139
    move-result v7

    #@13a
    if-eqz v7, :cond_16

    #@13c
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    #@13f
    move-result v7

    #@140
    if-eqz v7, :cond_16

    #@142
    .line 4955
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@144
    .line 4956
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@146
    if-nez v7, :cond_14

    #@148
    .line 4957
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@14a
    .line 4959
    :cond_14
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@14c
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@14f
    move-result v7

    #@150
    if-nez v7, :cond_1e

    #@152
    .line 4960
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@154
    if-nez v7, :cond_1e

    #@156
    .line 4963
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@158
    if-ne v7, p1, :cond_1c

    #@15a
    .line 4964
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@15c
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@15e
    if-ne v7, v8, :cond_1c

    #@160
    .line 4965
    const/4 v7, 0x2

    #@161
    .line 4963
    :goto_7
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@163
    .line 4966
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@165
    .line 4967
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@167
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@169
    .line 4968
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@16b
    if-eqz v7, :cond_1d

    #@16d
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@16f
    :goto_8
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@171
    .line 4976
    :cond_15
    :goto_9
    and-int/lit8 v7, v3, 0x1

    #@173
    if-eqz v7, :cond_16

    #@175
    .line 4977
    const/4 v7, 0x1

    #@176
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@178
    .line 4981
    :cond_16
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@17a
    if-nez v7, :cond_4

    #@17c
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@17e
    if-eqz v7, :cond_4

    #@180
    .line 4982
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@182
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@185
    move-result-object v7

    #@186
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@189
    move-result-object v8

    #@18a
    if-eq v7, v8, :cond_4

    #@18c
    .line 4983
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@18e
    const/high16 v8, 0x80000

    #@190
    and-int/2addr v7, v8

    #@191
    if-nez v7, :cond_4

    #@193
    .line 4984
    const/4 v7, 0x0

    #@194
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@197
    goto/16 :goto_3

    #@199
    .line 4911
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_17
    const/4 v7, 0x1

    #@19a
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@19c
    goto/16 :goto_5

    #@19e
    .line 4936
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_18
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@1a0
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a3
    goto :goto_6

    #@1a4
    .line 4943
    :cond_19
    if-eqz v2, :cond_1b

    #@1a6
    .line 4944
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@1a8
    if-eqz v7, :cond_1a

    #@1aa
    .line 4945
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1ac
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1af
    .line 4949
    :goto_a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@1b1
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1b4
    goto :goto_6

    #@1b5
    .line 4947
    :cond_1a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1b7
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@1ba
    goto :goto_a

    #@1bb
    .line 4951
    :cond_1b
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1bd
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1c0
    goto/16 :goto_6

    #@1c2
    .line 4965
    :cond_1c
    const/4 v7, 0x1

    #@1c3
    goto :goto_7

    #@1c4
    .line 4968
    :cond_1d
    const/4 v7, 0x0

    #@1c5
    goto :goto_8

    #@1c6
    .line 4969
    :cond_1e
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1c8
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@1cb
    move-result v7

    #@1cc
    if-eqz v7, :cond_15

    #@1ce
    if-eqz v5, :cond_15

    #@1d0
    .line 4970
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@1d3
    move-result v7

    #@1d4
    if-nez v7, :cond_1f

    #@1d6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@1d9
    move-result v7

    #@1da
    .line 4969
    if-eqz v7, :cond_15

    #@1dc
    .line 4973
    :cond_1f
    const/4 v7, 0x1

    #@1dd
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1df
    .line 4974
    const/4 v7, 0x0

    #@1e0
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@1e2
    goto :goto_9

    #@1e3
    .line 4999
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_20
    const/4 v4, 0x1

    #@1e4
    .restart local v4    # "reallyVisible":Z
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
    .line 3912
    move/from16 v0, p4

    #@2
    move-object/from16 v1, p0

    #@4
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@6
    .line 3914
    if-eqz p1, :cond_5

    #@8
    .line 3915
    packed-switch p4, :pswitch_data_0

    #@b
    .line 3935
    move-object/from16 v0, p0

    #@d
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@f
    move/from16 v24, v0

    #@11
    .line 3936
    .local v24, "overscanLeft":I
    move-object/from16 v0, p0

    #@13
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@15
    move/from16 v25, v0

    #@17
    .line 3937
    .local v25, "overscanTop":I
    move-object/from16 v0, p0

    #@19
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@1b
    .line 3938
    .local v7, "overscanRight":I
    move-object/from16 v0, p0

    #@1d
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@1f
    .line 3947
    .local v8, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    #@20
    move-object/from16 v0, p0

    #@22
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@24
    const/4 v2, 0x0

    #@25
    move-object/from16 v0, p0

    #@27
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@29
    .line 3948
    const/4 v2, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@2e
    const/4 v2, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@33
    .line 3949
    move/from16 v0, p2

    #@35
    move-object/from16 v1, p0

    #@37
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@39
    move/from16 v0, p2

    #@3b
    move-object/from16 v1, p0

    #@3d
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@3f
    .line 3950
    move/from16 v0, p3

    #@41
    move-object/from16 v1, p0

    #@43
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@45
    move/from16 v0, p3

    #@47
    move-object/from16 v1, p0

    #@49
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@4b
    .line 3951
    const/4 v2, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@50
    .line 3952
    const/4 v2, 0x0

    #@51
    move-object/from16 v0, p0

    #@53
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@55
    .line 3953
    move/from16 v0, p2

    #@57
    move-object/from16 v1, p0

    #@59
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@5b
    .line 3954
    move/from16 v0, p3

    #@5d
    move-object/from16 v1, p0

    #@5f
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@61
    .line 3955
    move/from16 v0, v24

    #@63
    move-object/from16 v1, p0

    #@65
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@67
    .line 3956
    move/from16 v0, v25

    #@69
    move-object/from16 v1, p0

    #@6b
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@6d
    .line 3957
    sub-int v2, p2, v24

    #@6f
    sub-int/2addr v2, v7

    #@70
    move-object/from16 v0, p0

    #@72
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@74
    .line 3958
    sub-int v2, p3, v25

    #@76
    sub-int/2addr v2, v8

    #@77
    move-object/from16 v0, p0

    #@79
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@7b
    .line 3959
    move-object/from16 v0, p0

    #@7d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7f
    move-object/from16 v0, p0

    #@81
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@83
    .line 3960
    move-object/from16 v0, p0

    #@85
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@87
    move-object/from16 v0, p0

    #@89
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@8b
    .line 3961
    move-object/from16 v0, p0

    #@8d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@93
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    #@95
    move-object/from16 v0, p0

    #@97
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@99
    .line 3962
    move-object/from16 v0, p0

    #@9b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@a1
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@a7
    .line 3964
    move-object/from16 v0, p0

    #@a9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@ab
    move-object/from16 v0, p0

    #@ad
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@af
    .line 3963
    move-object/from16 v0, p0

    #@b1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@b7
    move-object/from16 v0, p0

    #@b9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@bb
    move-object/from16 v0, p0

    #@bd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@bf
    move-object/from16 v0, p0

    #@c1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@c3
    .line 3966
    move-object/from16 v0, p0

    #@c5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@cb
    .line 3965
    move-object/from16 v0, p0

    #@cd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@cf
    move-object/from16 v0, p0

    #@d1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@d7
    move-object/from16 v0, p0

    #@d9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@db
    move-object/from16 v0, p0

    #@dd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@df
    .line 3968
    sub-int v2, p2, v7

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@e5
    .line 3967
    move-object/from16 v0, p0

    #@e7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@ed
    move-object/from16 v0, p0

    #@ef
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@f9
    .line 3970
    sub-int v2, p3, v8

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@ff
    .line 3969
    move-object/from16 v0, p0

    #@101
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@103
    move-object/from16 v0, p0

    #@105
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@107
    move-object/from16 v0, p0

    #@109
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@10f
    move-object/from16 v0, p0

    #@111
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@113
    .line 3971
    const/high16 v2, 0x10000000

    #@115
    move-object/from16 v0, p0

    #@117
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@119
    .line 3972
    const/4 v2, -0x1

    #@11a
    move-object/from16 v0, p0

    #@11c
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@11e
    .line 3975
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@120
    .line 3976
    .local v15, "pf":Landroid/graphics/Rect;
    sget-object v16, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@122
    .line 3977
    .local v16, "df":Landroid/graphics/Rect;
    sget-object v17, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@124
    .line 3978
    .local v17, "of":Landroid/graphics/Rect;
    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@126
    .line 3979
    .local v18, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@128
    .line 3980
    .local v9, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@12a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

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
    iput v2, v15, Landroid/graphics/Rect;->left:I

    #@13a
    .line 3981
    move-object/from16 v0, p0

    #@13c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@13e
    move-object/from16 v0, v18

    #@140
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@142
    move-object/from16 v0, v17

    #@144
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@146
    move-object/from16 v0, v16

    #@148
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@14a
    iput v2, v15, Landroid/graphics/Rect;->top:I

    #@14c
    .line 3982
    move-object/from16 v0, p0

    #@14e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@150
    move-object/from16 v0, v18

    #@152
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@154
    move-object/from16 v0, v17

    #@156
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@158
    move-object/from16 v0, v16

    #@15a
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@15c
    iput v2, v15, Landroid/graphics/Rect;->right:I

    #@15e
    .line 3983
    move-object/from16 v0, p0

    #@160
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@162
    move-object/from16 v0, v18

    #@164
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@166
    move-object/from16 v0, v17

    #@168
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@16a
    move-object/from16 v0, v16

    #@16c
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@16e
    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    #@170
    .line 3984
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    #@173
    .line 3986
    if-eqz p1, :cond_4

    #@175
    .line 3989
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@179
    move/from16 v20, v0

    #@17b
    .line 3990
    .local v20, "sysui":I
    and-int/lit8 v2, v20, 0x2

    #@17d
    if-nez v2, :cond_6

    #@17f
    const/4 v10, 0x1

    #@180
    .line 3992
    .local v10, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    #@183
    .line 3991
    and-int v2, v2, v20

    #@185
    if-eqz v2, :cond_7

    #@187
    const/4 v11, 0x1

    #@188
    .line 3993
    .local v11, "navTranslucent":Z
    :goto_2
    move/from16 v0, v20

    #@18a
    and-int/lit16 v2, v0, 0x800

    #@18c
    if-eqz v2, :cond_8

    #@18e
    const/16 v22, 0x1

    #@190
    .line 3994
    .local v22, "immersive":Z
    :goto_3
    move/from16 v0, v20

    #@192
    and-int/lit16 v2, v0, 0x1000

    #@194
    if-eqz v2, :cond_9

    #@196
    const/16 v23, 0x1

    #@198
    .line 3995
    .local v23, "immersiveSticky":Z
    :goto_4
    if-nez v22, :cond_a

    #@19a
    move/from16 v12, v23

    #@19c
    .line 3996
    :goto_5
    if-eqz v23, :cond_b

    #@19e
    const/4 v2, 0x0

    #@19f
    :goto_6
    and-int/2addr v11, v2

    #@1a0
    .line 3997
    .local v11, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@1a3
    move-result v2

    #@1a4
    if-eqz v2, :cond_0

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1aa
    if-eqz v2, :cond_c

    #@1ac
    :cond_0
    const/16 v21, 0x0

    #@1ae
    .line 3998
    .local v21, "isKeyguardShowing":Z
    :goto_7
    if-nez v21, :cond_1

    #@1b0
    .line 3999
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@1b3
    move-result v2

    #@1b4
    and-int/2addr v11, v2

    #@1b5
    .line 4001
    :cond_1
    if-nez v21, :cond_e

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1bb
    if-eqz v2, :cond_e

    #@1bd
    .line 4002
    move-object/from16 v0, p0

    #@1bf
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c1
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1c4
    move-result-object v2

    #@1c5
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@1c7
    const/4 v3, -0x1

    #@1c8
    if-ne v2, v3, :cond_e

    #@1ca
    .line 4003
    move-object/from16 v0, p0

    #@1cc
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1ce
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1d1
    move-result-object v2

    #@1d2
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@1d4
    const/4 v3, -0x1

    #@1d5
    if-ne v2, v3, :cond_d

    #@1d7
    const/4 v13, 0x1

    #@1d8
    .line 4009
    .local v13, "statusBarExpandedNotKeyguard":Z
    :goto_8
    if-nez v10, :cond_2

    #@1da
    if-eqz v12, :cond_f

    #@1dc
    .line 4010
    :cond_2
    move-object/from16 v0, p0

    #@1de
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1e0
    if-eqz v2, :cond_3

    #@1e2
    .line 4011
    move-object/from16 v0, p0

    #@1e4
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1e6
    .line 4012
    move-object/from16 v0, p0

    #@1e8
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1ee
    const/16 v5, 0x13

    #@1f0
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f3
    move-result-object v3

    #@1f4
    .line 4011
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1f7
    .line 4013
    const/4 v2, 0x0

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1fc
    .line 4023
    :cond_3
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@1ff
    move-result v2

    #@200
    if-eqz v2, :cond_10

    #@202
    const/4 v2, 0x0

    #@203
    :goto_a
    or-int/2addr v10, v2

    #@204
    .local v10, "navVisible":Z
    move-object/from16 v2, p0

    #@206
    move/from16 v3, p2

    #@208
    move/from16 v4, p3

    #@20a
    move/from16 v5, p4

    #@20c
    move/from16 v6, p5

    #@20e
    .line 4025
    invoke-direct/range {v2 .. v13}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(IIIIIILandroid/graphics/Rect;ZZZZ)Z

    #@211
    move-result v26

    #@212
    .local v26, "updateSysUiVisibility":Z
    move-object/from16 v14, p0

    #@214
    move-object/from16 v19, v9

    #@216
    .line 4030
    invoke-direct/range {v14 .. v21}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    #@219
    move-result v2

    #@21a
    or-int v26, v26, v2

    #@21c
    .line 4031
    if-eqz v26, :cond_4

    #@21e
    .line 4032
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@221
    .line 3911
    .end local v10    # "navVisible":Z
    .end local v11    # "navTranslucent":Z
    .end local v13    # "statusBarExpandedNotKeyguard":Z
    .end local v20    # "sysui":I
    .end local v21    # "isKeyguardShowing":Z
    .end local v22    # "immersive":Z
    .end local v23    # "immersiveSticky":Z
    .end local v26    # "updateSysUiVisibility":Z
    :cond_4
    return-void

    #@222
    .line 3917
    .end local v7    # "overscanRight":I
    .end local v8    # "overscanBottom":I
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .end local v15    # "pf":Landroid/graphics/Rect;
    .end local v16    # "df":Landroid/graphics/Rect;
    .end local v17    # "of":Landroid/graphics/Rect;
    .end local v18    # "vf":Landroid/graphics/Rect;
    .end local v24    # "overscanLeft":I
    .end local v25    # "overscanTop":I
    :pswitch_0
    move-object/from16 v0, p0

    #@224
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@226
    move/from16 v24, v0

    #@228
    .line 3918
    .restart local v24    # "overscanLeft":I
    move-object/from16 v0, p0

    #@22a
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@22c
    move/from16 v25, v0

    #@22e
    .line 3919
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@230
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@232
    .line 3920
    .restart local v7    # "overscanRight":I
    move-object/from16 v0, p0

    #@234
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@236
    .restart local v8    # "overscanBottom":I
    goto/16 :goto_0

    #@238
    .line 3923
    .end local v7    # "overscanRight":I
    .end local v8    # "overscanBottom":I
    .end local v24    # "overscanLeft":I
    .end local v25    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    #@23a
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@23c
    move/from16 v24, v0

    #@23e
    .line 3924
    .restart local v24    # "overscanLeft":I
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@242
    move/from16 v25, v0

    #@244
    .line 3925
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@246
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@248
    .line 3926
    .restart local v7    # "overscanRight":I
    move-object/from16 v0, p0

    #@24a
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@24c
    .restart local v8    # "overscanBottom":I
    goto/16 :goto_0

    #@24e
    .line 3929
    .end local v7    # "overscanRight":I
    .end local v8    # "overscanBottom":I
    .end local v24    # "overscanLeft":I
    .end local v25    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    #@250
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@252
    move/from16 v24, v0

    #@254
    .line 3930
    .restart local v24    # "overscanLeft":I
    move-object/from16 v0, p0

    #@256
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@258
    move/from16 v25, v0

    #@25a
    .line 3931
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@25c
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@25e
    .line 3932
    .restart local v7    # "overscanRight":I
    move-object/from16 v0, p0

    #@260
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@262
    .restart local v8    # "overscanBottom":I
    goto/16 :goto_0

    #@264
    .line 3942
    .end local v7    # "overscanRight":I
    .end local v8    # "overscanBottom":I
    .end local v24    # "overscanLeft":I
    .end local v25    # "overscanTop":I
    :cond_5
    const/16 v24, 0x0

    #@266
    .line 3943
    .restart local v24    # "overscanLeft":I
    const/16 v25, 0x0

    #@268
    .line 3944
    .restart local v25    # "overscanTop":I
    const/4 v7, 0x0

    #@269
    .line 3945
    .restart local v7    # "overscanRight":I
    const/4 v8, 0x0

    #@26a
    .restart local v8    # "overscanBottom":I
    goto/16 :goto_0

    #@26c
    .line 3990
    .restart local v9    # "dcf":Landroid/graphics/Rect;
    .restart local v15    # "pf":Landroid/graphics/Rect;
    .restart local v16    # "df":Landroid/graphics/Rect;
    .restart local v17    # "of":Landroid/graphics/Rect;
    .restart local v18    # "vf":Landroid/graphics/Rect;
    .restart local v20    # "sysui":I
    :cond_6
    const/4 v10, 0x0

    #@26d
    .local v10, "navVisible":Z
    goto/16 :goto_1

    #@26f
    .line 3991
    :cond_7
    const/4 v11, 0x0

    #@270
    .local v11, "navTranslucent":Z
    goto/16 :goto_2

    #@272
    .line 3993
    :cond_8
    const/16 v22, 0x0

    #@274
    .restart local v22    # "immersive":Z
    goto/16 :goto_3

    #@276
    .line 3994
    :cond_9
    const/16 v23, 0x0

    #@278
    .restart local v23    # "immersiveSticky":Z
    goto/16 :goto_4

    #@27a
    .line 3995
    :cond_a
    const/4 v12, 0x1

    #@27b
    .local v12, "navAllowedHidden":Z
    goto/16 :goto_5

    #@27d
    .line 3996
    .end local v12    # "navAllowedHidden":Z
    :cond_b
    const/4 v2, 0x1

    #@27e
    goto/16 :goto_6

    #@280
    .line 3997
    .local v11, "navTranslucent":Z
    :cond_c
    const/16 v21, 0x1

    #@282
    goto/16 :goto_7

    #@284
    .line 4003
    .restart local v21    # "isKeyguardShowing":Z
    :cond_d
    const/4 v13, 0x0

    #@285
    .restart local v13    # "statusBarExpandedNotKeyguard":Z
    goto/16 :goto_8

    #@287
    .line 4001
    .end local v13    # "statusBarExpandedNotKeyguard":Z
    :cond_e
    const/4 v13, 0x0

    #@288
    .restart local v13    # "statusBarExpandedNotKeyguard":Z
    goto/16 :goto_8

    #@28a
    .line 4015
    :cond_f
    move-object/from16 v0, p0

    #@28c
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@28e
    if-nez v2, :cond_3

    #@290
    .line 4016
    move-object/from16 v0, p0

    #@292
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@294
    move-object/from16 v0, p0

    #@296
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@298
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@29b
    move-result-object v3

    #@29c
    .line 4017
    move-object/from16 v0, p0

    #@29e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@2a0
    .line 4016
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    #@2a3
    move-result-object v2

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@2a8
    goto/16 :goto_9

    #@2aa
    .line 4023
    :cond_10
    const/4 v2, 0x1

    #@2ab
    goto/16 :goto_a

    #@2ad
    .line 3915
    nop

    #@2ae
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
    .line 4855
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 4856
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    .line 4857
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    .line 4858
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a
    .line 4859
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@c
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@f
    .line 4860
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@11
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@14
    .line 4861
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@16
    .line 4862
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@18
    .line 4863
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@1a
    .line 4864
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@1c
    .line 4865
    const/4 v1, -0x1

    #@1d
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@1f
    .line 4867
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@21
    .line 4868
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@23
    .line 4869
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@25
    .line 4870
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@27
    .line 4871
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@29
    .line 4872
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2b
    .line 4873
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    #@30
    move-result v1

    #@31
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@33
    .line 4874
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 4875
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
    .line 4874
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    #@43
    .line 4854
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
    .line 2522
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v1, :sswitch_data_0

    #@6
    .line 2531
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@d
    move-result v1

    #@e
    .line 2532
    const/16 v2, 0x7d0

    #@10
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@13
    move-result v2

    #@14
    .line 2531
    if-ge v1, v2, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    return v0

    #@18
    .line 2528
    :sswitch_0
    return v0

    #@19
    .line 2522
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
    .line 7546
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 7554
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 7551
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 7546
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
    .line 2054
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    .line 2056
    .local v5, "type":I
    const/4 v6, -0x1

    #@b
    aput v6, p2, v9

    #@d
    .line 2058
    const/4 v6, 0x1

    #@e
    if-lt v5, v6, :cond_0

    #@10
    const/16 v6, 0x63

    #@12
    if-le v5, v6, :cond_3

    #@14
    .line 2059
    :cond_0
    if-lt v5, v7, :cond_1

    #@16
    const/16 v6, 0x7cf

    #@18
    if-le v5, v6, :cond_3

    #@1a
    .line 2060
    :cond_1
    if-lt v5, v8, :cond_2

    #@1c
    if-le v5, v11, :cond_3

    #@1e
    .line 2061
    :cond_2
    const/16 v6, -0xa

    #@20
    return v6

    #@21
    .line 2064
    :cond_3
    if-lt v5, v8, :cond_4

    #@23
    if-le v5, v11, :cond_5

    #@25
    .line 2066
    :cond_4
    return v9

    #@26
    .line 2068
    :cond_5
    const/4 v4, 0x0

    #@27
    .line 2069
    .local v4, "permission":Ljava/lang/String;
    sparse-switch v5, :sswitch_data_0

    #@2a
    .line 2094
    const-string/jumbo v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@2d
    .line 2096
    .end local v4    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_a

    #@2f
    .line 2097
    const-string/jumbo v6, "android.permission.SYSTEM_ALERT_WINDOW"

    #@32
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_9

    #@38
    .line 2098
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3b
    move-result v1

    #@3c
    .line 2100
    .local v1, "callingUid":I
    if-ne v1, v7, :cond_6

    #@3e
    .line 2101
    return v9

    #@3f
    .line 2074
    .end local v1    # "callingUid":I
    .restart local v4    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v6, 0x2d

    #@41
    aput v6, p2, v9

    #@43
    goto :goto_0

    #@44
    .line 2090
    :sswitch_2
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    #@47
    .line 2091
    .local v4, "permission":Ljava/lang/String;
    const/16 v6, 0x18

    #@49
    aput v6, p2, v9

    #@4b
    goto :goto_0

    #@4c
    .line 2106
    .end local v4    # "permission":Ljava/lang/String;
    .restart local v1    # "callingUid":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@4e
    aget v7, p2, v9

    #@50
    .line 2107
    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@52
    .line 2106
    invoke-virtual {v6, v7, v1, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@55
    move-result v3

    #@56
    .line 2108
    .local v3, "mode":I
    packed-switch v3, :pswitch_data_0

    #@59
    .line 2130
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@5e
    move-result v6

    #@5f
    if-eqz v6, :cond_8

    #@61
    .line 2132
    return v10

    #@62
    .line 2113
    :pswitch_0
    return v9

    #@63
    .line 2116
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@65
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@68
    move-result-object v6

    #@69
    .line 2117
    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@6b
    .line 2118
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@6e
    move-result v8

    #@6f
    .line 2116
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@72
    move-result-object v0

    #@73
    .line 2120
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    const/16 v7, 0x17

    #@77
    if-ge v6, v7, :cond_7

    #@79
    .line 2121
    return v9

    #@7a
    .line 2123
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@7b
    .line 2126
    :cond_7
    return v10

    #@7c
    .line 2134
    :cond_8
    return v9

    #@7d
    .line 2139
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
    .line 2141
    return v10

    #@86
    .line 2144
    :cond_a
    return v9

    #@87
    .line 2069
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
    .line 2108
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
    .line 2152
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 2159
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9
    and-int/lit8 v2, v2, 0x10

    #@b
    if-nez v2, :cond_0

    #@d
    .line 2160
    return v0

    #@e
    .line 2190
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@10
    .line 2191
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@13
    .line 2190
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
    .line 2152
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
    .line 2899
    if-eqz p2, :cond_0

    #@2
    .line 2900
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    const v4, 0x10a0054

    #@7
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 2903
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    if-eqz p1, :cond_1

    #@10
    .line 2904
    const v3, 0x10a0055

    #@13
    .line 2903
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/view/animation/AnimationSet;

    #@19
    .line 2908
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    .line 2909
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
    .line 2910
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
    .line 2909
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 2905
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a0053

    #@36
    goto :goto_0

    #@37
    .line 2913
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
    .line 2919
    if-eqz p1, :cond_0

    #@2
    .line 2920
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 2922
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x10a0058

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
    .line 7004
    const/4 v2, 0x0

    #@3
    .line 7009
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@5
    if-ne v4, v6, :cond_0

    #@7
    .line 7010
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 7011
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@d
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    #@e
    .line 7025
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_6

    #@10
    .line 7026
    return-object v7

    #@11
    .line 7013
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
    .line 7017
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@1a
    const/4 v5, 0x6

    #@1b
    if-ne v4, v5, :cond_5

    #@1d
    .line 7018
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@1f
    const/4 v5, 0x1

    #@20
    if-eq v4, v5, :cond_3

    #@22
    .line 7019
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@24
    const/4 v5, 0x4

    #@25
    if-ne v4, v5, :cond_4

    #@27
    .line 7022
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
    .line 7020
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
    .line 7029
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    #@32
    .line 7030
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@34
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@37
    move-result-object v4

    #@38
    .line 7033
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@3a
    .line 7032
    const v6, 0x10080

    #@3d
    .line 7030
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@40
    move-result-object v1

    #@41
    .line 7034
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_7

    #@43
    .line 7035
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@45
    .line 7037
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_7
    if-eqz v0, :cond_8

    #@47
    .line 7038
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@49
    if-eqz v4, :cond_8

    #@4b
    .line 7039
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@4d
    const-string/jumbo v5, "android.dock_home"

    #@50
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@53
    move-result v4

    #@54
    .line 7037
    if-eqz v4, :cond_8

    #@56
    .line 7040
    new-instance v2, Landroid/content/Intent;

    #@58
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5b
    .line 7041
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@5d
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5f
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@62
    .line 7042
    return-object v2

    #@63
    .line 7045
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_8
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 6370
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
    .line 6372
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@e
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    #@10
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 6369
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5953
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@3
    .line 5956
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
    .line 5955
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    #@11
    move-result-object v0

    #@12
    .line 5961
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@15
    .line 5962
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1a
    .line 5952
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
    .line 5927
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 5932
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 5933
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@e
    .line 5934
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@13
    .line 5937
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@16
    .line 5939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 5940
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 5941
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@24
    .line 5943
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@26
    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 5945
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2d
    .line 5946
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
    .line 5922
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    #@38
    .line 5948
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
    .line 5966
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5967
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
    .line 5965
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
    .line 3463
    const/16 v18, 0x0

    #@2
    .line 3464
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@5
    move-result v4

    #@6
    and-int/lit16 v4, v4, 0x400

    #@8
    if-nez v4, :cond_1

    #@a
    .line 3465
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@d
    move-result-object v20

    #@e
    .line 3466
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@11
    move-result v21

    #@12
    .line 3467
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@15
    move-result v22

    #@16
    .line 3468
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_3

    #@1c
    .line 3469
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_2

    #@22
    const/16 v19, 0x1

    #@24
    .line 3473
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_4

    #@26
    .line 3474
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    #@29
    move-result-object v17

    #@2a
    .line 3479
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    #@2c
    .line 3485
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@2f
    move-result v4

    #@30
    or-int/lit16 v14, v4, 0x400

    #@32
    .line 3487
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    #@35
    move-result-wide v4

    #@36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    #@39
    move-result-wide v6

    #@3a
    .line 3488
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@3d
    move-result v8

    #@3e
    move-object/from16 v0, v17

    #@40
    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    #@42
    .line 3489
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@45
    move-result v10

    #@46
    move-object/from16 v0, v17

    #@48
    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@4a
    .line 3490
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@4d
    move-result v12

    #@4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    #@51
    move-result v13

    #@52
    .line 3491
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    #@55
    move-result v15

    #@56
    const/16 v16, 0x0

    #@58
    .line 3486
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@5b
    move-result-object v18

    #@5c
    .line 3493
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
    .line 3494
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    #@6d
    .line 3495
    const/16 v18, 0x0

    #@6f
    .line 3498
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_0
    if-eqz v19, :cond_5

    #@71
    .line 3499
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
    .line 3514
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
    .line 3469
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    #@7f
    goto :goto_0

    #@80
    .line 3468
    :cond_3
    const/16 v19, 0x0

    #@82
    goto :goto_0

    #@83
    .line 3476
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
    .line 3500
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
    .line 3501
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@9b
    move/from16 v0, v21

    #@9d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    #@a0
    .line 3502
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
    .line 7568
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
    .line 7569
    const-string/jumbo v0, " mSystemReady="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@19
    .line 7570
    const-string/jumbo v0, " mSystemBooted="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    .line 7571
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
    .line 7572
    const-string/jumbo v0, " mLidOpenRotation="

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@3a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3d
    .line 7573
    const-string/jumbo v0, " mCameraLensCoverState="

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 7574
    const-string/jumbo v0, " mHdmiPlugged="

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@50
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@53
    .line 7575
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@55
    if-nez v0, :cond_0

    #@57
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@59
    if-eqz v0, :cond_13

    #@5b
    .line 7577
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 7578
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@66
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 7579
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    #@70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    .line 7580
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@75
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 7581
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    #@7f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    .line 7582
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@84
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 7584
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@8d
    if-eqz v0, :cond_2

    #@8f
    .line 7585
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v0, "mLastFocusNeedsMenu="

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 7586
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@9a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9d
    .line 7588
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    #@a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a6
    .line 7589
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@a8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@ab
    .line 7591
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
    .line 7592
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
    .line 7593
    const-string/jumbo v0, " mDockMode="

    #@ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@cf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d2
    .line 7594
    const-string/jumbo v0, " mEnableCarDockHomeCapture="

    #@d5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dd
    .line 7595
    const-string/jumbo v0, " mCarDockRotation="

    #@e0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e8
    .line 7596
    const-string/jumbo v0, " mDeskDockRotation="

    #@eb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@f3
    .line 7597
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
    .line 7598
    const-string/jumbo v0, " mUserRotation="

    #@104
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@10c
    .line 7599
    const-string/jumbo v0, " mAllowAllRotations="

    #@10f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@114
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@117
    .line 7600
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
    .line 7601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@128
    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    #@12b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 7602
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@130
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@133
    .line 7603
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    #@136
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@139
    .line 7604
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@13b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@13e
    .line 7605
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141
    const-string/jumbo v0, "mLidKeyboardAccessibility="

    #@144
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 7606
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@149
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14c
    .line 7607
    const-string/jumbo v0, " mLidNavigationAccessibility="

    #@14f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@154
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@157
    .line 7608
    const-string/jumbo v0, " mLidControlsScreenLock="

    #@15a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@15f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@162
    .line 7609
    const-string/jumbo v0, " mLidControlsSleep="

    #@165
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@16a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@16d
    .line 7610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 7611
    const-string/jumbo v0, " mLongPressOnBackBehavior="

    #@173
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@176
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@17b
    .line 7612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    .line 7613
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    #@181
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@189
    .line 7614
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    #@18c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@191
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@194
    .line 7615
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    .line 7616
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    #@19a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@19f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a2
    .line 7617
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    #@1a5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@1aa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1ad
    .line 7618
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
    .line 7619
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
    .line 7620
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
    .line 7621
    const-string/jumbo v0, " mScreenOnFully="

    #@1da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dd
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@1df
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1e2
    .line 7622
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
    .line 7623
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    #@1f3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@1f8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1fb
    .line 7624
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    const-string/jumbo v0, "mOrientationSensorEnabled="

    #@201
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@204
    .line 7625
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@206
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@209
    .line 7626
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
    .line 7627
    const-string/jumbo v0, ","

    #@21a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@21f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@222
    .line 7628
    const-string/jumbo v0, ") "

    #@225
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@22a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22d
    .line 7629
    const-string/jumbo v0, "x"

    #@230
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@233
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@235
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@238
    .line 7630
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@23a
    if-nez v0, :cond_3

    #@23c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@23e
    if-eqz v0, :cond_14

    #@240
    .line 7632
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
    .line 7633
    const-string/jumbo v0, " top="

    #@251
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@256
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@259
    .line 7634
    const-string/jumbo v0, " right="

    #@25c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@261
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@264
    .line 7635
    const-string/jumbo v0, " bottom="

    #@267
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@26c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@26f
    .line 7637
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@272
    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    #@275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    .line 7638
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@27a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@27d
    .line 7639
    const-string/jumbo v0, ","

    #@280
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@283
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@285
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@288
    .line 7640
    const-string/jumbo v0, ") "

    #@28b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@293
    .line 7641
    const-string/jumbo v0, "x"

    #@296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@299
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@29b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@29e
    .line 7642
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
    .line 7643
    const-string/jumbo v0, ","

    #@2af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b7
    .line 7644
    const-string/jumbo v0, ") "

    #@2ba
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 7645
    const-string/jumbo v0, "x"

    #@2c5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2cd
    .line 7646
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
    .line 7647
    const-string/jumbo v0, ","

    #@2de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@2e3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 7648
    const-string/jumbo v0, ") "

    #@2e9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@2ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2f1
    .line 7649
    const-string/jumbo v0, "x"

    #@2f4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@2f9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2fc
    .line 7650
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
    .line 7651
    const-string/jumbo v0, ","

    #@30d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@312
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@315
    .line 7652
    const-string/jumbo v0, ")-("

    #@318
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@31d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@320
    .line 7653
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
    .line 7654
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
    .line 7655
    const-string/jumbo v0, ","

    #@342
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@345
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@347
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34a
    .line 7656
    const-string/jumbo v0, ")-("

    #@34d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@352
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@355
    .line 7657
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
    .line 7658
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
    .line 7659
    const-string/jumbo v0, ","

    #@377
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@37c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@37f
    .line 7660
    const-string/jumbo v0, ")-("

    #@382
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@385
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@387
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@38a
    .line 7661
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
    .line 7662
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
    .line 7663
    const-string/jumbo v0, ","

    #@3ac
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@3b1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3b4
    .line 7664
    const-string/jumbo v0, ")-("

    #@3b7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ba
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@3bc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3bf
    .line 7665
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
    .line 7666
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
    .line 7667
    const-string/jumbo v0, ","

    #@3e1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@3e6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3e9
    .line 7668
    const-string/jumbo v0, ")-("

    #@3ec
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ef
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@3f1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3f4
    .line 7669
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
    .line 7670
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
    .line 7671
    const-string/jumbo v0, ","

    #@416
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@419
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@41b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@41e
    .line 7672
    const-string/jumbo v0, ")-("

    #@421
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@424
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@426
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@429
    .line 7673
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
    .line 7674
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
    .line 7675
    const-string/jumbo v0, ","

    #@44b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@450
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@453
    .line 7676
    const-string/jumbo v0, ")-("

    #@456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@459
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@45b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@45e
    .line 7677
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
    .line 7678
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
    .line 7679
    const-string/jumbo v0, " mStatusBarLayer="

    #@480
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@485
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@488
    .line 7680
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
    .line 7681
    const-string/jumbo v0, " mShowingDream="

    #@499
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@49e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4a1
    .line 7682
    const-string/jumbo v0, " mDreamingLockscreen="

    #@4a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@4a9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4ac
    .line 7683
    const-string/jumbo v0, " mDreamingSleepToken="

    #@4af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@4b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b7
    .line 7684
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b9
    if-eqz v0, :cond_5

    #@4bb
    .line 7685
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4be
    const-string/jumbo v0, "mLastInputMethodWindow="

    #@4c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c4
    .line 7686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4c9
    .line 7688
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4cb
    if-eqz v0, :cond_6

    #@4cd
    .line 7689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d0
    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    #@4d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d6
    .line 7690
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4db
    .line 7692
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4dd
    if-eqz v0, :cond_7

    #@4df
    .line 7693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e2
    const-string/jumbo v0, "mStatusBar="

    #@4e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e8
    .line 7694
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@4ed
    const-string/jumbo v0, " isStatusBarKeyguard="

    #@4f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f3
    .line 7695
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@4f6
    move-result v0

    #@4f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@4fa
    .line 7697
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4fc
    if-eqz v0, :cond_8

    #@4fe
    .line 7698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@501
    const-string/jumbo v0, "mNavigationBar="

    #@504
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@507
    .line 7699
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@509
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@50c
    .line 7701
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@50e
    if-eqz v0, :cond_9

    #@510
    .line 7702
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    const-string/jumbo v0, "mFocusedWindow="

    #@516
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@519
    .line 7703
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@51b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@51e
    .line 7705
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@520
    if-eqz v0, :cond_a

    #@522
    .line 7706
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@525
    const-string/jumbo v0, "mFocusedApp="

    #@528
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52b
    .line 7707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@52d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@530
    .line 7709
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@532
    if-eqz v0, :cond_b

    #@534
    .line 7710
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@537
    const-string/jumbo v0, "mWinDismissingKeyguard="

    #@53a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53d
    .line 7711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@53f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@542
    .line 7713
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@544
    if-eqz v0, :cond_c

    #@546
    .line 7714
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@549
    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    #@54c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54f
    .line 7715
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@551
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@554
    .line 7717
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@556
    if-eqz v0, :cond_d

    #@558
    .line 7718
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55b
    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    #@55e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@561
    .line 7719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@563
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@566
    .line 7721
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@568
    if-eqz v0, :cond_e

    #@56a
    .line 7722
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56d
    const-string/jumbo v0, "mForcingShowNavBar="

    #@570
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@573
    .line 7723
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@575
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@578
    const-string/jumbo v0, "mForcingShowNavBarLayer="

    #@57b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57e
    .line 7724
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@580
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@583
    .line 7726
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
    .line 7727
    const-string/jumbo v0, " mHideLockScreen="

    #@594
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@597
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@599
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@59c
    .line 7728
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
    .line 7729
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    #@5ad
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b0
    .line 7730
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@5b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5b5
    .line 7731
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
    .line 7732
    const-string/jumbo v0, " mWinDismissingKeyguard="

    #@5c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@5cb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@5ce
    .line 7733
    const-string/jumbo v0, " mHomePressed="

    #@5d1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@5d6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5d9
    .line 7734
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
    .line 7735
    const-string/jumbo v0, " mLockScreenTimeout="

    #@5ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ed
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@5ef
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5f2
    .line 7736
    const-string/jumbo v0, " mLockScreenTimerActive="

    #@5f5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5fd
    .line 7737
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
    .line 7738
    const-string/jumbo v0, " mIncallPowerBehavior="

    #@60e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@611
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@613
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@616
    .line 7739
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    #@619
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@61e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@621
    .line 7740
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
    .line 7741
    const-string/jumbo v0, " mSeascapeRotation="

    #@632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@635
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@637
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@63a
    .line 7742
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
    .line 7743
    const-string/jumbo v0, " mUpsideDownRotation="

    #@64b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@650
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@653
    .line 7744
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
    .line 7745
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    #@664
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@667
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@669
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@66c
    .line 7746
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
    .line 7748
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@67c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@67f
    .line 7749
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@681
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@684
    .line 7750
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@686
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@689
    .line 7751
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@68c
    .line 7753
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@68e
    if-eqz v0, :cond_f

    #@690
    .line 7754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@692
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@695
    .line 7756
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@697
    if-eqz v0, :cond_10

    #@699
    .line 7757
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@69b
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@69e
    .line 7759
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@6a0
    if-eqz v0, :cond_11

    #@6a2
    .line 7760
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@6a4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@6a7
    .line 7762
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6a9
    if-eqz v0, :cond_12

    #@6ab
    .line 7763
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6ad
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@6b0
    .line 7567
    :cond_12
    return-void

    #@6b1
    .line 7576
    :cond_13
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@6b3
    if-eqz v0, :cond_1

    #@6b5
    goto/16 :goto_0

    #@6b7
    .line 7631
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
    .line 6324
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6325
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    #@9
    .line 6323
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    #@0
    .prologue
    .line 6942
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@3
    .line 6943
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@6
    .line 6944
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@a
    .line 6941
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    #@0
    .prologue
    .line 6332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6333
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@9
    .line 6331
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    #@0
    .prologue
    .line 4849
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 15

    #@0
    .prologue
    const/16 v14, 0xf

    #@2
    const/4 v13, -0x1

    #@3
    const/4 v12, 0x0

    #@4
    const/4 v9, 0x1

    #@5
    const/4 v8, 0x0

    #@6
    .line 5033
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    if-eqz v7, :cond_0

    #@a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 5034
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@10
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@13
    move-result-object v7

    #@14
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@16
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@19
    move-result-object v10

    #@1a
    if-eq v7, v10, :cond_0

    #@1c
    .line 5035
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    #@1f
    move-result v7

    #@20
    .line 5033
    if-eqz v7, :cond_0

    #@22
    .line 5039
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@24
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@27
    move-result-object v7

    #@28
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2a
    const/high16 v11, 0x100000

    #@2c
    or-int/2addr v10, v11

    #@2d
    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f
    .line 5040
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@31
    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@34
    .line 5041
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@36
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@38
    .line 5044
    :cond_0
    const/4 v0, 0x0

    #@39
    .line 5045
    .local v0, "changes":I
    const/4 v6, 0x0

    #@3a
    .line 5047
    .local v6, "topIsFullscreen":Z
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@3c
    if-eqz v7, :cond_d

    #@3e
    .line 5048
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@40
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@43
    move-result-object v2

    #@44
    .line 5055
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@46
    if-nez v7, :cond_e

    #@48
    .line 5056
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@4a
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@4c
    .line 5057
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@4e
    if-eqz v7, :cond_1

    #@50
    .line 5058
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@52
    .line 5059
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@54
    invoke-virtual {v7, v14, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    #@5b
    .line 5068
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5d
    if-eqz v7, :cond_7

    #@5f
    .line 5072
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@61
    if-eqz v7, :cond_2

    #@63
    .line 5073
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@65
    if-eqz v7, :cond_f

    #@67
    :cond_2
    move v3, v8

    #@68
    .line 5075
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_11

    #@6a
    .line 5076
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@6c
    invoke-virtual {v7, v8}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@6f
    .line 5081
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@71
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@74
    move-result-object v4

    #@75
    .line 5082
    .local v4, "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@77
    if-ne v7, v13, :cond_13

    #@79
    .line 5083
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@7b
    if-ne v7, v13, :cond_12

    #@7d
    const/4 v5, 0x1

    #@7e
    .line 5084
    .local v5, "statusBarExpanded":Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@80
    if-nez v7, :cond_4

    #@82
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@84
    if-nez v7, :cond_4

    #@86
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@88
    if-nez v7, :cond_4

    #@8a
    if-eqz v5, :cond_15

    #@8c
    .line 5087
    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@8e
    invoke-virtual {v7, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_5

    #@94
    .line 5088
    const/4 v0, 0x1

    #@95
    .line 5091
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@97
    if-eqz v7, :cond_14

    #@99
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@9b
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@9e
    move-result v6

    #@9f
    .line 5093
    .end local v6    # "topIsFullscreen":Z
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@a1
    if-eqz v7, :cond_6

    #@a3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@a5
    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@a8
    move-result v7

    #@a9
    if-eqz v7, :cond_6

    #@ab
    .line 5094
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@ad
    .line 5095
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@af
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@b1
    .line 5094
    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@b4
    .line 5097
    :cond_6
    if-eqz v5, :cond_7

    #@b6
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@b8
    if-eqz v7, :cond_7

    #@ba
    .line 5098
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@bc
    invoke-virtual {v7, v9}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@bf
    move-result v7

    #@c0
    if-eqz v7, :cond_7

    #@c2
    .line 5099
    or-int/lit8 v0, v0, 0x1

    #@c4
    .line 5139
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "statusBarExpanded":Z
    :cond_7
    :goto_6
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@c6
    if-eq v7, v6, :cond_9

    #@c8
    .line 5140
    if-nez v6, :cond_8

    #@ca
    .line 5142
    or-int/lit8 v0, v0, 0x1

    #@cc
    .line 5144
    :cond_8
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@ce
    .line 5149
    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@d0
    if-eqz v7, :cond_b

    #@d2
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@d4
    if-eqz v7, :cond_b

    #@d6
    .line 5152
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@d8
    if-eqz v7, :cond_a

    #@da
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@dc
    if-eqz v7, :cond_1b

    #@de
    .line 5167
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@e0
    if-eqz v7, :cond_1d

    #@e2
    .line 5168
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@e4
    .line 5169
    iput-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@e6
    .line 5170
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@e9
    move-result v7

    #@ea
    if-eqz v7, :cond_b

    #@ec
    .line 5171
    or-int/lit8 v0, v0, 0x7

    #@ee
    .line 5203
    :cond_b
    :goto_7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@f1
    move-result v7

    #@f2
    const v8, -0x3fff7ff2

    #@f5
    and-int/2addr v7, v8

    #@f6
    if-eqz v7, :cond_c

    #@f8
    .line 5206
    or-int/lit8 v0, v0, 0x1

    #@fa
    .line 5210
    :cond_c
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    #@fd
    .line 5211
    return v0

    #@fe
    .line 5049
    .restart local v6    # "topIsFullscreen":Z
    :cond_d
    const/4 v2, 0x0

    #@ff
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    #@101
    .line 5062
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@103
    if-nez v7, :cond_1

    #@105
    .line 5063
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@107
    .line 5064
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@109
    invoke-virtual {v7, v14, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10c
    move-result-object v7

    #@10d
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    #@110
    goto/16 :goto_1

    #@112
    .line 5074
    :cond_f
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@114
    if-eqz v7, :cond_10

    #@116
    move v7, v8

    #@117
    :goto_8
    move v3, v7

    #@118
    goto/16 :goto_2

    #@11a
    :cond_10
    move v7, v9

    #@11b
    goto :goto_8

    #@11c
    .line 5077
    .restart local v3    # "shouldBeTransparent":Z
    :cond_11
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@11e
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@121
    move-result v7

    #@122
    if-nez v7, :cond_3

    #@124
    .line 5078
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@126
    invoke-virtual {v7, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@129
    goto/16 :goto_3

    #@12b
    .line 5083
    .restart local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    const/4 v5, 0x0

    #@12c
    .restart local v5    # "statusBarExpanded":Z
    goto/16 :goto_4

    #@12e
    .line 5082
    .end local v5    # "statusBarExpanded":Z
    :cond_13
    const/4 v5, 0x0

    #@12f
    .restart local v5    # "statusBarExpanded":Z
    goto/16 :goto_4

    #@131
    .line 5091
    :cond_14
    const/4 v6, 0x0

    #@132
    goto/16 :goto_5

    #@134
    .line 5102
    :cond_15
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@136
    if-eqz v7, :cond_7

    #@138
    .line 5103
    invoke-static {v12, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@13b
    move-result v1

    #@13c
    .line 5111
    .local v1, "fl":I
    and-int/lit16 v7, v1, 0x400

    #@13e
    if-nez v7, :cond_16

    #@140
    .line 5112
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@142
    and-int/lit8 v7, v7, 0x4

    #@144
    if-eqz v7, :cond_17

    #@146
    const/4 v6, 0x1

    #@147
    .line 5117
    :goto_9
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@149
    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@14c
    move-result v7

    #@14d
    if-eqz v7, :cond_18

    #@14f
    .line 5118
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@151
    invoke-virtual {v7, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@154
    move-result v7

    #@155
    if-eqz v7, :cond_7

    #@157
    .line 5119
    const/4 v0, 0x1

    #@158
    goto/16 :goto_6

    #@15a
    .line 5111
    :cond_16
    const/4 v6, 0x1

    #@15b
    goto :goto_9

    #@15c
    .line 5112
    :cond_17
    const/4 v6, 0x0

    #@15d
    goto :goto_9

    #@15e
    .line 5121
    :cond_18
    if-eqz v6, :cond_19

    #@160
    .line 5122
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@162
    const/4 v10, 0x2

    #@163
    invoke-virtual {v7, v10}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@166
    move-result v7

    #@167
    if-eqz v7, :cond_1a

    #@169
    .line 5132
    :cond_19
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@16b
    invoke-virtual {v7, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@16e
    move-result v7

    #@16f
    if-eqz v7, :cond_7

    #@171
    .line 5133
    const/4 v0, 0x1

    #@172
    goto/16 :goto_6

    #@174
    .line 5123
    :cond_1a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@176
    const/4 v10, 0x3

    #@177
    invoke-virtual {v7, v10}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@17a
    move-result v7

    #@17b
    if-nez v7, :cond_19

    #@17d
    .line 5125
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@17f
    invoke-virtual {v7, v8}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@182
    move-result v7

    #@183
    if-eqz v7, :cond_7

    #@185
    .line 5126
    const/4 v0, 0x1

    #@186
    goto/16 :goto_6

    #@188
    .line 5153
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "statusBarExpanded":Z
    .end local v6    # "topIsFullscreen":Z
    :cond_1b
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@18a
    .line 5154
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@18d
    move-result v7

    #@18e
    if-eqz v7, :cond_1c

    #@190
    .line 5155
    or-int/lit8 v0, v0, 0x7

    #@192
    .line 5159
    :cond_1c
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@194
    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@197
    move-result v7

    #@198
    if-eqz v7, :cond_b

    #@19a
    .line 5160
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@19c
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$15;

    #@19e
    invoke-direct {v8, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@1a1
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a4
    goto/16 :goto_7

    #@1a6
    .line 5175
    :cond_1d
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@1a8
    if-eqz v7, :cond_1f

    #@1aa
    .line 5176
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@1ac
    .line 5177
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@1af
    move-result v7

    #@1b0
    if-eqz v7, :cond_1e

    #@1b2
    .line 5178
    or-int/lit8 v0, v0, 0x7

    #@1b4
    .line 5182
    :cond_1e
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@1b6
    if-ne v7, v9, :cond_b

    #@1b8
    .line 5184
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1ba
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$16;

    #@1bc
    invoke-direct {v8, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@1bf
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1c2
    goto/16 :goto_7

    #@1c4
    .line 5192
    :cond_1f
    iput-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c6
    .line 5193
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@1c8
    .line 5194
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@1ca
    .line 5195
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@1cd
    move-result v7

    #@1ce
    if-eqz v7, :cond_b

    #@1d0
    .line 5196
    or-int/lit8 v0, v0, 0x7

    #@1d2
    goto/16 :goto_7
.end method

.method public finishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6094
    const v0, 0x11170

    #@4
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 6096
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
    .line 6098
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@15
    .line 6102
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@17
    monitor-enter v1

    #@18
    .line 6103
    const/4 v0, 0x0

    #@19
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@1b
    .line 6104
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@1e
    .line 6105
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@21
    .line 6106
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 6108
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 6109
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2b
    .line 6110
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@2d
    .line 6109
    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    #@30
    .line 6112
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@32
    .line 6093
    return-void

    #@33
    .line 6102
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
    .line 6140
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
    .line 5254
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    .line 5255
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
    .line 5258
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 5260
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
    .line 2503
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIII)I

    #@3
    move-result v0

    #@4
    .line 2504
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@6
    .line 2503
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
    .line 2494
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
    .line 4207
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
    .line 4206
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    #@0
    .prologue
    .line 7528
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
    .line 3821
    const/4 v11, 0x0

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@6
    move-result v6

    #@7
    .line 3822
    .local v6, "fl":I
    const/4 v11, 0x0

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@d
    move-result v9

    #@e
    .line 3823
    .local v9, "sysuiVis":I
    move-object/from16 v0, p1

    #@10
    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@12
    or-int v8, v9, v11

    #@14
    .line 3825
    .local v8, "systemUiVisibility":I
    if-eqz p8, :cond_2

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-direct {p0, v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    #@1b
    move-result v10

    #@1c
    .line 3826
    .local v10, "useOutsets":Z
    :goto_0
    if-eqz v10, :cond_0

    #@1e
    .line 3827
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
    .line 3828
    .local v7, "outset":I
    if-lez v7, :cond_0

    #@2a
    .line 3829
    if-nez p3, :cond_3

    #@2c
    .line 3830
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
    .line 3841
    .end local v7    # "outset":I
    :cond_0
    :goto_1
    const v11, 0x10100

    #@38
    and-int/2addr v11, v6

    #@39
    .line 3842
    const v12, 0x10100

    #@3c
    .line 3841
    if-ne v11, v12, :cond_c

    #@3e
    .line 3844
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@41
    move-result v11

    #@42
    if-eqz v11, :cond_6

    #@44
    .line 3845
    and-int/lit16 v11, v8, 0x200

    #@46
    if-eqz v11, :cond_6

    #@48
    .line 3846
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4a
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@4c
    add-int v5, v11, v12

    #@4e
    .line 3847
    .local v5, "availRight":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@50
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@52
    add-int v4, v11, v12

    #@54
    .line 3852
    .local v4, "availBottom":I
    :goto_2
    and-int/lit16 v11, v8, 0x100

    #@56
    if-eqz v11, :cond_8

    #@58
    .line 3853
    and-int/lit16 v11, v6, 0x400

    #@5a
    if-eqz v11, :cond_7

    #@5c
    .line 3854
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@5e
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@60
    .line 3855
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@62
    sub-int v13, v5, v13

    #@64
    .line 3856
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@66
    sub-int v14, v4, v14

    #@68
    .line 3854
    move-object/from16 v0, p6

    #@6a
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@6d
    .line 3872
    :goto_3
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@6f
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@71
    .line 3873
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@73
    sub-int v13, v5, v13

    #@75
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@77
    sub-int v14, v4, v14

    #@79
    .line 3872
    move-object/from16 v0, p7

    #@7b
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@7e
    .line 3874
    if-eqz p2, :cond_1

    #@80
    .line 3875
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
    .line 3877
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
    .line 3880
    :cond_1
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@98
    return v11

    #@99
    .line 3825
    .end local v4    # "availBottom":I
    .end local v5    # "availRight":I
    .end local v10    # "useOutsets":Z
    :cond_2
    const/4 v10, 0x0

    #@9a
    goto :goto_0

    #@9b
    .line 3831
    .restart local v7    # "outset":I
    .restart local v10    # "useOutsets":Z
    :cond_3
    const/4 v11, 0x1

    #@9c
    move/from16 v0, p3

    #@9e
    if-ne v0, v11, :cond_4

    #@a0
    .line 3832
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
    .line 3833
    :cond_4
    const/4 v11, 0x2

    #@ab
    move/from16 v0, p3

    #@ad
    if-ne v0, v11, :cond_5

    #@af
    .line 3834
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
    .line 3835
    :cond_5
    const/4 v11, 0x3

    #@bb
    move/from16 v0, p3

    #@bd
    if-ne v0, v11, :cond_0

    #@bf
    .line 3836
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
    .line 3849
    .end local v7    # "outset":I
    :cond_6
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@cc
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@ce
    add-int v5, v11, v12

    #@d0
    .line 3850
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
    .line 3858
    :cond_7
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@da
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@dc
    .line 3859
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@de
    sub-int v13, v5, v13

    #@e0
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@e2
    sub-int v14, v4, v14

    #@e4
    .line 3858
    move-object/from16 v0, p6

    #@e6
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@e9
    goto :goto_3

    #@ea
    .line 3861
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
    .line 3862
    :cond_9
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    #@f6
    goto/16 :goto_3

    #@f8
    .line 3863
    :cond_a
    and-int/lit16 v11, v8, 0x404

    #@fa
    if-nez v11, :cond_b

    #@fc
    .line 3865
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@fe
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@100
    .line 3866
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@102
    sub-int v13, v5, v13

    #@104
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@106
    sub-int v14, v4, v14

    #@108
    .line 3865
    move-object/from16 v0, p6

    #@10a
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@10d
    goto/16 :goto_3

    #@10f
    .line 3868
    :cond_b
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@111
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@113
    .line 3869
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@115
    sub-int v13, v5, v13

    #@117
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@119
    sub-int v14, v4, v14

    #@11b
    .line 3868
    move-object/from16 v0, p6

    #@11d
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@120
    goto/16 :goto_3

    #@122
    .line 3882
    .end local v4    # "availBottom":I
    .end local v5    # "availRight":I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    #@125
    .line 3883
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    #@128
    .line 3884
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@12a
    return v11
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    #@0
    .prologue
    .line 2447
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
    .line 2482
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 2485
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-ge p1, p2, :cond_1

    #@a
    .line 2486
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@d
    move-result v0

    #@e
    sub-int v0, p2, v0

    #@10
    return v0

    #@11
    .line 2489
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
    .line 2461
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2464
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-le p1, p2, :cond_0

    #@a
    .line 2465
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@d
    move-result v0

    #@e
    sub-int v0, p1, v0

    #@10
    return v0

    #@11
    .line 2468
    :cond_0
    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "outInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 6424
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    .line 6427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6428
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->isNavigationBarOnBottom(II)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 6429
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@f
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@12
    move-result v0

    #@13
    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    #@15
    .line 6423
    :cond_0
    :goto_0
    return-void

    #@16
    .line 6431
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@18
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@1b
    move-result v0

    #@1c
    iput v0, p4, Landroid/graphics/Rect;->right:I

    #@1e
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
    .line 6412
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    .line 6415
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    #@6
    .line 6416
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 6417
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@c
    iput v0, p4, Landroid/graphics/Rect;->top:I

    #@e
    .line 6411
    :cond_0
    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    #@0
    .prologue
    .line 912
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 915
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f
    .line 914
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@11
    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 912
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
    .line 902
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 905
    const-string/jumbo v0, "statusbar"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 904
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 902
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
    .line 4194
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
    .line 4195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@e
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 4198
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
    .line 4199
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@21
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 4202
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    #@0
    .prologue
    .line 2943
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
    .line 6658
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 6659
    const-string/jumbo v2, "accelerometer_rotation"

    #@a
    const/4 v3, -0x2

    #@b
    .line 6658
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    .line 6661
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    #@0
    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    return-object v0
.end method

.method goHome()Z
    .locals 19

    #@0
    .prologue
    .line 7082
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 7083
    const-string/jumbo v1, "WindowManager"

    #@9
    const-string/jumbo v2, "Not going home because user setup is in progress."

    #@c
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 7084
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 7098
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
    .line 7100
    const-string/jumbo v1, "WindowManager"

    #@1f
    const-string/jumbo v2, "UTS-TEST-MODE"

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 7117
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@28
    move-result-object v5

    #@29
    .line 7118
    move-object/from16 v0, p0

    #@2b
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@2d
    .line 7119
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
    .line 7118
    const/4 v6, 0x0

    #@3e
    const/4 v7, 0x0

    #@3f
    .line 7120
    const/4 v10, 0x0

    #@40
    const/4 v11, 0x0

    #@41
    const/4 v12, 0x0

    #@42
    .line 7121
    const/4 v13, 0x1

    #@43
    .line 7122
    const/4 v14, 0x0

    #@44
    const/4 v15, 0x0

    #@45
    const/16 v16, -0x2

    #@47
    .line 7117
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@4a
    move-result v18

    #@4b
    .line 7123
    .local v18, "result":I
    const/4 v1, 0x1

    #@4c
    move/from16 v0, v18

    #@4e
    if-ne v0, v1, :cond_3

    #@50
    .line 7124
    const/4 v1, 0x0

    #@51
    return v1

    #@52
    .line 7102
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    #@59
    .line 7103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    #@5c
    .line 7104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@5f
    move-result-object v4

    #@60
    .line 7105
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    #@62
    .line 7106
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@65
    move-result-object v1

    #@66
    .line 7108
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
    .line 7107
    const/4 v2, 0x0

    #@73
    const/4 v3, 0x0

    #@74
    .line 7109
    const/4 v6, 0x0

    #@75
    const/4 v7, 0x0

    #@76
    const/4 v8, 0x0

    #@77
    .line 7110
    const/4 v9, 0x1

    #@78
    .line 7111
    const/4 v10, 0x0

    #@79
    const/4 v11, 0x0

    #@7a
    const/4 v12, -0x2

    #@7b
    .line 7106
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result v18

    #@7f
    .line 7112
    .restart local v18    # "result":I
    const/4 v1, 0x1

    #@80
    move/from16 v0, v18

    #@82
    if-ne v0, v1, :cond_1

    #@84
    .line 7113
    const/4 v1, 0x0

    #@85
    return v1

    #@86
    .line 7126
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    #@87
    .line 7130
    :cond_3
    const/4 v1, 0x1

    #@88
    return v1
.end method

.method public hasNavigationBar()Z
    .locals 1

    #@0
    .prologue
    .line 7517
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    #@0
    .prologue
    .line 6835
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 6834
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    #@0
    .prologue
    .line 6364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 6365
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
    .line 1505
    move-object/from16 v0, p1

    #@2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    .line 1506
    move-object/from16 v0, p2

    #@6
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@8
    .line 1507
    move-object/from16 v0, p3

    #@a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    .line 1508
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
    .line 1509
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
    .line 1510
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
    .line 1511
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
    .line 1512
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
    .line 1513
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
    .line 1514
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
    .line 1517
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v1

    #@5e
    .line 1518
    const v2, 0x112009f

    #@61
    .line 1517
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@64
    move-result v9

    #@65
    .line 1521
    .local v9, "burnInProtectionEnabled":Z
    const-string/jumbo v1, "persist.debug.force_burn_in"

    #@68
    const/4 v2, 0x0

    #@69
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@6c
    move-result v8

    #@6d
    .line 1522
    .local v8, "burnInProtectionDevMode":Z
    if-nez v9, :cond_0

    #@6f
    if-eqz v8, :cond_1

    #@71
    .line 1528
    :cond_0
    if-eqz v8, :cond_5

    #@73
    .line 1529
    const/4 v3, -0x8

    #@74
    .line 1530
    .local v3, "minHorizontal":I
    const/16 v4, 0x8

    #@76
    .line 1531
    .local v4, "maxHorizontal":I
    const/4 v5, -0x8

    #@77
    .line 1532
    .local v5, "minVertical":I
    const/4 v6, -0x4

    #@78
    .line 1533
    .local v6, "maxVertical":I
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_4

    #@7e
    const/4 v7, 0x6

    #@7f
    .line 1547
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
    .line 1551
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
    .line 1552
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
    .line 1553
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
    .line 1555
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
    .line 1557
    :goto_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@b1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b3
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    #@b6
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@b8
    .line 1558
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@ba
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    #@bd
    .line 1559
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    #@bf
    move-object/from16 v0, p1

    #@c1
    invoke-direct {v1, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    #@c4
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@c6
    .line 1560
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c9
    move-result-object v1

    #@ca
    .line 1561
    const v2, 0x10e0046

    #@cd
    .line 1560
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@d0
    move-result v1

    #@d1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@d3
    .line 1562
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
    .line 1563
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@e0
    const-string/jumbo v2, "android.intent.category.HOME"

    #@e3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e6
    .line 1564
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@e8
    const/high16 v2, 0x10200000

    #@ea
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ed
    .line 1566
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f0
    move-result-object v1

    #@f1
    .line 1567
    const v2, 0x112003b

    #@f4
    .line 1566
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f7
    move-result v1

    #@f8
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@fa
    .line 1568
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
    .line 1569
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@107
    const-string/jumbo v2, "android.intent.category.CAR_DOCK"

    #@10a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@10d
    .line 1570
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@10f
    const/high16 v2, 0x10200000

    #@111
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@114
    .line 1572
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
    .line 1573
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@121
    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    #@124
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@127
    .line 1574
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@129
    const/high16 v2, 0x10200000

    #@12b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12e
    .line 1577
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
    .line 1578
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@13d
    .line 1579
    const-string/jumbo v2, "PhoneWindowManager.mBroadcastWakeLock"

    #@140
    .line 1578
    const/4 v14, 0x1

    #@141
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@144
    move-result-object v1

    #@145
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@147
    .line 1580
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@149
    .line 1581
    const-string/jumbo v2, "PhoneWindowManager.mPowerKeyWakeLock"

    #@14c
    .line 1580
    const/4 v14, 0x1

    #@14d
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@150
    move-result-object v1

    #@151
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@153
    .line 1582
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
    .line 1583
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@165
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@168
    move-result-object v1

    #@169
    .line 1584
    const v2, 0x1120034

    #@16c
    .line 1583
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16f
    move-result v1

    #@170
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@172
    .line 1586
    const v1, 0x10e003e

    #@175
    .line 1585
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@178
    move-result v1

    #@179
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@17b
    .line 1588
    const v1, 0x10e0043

    #@17e
    .line 1587
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@181
    move-result v1

    #@182
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@184
    .line 1590
    const v1, 0x10e0041

    #@187
    .line 1589
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@18a
    move-result v1

    #@18b
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@18d
    .line 1592
    const v1, 0x10e0045

    #@190
    .line 1591
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@193
    move-result v1

    #@194
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@196
    .line 1593
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19b
    move-result-object v1

    #@19c
    .line 1594
    const v2, 0x112003a

    #@19f
    .line 1593
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1a2
    move-result v1

    #@1a3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@1a5
    .line 1595
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1aa
    move-result-object v1

    #@1ab
    .line 1596
    const v2, 0x1120039

    #@1ae
    .line 1595
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1b1
    move-result v1

    #@1b2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@1b4
    .line 1597
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b9
    move-result-object v1

    #@1ba
    .line 1598
    const v2, 0x10e003f

    #@1bd
    .line 1597
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1c0
    move-result v1

    #@1c1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@1c3
    .line 1599
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1c5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c8
    move-result-object v1

    #@1c9
    .line 1600
    const v2, 0x10e0040

    #@1cc
    .line 1599
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1cf
    move-result v1

    #@1d0
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@1d2
    .line 1601
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d7
    move-result-object v1

    #@1d8
    .line 1602
    const v2, 0x1120037

    #@1db
    .line 1601
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1de
    move-result v1

    #@1df
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@1e1
    .line 1603
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1e3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e6
    move-result-object v1

    #@1e7
    .line 1604
    const v2, 0x1120038

    #@1ea
    .line 1603
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1ed
    move-result v1

    #@1ee
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@1f0
    .line 1605
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f5
    move-result-object v1

    #@1f6
    .line 1606
    const v2, 0x1120046

    #@1f9
    .line 1605
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1fc
    move-result v1

    #@1fd
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@1ff
    .line 1608
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@204
    move-result-object v1

    #@205
    .line 1609
    const v2, 0x112002c

    #@208
    .line 1608
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@20b
    move-result v1

    #@20c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@20e
    .line 1610
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@210
    if-nez v1, :cond_6

    #@212
    .line 1611
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@214
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@217
    move-result-object v1

    #@218
    .line 1612
    const v2, 0x112002b

    #@21b
    .line 1611
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@21e
    move-result v1

    #@21f
    .line 1610
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@221
    .line 1613
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@223
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@226
    move-result-object v1

    #@227
    .line 1614
    const v2, 0x112002d

    #@22a
    .line 1613
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@22d
    move-result v1

    #@22e
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@230
    .line 1615
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@232
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@235
    move-result-object v1

    #@236
    .line 1616
    const v2, 0x112002e

    #@239
    .line 1615
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@23c
    move-result v1

    #@23d
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@23f
    .line 1617
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@244
    move-result-object v1

    #@245
    .line 1618
    const v2, 0x112002a

    #@248
    .line 1617
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@24b
    move-result v1

    #@24c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@24e
    .line 1619
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@253
    move-result-object v1

    #@254
    .line 1620
    const v2, 0x112002f

    #@257
    .line 1619
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@25a
    move-result v1

    #@25b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@25d
    .line 1621
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@25f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@262
    move-result-object v1

    #@263
    .line 1622
    const v2, 0x1120029

    #@266
    .line 1621
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@269
    move-result v1

    #@26a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    #@26c
    .line 1624
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@271
    move-result-object v1

    #@272
    .line 1625
    const v2, 0x1120032

    #@275
    .line 1624
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@278
    move-result v1

    #@279
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@27b
    .line 1627
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@27d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@280
    move-result-object v1

    #@281
    .line 1628
    const v2, 0x1120033

    #@284
    .line 1627
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@287
    move-result v1

    #@288
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@28a
    .line 1630
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@28c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28f
    move-result-object v1

    #@290
    .line 1631
    const v2, 0x10e0049

    #@293
    .line 1630
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@296
    move-result v1

    #@297
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@299
    .line 1633
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@29b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29e
    move-result-object v1

    #@29f
    .line 1634
    const v2, 0x10e004a

    #@2a2
    .line 1633
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2a5
    move-result v1

    #@2a6
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@2a8
    .line 1635
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2aa
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2ad
    move-result-object v1

    #@2ae
    .line 1636
    const v2, 0x10e0048

    #@2b1
    .line 1635
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2b4
    move-result v1

    #@2b5
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@2b7
    .line 1637
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2b9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2bc
    move-result-object v1

    #@2bd
    .line 1638
    const v2, 0x10e004b

    #@2c0
    .line 1637
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2c3
    move-result v1

    #@2c4
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@2c6
    .line 1639
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2c8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2cb
    move-result-object v1

    #@2cc
    .line 1640
    const v2, 0x10e004c

    #@2cf
    .line 1639
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2d2
    move-result v1

    #@2d3
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@2d5
    .line 1641
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2d7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2da
    move-result-object v1

    #@2db
    .line 1642
    const v2, 0x10e004d

    #@2de
    .line 1641
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2e1
    move-result v1

    #@2e2
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@2e4
    .line 1644
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
    .line 1646
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@2f3
    .line 1649
    const-string/jumbo v1, "accessibility"

    #@2f6
    .line 1648
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
    .line 1652
    new-instance v11, Landroid/content/IntentFilter;

    #@302
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@305
    .line 1653
    .local v11, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@307
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@30a
    .line 1654
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    #@30c
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@30f
    .line 1655
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@311
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@314
    .line 1656
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    #@316
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@319
    .line 1657
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    #@31c
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31f
    .line 1658
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@321
    move-object/from16 v0, p1

    #@323
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@326
    move-result-object v12

    #@327
    .line 1659
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    #@329
    .line 1661
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@32c
    .line 1662
    const/4 v2, 0x0

    #@32d
    .line 1661
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@330
    move-result v1

    #@331
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@333
    .line 1666
    :cond_2
    new-instance v11, Landroid/content/IntentFilter;

    #@335
    .end local v11    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@338
    .line 1667
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    #@33b
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@33e
    .line 1668
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    #@341
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@344
    .line 1669
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@346
    move-object/from16 v0, p1

    #@348
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@34b
    .line 1672
    new-instance v11, Landroid/content/IntentFilter;

    #@34d
    .end local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@350
    invoke-direct {v11, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@353
    .line 1673
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@355
    move-object/from16 v0, p1

    #@357
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@35a
    .line 1676
    new-instance v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@35c
    .line 1677
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$13;

    #@35e
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@361
    .line 1676
    move-object/from16 v0, p1

    #@363
    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    #@366
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@368
    .line 1734
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@36a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@36c
    invoke-direct {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    #@36f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@371
    .line 1735
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@373
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@375
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@378
    .line 1737
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
    .line 1738
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@387
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@38a
    move-result-object v1

    #@38b
    .line 1739
    const v2, 0x107001e

    #@38e
    .line 1738
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@391
    move-result-object v1

    #@392
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@394
    .line 1740
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@396
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@399
    move-result-object v1

    #@39a
    .line 1741
    const v2, 0x107001f

    #@39d
    .line 1740
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3a0
    move-result-object v1

    #@3a1
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@3a3
    .line 1742
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3a5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a8
    move-result-object v1

    #@3a9
    .line 1743
    const v2, 0x1070020

    #@3ac
    .line 1742
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3af
    move-result-object v1

    #@3b0
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@3b2
    .line 1744
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3b4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b7
    move-result-object v1

    #@3b8
    .line 1745
    const v2, 0x1070021

    #@3bb
    .line 1744
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3be
    move-result-object v1

    #@3bf
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@3c1
    .line 1746
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3c3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c6
    move-result-object v1

    #@3c7
    .line 1747
    const v2, 0x1070022

    #@3ca
    .line 1746
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3cd
    move-result-object v1

    #@3ce
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@3d0
    .line 1748
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3d2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d5
    move-result-object v1

    #@3d6
    .line 1749
    const v2, 0x1070023

    #@3d9
    .line 1748
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3dc
    move-result-object v1

    #@3dd
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@3df
    .line 1750
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3e1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e4
    move-result-object v1

    #@3e5
    .line 1751
    const v2, 0x1070024

    #@3e8
    .line 1750
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3eb
    move-result-object v1

    #@3ec
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@3ee
    .line 1752
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3f0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f3
    move-result-object v1

    #@3f4
    .line 1753
    const v2, 0x1070026

    #@3f7
    .line 1752
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3fa
    move-result-object v1

    #@3fb
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@3fd
    .line 1755
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3ff
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@402
    move-result-object v1

    #@403
    .line 1756
    const v2, 0x1120027

    #@406
    .line 1755
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@409
    move-result v1

    #@40a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@40c
    .line 1758
    new-instance v1, Lcom/android/server/policy/GlobalKeyManager;

    #@40e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@410
    invoke-direct {v1, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    #@413
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@415
    .line 1761
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    #@418
    .line 1764
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@41a
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    #@41d
    move-result v1

    #@41e
    if-nez v1, :cond_3

    #@420
    .line 1765
    const/4 v1, 0x2

    #@421
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    #@424
    .line 1766
    const/4 v1, 0x2

    #@425
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    #@428
    .line 1769
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@42a
    .line 1770
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@42c
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@42f
    move-result-object v2

    #@430
    .line 1769
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    #@433
    .line 1504
    return-void

    #@434
    .line 1533
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
    .line 1535
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
    .line 1537
    .local v13, "resources":Landroid/content/res/Resources;
    const v1, 0x10e0095

    #@43e
    .line 1536
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@441
    move-result v3

    #@442
    .line 1539
    .restart local v3    # "minHorizontal":I
    const v1, 0x10e0096

    #@445
    .line 1538
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@448
    move-result v4

    #@449
    .line 1541
    .restart local v4    # "maxHorizontal":I
    const v1, 0x10e0097

    #@44c
    .line 1540
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@44f
    move-result v5

    #@450
    .line 1543
    .restart local v5    # "minVertical":I
    const v1, 0x10e0098

    #@453
    .line 1542
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@456
    move-result v6

    #@457
    .line 1545
    .restart local v6    # "maxVertical":I
    const v1, 0x10e0094

    #@45a
    .line 1544
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@45d
    move-result v7

    #@45e
    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    #@460
    .line 1610
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
    .line 1644
    :cond_7
    const/4 v1, 0x0

    #@464
    goto/16 :goto_3

    #@466
    .line 1556
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
    .line 5319
    const/4 v5, 0x0

    #@3
    .line 5321
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
    .line 5322
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@13
    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    #@16
    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@19
    .line 5324
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    #@1c
    .line 5325
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    #@1d
    .line 5327
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
    .line 5328
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    #@27
    :try_start_1
    new-array v0, v8, [C

    #@29
    .line 5329
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    #@2c
    move-result v4

    #@2d
    .line 5330
    .local v4, "n":I
    if-le v4, v10, :cond_0

    #@2f
    .line 5331
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
    .line 5338
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@40
    .line 5340
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 5348
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
    .line 5349
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@4a
    if-eqz v8, :cond_5

    #@4c
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    #@4f
    .line 5318
    return-void

    #@50
    .line 5331
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    #@51
    goto :goto_0

    #@52
    .line 5341
    :catch_0
    move-exception v1

    #@53
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    #@54
    .line 5335
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    #@55
    .line 5336
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
    .line 5338
    if-eqz v6, :cond_1

    #@71
    .line 5340
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@74
    goto :goto_1

    #@75
    .line 5341
    :catch_2
    move-exception v1

    #@76
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@77
    .line 5333
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    #@78
    .line 5334
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
    .line 5338
    if-eqz v6, :cond_1

    #@94
    .line 5340
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@97
    goto :goto_1

    #@98
    .line 5341
    :catch_4
    move-exception v1

    #@99
    goto :goto_1

    #@9a
    .line 5337
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@9b
    .line 5338
    :goto_6
    if-eqz v6, :cond_3

    #@9d
    .line 5340
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@a0
    .line 5337
    :cond_3
    :goto_7
    throw v8

    #@a1
    .line 5341
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
    .line 5348
    goto :goto_2

    #@a5
    :cond_5
    move v9, v10

    #@a6
    .line 5349
    goto :goto_3

    #@a7
    .line 5337
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
    .line 5333
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
    .line 5335
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
    .locals 52
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 2967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    #@3
    move-result v31

    #@4
    .line 2968
    .local v31, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v30

    #@8
    .line 2969
    .local v30, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b
    move-result v38

    #@c
    .line 2970
    .local v38, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@f
    move-result v34

    #@10
    .line 2971
    .local v34, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@13
    move-result v26

    #@14
    .line 2972
    .local v26, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_2

    #@1a
    const/16 v23, 0x1

    #@1c
    .line 2973
    .local v23, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1f
    move-result v18

    #@20
    .line 2984
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
    .line 2985
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
    .line 2993
    :cond_0
    const/16 v4, 0x19

    #@3a
    move/from16 v0, v30

    #@3c
    if-ne v0, v4, :cond_4

    #@3e
    .line 2994
    move-object/from16 v0, p0

    #@40
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@42
    .line 2993
    if-eqz v4, :cond_4

    #@44
    .line 2995
    if-nez v23, :cond_1

    #@46
    .line 2996
    const/4 v4, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@4b
    .line 2998
    :cond_1
    const-wide/16 v6, -0x1

    #@4d
    return-wide v6

    #@4e
    .line 2972
    .end local v18    # "canceled":Z
    .end local v23    # "down":Z
    :cond_2
    const/16 v23, 0x0

    #@50
    .restart local v23    # "down":Z
    goto :goto_0

    #@51
    .line 2986
    .restart local v18    # "canceled":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@54
    move-result-wide v36

    #@55
    .line 2987
    .local v36, "now":J
    move-object/from16 v0, p0

    #@57
    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@59
    .line 2988
    const-wide/16 v8, 0x96

    #@5b
    .line 2987
    add-long v48, v6, v8

    #@5d
    .line 2989
    .local v48, "timeoutTime":J
    cmp-long v4, v36, v48

    #@5f
    if-gez v4, :cond_0

    #@61
    .line 2990
    sub-long v6, v48, v36

    #@63
    return-wide v6

    #@64
    .line 3004
    .end local v36    # "now":J
    .end local v48    # "timeoutTime":J
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
    .line 3008
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
    .line 3016
    :cond_6
    :goto_2
    const/4 v4, 0x3

    #@7d
    move/from16 v0, v30

    #@7f
    if-ne v0, v4, :cond_17

    #@81
    .line 3020
    if-nez v23, :cond_d

    #@83
    .line 3021
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    #@86
    .line 3023
    const/4 v4, 0x0

    #@87
    move-object/from16 v0, p0

    #@89
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@8b
    .line 3024
    move-object/from16 v0, p0

    #@8d
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@8f
    if-eqz v4, :cond_9

    #@91
    .line 3025
    const/4 v4, 0x0

    #@92
    move-object/from16 v0, p0

    #@94
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@96
    .line 3026
    const-wide/16 v6, -0x1

    #@98
    return-wide v6

    #@99
    .line 3005
    :cond_7
    const/4 v4, 0x0

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@9e
    goto :goto_1

    #@9f
    .line 3008
    :cond_8
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isAltKey(I)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_6

    #@a5
    .line 3009
    const/4 v4, 0x0

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@aa
    goto :goto_2

    #@ab
    .line 3029
    :cond_9
    if-eqz v18, :cond_a

    #@ad
    .line 3030
    const-string/jumbo v4, "WindowManager"

    #@b0
    const-string/jumbo v6, "Ignoring HOME; event canceled."

    #@b3
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 3031
    const-wide/16 v6, -0x1

    #@b8
    return-wide v6

    #@b9
    .line 3037
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@bc
    move-result-object v46

    #@bd
    .line 3038
    .local v46, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v46, :cond_b

    #@bf
    invoke-virtual/range {v46 .. v46}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_b

    #@c5
    .line 3039
    const-string/jumbo v4, "WindowManager"

    #@c8
    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    #@cb
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 3040
    const-wide/16 v6, -0x1

    #@d0
    return-wide v6

    #@d1
    .line 3044
    :cond_b
    move-object/from16 v0, p0

    #@d3
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@d5
    if-eqz v4, :cond_c

    #@d7
    .line 3045
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@df
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e2
    .line 3046
    const/4 v4, 0x1

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@e7
    .line 3047
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@ef
    .line 3048
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@f2
    move-result v7

    #@f3
    int-to-long v8, v7

    #@f4
    .line 3047
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@f7
    .line 3049
    const-wide/16 v6, -0x1

    #@f9
    return-wide v6

    #@fa
    .line 3052
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@fd
    .line 3053
    const-wide/16 v6, -0x1

    #@ff
    return-wide v6

    #@100
    .line 3058
    .end local v46    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_d
    if-eqz p1, :cond_f

    #@102
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@105
    move-result-object v15

    #@106
    .line 3059
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v15, :cond_12

    #@108
    .line 3060
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10a
    move/from16 v47, v0

    #@10c
    .line 3061
    .local v47, "type":I
    const/16 v4, 0x7ed

    #@10e
    move/from16 v0, v47

    #@110
    if-eq v0, v4, :cond_e

    #@112
    .line 3062
    const/16 v4, 0x7d9

    #@114
    move/from16 v0, v47

    #@116
    if-ne v0, v4, :cond_10

    #@118
    .line 3065
    :cond_e
    const-wide/16 v6, 0x0

    #@11a
    return-wide v6

    #@11b
    .line 3058
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v47    # "type":I
    :cond_f
    const/4 v15, 0x0

    #@11c
    goto :goto_3

    #@11d
    .line 3063
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v47    # "type":I
    :cond_10
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@11f
    and-int/lit16 v4, v4, 0x400

    #@121
    if-nez v4, :cond_e

    #@123
    .line 3067
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@125
    array-length v0, v4

    #@126
    move/from16 v50, v0

    #@128
    .line 3068
    .local v50, "typeCount":I
    const/16 v28, 0x0

    #@12a
    .local v28, "i":I
    :goto_4
    move/from16 v0, v28

    #@12c
    move/from16 v1, v50

    #@12e
    if-ge v0, v1, :cond_12

    #@130
    .line 3069
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@132
    aget v4, v4, v28

    #@134
    move/from16 v0, v47

    #@136
    if-ne v0, v4, :cond_11

    #@138
    .line 3071
    const-wide/16 v6, -0x1

    #@13a
    return-wide v6

    #@13b
    .line 3068
    :cond_11
    add-int/lit8 v28, v28, 0x1

    #@13d
    goto :goto_4

    #@13e
    .line 3077
    .end local v28    # "i":I
    .end local v47    # "type":I
    .end local v50    # "typeCount":I
    :cond_12
    if-nez v38, :cond_16

    #@140
    .line 3078
    const/4 v4, 0x1

    #@141
    move-object/from16 v0, p0

    #@143
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@145
    .line 3079
    move-object/from16 v0, p0

    #@147
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@149
    if-eqz v4, :cond_14

    #@14b
    .line 3080
    const/4 v4, 0x0

    #@14c
    move-object/from16 v0, p0

    #@14e
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@150
    .line 3081
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@158
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@15b
    .line 3082
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    #@15e
    .line 3092
    :cond_13
    :goto_5
    const-wide/16 v6, -0x1

    #@160
    return-wide v6

    #@161
    .line 3083
    :cond_14
    move-object/from16 v0, p0

    #@163
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@165
    const/4 v6, 0x1

    #@166
    if-eq v4, v6, :cond_15

    #@168
    .line 3084
    move-object/from16 v0, p0

    #@16a
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@16c
    const/4 v6, 0x1

    #@16d
    if-ne v4, v6, :cond_13

    #@16f
    .line 3085
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@172
    goto :goto_5

    #@173
    .line 3087
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@176
    move-result v4

    #@177
    and-int/lit16 v4, v4, 0x80

    #@179
    if-eqz v4, :cond_13

    #@17b
    .line 3088
    if-nez v31, :cond_13

    #@17d
    .line 3089
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@180
    move-result v4

    #@181
    move-object/from16 v0, p0

    #@183
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    #@186
    goto :goto_5

    #@187
    .line 3093
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    const/16 v4, 0x52

    #@189
    move/from16 v0, v30

    #@18b
    if-ne v0, v4, :cond_18

    #@18d
    .line 3095
    const/16 v20, 0x1

    #@18f
    .line 3097
    .local v20, "chordBug":I
    if-eqz v23, :cond_1f

    #@191
    if-nez v38, :cond_1f

    #@193
    .line 3098
    move-object/from16 v0, p0

    #@195
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@197
    if-eqz v4, :cond_1f

    #@199
    and-int/lit8 v4, v34, 0x1

    #@19b
    const/4 v6, 0x1

    #@19c
    if-ne v4, v6, :cond_1f

    #@19e
    .line 3099
    new-instance v5, Landroid/content/Intent;

    #@1a0
    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    #@1a3
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a6
    .line 3100
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1aa
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1ac
    .line 3101
    const/4 v7, 0x0

    #@1ad
    const/4 v8, 0x0

    #@1ae
    const/4 v9, 0x0

    #@1af
    const/4 v10, 0x0

    #@1b0
    const/4 v11, 0x0

    #@1b1
    const/4 v12, 0x0

    #@1b2
    .line 3100
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1b5
    .line 3102
    const-wide/16 v6, -0x1

    #@1b7
    return-wide v6

    #@1b8
    .line 3120
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v20    # "chordBug":I
    :cond_18
    const/16 v4, 0x54

    #@1ba
    move/from16 v0, v30

    #@1bc
    if-ne v0, v4, :cond_1b

    #@1be
    .line 3121
    if-eqz v23, :cond_1a

    #@1c0
    .line 3122
    if-nez v38, :cond_19

    #@1c2
    .line 3123
    const/4 v4, 0x1

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1c7
    .line 3124
    const/4 v4, 0x0

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1cc
    .line 3133
    :cond_19
    const-wide/16 v6, 0x0

    #@1ce
    return-wide v6

    #@1cf
    .line 3127
    :cond_1a
    const/4 v4, 0x0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1d4
    .line 3128
    move-object/from16 v0, p0

    #@1d6
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1d8
    if-eqz v4, :cond_19

    #@1da
    .line 3129
    const/4 v4, 0x0

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1df
    .line 3130
    const-wide/16 v6, -0x1

    #@1e1
    return-wide v6

    #@1e2
    .line 3134
    :cond_1b
    const/16 v4, 0xbb

    #@1e4
    move/from16 v0, v30

    #@1e6
    if-ne v0, v4, :cond_1e

    #@1e8
    .line 3135
    if-nez v31, :cond_1c

    #@1ea
    .line 3136
    if-eqz v23, :cond_1d

    #@1ec
    if-nez v38, :cond_1d

    #@1ee
    .line 3137
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@1f1
    .line 3142
    :cond_1c
    :goto_6
    const-wide/16 v6, -0x1

    #@1f3
    return-wide v6

    #@1f4
    .line 3138
    :cond_1d
    if-nez v23, :cond_1c

    #@1f6
    .line 3139
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@1f9
    goto :goto_6

    #@1fa
    .line 3143
    :cond_1e
    const/16 v4, 0x2a

    #@1fc
    move/from16 v0, v30

    #@1fe
    if-ne v0, v4, :cond_21

    #@200
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@203
    move-result v4

    #@204
    if-eqz v4, :cond_21

    #@206
    .line 3144
    if-eqz v23, :cond_1f

    #@208
    .line 3145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@20b
    move-result-object v39

    #@20c
    .line 3146
    .local v39, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v39, :cond_1f

    #@20e
    .line 3148
    :try_start_0
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@211
    .line 3260
    .end local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    :goto_7
    const/4 v13, 0x0

    #@212
    .line 3261
    .local v13, "actionTriggered":Z
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@215
    move-result v4

    #@216
    if-eqz v4, :cond_20

    #@218
    .line 3262
    move-object/from16 v0, p0

    #@21a
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@21c
    if-nez v4, :cond_36

    #@21e
    .line 3264
    move-object/from16 v0, p0

    #@220
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@222
    move-object/from16 v0, p0

    #@224
    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    #@226
    .line 3265
    const/4 v4, 0x1

    #@227
    move-object/from16 v0, p0

    #@229
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@22b
    .line 3285
    :cond_20
    :goto_8
    move/from16 v0, v34

    #@22d
    move-object/from16 v1, p0

    #@22f
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@231
    .line 3287
    if-eqz v13, :cond_38

    #@233
    .line 3288
    const-wide/16 v6, -0x1

    #@235
    return-wide v6

    #@236
    .line 3149
    .end local v13    # "actionTriggered":Z
    .restart local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v24

    #@237
    .local v24, "e":Landroid/os/RemoteException;
    goto :goto_7

    #@238
    .line 3154
    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_21
    const/16 v4, 0x2f

    #@23a
    move/from16 v0, v30

    #@23c
    if-ne v0, v4, :cond_23

    #@23e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@241
    move-result v4

    #@242
    if-eqz v4, :cond_23

    #@244
    .line 3155
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@247
    move-result v4

    #@248
    .line 3154
    if-eqz v4, :cond_23

    #@24a
    .line 3156
    if-eqz v23, :cond_1f

    #@24c
    if-nez v38, :cond_1f

    #@24e
    .line 3157
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@251
    move-result v4

    #@252
    if-eqz v4, :cond_22

    #@254
    const/16 v47, 0x2

    #@256
    .line 3159
    .restart local v47    # "type":I
    :goto_9
    move-object/from16 v0, p0

    #@258
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@25a
    move/from16 v0, v47

    #@25c
    invoke-virtual {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@25f
    .line 3160
    move-object/from16 v0, p0

    #@261
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@263
    move-object/from16 v0, p0

    #@265
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@267
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@26a
    .line 3161
    const-wide/16 v6, -0x1

    #@26c
    return-wide v6

    #@26d
    .line 3158
    .end local v47    # "type":I
    :cond_22
    const/16 v47, 0x1

    #@26f
    .restart local v47    # "type":I
    goto :goto_9

    #@270
    .line 3163
    .end local v47    # "type":I
    :cond_23
    const/16 v4, 0x4c

    #@272
    move/from16 v0, v30

    #@274
    if-ne v0, v4, :cond_24

    #@276
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@279
    move-result v4

    #@27a
    if-eqz v4, :cond_24

    #@27c
    .line 3164
    if-eqz v23, :cond_1f

    #@27e
    if-nez v38, :cond_1f

    #@280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    #@283
    move-result v4

    #@284
    if-nez v4, :cond_1f

    #@286
    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@289
    move-result v4

    #@28a
    move-object/from16 v0, p0

    #@28c
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    #@28f
    goto :goto_7

    #@290
    .line 3167
    :cond_24
    const/16 v4, 0xdb

    #@292
    move/from16 v0, v30

    #@294
    if-ne v0, v4, :cond_29

    #@296
    .line 3168
    if-eqz v23, :cond_27

    #@298
    .line 3169
    if-nez v38, :cond_26

    #@29a
    .line 3170
    const/4 v4, 0x0

    #@29b
    move-object/from16 v0, p0

    #@29d
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@29f
    .line 3186
    :cond_25
    :goto_a
    const-wide/16 v6, -0x1

    #@2a1
    return-wide v6

    #@2a2
    .line 3171
    :cond_26
    const/4 v4, 0x1

    #@2a3
    move/from16 v0, v38

    #@2a5
    if-ne v0, v4, :cond_25

    #@2a7
    .line 3172
    const/4 v4, 0x1

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@2ac
    .line 3173
    if-nez v31, :cond_25

    #@2ae
    .line 3174
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    #@2b1
    goto :goto_a

    #@2b2
    .line 3178
    :cond_27
    move-object/from16 v0, p0

    #@2b4
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@2b6
    if-eqz v4, :cond_28

    #@2b8
    .line 3179
    const/4 v4, 0x0

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@2bd
    goto :goto_a

    #@2be
    .line 3181
    :cond_28
    if-nez v31, :cond_25

    #@2c0
    .line 3182
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@2c3
    move-result v4

    #@2c4
    const/4 v6, 0x0

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@2ca
    goto :goto_a

    #@2cb
    .line 3187
    :cond_29
    const/16 v4, 0xe7

    #@2cd
    move/from16 v0, v30

    #@2cf
    if-ne v0, v4, :cond_2c

    #@2d1
    .line 3188
    if-nez v23, :cond_1f

    #@2d3
    .line 3190
    if-nez v31, :cond_2a

    #@2d5
    .line 3191
    new-instance v51, Landroid/content/Intent;

    #@2d7
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@2da
    move-object/from16 v0, v51

    #@2dc
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2df
    .line 3204
    .local v51, "voiceIntent":Landroid/content/Intent;
    :goto_b
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    move-object/from16 v1, v51

    #@2e5
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2e8
    goto/16 :goto_7

    #@2ea
    .line 3194
    .end local v51    # "voiceIntent":Landroid/content/Intent;
    :cond_2a
    const-string/jumbo v4, "deviceidle"

    #@2ed
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2f0
    move-result-object v4

    #@2f1
    .line 3193
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@2f4
    move-result-object v21

    #@2f5
    .line 3195
    .local v21, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v21, :cond_2b

    #@2f7
    .line 3197
    :try_start_1
    const-string/jumbo v4, "voice-search"

    #@2fa
    move-object/from16 v0, v21

    #@2fc
    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    #@2ff
    .line 3201
    :cond_2b
    :goto_c
    new-instance v51, Landroid/content/Intent;

    #@301
    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@304
    move-object/from16 v0, v51

    #@306
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@309
    .line 3202
    .restart local v51    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    #@30c
    const/4 v6, 0x1

    #@30d
    move-object/from16 v0, v51

    #@30f
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@312
    goto :goto_b

    #@313
    .line 3206
    .end local v21    # "dic":Landroid/os/IDeviceIdleController;
    .end local v51    # "voiceIntent":Landroid/content/Intent;
    :cond_2c
    const/16 v4, 0x78

    #@315
    move/from16 v0, v30

    #@317
    if-ne v0, v4, :cond_2e

    #@319
    .line 3207
    if-eqz v23, :cond_2d

    #@31b
    if-nez v38, :cond_2d

    #@31d
    .line 3208
    move-object/from16 v0, p0

    #@31f
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@321
    const/4 v6, 0x1

    #@322
    invoke-virtual {v4, v6}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@325
    .line 3209
    move-object/from16 v0, p0

    #@327
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@329
    move-object/from16 v0, p0

    #@32b
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@32d
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@330
    .line 3211
    :cond_2d
    const-wide/16 v6, -0x1

    #@332
    return-wide v6

    #@333
    .line 3212
    :cond_2e
    const/16 v4, 0xdd

    #@335
    move/from16 v0, v30

    #@337
    if-eq v0, v4, :cond_2f

    #@339
    .line 3213
    const/16 v4, 0xdc

    #@33b
    move/from16 v0, v30

    #@33d
    if-ne v0, v4, :cond_33

    #@33f
    .line 3214
    :cond_2f
    if-eqz v23, :cond_31

    #@341
    .line 3215
    const/16 v4, 0xdd

    #@343
    move/from16 v0, v30

    #@345
    if-ne v0, v4, :cond_32

    #@347
    const/16 v22, 0x1

    #@349
    .line 3219
    .local v22, "direction":I
    :goto_d
    move-object/from16 v0, p0

    #@34b
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@34d
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@350
    move-result-object v4

    #@351
    .line 3220
    const-string/jumbo v6, "screen_brightness_mode"

    #@354
    .line 3221
    const/4 v7, 0x0

    #@355
    .line 3222
    const/4 v8, -0x3

    #@356
    .line 3218
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@359
    move-result v16

    #@35a
    .line 3223
    .local v16, "auto":I
    if-eqz v16, :cond_30

    #@35c
    .line 3224
    move-object/from16 v0, p0

    #@35e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@360
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@363
    move-result-object v4

    #@364
    .line 3225
    const-string/jumbo v6, "screen_brightness_mode"

    #@367
    .line 3226
    const/4 v7, 0x0

    #@368
    .line 3227
    const/4 v8, -0x3

    #@369
    .line 3224
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@36c
    .line 3230
    :cond_30
    move-object/from16 v0, p0

    #@36e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@370
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@373
    move-result v35

    #@374
    .line 3231
    .local v35, "min":I
    move-object/from16 v0, p0

    #@376
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@378
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@37b
    move-result v32

    #@37c
    .line 3232
    .local v32, "max":I
    sub-int v4, v32, v35

    #@37e
    add-int/lit8 v4, v4, 0xa

    #@380
    add-int/lit8 v4, v4, -0x1

    #@382
    div-int/lit8 v4, v4, 0xa

    #@384
    mul-int v45, v4, v22

    #@386
    .line 3233
    .local v45, "step":I
    move-object/from16 v0, p0

    #@388
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@38a
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@38d
    move-result-object v4

    #@38e
    .line 3234
    const-string/jumbo v6, "screen_brightness"

    #@391
    .line 3235
    move-object/from16 v0, p0

    #@393
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@395
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@398
    move-result v7

    #@399
    .line 3236
    const/4 v8, -0x3

    #@39a
    .line 3233
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@39d
    move-result v17

    #@39e
    .line 3237
    .local v17, "brightness":I
    add-int v17, v17, v45

    #@3a0
    .line 3239
    move/from16 v0, v32

    #@3a2
    move/from16 v1, v17

    #@3a4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@3a7
    move-result v17

    #@3a8
    .line 3240
    move/from16 v0, v35

    #@3aa
    move/from16 v1, v17

    #@3ac
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3af
    move-result v17

    #@3b0
    .line 3242
    move-object/from16 v0, p0

    #@3b2
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3b4
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3b7
    move-result-object v4

    #@3b8
    .line 3243
    const-string/jumbo v6, "screen_brightness"

    #@3bb
    .line 3244
    const/4 v7, -0x3

    #@3bc
    .line 3242
    move/from16 v0, v17

    #@3be
    invoke-static {v4, v6, v0, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@3c1
    .line 3245
    new-instance v4, Landroid/content/Intent;

    #@3c3
    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    #@3c6
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c9
    .line 3246
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@3cb
    .line 3245
    move-object/from16 v0, p0

    #@3cd
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3d0
    .line 3248
    .end local v16    # "auto":I
    .end local v17    # "brightness":I
    .end local v22    # "direction":I
    .end local v32    # "max":I
    .end local v35    # "min":I
    .end local v45    # "step":I
    :cond_31
    const-wide/16 v6, -0x1

    #@3d2
    return-wide v6

    #@3d3
    .line 3215
    :cond_32
    const/16 v22, -0x1

    #@3d5
    .restart local v22    # "direction":I
    goto/16 :goto_d

    #@3d7
    .line 3249
    .end local v22    # "direction":I
    :cond_33
    const/16 v4, 0x18

    #@3d9
    move/from16 v0, v30

    #@3db
    if-eq v0, v4, :cond_34

    #@3dd
    .line 3250
    const/16 v4, 0x19

    #@3df
    move/from16 v0, v30

    #@3e1
    if-ne v0, v4, :cond_35

    #@3e3
    .line 3252
    :cond_34
    :goto_e
    move-object/from16 v0, p0

    #@3e5
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@3e7
    if-eqz v4, :cond_1f

    #@3e9
    .line 3254
    move-object/from16 v0, p0

    #@3eb
    move-object/from16 v1, p2

    #@3ed
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    #@3f0
    .line 3255
    const-wide/16 v6, -0x1

    #@3f2
    return-wide v6

    #@3f3
    .line 3251
    :cond_35
    const/16 v4, 0xa4

    #@3f5
    move/from16 v0, v30

    #@3f7
    if-ne v0, v4, :cond_1f

    #@3f9
    goto :goto_e

    #@3fa
    .line 3266
    .restart local v13    # "actionTriggered":Z
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@3fd
    move-result v4

    #@3fe
    const/4 v6, 0x1

    #@3ff
    if-ne v4, v6, :cond_20

    #@401
    .line 3267
    move-object/from16 v0, p0

    #@403
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@405
    and-int/lit8 v14, v4, 0x32

    #@407
    .line 3268
    .local v14, "altOnMask":I
    move-object/from16 v0, p0

    #@409
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@40b
    const/high16 v6, 0x70000

    #@40d
    and-int v33, v4, v6

    #@40f
    .line 3271
    .local v33, "metaOnMask":I
    if-eqz v33, :cond_37

    #@411
    if-eqz v14, :cond_37

    #@413
    .line 3273
    move-object/from16 v0, p0

    #@415
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    #@417
    move-object/from16 v0, p0

    #@419
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@41b
    or-int v7, v14, v33

    #@41d
    xor-int/2addr v6, v7

    #@41e
    if-ne v4, v6, :cond_37

    #@420
    .line 3275
    move-object/from16 v0, p0

    #@422
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@424
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@427
    move-result v6

    #@428
    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    #@42b
    .line 3276
    const/4 v13, 0x1

    #@42c
    .line 3281
    :cond_37
    const/4 v4, 0x0

    #@42d
    move-object/from16 v0, p0

    #@42f
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@431
    goto/16 :goto_8

    #@433
    .line 3291
    .end local v14    # "altOnMask":I
    .end local v33    # "metaOnMask":I
    :cond_38
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@436
    move-result v4

    #@437
    if-eqz v4, :cond_3b

    #@439
    .line 3292
    if-eqz v23, :cond_3a

    #@43b
    .line 3293
    const/4 v4, 0x1

    #@43c
    move-object/from16 v0, p0

    #@43e
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@440
    .line 3297
    :cond_39
    :goto_f
    const-wide/16 v6, -0x1

    #@442
    return-wide v6

    #@443
    .line 3294
    :cond_3a
    move-object/from16 v0, p0

    #@445
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@447
    if-eqz v4, :cond_39

    #@449
    .line 3295
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    #@44c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@44f
    move-result v6

    #@450
    move-object/from16 v0, p0

    #@452
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@455
    goto :goto_f

    #@456
    .line 3305
    :cond_3b
    move-object/from16 v0, p0

    #@458
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@45a
    if-eqz v4, :cond_3f

    #@45c
    .line 3306
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@45f
    move-result-object v29

    #@460
    .line 3307
    .local v29, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@463
    move-result v4

    #@464
    if-eqz v4, :cond_3f

    #@466
    .line 3308
    const/4 v4, 0x1

    #@467
    move-object/from16 v0, p0

    #@469
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@46b
    .line 3309
    const/4 v4, 0x0

    #@46c
    move-object/from16 v0, p0

    #@46e
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@470
    .line 3310
    if-eqz v23, :cond_3c

    #@472
    if-nez v38, :cond_3c

    #@474
    if-eqz v31, :cond_3d

    #@476
    .line 3327
    :cond_3c
    :goto_10
    const-wide/16 v6, -0x1

    #@478
    return-wide v6

    #@479
    .line 3311
    :cond_3d
    move-object/from16 v0, p0

    #@47b
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@47d
    move-object/from16 v0, v29

    #@47f
    move/from16 v1, v30

    #@481
    move/from16 v2, v34

    #@483
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@486
    move-result-object v41

    #@487
    .line 3312
    .local v41, "shortcutIntent":Landroid/content/Intent;
    if-eqz v41, :cond_3e

    #@489
    .line 3313
    const/high16 v4, 0x10000000

    #@48b
    move-object/from16 v0, v41

    #@48d
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@490
    .line 3315
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@492
    move-object/from16 v0, p0

    #@494
    move-object/from16 v1, v41

    #@496
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@499
    .line 3316
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@49c
    goto :goto_10

    #@49d
    .line 3317
    :catch_1
    move-exception v25

    #@49e
    .line 3318
    .local v25, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@4a1
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a6
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    #@4a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v6

    #@4ad
    .line 3320
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@4b0
    move-result-object v7

    #@4b1
    .line 3318
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b4
    move-result-object v6

    #@4b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b8
    move-result-object v6

    #@4b9
    move-object/from16 v0, v25

    #@4bb
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4be
    goto :goto_10

    #@4bf
    .line 3323
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_3e
    const-string/jumbo v4, "WindowManager"

    #@4c2
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c7
    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    #@4ca
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cd
    move-result-object v6

    #@4ce
    .line 3324
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@4d1
    move-result-object v7

    #@4d2
    .line 3323
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v6

    #@4d6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d9
    move-result-object v6

    #@4da
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4dd
    goto :goto_10

    #@4de
    .line 3332
    .end local v29    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v41    # "shortcutIntent":Landroid/content/Intent;
    :cond_3f
    if-eqz v23, :cond_40

    #@4e0
    if-nez v38, :cond_40

    #@4e2
    if-eqz v31, :cond_44

    #@4e4
    .line 3355
    :cond_40
    if-eqz v23, :cond_41

    #@4e6
    if-nez v38, :cond_41

    #@4e8
    if-eqz v31, :cond_45

    #@4ea
    .line 3373
    :cond_41
    if-eqz v23, :cond_47

    #@4ec
    if-nez v38, :cond_47

    #@4ee
    const/16 v4, 0x3d

    #@4f0
    move/from16 v0, v30

    #@4f2
    if-ne v0, v4, :cond_47

    #@4f4
    .line 3374
    move-object/from16 v0, p0

    #@4f6
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@4f8
    if-nez v4, :cond_42

    #@4fa
    if-eqz v31, :cond_46

    #@4fc
    .line 3389
    :cond_42
    :goto_11
    if-eqz v23, :cond_49

    #@4fe
    if-nez v38, :cond_49

    #@500
    .line 3390
    const/16 v4, 0xcc

    #@502
    move/from16 v0, v30

    #@504
    if-eq v0, v4, :cond_43

    #@506
    .line 3391
    const/16 v4, 0x3e

    #@508
    move/from16 v0, v30

    #@50a
    if-ne v0, v4, :cond_49

    #@50c
    .line 3392
    const/high16 v4, 0x70000

    #@50e
    and-int v4, v4, v34

    #@510
    if-eqz v4, :cond_49

    #@512
    .line 3393
    :cond_43
    move/from16 v0, v34

    #@514
    and-int/lit16 v4, v0, 0xc1

    #@516
    if-nez v4, :cond_48

    #@518
    const/16 v27, 0x1

    #@51a
    .line 3394
    .local v27, "forwardDirection":Z
    :goto_12
    move-object/from16 v0, p0

    #@51c
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@51e
    move/from16 v0, v27

    #@520
    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    #@523
    .line 3395
    const-wide/16 v6, -0x1

    #@525
    return-wide v6

    #@526
    .line 3333
    .end local v27    # "forwardDirection":Z
    :cond_44
    const/high16 v4, 0x10000

    #@528
    and-int v4, v4, v34

    #@52a
    if-eqz v4, :cond_40

    #@52c
    .line 3334
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@52f
    move-result-object v29

    #@530
    .line 3335
    .restart local v29    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@533
    move-result v4

    #@534
    if-eqz v4, :cond_40

    #@536
    .line 3336
    move-object/from16 v0, p0

    #@538
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@53a
    .line 3337
    const v6, -0x70001

    #@53d
    and-int v6, v6, v34

    #@53f
    .line 3336
    move-object/from16 v0, v29

    #@541
    move/from16 v1, v30

    #@543
    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@546
    move-result-object v41

    #@547
    .line 3339
    .restart local v41    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v41, :cond_40

    #@549
    .line 3340
    const/high16 v4, 0x10000000

    #@54b
    move-object/from16 v0, v41

    #@54d
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@550
    .line 3342
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@552
    move-object/from16 v0, p0

    #@554
    move-object/from16 v1, v41

    #@556
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@559
    .line 3343
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    #@55c
    .line 3349
    :goto_13
    const-wide/16 v6, -0x1

    #@55e
    return-wide v6

    #@55f
    .line 3344
    :catch_2
    move-exception v25

    #@560
    .line 3345
    .restart local v25    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@563
    new-instance v6, Ljava/lang/StringBuilder;

    #@565
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@568
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    #@56b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56e
    move-result-object v6

    #@56f
    .line 3347
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@572
    move-result-object v7

    #@573
    .line 3345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@576
    move-result-object v6

    #@577
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57a
    move-result-object v6

    #@57b
    move-object/from16 v0, v25

    #@57d
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@580
    goto :goto_13

    #@581
    .line 3356
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v29    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v41    # "shortcutIntent":Landroid/content/Intent;
    :cond_45
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@583
    move/from16 v0, v30

    #@585
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@588
    move-result-object v19

    #@589
    check-cast v19, Ljava/lang/String;

    #@58b
    .line 3357
    .local v19, "category":Ljava/lang/String;
    if-eqz v19, :cond_41

    #@58d
    .line 3358
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@590
    move-object/from16 v0, v19

    #@592
    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@595
    move-result-object v5

    #@596
    .line 3359
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@598
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@59b
    .line 3361
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@59d
    move-object/from16 v0, p0

    #@59f
    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5a2
    .line 3362
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    #@5a5
    .line 3368
    :goto_14
    const-wide/16 v6, -0x1

    #@5a7
    return-wide v6

    #@5a8
    .line 3363
    :catch_3
    move-exception v25

    #@5a9
    .line 3364
    .restart local v25    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@5ac
    new-instance v6, Ljava/lang/StringBuilder;

    #@5ae
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5b1
    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    #@5b4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b7
    move-result-object v6

    #@5b8
    move/from16 v0, v30

    #@5ba
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5bd
    move-result-object v6

    #@5be
    .line 3366
    const-string/jumbo v7, ", category="

    #@5c1
    .line 3364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c4
    move-result-object v6

    #@5c5
    move-object/from16 v0, v19

    #@5c7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ca
    move-result-object v6

    #@5cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ce
    move-result-object v6

    #@5cf
    move-object/from16 v0, v25

    #@5d1
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d4
    goto :goto_14

    #@5d5
    .line 3374
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v19    # "category":Ljava/lang/String;
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@5d8
    move-result v4

    #@5d9
    if-eqz v4, :cond_42

    #@5db
    .line 3375
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    #@5de
    move-result v4

    #@5df
    and-int/lit16 v0, v4, -0xc2

    #@5e1
    move/from16 v40, v0

    #@5e3
    .line 3376
    .local v40, "shiftlessModifiers":I
    const/4 v4, 0x2

    #@5e4
    move/from16 v0, v40

    #@5e6
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@5e9
    move-result v4

    #@5ea
    if-eqz v4, :cond_42

    #@5ec
    .line 3377
    move/from16 v0, v40

    #@5ee
    move-object/from16 v1, p0

    #@5f0
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@5f2
    .line 3378
    const/4 v4, 0x1

    #@5f3
    const/4 v6, 0x0

    #@5f4
    move-object/from16 v0, p0

    #@5f6
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    #@5f9
    .line 3379
    const-wide/16 v6, -0x1

    #@5fb
    return-wide v6

    #@5fc
    .line 3382
    .end local v40    # "shiftlessModifiers":I
    :cond_47
    if-nez v23, :cond_42

    #@5fe
    move-object/from16 v0, p0

    #@600
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@602
    if-eqz v4, :cond_42

    #@604
    .line 3383
    move-object/from16 v0, p0

    #@606
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@608
    and-int v4, v4, v34

    #@60a
    if-nez v4, :cond_42

    #@60c
    .line 3384
    const/4 v4, 0x0

    #@60d
    move-object/from16 v0, p0

    #@60f
    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@611
    .line 3385
    const/4 v4, 0x1

    #@612
    const/4 v6, 0x0

    #@613
    move-object/from16 v0, p0

    #@615
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@618
    goto/16 :goto_11

    #@61a
    .line 3393
    :cond_48
    const/16 v27, 0x0

    #@61c
    .restart local v27    # "forwardDirection":Z
    goto/16 :goto_12

    #@61e
    .line 3397
    .end local v27    # "forwardDirection":Z
    :cond_49
    move-object/from16 v0, p0

    #@620
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@622
    if-eqz v4, :cond_4a

    #@624
    if-eqz v23, :cond_4b

    #@626
    .line 3404
    :cond_4a
    invoke-static/range {v30 .. v30}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@629
    move-result v4

    #@62a
    if-eqz v4, :cond_4d

    #@62c
    .line 3405
    move-object/from16 v0, p0

    #@62e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@630
    move-object/from16 v0, p0

    #@632
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@634
    move/from16 v0, v30

    #@636
    move-object/from16 v1, p2

    #@638
    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    #@63b
    move-result v4

    #@63c
    .line 3404
    if-eqz v4, :cond_4d

    #@63e
    .line 3406
    const-wide/16 v6, -0x1

    #@640
    return-wide v6

    #@641
    .line 3398
    :cond_4b
    const/16 v4, 0xcc

    #@643
    move/from16 v0, v30

    #@645
    if-eq v0, v4, :cond_4c

    #@647
    .line 3399
    const/16 v4, 0x3e

    #@649
    move/from16 v0, v30

    #@64b
    if-ne v0, v4, :cond_4a

    #@64d
    .line 3400
    :cond_4c
    const/4 v4, 0x0

    #@64e
    move-object/from16 v0, p0

    #@650
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@652
    .line 3401
    const-wide/16 v6, -0x1

    #@654
    return-wide v6

    #@655
    .line 3409
    :cond_4d
    if-eqz v23, :cond_53

    #@657
    .line 3410
    move/from16 v0, v30

    #@659
    int-to-long v0, v0

    #@65a
    move-wide/from16 v42, v0

    #@65c
    .line 3411
    .local v42, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@65f
    move-result v4

    #@660
    if-eqz v4, :cond_4e

    #@662
    .line 3412
    const-wide v6, 0x100000000000L

    #@667
    or-long v42, v42, v6

    #@669
    .line 3415
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@66c
    move-result v4

    #@66d
    if-eqz v4, :cond_4f

    #@66f
    .line 3416
    const-wide v6, 0x200000000L

    #@674
    or-long v42, v42, v6

    #@676
    .line 3419
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@679
    move-result v4

    #@67a
    if-eqz v4, :cond_50

    #@67c
    .line 3420
    const-wide v6, 0x100000000L

    #@681
    or-long v42, v42, v6

    #@683
    .line 3423
    :cond_50
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@686
    move-result v4

    #@687
    if-eqz v4, :cond_51

    #@689
    .line 3424
    const-wide/high16 v6, 0x1000000000000L

    #@68b
    or-long v42, v42, v6

    #@68d
    .line 3427
    :cond_51
    move-object/from16 v0, p0

    #@68f
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@691
    move-wide/from16 v0, v42

    #@693
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@696
    move-result-object v44

    #@697
    check-cast v44, Lcom/android/internal/policy/IShortcutService;

    #@699
    .line 3428
    .local v44, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v44, :cond_53

    #@69b
    .line 3430
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@69e
    move-result v4

    #@69f
    if-eqz v4, :cond_52

    #@6a1
    .line 3431
    move-object/from16 v0, v44

    #@6a3
    move-wide/from16 v1, v42

    #@6a5
    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    #@6a8
    .line 3436
    :cond_52
    :goto_15
    const-wide/16 v6, -0x1

    #@6aa
    return-wide v6

    #@6ab
    .line 3433
    :catch_4
    move-exception v24

    #@6ac
    .line 3434
    .restart local v24    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@6ae
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@6b0
    move-wide/from16 v0, v42

    #@6b2
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    #@6b5
    goto :goto_15

    #@6b6
    .line 3441
    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v42    # "shortcutCode":J
    .end local v44    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_53
    const/high16 v4, 0x10000

    #@6b8
    and-int v4, v4, v34

    #@6ba
    if-eqz v4, :cond_54

    #@6bc
    .line 3442
    const-wide/16 v6, -0x1

    #@6be
    return-wide v6

    #@6bf
    .line 3446
    :cond_54
    const-wide/16 v6, 0x0

    #@6c1
    return-wide v6

    #@6c2
    .line 3198
    .end local v13    # "actionTriggered":Z
    .restart local v21    # "dic":Landroid/os/IDeviceIdleController;
    :catch_5
    move-exception v24

    #@6c3
    .restart local v24    # "e":Landroid/os/RemoteException;
    goto/16 :goto_c
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 24
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 5443
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 5445
    const/16 v19, 0x0

    #@a
    return v19

    #@b
    .line 5448
    :cond_0
    const/high16 v19, 0x20000000

    #@d
    and-int v19, v19, p2

    #@f
    if-eqz v19, :cond_4

    #@11
    const/4 v10, 0x1

    #@12
    .line 5449
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
    .line 5450
    .local v7, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1c
    move-result v6

    #@1d
    .line 5451
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@20
    move-result v13

    #@21
    .line 5453
    .local v13, "keyCode":I
    const/high16 v19, 0x1000000

    #@23
    and-int v19, v19, p2

    #@25
    if-eqz v19, :cond_6

    #@27
    const/4 v11, 0x1

    #@28
    .line 5459
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
    .line 5472
    :goto_3
    and-int/lit8 v19, p2, 0x1

    #@33
    if-nez v19, :cond_9

    #@35
    .line 5473
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    #@38
    move-result v12

    #@39
    .line 5474
    :goto_4
    if-nez v10, :cond_a

    #@3b
    if-eqz v11, :cond_1

    #@3d
    if-eqz v12, :cond_a

    #@3f
    .line 5479
    :cond_1
    if-nez v10, :cond_b

    #@41
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    #@44
    move-result v19

    #@45
    if-eqz v19, :cond_b

    #@47
    .line 5484
    const/16 v16, 0x1

    #@49
    .line 5496
    .local v16, "result":I
    :cond_2
    :goto_5
    invoke-static {v13}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@4c
    move-result v19

    #@4d
    if-eqz v19, :cond_d

    #@4f
    .line 5497
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@53
    move-object/from16 v19, v0

    #@55
    move-object/from16 v0, v19

    #@57
    move-object/from16 v1, p1

    #@59
    invoke-virtual {v0, v13, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    #@5c
    move-result v19

    #@5d
    .line 5496
    if-eqz v19, :cond_d

    #@5f
    .line 5498
    if-eqz v12, :cond_3

    #@61
    .line 5499
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@64
    move-result-wide v20

    #@65
    move-object/from16 v0, p0

    #@67
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@69
    move/from16 v19, v0

    #@6b
    const-string/jumbo v22, "android.policy:KEY"

    #@6e
    move-object/from16 v0, p0

    #@70
    move-wide/from16 v1, v20

    #@72
    move/from16 v3, v19

    #@74
    move-object/from16 v4, v22

    #@76
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@79
    .line 5501
    :cond_3
    return v16

    #@7a
    .line 5448
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "interactive":Z
    .end local v11    # "isInjected":Z
    .end local v13    # "keyCode":I
    .end local v16    # "result":I
    :cond_4
    const/4 v10, 0x0

    #@7b
    .restart local v10    # "interactive":Z
    goto :goto_0

    #@7c
    .line 5449
    :cond_5
    const/4 v7, 0x0

    #@7d
    .restart local v7    # "down":Z
    goto :goto_1

    #@7e
    .line 5453
    .restart local v6    # "canceled":Z
    .restart local v13    # "keyCode":I
    :cond_6
    const/4 v11, 0x0

    #@7f
    .restart local v11    # "isInjected":Z
    goto :goto_2

    #@80
    .line 5460
    :cond_7
    if-eqz v10, :cond_8

    #@82
    .line 5461
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@85
    move-result v14

    #@86
    .local v14, "keyguardActive":Z
    goto :goto_3

    #@87
    .line 5462
    .end local v14    # "keyguardActive":Z
    :cond_8
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8b
    move-object/from16 v19, v0

    #@8d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@90
    move-result v14

    #@91
    .restart local v14    # "keyguardActive":Z
    goto :goto_3

    #@92
    .line 5472
    .end local v14    # "keyguardActive":Z
    :cond_9
    const/4 v12, 0x1

    #@93
    .local v12, "isWakeKey":Z
    goto :goto_4

    #@94
    .line 5477
    .end local v12    # "isWakeKey":Z
    :cond_a
    const/16 v16, 0x1

    #@96
    .line 5478
    .restart local v16    # "result":I
    const/4 v12, 0x0

    #@97
    .line 5474
    .restart local v12    # "isWakeKey":Z
    goto :goto_5

    #@98
    .line 5488
    .end local v12    # "isWakeKey":Z
    .end local v16    # "result":I
    :cond_b
    const/16 v16, 0x0

    #@9a
    .line 5489
    .restart local v16    # "result":I
    if-eqz v12, :cond_2

    #@9c
    if-eqz v7, :cond_c

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v13}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    #@a3
    move-result v19

    #@a4
    if-nez v19, :cond_2

    #@a6
    .line 5490
    :cond_c
    const/4 v12, 0x0

    #@a7
    .restart local v12    # "isWakeKey":Z
    goto :goto_5

    #@a8
    .line 5504
    .end local v12    # "isWakeKey":Z
    :cond_d
    if-eqz v7, :cond_12

    #@aa
    .line 5505
    and-int/lit8 v19, p2, 0x2

    #@ac
    if-eqz v19, :cond_12

    #@ae
    .line 5506
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b1
    move-result v19

    #@b2
    if-nez v19, :cond_11

    #@b4
    const/16 v18, 0x1

    #@b6
    .line 5509
    .local v18, "useHapticFeedback":Z
    :goto_6
    sparse-switch v13, :sswitch_data_0

    #@b9
    .line 5767
    :cond_e
    :goto_7
    if-eqz v18, :cond_f

    #@bb
    .line 5768
    const/16 v19, 0x0

    #@bd
    const/16 v20, 0x1

    #@bf
    const/16 v21, 0x0

    #@c1
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v19

    #@c5
    move/from16 v2, v20

    #@c7
    move/from16 v3, v21

    #@c9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@cc
    .line 5771
    :cond_f
    if-eqz v12, :cond_10

    #@ce
    .line 5772
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@d1
    move-result-wide v20

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@d6
    move/from16 v19, v0

    #@d8
    const-string/jumbo v22, "android.policy:KEY"

    #@db
    move-object/from16 v0, p0

    #@dd
    move-wide/from16 v1, v20

    #@df
    move/from16 v3, v19

    #@e1
    move-object/from16 v4, v22

    #@e3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@e6
    .line 5775
    :cond_10
    return v16

    #@e7
    .line 5506
    .end local v18    # "useHapticFeedback":Z
    :cond_11
    const/16 v18, 0x0

    #@e9
    .restart local v18    # "useHapticFeedback":Z
    goto :goto_6

    #@ea
    .line 5504
    .end local v18    # "useHapticFeedback":Z
    :cond_12
    const/16 v18, 0x0

    #@ec
    .restart local v18    # "useHapticFeedback":Z
    goto :goto_6

    #@ed
    .line 5511
    :sswitch_0
    if-eqz v7, :cond_13

    #@ef
    .line 5512
    const/16 v19, 0x0

    #@f1
    move/from16 v0, v19

    #@f3
    move-object/from16 v1, p0

    #@f5
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@f7
    .line 5513
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    #@fa
    move-result v19

    #@fb
    if-eqz v19, :cond_e

    #@fd
    .line 5514
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@101
    move-object/from16 v19, v0

    #@103
    const/16 v20, 0x12

    #@105
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@108
    move-result-object v15

    #@109
    .line 5515
    .local v15, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@10b
    move/from16 v0, v19

    #@10d
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@110
    .line 5516
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@114
    move-object/from16 v19, v0

    #@116
    .line 5517
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@11a
    move-object/from16 v20, v0

    #@11c
    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@11f
    move-result-object v20

    #@120
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@123
    move-result-wide v20

    #@124
    .line 5516
    move-object/from16 v0, v19

    #@126
    move-wide/from16 v1, v20

    #@128
    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@12b
    goto :goto_7

    #@12c
    .line 5520
    .end local v15    # "msg":Landroid/os/Message;
    :cond_13
    move-object/from16 v0, p0

    #@12e
    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@130
    .line 5523
    .local v8, "handled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    #@133
    .line 5526
    if-eqz v8, :cond_e

    #@135
    .line 5527
    and-int/lit8 v16, v16, -0x2

    #@137
    goto :goto_7

    #@138
    .line 5536
    .end local v8    # "handled":Z
    :sswitch_1
    const/16 v19, 0x19

    #@13a
    move/from16 v0, v19

    #@13c
    if-ne v13, v0, :cond_17

    #@13e
    .line 5537
    if-eqz v7, :cond_16

    #@140
    .line 5538
    if-eqz v10, :cond_14

    #@142
    move-object/from16 v0, p0

    #@144
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@146
    move/from16 v19, v0

    #@148
    if-eqz v19, :cond_15

    #@14a
    .line 5563
    :cond_14
    :goto_8
    if-eqz v7, :cond_1a

    #@14c
    .line 5564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@14f
    move-result-object v17

    #@150
    .line 5565
    .local v17, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_1a

    #@152
    .line 5566
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@155
    move-result v19

    #@156
    if-eqz v19, :cond_19

    #@158
    .line 5573
    const-string/jumbo v19, "WindowManager"

    #@15b
    const-string/jumbo v20, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    #@15e
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@161
    .line 5578
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@164
    .line 5582
    and-int/lit8 v16, v16, -0x2

    #@166
    .line 5583
    goto/16 :goto_7

    #@168
    .line 5539
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@16b
    move-result v19

    #@16c
    move/from16 v0, v19

    #@16e
    and-int/lit16 v0, v0, 0x400

    #@170
    move/from16 v19, v0

    #@172
    if-nez v19, :cond_14

    #@174
    .line 5540
    const/16 v19, 0x1

    #@176
    move/from16 v0, v19

    #@178
    move-object/from16 v1, p0

    #@17a
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@17c
    .line 5541
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@17f
    move-result-wide v20

    #@180
    move-wide/from16 v0, v20

    #@182
    move-object/from16 v2, p0

    #@184
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@186
    .line 5542
    const/16 v19, 0x0

    #@188
    move/from16 v0, v19

    #@18a
    move-object/from16 v1, p0

    #@18c
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@18e
    .line 5543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@191
    .line 5544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@194
    goto :goto_8

    #@195
    .line 5547
    :cond_16
    const/16 v19, 0x0

    #@197
    move/from16 v0, v19

    #@199
    move-object/from16 v1, p0

    #@19b
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@19d
    .line 5548
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@1a0
    goto :goto_8

    #@1a1
    .line 5550
    :cond_17
    const/16 v19, 0x18

    #@1a3
    move/from16 v0, v19

    #@1a5
    if-ne v13, v0, :cond_14

    #@1a7
    .line 5551
    if-eqz v7, :cond_18

    #@1a9
    .line 5552
    if-eqz v10, :cond_14

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@1af
    move/from16 v19, v0

    #@1b1
    if-nez v19, :cond_14

    #@1b3
    .line 5553
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@1b6
    move-result v19

    #@1b7
    move/from16 v0, v19

    #@1b9
    and-int/lit16 v0, v0, 0x400

    #@1bb
    move/from16 v19, v0

    #@1bd
    if-nez v19, :cond_14

    #@1bf
    .line 5554
    const/16 v19, 0x1

    #@1c1
    move/from16 v0, v19

    #@1c3
    move-object/from16 v1, p0

    #@1c5
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@1c7
    .line 5555
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@1ca
    .line 5556
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@1cd
    goto/16 :goto_8

    #@1cf
    .line 5559
    :cond_18
    const/16 v19, 0x0

    #@1d1
    move/from16 v0, v19

    #@1d3
    move-object/from16 v1, p0

    #@1d5
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@1d7
    .line 5560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@1da
    goto/16 :goto_8

    #@1dc
    .line 5585
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_19
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@1df
    move-result v19

    #@1e0
    if-eqz v19, :cond_1a

    #@1e2
    .line 5586
    and-int/lit8 v19, v16, 0x1

    #@1e4
    if-nez v19, :cond_1a

    #@1e6
    .line 5590
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1ea
    move-object/from16 v19, v0

    #@1ec
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@1ef
    move-result-object v19

    #@1f0
    .line 5591
    const/16 v20, 0x0

    #@1f2
    .line 5590
    move-object/from16 v0, v19

    #@1f4
    move-object/from16 v1, p1

    #@1f6
    move/from16 v2, v20

    #@1f8
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@1fb
    goto/16 :goto_7

    #@1fd
    .line 5596
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1a
    move-object/from16 v0, p0

    #@1ff
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@201
    move/from16 v19, v0

    #@203
    if-eqz v19, :cond_1b

    #@205
    .line 5599
    or-int/lit8 v16, v16, 0x1

    #@207
    goto/16 :goto_7

    #@209
    .line 5600
    :cond_1b
    and-int/lit8 v19, v16, 0x1

    #@20b
    if-nez v19, :cond_e

    #@20d
    .line 5604
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@211
    move-object/from16 v19, v0

    #@213
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@216
    move-result-object v19

    #@217
    .line 5605
    const/16 v20, 0x1

    #@219
    .line 5604
    move-object/from16 v0, v19

    #@21b
    move-object/from16 v1, p1

    #@21d
    move/from16 v2, v20

    #@21f
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@222
    goto/16 :goto_7

    #@224
    .line 5611
    :sswitch_2
    and-int/lit8 v16, v16, -0x2

    #@226
    .line 5612
    if-eqz v7, :cond_1f

    #@228
    .line 5613
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@22b
    move-result-object v17

    #@22c
    .line 5614
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v9, 0x0

    #@22d
    .line 5615
    .local v9, "hungUp":Z
    if-eqz v17, :cond_1c

    #@22f
    .line 5616
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->endCall()Z

    #@232
    move-result v9

    #@233
    .line 5618
    .end local v9    # "hungUp":Z
    :cond_1c
    if-eqz v10, :cond_1d

    #@235
    if-eqz v9, :cond_1e

    #@237
    .line 5623
    :cond_1d
    const/16 v19, 0x1

    #@239
    move/from16 v0, v19

    #@23b
    move-object/from16 v1, p0

    #@23d
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@23f
    goto/16 :goto_7

    #@241
    .line 5619
    :cond_1e
    const/16 v19, 0x0

    #@243
    move/from16 v0, v19

    #@245
    move-object/from16 v1, p0

    #@247
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@249
    .line 5620
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@24d
    move-object/from16 v19, v0

    #@24f
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@253
    move-object/from16 v20, v0

    #@255
    .line 5621
    move-object/from16 v0, p0

    #@257
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@259
    move-object/from16 v21, v0

    #@25b
    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@25e
    move-result-object v21

    #@25f
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@262
    move-result-wide v22

    #@263
    .line 5620
    move-object/from16 v0, v19

    #@265
    move-object/from16 v1, v20

    #@267
    move-wide/from16 v2, v22

    #@269
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@26c
    goto/16 :goto_7

    #@26e
    .line 5626
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1f
    move-object/from16 v0, p0

    #@270
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@272
    move/from16 v19, v0

    #@274
    if-nez v19, :cond_e

    #@276
    .line 5627
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@27a
    move-object/from16 v19, v0

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@280
    move-object/from16 v20, v0

    #@282
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@285
    .line 5628
    if-nez v6, :cond_e

    #@287
    .line 5629
    move-object/from16 v0, p0

    #@289
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@28b
    move/from16 v19, v0

    #@28d
    and-int/lit8 v19, v19, 0x1

    #@28f
    if-eqz v19, :cond_20

    #@291
    .line 5631
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    #@294
    move-result v19

    #@295
    if-nez v19, :cond_e

    #@297
    .line 5635
    :cond_20
    move-object/from16 v0, p0

    #@299
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@29b
    move/from16 v19, v0

    #@29d
    and-int/lit8 v19, v19, 0x2

    #@29f
    if-eqz v19, :cond_e

    #@2a1
    .line 5637
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@2a5
    move-object/from16 v19, v0

    #@2a7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2aa
    move-result-wide v20

    #@2ab
    .line 5638
    const/16 v22, 0x4

    #@2ad
    const/16 v23, 0x0

    #@2af
    .line 5637
    invoke-virtual/range {v19 .. v23}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@2b2
    .line 5639
    const/4 v12, 0x0

    #@2b3
    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_7

    #@2b5
    .line 5648
    .end local v12    # "isWakeKey":Z
    :sswitch_3
    and-int/lit8 v16, v16, -0x2

    #@2b7
    .line 5649
    const/4 v12, 0x0

    #@2b8
    .line 5650
    .restart local v12    # "isWakeKey":Z
    if-eqz v7, :cond_21

    #@2ba
    .line 5651
    move-object/from16 v0, p0

    #@2bc
    move-object/from16 v1, p1

    #@2be
    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    #@2c1
    goto/16 :goto_7

    #@2c3
    .line 5653
    :cond_21
    move-object/from16 v0, p0

    #@2c5
    move-object/from16 v1, p1

    #@2c7
    invoke-direct {v0, v1, v10, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    #@2ca
    goto/16 :goto_7

    #@2cc
    .line 5659
    .end local v12    # "isWakeKey":Z
    :sswitch_4
    and-int/lit8 v16, v16, -0x2

    #@2ce
    .line 5660
    const/4 v12, 0x0

    #@2cf
    .line 5661
    .restart local v12    # "isWakeKey":Z
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@2d3
    move-object/from16 v19, v0

    #@2d5
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager;->isInteractive()Z

    #@2d8
    move-result v19

    #@2d9
    if-nez v19, :cond_22

    #@2db
    .line 5662
    const/16 v18, 0x0

    #@2dd
    .line 5664
    :cond_22
    if-eqz v7, :cond_23

    #@2df
    .line 5665
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2e2
    move-result-wide v20

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    move-wide/from16 v1, v20

    #@2e7
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    #@2ea
    goto/16 :goto_7

    #@2ec
    .line 5667
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2ef
    move-result-wide v20

    #@2f0
    move-object/from16 v0, p0

    #@2f2
    move-wide/from16 v1, v20

    #@2f4
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    #@2f7
    goto/16 :goto_7

    #@2f9
    .line 5673
    .end local v12    # "isWakeKey":Z
    :sswitch_5
    and-int/lit8 v16, v16, -0x2

    #@2fb
    .line 5674
    const/4 v12, 0x0

    #@2fc
    .line 5675
    .restart local v12    # "isWakeKey":Z
    if-nez v7, :cond_e

    #@2fe
    .line 5676
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@302
    move-object/from16 v19, v0

    #@304
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    #@307
    goto/16 :goto_7

    #@309
    .line 5682
    .end local v12    # "isWakeKey":Z
    :sswitch_6
    and-int/lit8 v16, v16, -0x2

    #@30b
    .line 5683
    const/4 v12, 0x1

    #@30c
    .line 5684
    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_7

    #@30e
    .line 5699
    .end local v12    # "isWakeKey":Z
    :sswitch_7
    move-object/from16 v0, p0

    #@310
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@312
    move-object/from16 v19, v0

    #@314
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@317
    move-result-object v19

    #@318
    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    #@31b
    move-result v19

    #@31c
    if-eqz v19, :cond_24

    #@31e
    .line 5702
    and-int/lit8 v16, v16, -0x2

    #@320
    .line 5704
    :cond_24
    and-int/lit8 v19, v16, 0x1

    #@322
    if-nez v19, :cond_e

    #@324
    .line 5710
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@328
    move-object/from16 v19, v0

    #@32a
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@32d
    .line 5711
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@331
    move-object/from16 v19, v0

    #@333
    .line 5712
    new-instance v20, Landroid/view/KeyEvent;

    #@335
    move-object/from16 v0, v20

    #@337
    move-object/from16 v1, p1

    #@339
    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@33c
    .line 5711
    const/16 v21, 0x3

    #@33e
    move-object/from16 v0, v19

    #@340
    move/from16 v1, v21

    #@342
    move-object/from16 v2, v20

    #@344
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@347
    move-result-object v15

    #@348
    .line 5713
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@34a
    move/from16 v0, v19

    #@34c
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@34f
    .line 5714
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    #@352
    goto/16 :goto_7

    #@354
    .line 5720
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_8
    if-eqz v7, :cond_e

    #@356
    .line 5721
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@359
    move-result-object v17

    #@35a
    .line 5722
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_e

    #@35c
    .line 5723
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@35f
    move-result v19

    #@360
    if-eqz v19, :cond_e

    #@362
    .line 5724
    const-string/jumbo v19, "WindowManager"

    #@365
    const-string/jumbo v20, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    #@368
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36b
    .line 5726
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    #@36e
    .line 5730
    and-int/lit8 v16, v16, -0x2

    #@370
    goto/16 :goto_7

    #@372
    .line 5741
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_9
    and-int/lit8 v19, v16, 0x1

    #@374
    if-nez v19, :cond_e

    #@376
    if-nez v7, :cond_e

    #@378
    .line 5742
    move-object/from16 v0, p0

    #@37a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@37c
    move-object/from16 v19, v0

    #@37e
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@381
    .line 5743
    move-object/from16 v0, p0

    #@383
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@385
    move-object/from16 v20, v0

    #@387
    .line 5744
    if-eqz v14, :cond_25

    #@389
    const/16 v19, 0x1

    #@38b
    .line 5743
    :goto_9
    const/16 v21, 0xc

    #@38d
    .line 5744
    const/16 v22, 0x0

    #@38f
    .line 5743
    move-object/from16 v0, v20

    #@391
    move/from16 v1, v21

    #@393
    move/from16 v2, v19

    #@395
    move/from16 v3, v22

    #@397
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@39a
    move-result-object v15

    #@39b
    .line 5745
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@39d
    move/from16 v0, v19

    #@39f
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@3a2
    .line 5746
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    #@3a5
    goto/16 :goto_7

    #@3a7
    .line 5744
    .end local v15    # "msg":Landroid/os/Message;
    :cond_25
    const/16 v19, 0x0

    #@3a9
    goto :goto_9

    #@3aa
    .line 5751
    :sswitch_a
    move-object/from16 v0, p0

    #@3ac
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@3ae
    move/from16 v19, v0

    #@3b0
    const/16 v20, 0x1

    #@3b2
    move/from16 v0, v19

    #@3b4
    move/from16 v1, v20

    #@3b6
    if-ne v0, v1, :cond_e

    #@3b8
    .line 5752
    move-object/from16 v0, p0

    #@3ba
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    #@3bc
    move/from16 v19, v0

    #@3be
    if-eqz v19, :cond_e

    #@3c0
    .line 5757
    if-nez v7, :cond_26

    #@3c2
    .line 5758
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenu(Landroid/view/KeyEvent;)V

    #@3c5
    .line 5760
    :cond_26
    and-int/lit8 v16, v16, -0x2

    #@3c7
    goto/16 :goto_7

    #@3c9
    .line 5509
    nop

    #@3ca
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x7e -> :sswitch_7
        0x7f -> :sswitch_7
        0x82 -> :sswitch_7
        0xa4 -> :sswitch_1
        0xab -> :sswitch_a
        0xde -> :sswitch_7
        0xdf -> :sswitch_4
        0xe0 -> :sswitch_6
        0xe7 -> :sswitch_9
        0x114 -> :sswitch_5
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
    .line 5832
    and-int/lit8 v0, p3, 0x1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5833
    div-long v0, p1, v6

    #@a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@c
    .line 5834
    const-string/jumbo v3, "android.policy:MOTION"

    #@f
    .line 5833
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 5835
    return v4

    #@16
    .line 5839
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 5840
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 5846
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
    .line 5847
    div-long v0, p1, v6

    #@2a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@2c
    .line 5848
    const-string/jumbo v3, "android.policy:MOTION"

    #@2f
    .line 5847
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@32
    .line 5851
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    #@0
    .prologue
    .line 1898
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
    .line 1382
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "device_provisioned"

    #@a
    .line 1381
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
    .line 6445
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@5
    if-nez v2, :cond_2

    #@7
    .line 6446
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
    .line 6448
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
    .line 2509
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4
    and-int/lit16 v2, v2, 0x400

    #@6
    if-nez v2, :cond_1

    #@8
    .line 2510
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2511
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
    .line 2509
    if-nez v2, :cond_1

    #@1a
    .line 2512
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    const/16 v3, 0x7ed

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 2509
    :cond_1
    :goto_0
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    .line 2512
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    #@0
    .prologue
    .line 6396
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 6397
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 6396
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
    .line 2517
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
    .line 6345
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
    .line 6351
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 6352
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
    .line 6358
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
    .line 6438
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@2
    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    #@0
    .prologue
    .line 6318
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
    .line 7559
    const/16 v1, 0x3e8

    #@3
    if-lt p1, v1, :cond_1

    #@5
    .line 7560
    const/16 v1, 0x7cf

    #@7
    if-gt p1, v1, :cond_1

    #@9
    .line 7561
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
    .line 7563
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1386
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 1387
    const-string/jumbo v2, "user_setup_complete"

    #@a
    const/4 v3, -0x2

    #@b
    .line 1386
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
    .line 7227
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    #@0
    .prologue
    .line 7232
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 7233
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
    .line 7231
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    #@0
    .prologue
    .line 2956
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
    .line 3670
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4
    .line 3669
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
    .line 3678
    if-eqz p2, :cond_1

    #@3
    .line 3679
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3681
    return-void

    #@a
    .line 3684
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
    .line 3687
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$14;

    #@1a
    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@20
    .line 3700
    return-void

    #@21
    .line 3706
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
    .line 3709
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 3711
    if-eqz p1, :cond_2

    #@2e
    .line 3712
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@31
    .line 3714
    :cond_2
    const/4 v1, 0x0

    #@32
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@35
    .line 3677
    :goto_1
    return-void

    #@36
    .line 3717
    :cond_3
    const-string/jumbo v1, "homekey"

    #@39
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@3c
    .line 3718
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    #@3f
    goto :goto_1

    #@40
    .line 3707
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
    .line 5973
    const-string/jumbo v3, "deviceidle"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 5972
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@a
    move-result-object v0

    #@b
    .line 5974
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    #@d
    .line 5976
    :try_start_0
    const-string/jumbo v3, "voice-search"

    #@10
    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 5981
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    #@15
    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    .line 5982
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    #@1e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@21
    .line 5983
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@26
    .line 5984
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@28
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 5971
    return-void

    #@2c
    .line 5977
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
    .line 4301
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
    .line 4302
    :cond_1
    return-void

    #@17
    .line 4304
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v16

    #@1b
    .line 4305
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    #@1e
    move-result v20

    #@1f
    .line 4306
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_9

    #@21
    .line 4307
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
    .line 4308
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_3

    #@33
    .line 4310
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3c
    .line 4313
    :cond_3
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, v16

    #@40
    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@43
    move-result v4

    #@44
    .line 4314
    .local v4, "fl":I
    move-object/from16 v0, v16

    #@46
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@48
    move/from16 v23, v0

    #@4a
    .line 4315
    .local v23, "pfl":I
    move-object/from16 v0, v16

    #@4c
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@4e
    move/from16 v25, v0

    #@50
    .line 4316
    .local v25, "sim":I
    const/4 v2, 0x0

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@56
    move-result v26

    #@57
    .line 4318
    .local v26, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@59
    .line 4319
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@5b
    .line 4320
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@5d
    .line 4321
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@5f
    .line 4322
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@61
    .line 4323
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@63
    .line 4324
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@65
    .line 4325
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    #@66
    .line 4326
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    #@69
    .line 4328
    if-eqz v20, :cond_a

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@6f
    if-eqz v2, :cond_a

    #@71
    .line 4329
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
    .line 4331
    :goto_1
    move/from16 v0, v25

    #@81
    and-int/lit16 v5, v0, 0xf0

    #@83
    .line 4333
    .local v5, "adjust":I
    if-eqz v20, :cond_b

    #@85
    .line 4334
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
    .line 4339
    :goto_2
    if-nez v20, :cond_d

    #@9a
    .line 4340
    if-eqz p2, :cond_c

    #@9c
    .line 4343
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
    .line 4758
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
    .line 4759
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    #@b5
    move-result v2

    #@b6
    if-eqz v2, :cond_47

    #@b8
    .line 4772
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
    .line 4773
    .local v28, "useOutsets":Z
    if-eqz v20, :cond_5

    #@c2
    if-eqz v28, :cond_5

    #@c4
    .line 4774
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@c6
    .line 4775
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
    .line 4776
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
    .line 4777
    .local v22, "outset":I
    if-lez v22, :cond_5

    #@df
    .line 4778
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@e3
    move/from16 v24, v0

    #@e5
    .line 4779
    .local v24, "rotation":I
    if-nez v24, :cond_48

    #@e7
    .line 4780
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
    .line 4804
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@f2
    .line 4808
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
    .line 4809
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    #@103
    move-result v2

    #@104
    .line 4808
    if-eqz v2, :cond_6

    #@106
    .line 4809
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@109
    move-result v2

    #@10a
    if-eqz v2, :cond_4b

    #@10c
    .line 4813
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
    .line 4814
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@11d
    move-result v2

    #@11e
    if-eqz v2, :cond_4c

    #@120
    .line 4298
    :cond_7
    :goto_7
    return-void

    #@121
    .line 4307
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
    .line 4306
    :cond_9
    const/16 v21, 0x0

    #@127
    goto/16 :goto_0

    #@129
    .line 4328
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
    .line 4336
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
    .line 4346
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
    .line 4347
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
    .line 4349
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
    .line 4348
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@165
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@167
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@169
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@16b
    .line 4351
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
    .line 4350
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
    .line 4353
    :cond_d
    move-object/from16 v0, v16

    #@180
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@182
    const/16 v3, 0x7db

    #@184
    if-ne v2, v3, :cond_f

    #@186
    .line 4354
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
    .line 4355
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
    .line 4356
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
    .line 4358
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
    .line 4360
    move-object/from16 v0, p0

    #@1c1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@1c3
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@1c5
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@1c7
    .line 4361
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
    .line 4364
    move-object/from16 v0, p0

    #@1e5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@1e7
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@1e9
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@1eb
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@1ed
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@1ef
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@1f1
    .line 4367
    :cond_e
    const/16 v2, 0x50

    #@1f3
    move-object/from16 v0, v16

    #@1f5
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@1f7
    .line 4368
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@1fa
    move-result v2

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@1ff
    goto/16 :goto_3

    #@201
    .line 4369
    :cond_f
    move-object/from16 v0, v16

    #@203
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@205
    const/16 v3, 0x7ef

    #@207
    if-ne v2, v3, :cond_12

    #@209
    .line 4370
    move-object/from16 v0, p0

    #@20b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@20d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@20f
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@211
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@213
    .line 4371
    move-object/from16 v0, p0

    #@215
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@217
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@219
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@21b
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@21d
    .line 4372
    move-object/from16 v0, p0

    #@21f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@221
    move-object/from16 v0, p0

    #@223
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@225
    add-int/2addr v2, v3

    #@226
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@228
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@22a
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@22c
    .line 4373
    move-object/from16 v0, p0

    #@22e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@230
    move-object/from16 v0, p0

    #@232
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@234
    add-int/2addr v2, v3

    #@235
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@237
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@239
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@23b
    .line 4374
    const/16 v2, 0x10

    #@23d
    if-eq v5, v2, :cond_10

    #@23f
    .line 4375
    move-object/from16 v0, p0

    #@241
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@243
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@245
    .line 4376
    move-object/from16 v0, p0

    #@247
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@249
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@24b
    .line 4377
    move-object/from16 v0, p0

    #@24d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@24f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@251
    .line 4378
    move-object/from16 v0, p0

    #@253
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@255
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@257
    .line 4385
    :goto_8
    const/16 v2, 0x30

    #@259
    if-eq v5, v2, :cond_11

    #@25b
    .line 4386
    move-object/from16 v0, p0

    #@25d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@25f
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@261
    .line 4387
    move-object/from16 v0, p0

    #@263
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@265
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@267
    .line 4388
    move-object/from16 v0, p0

    #@269
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@26b
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@26d
    .line 4389
    move-object/from16 v0, p0

    #@26f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@271
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@273
    goto/16 :goto_3

    #@275
    .line 4380
    :cond_10
    move-object/from16 v0, p0

    #@277
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@279
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@27b
    .line 4381
    move-object/from16 v0, p0

    #@27d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@27f
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@281
    .line 4382
    move-object/from16 v0, p0

    #@283
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@285
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@287
    .line 4383
    move-object/from16 v0, p0

    #@289
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@28b
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@28d
    goto :goto_8

    #@28e
    .line 4391
    :cond_11
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@291
    goto/16 :goto_3

    #@293
    .line 4393
    :cond_12
    move-object/from16 v0, p0

    #@295
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@297
    move-object/from16 v0, p1

    #@299
    if-ne v0, v2, :cond_14

    #@29b
    .line 4394
    move-object/from16 v0, p0

    #@29d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@29f
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@2a1
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@2a3
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@2a5
    .line 4395
    move-object/from16 v0, p0

    #@2a7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2a9
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@2ab
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@2ad
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@2af
    .line 4396
    move-object/from16 v0, p0

    #@2b1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2b7
    add-int/2addr v2, v3

    #@2b8
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@2ba
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@2bc
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@2be
    .line 4397
    move-object/from16 v0, p0

    #@2c0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2c6
    add-int/2addr v2, v3

    #@2c7
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@2c9
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@2cb
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@2cd
    .line 4398
    move-object/from16 v0, p0

    #@2cf
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2d1
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@2d3
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@2d5
    .line 4399
    move-object/from16 v0, p0

    #@2d7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@2d9
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@2db
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@2dd
    .line 4400
    move-object/from16 v0, p0

    #@2df
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@2e1
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@2e3
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@2e5
    .line 4401
    move-object/from16 v0, p0

    #@2e7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@2e9
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@2eb
    .line 4403
    const/16 v2, 0x10

    #@2ed
    if-ne v5, v2, :cond_13

    #@2ef
    .line 4404
    move-object/from16 v0, p0

    #@2f1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@2f3
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@2f5
    goto/16 :goto_3

    #@2f7
    .line 4406
    :cond_13
    move-object/from16 v0, p0

    #@2f9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@2fb
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@2fd
    .line 4407
    move-object/from16 v0, p0

    #@2ff
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@301
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@303
    goto/16 :goto_3

    #@305
    .line 4412
    :cond_14
    move-object/from16 v0, p0

    #@307
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@309
    iput v2, v13, Landroid/graphics/Rect;->left:I

    #@30b
    .line 4413
    move-object/from16 v0, p0

    #@30d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@30f
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@311
    .line 4414
    move-object/from16 v0, p0

    #@313
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@315
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@317
    .line 4415
    move-object/from16 v0, p0

    #@319
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@31b
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@31d
    .line 4416
    move-object/from16 v0, v16

    #@31f
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@321
    and-int/lit16 v2, v2, 0x200

    #@323
    if-eqz v2, :cond_17

    #@325
    const/16 v18, 0x1

    #@327
    .line 4419
    .local v18, "inheritTranslucentDecor":Z
    :goto_9
    move-object/from16 v0, v16

    #@329
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@32b
    const/4 v3, 0x1

    #@32c
    if-lt v2, v3, :cond_19

    #@32e
    .line 4420
    move-object/from16 v0, v16

    #@330
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@332
    const/16 v3, 0x63

    #@334
    if-gt v2, v3, :cond_18

    #@336
    const/16 v19, 0x1

    #@338
    .line 4422
    .local v19, "isAppWindow":Z
    :goto_a
    move-object/from16 v0, p0

    #@33a
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@33c
    move-object/from16 v0, p1

    #@33e
    if-ne v0, v2, :cond_15

    #@340
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@343
    move-result v2

    #@344
    if-eqz v2, :cond_1a

    #@346
    :cond_15
    const/16 v27, 0x0

    #@348
    .line 4423
    .local v27, "topAtRest":Z
    :goto_b
    if-eqz v19, :cond_16

    #@34a
    if-eqz v18, :cond_1b

    #@34c
    .line 4443
    :cond_16
    :goto_c
    const v2, 0x10100

    #@34f
    and-int/2addr v2, v4

    #@350
    .line 4444
    const v3, 0x10100

    #@353
    .line 4443
    if-ne v2, v3, :cond_29

    #@355
    .line 4451
    if-eqz p2, :cond_1d

    #@357
    .line 4454
    const/4 v7, 0x1

    #@358
    move-object/from16 v2, p0

    #@35a
    move-object/from16 v3, p1

    #@35c
    move-object/from16 v6, p2

    #@35e
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@361
    goto/16 :goto_3

    #@363
    .line 4416
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    :cond_17
    const/16 v18, 0x0

    #@365
    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_9

    #@366
    .line 4420
    :cond_18
    const/16 v19, 0x0

    #@368
    .restart local v19    # "isAppWindow":Z
    goto :goto_a

    #@369
    .line 4419
    .end local v19    # "isAppWindow":Z
    :cond_19
    const/16 v19, 0x0

    #@36b
    .restart local v19    # "isAppWindow":Z
    goto :goto_a

    #@36c
    .line 4422
    :cond_1a
    const/16 v27, 0x1

    #@36e
    .restart local v27    # "topAtRest":Z
    goto :goto_b

    #@36f
    .line 4423
    :cond_1b
    if-nez v27, :cond_16

    #@371
    .line 4424
    and-int/lit8 v2, v26, 0x4

    #@373
    if-nez v2, :cond_1c

    #@375
    .line 4425
    and-int/lit16 v2, v4, 0x400

    #@377
    if-nez v2, :cond_1c

    #@379
    .line 4426
    const/high16 v2, 0x4000000

    #@37b
    and-int/2addr v2, v4

    #@37c
    if-nez v2, :cond_1c

    #@37e
    .line 4427
    const/high16 v2, -0x80000000

    #@380
    and-int/2addr v2, v4

    #@381
    if-nez v2, :cond_1c

    #@383
    .line 4429
    const/high16 v2, 0x20000

    #@385
    and-int v2, v2, v23

    #@387
    if-nez v2, :cond_1c

    #@389
    .line 4431
    move-object/from16 v0, p0

    #@38b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@38d
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@38f
    .line 4433
    :cond_1c
    const/high16 v2, 0x8000000

    #@391
    and-int/2addr v2, v4

    #@392
    if-nez v2, :cond_16

    #@394
    .line 4434
    and-int/lit8 v2, v26, 0x2

    #@396
    if-nez v2, :cond_16

    #@398
    .line 4435
    const/high16 v2, -0x80000000

    #@39a
    and-int/2addr v2, v4

    #@39b
    if-nez v2, :cond_16

    #@39d
    .line 4438
    move-object/from16 v0, p0

    #@39f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@3a1
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@3a3
    .line 4439
    move-object/from16 v0, p0

    #@3a5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@3a7
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@3a9
    goto :goto_c

    #@3aa
    .line 4456
    :cond_1d
    move-object/from16 v0, v16

    #@3ac
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3ae
    const/16 v3, 0x7de

    #@3b0
    if-eq v2, v3, :cond_1e

    #@3b2
    .line 4457
    move-object/from16 v0, v16

    #@3b4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3b6
    const/16 v3, 0x7e1

    #@3b8
    if-ne v2, v3, :cond_22

    #@3ba
    .line 4465
    :cond_1e
    if-eqz v17, :cond_1f

    #@3bc
    .line 4466
    move-object/from16 v0, p0

    #@3be
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@3c0
    .line 4465
    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@3c2
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@3c4
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@3c6
    .line 4467
    move-object/from16 v0, p0

    #@3c8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@3ca
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@3cc
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@3ce
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@3d0
    .line 4468
    if-eqz v17, :cond_20

    #@3d2
    .line 4469
    move-object/from16 v0, p0

    #@3d4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@3d6
    move-object/from16 v0, p0

    #@3d8
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@3da
    add-int/2addr v2, v3

    #@3db
    .line 4468
    :goto_e
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@3dd
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@3df
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@3e1
    .line 4471
    if-eqz v17, :cond_21

    #@3e3
    .line 4472
    move-object/from16 v0, p0

    #@3e5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@3eb
    add-int/2addr v2, v3

    #@3ec
    .line 4471
    :goto_f
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@3ee
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@3f0
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@3f2
    .line 4523
    :goto_10
    and-int/lit16 v2, v4, 0x400

    #@3f4
    if-nez v2, :cond_27

    #@3f6
    .line 4524
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@3f9
    move-result v2

    #@3fa
    if-eqz v2, :cond_25

    #@3fc
    .line 4525
    move-object/from16 v0, p0

    #@3fe
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@400
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@402
    .line 4526
    move-object/from16 v0, p0

    #@404
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@406
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@408
    .line 4527
    move-object/from16 v0, p0

    #@40a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@40c
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@40e
    .line 4528
    move-object/from16 v0, p0

    #@410
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@412
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@414
    .line 4552
    :goto_11
    move-object/from16 v0, p0

    #@416
    move/from16 v1, v26

    #@418
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@41b
    .line 4553
    const/16 v2, 0x30

    #@41d
    if-eq v5, v2, :cond_28

    #@41f
    .line 4554
    move-object/from16 v0, p0

    #@421
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@423
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@425
    .line 4555
    move-object/from16 v0, p0

    #@427
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@429
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@42b
    .line 4556
    move-object/from16 v0, p0

    #@42d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@42f
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@431
    .line 4557
    move-object/from16 v0, p0

    #@433
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@435
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@437
    goto/16 :goto_3

    #@439
    .line 4466
    :cond_1f
    move-object/from16 v0, p0

    #@43b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@43d
    goto :goto_d

    #@43e
    .line 4470
    :cond_20
    move-object/from16 v0, p0

    #@440
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@442
    move-object/from16 v0, p0

    #@444
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@446
    add-int/2addr v2, v3

    #@447
    goto :goto_e

    #@448
    .line 4473
    :cond_21
    move-object/from16 v0, p0

    #@44a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@44c
    move-object/from16 v0, p0

    #@44e
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@450
    add-int/2addr v2, v3

    #@451
    goto :goto_f

    #@452
    .line 4478
    :cond_22
    const/high16 v2, 0x2000000

    #@454
    and-int/2addr v2, v4

    #@455
    if-eqz v2, :cond_23

    #@457
    .line 4479
    move-object/from16 v0, v16

    #@459
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@45b
    const/4 v3, 0x1

    #@45c
    if-lt v2, v3, :cond_23

    #@45e
    .line 4480
    move-object/from16 v0, v16

    #@460
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@462
    const/16 v3, 0x7cf

    #@464
    if-gt v2, v3, :cond_23

    #@466
    .line 4483
    move-object/from16 v0, p0

    #@468
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@46a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@46c
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@46e
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@470
    .line 4484
    move-object/from16 v0, p0

    #@472
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@474
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@476
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@478
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@47a
    .line 4485
    move-object/from16 v0, p0

    #@47c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@47e
    move-object/from16 v0, p0

    #@480
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@482
    add-int/2addr v2, v3

    #@483
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@485
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@487
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@489
    .line 4486
    move-object/from16 v0, p0

    #@48b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@48d
    .line 4487
    move-object/from16 v0, p0

    #@48f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@491
    .line 4486
    add-int/2addr v2, v3

    #@492
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@494
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@496
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@498
    goto/16 :goto_10

    #@49a
    .line 4488
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@49d
    move-result v2

    #@49e
    if-eqz v2, :cond_24

    #@4a0
    .line 4489
    move/from16 v0, v26

    #@4a2
    and-int/lit16 v2, v0, 0x200

    #@4a4
    if-eqz v2, :cond_24

    #@4a6
    .line 4490
    move-object/from16 v0, v16

    #@4a8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4aa
    const/4 v3, 0x1

    #@4ab
    if-lt v2, v3, :cond_24

    #@4ad
    .line 4491
    move-object/from16 v0, v16

    #@4af
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4b1
    const/16 v3, 0x7cf

    #@4b3
    if-gt v2, v3, :cond_24

    #@4b5
    .line 4496
    move-object/from16 v0, p0

    #@4b7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@4b9
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@4bb
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@4bd
    .line 4497
    move-object/from16 v0, p0

    #@4bf
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@4c1
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@4c3
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@4c5
    .line 4498
    move-object/from16 v0, p0

    #@4c7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@4c9
    move-object/from16 v0, p0

    #@4cb
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@4cd
    add-int/2addr v2, v3

    #@4ce
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@4d0
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@4d2
    .line 4499
    move-object/from16 v0, p0

    #@4d4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@4d6
    move-object/from16 v0, p0

    #@4d8
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@4da
    add-int/2addr v2, v3

    #@4db
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@4dd
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@4df
    .line 4503
    move-object/from16 v0, p0

    #@4e1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4e3
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@4e5
    .line 4504
    move-object/from16 v0, p0

    #@4e7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4e9
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@4eb
    .line 4505
    move-object/from16 v0, p0

    #@4ed
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4ef
    move-object/from16 v0, p0

    #@4f1
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@4f3
    add-int/2addr v2, v3

    #@4f4
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@4f6
    .line 4506
    move-object/from16 v0, p0

    #@4f8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4fa
    move-object/from16 v0, p0

    #@4fc
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@4fe
    add-int/2addr v2, v3

    #@4ff
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@501
    goto/16 :goto_10

    #@503
    .line 4508
    :cond_24
    move-object/from16 v0, p0

    #@505
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@507
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@509
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@50b
    .line 4509
    move-object/from16 v0, p0

    #@50d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@50f
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@511
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@513
    .line 4510
    move-object/from16 v0, p0

    #@515
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@517
    .line 4511
    move-object/from16 v0, p0

    #@519
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@51b
    .line 4510
    add-int/2addr v2, v3

    #@51c
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@51e
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@520
    .line 4512
    move-object/from16 v0, p0

    #@522
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@524
    .line 4513
    move-object/from16 v0, p0

    #@526
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@528
    .line 4512
    add-int/2addr v2, v3

    #@529
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@52b
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@52d
    .line 4517
    move-object/from16 v0, p0

    #@52f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@531
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@533
    .line 4518
    move-object/from16 v0, p0

    #@535
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@537
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@539
    .line 4519
    move-object/from16 v0, p0

    #@53b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@53d
    move-object/from16 v0, p0

    #@53f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@541
    add-int/2addr v2, v3

    #@542
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@544
    .line 4520
    move-object/from16 v0, p0

    #@546
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@548
    move-object/from16 v0, p0

    #@54a
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@54c
    add-int/2addr v2, v3

    #@54d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@54f
    goto/16 :goto_10

    #@551
    .line 4530
    :cond_25
    const/16 v2, 0x10

    #@553
    if-eq v5, v2, :cond_26

    #@555
    .line 4531
    move-object/from16 v0, p0

    #@557
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@559
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@55b
    .line 4532
    move-object/from16 v0, p0

    #@55d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@55f
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@561
    .line 4533
    move-object/from16 v0, p0

    #@563
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@565
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@567
    .line 4534
    move-object/from16 v0, p0

    #@569
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@56b
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@56d
    goto/16 :goto_11

    #@56f
    .line 4536
    :cond_26
    move-object/from16 v0, p0

    #@571
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@573
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@575
    .line 4537
    move-object/from16 v0, p0

    #@577
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@579
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@57b
    .line 4538
    move-object/from16 v0, p0

    #@57d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@57f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@581
    .line 4539
    move-object/from16 v0, p0

    #@583
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@585
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@587
    goto/16 :goto_11

    #@589
    .line 4547
    :cond_27
    move-object/from16 v0, p0

    #@58b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@58d
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@58f
    .line 4548
    move-object/from16 v0, p0

    #@591
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@593
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@595
    .line 4549
    move-object/from16 v0, p0

    #@597
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@599
    move-object/from16 v0, p0

    #@59b
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@59d
    add-int/2addr v2, v3

    #@59e
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@5a0
    .line 4550
    move-object/from16 v0, p0

    #@5a2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@5a4
    move-object/from16 v0, p0

    #@5a6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@5a8
    add-int/2addr v2, v3

    #@5a9
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@5ab
    goto/16 :goto_11

    #@5ad
    .line 4559
    :cond_28
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5b0
    goto/16 :goto_3

    #@5b2
    .line 4562
    :cond_29
    and-int/lit16 v2, v4, 0x100

    #@5b4
    if-nez v2, :cond_2a

    #@5b6
    move/from16 v0, v26

    #@5b8
    and-int/lit16 v2, v0, 0x600

    #@5ba
    if-eqz v2, :cond_3e

    #@5bc
    .line 4569
    :cond_2a
    move-object/from16 v0, v16

    #@5be
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5c0
    const/16 v3, 0x7de

    #@5c2
    if-eq v2, v3, :cond_2b

    #@5c4
    .line 4570
    move-object/from16 v0, v16

    #@5c6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5c8
    const/16 v3, 0x7e1

    #@5ca
    if-ne v2, v3, :cond_2c

    #@5cc
    .line 4572
    :cond_2b
    if-eqz v17, :cond_2e

    #@5ce
    .line 4573
    move-object/from16 v0, p0

    #@5d0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@5d2
    .line 4572
    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@5d4
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@5d6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@5d8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@5da
    .line 4574
    move-object/from16 v0, p0

    #@5dc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@5de
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@5e0
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@5e2
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@5e4
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@5e6
    .line 4575
    if-eqz v17, :cond_2f

    #@5e8
    .line 4576
    move-object/from16 v0, p0

    #@5ea
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@5ec
    move-object/from16 v0, p0

    #@5ee
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@5f0
    add-int/2addr v2, v3

    #@5f1
    .line 4575
    :goto_13
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@5f3
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@5f5
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@5f7
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@5f9
    .line 4578
    if-eqz v17, :cond_30

    #@5fb
    .line 4579
    move-object/from16 v0, p0

    #@5fd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@5ff
    move-object/from16 v0, p0

    #@601
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@603
    add-int/2addr v2, v3

    #@604
    .line 4578
    :goto_14
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@606
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@608
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@60a
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@60c
    .line 4685
    :goto_15
    move-object/from16 v0, p0

    #@60e
    move/from16 v1, v26

    #@610
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@613
    .line 4687
    const/16 v2, 0x30

    #@615
    if-eq v5, v2, :cond_3d

    #@617
    .line 4688
    move-object/from16 v0, p0

    #@619
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@61b
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@61d
    .line 4689
    move-object/from16 v0, p0

    #@61f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@621
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@623
    .line 4690
    move-object/from16 v0, p0

    #@625
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@627
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@629
    .line 4691
    move-object/from16 v0, p0

    #@62b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@62d
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@62f
    goto/16 :goto_3

    #@631
    .line 4571
    :cond_2c
    move-object/from16 v0, v16

    #@633
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@635
    const/16 v3, 0x7e4

    #@637
    if-eq v2, v3, :cond_2b

    #@639
    .line 4584
    move-object/from16 v0, v16

    #@63b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@63d
    const/16 v3, 0x7e3

    #@63f
    if-eq v2, v3, :cond_2d

    #@641
    .line 4585
    move-object/from16 v0, v16

    #@643
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@645
    const/16 v3, 0x7e8

    #@647
    if-ne v2, v3, :cond_31

    #@649
    .line 4587
    :cond_2d
    move-object/from16 v0, p0

    #@64b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@64d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@64f
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@651
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@653
    .line 4588
    move-object/from16 v0, p0

    #@655
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@657
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@659
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@65b
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@65d
    .line 4589
    move-object/from16 v0, p0

    #@65f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@661
    .line 4590
    move-object/from16 v0, p0

    #@663
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@665
    .line 4589
    add-int/2addr v2, v3

    #@666
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@668
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@66a
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@66c
    .line 4591
    move-object/from16 v0, p0

    #@66e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@670
    .line 4592
    move-object/from16 v0, p0

    #@672
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@674
    .line 4591
    add-int/2addr v2, v3

    #@675
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@677
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@679
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@67b
    goto :goto_15

    #@67c
    .line 4573
    :cond_2e
    move-object/from16 v0, p0

    #@67e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@680
    goto/16 :goto_12

    #@682
    .line 4577
    :cond_2f
    move-object/from16 v0, p0

    #@684
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@686
    move-object/from16 v0, p0

    #@688
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@68a
    add-int/2addr v2, v3

    #@68b
    goto/16 :goto_13

    #@68d
    .line 4580
    :cond_30
    move-object/from16 v0, p0

    #@68f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@691
    move-object/from16 v0, p0

    #@693
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@695
    add-int/2addr v2, v3

    #@696
    goto/16 :goto_14

    #@698
    .line 4596
    :cond_31
    move-object/from16 v0, v16

    #@69a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@69c
    const/16 v3, 0x7df

    #@69e
    if-eq v2, v3, :cond_32

    #@6a0
    .line 4597
    move-object/from16 v0, v16

    #@6a2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6a4
    const/16 v3, 0x7e5

    #@6a6
    if-ne v2, v3, :cond_33

    #@6a8
    .line 4599
    :cond_32
    and-int/lit16 v2, v4, 0x400

    #@6aa
    if-eqz v2, :cond_34

    #@6ac
    .line 4602
    move-object/from16 v0, p0

    #@6ae
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6b0
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@6b2
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@6b4
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@6b6
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@6b8
    .line 4603
    move-object/from16 v0, p0

    #@6ba
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6bc
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@6be
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@6c0
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@6c2
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@6c4
    .line 4604
    move-object/from16 v0, p0

    #@6c6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6c8
    .line 4605
    move-object/from16 v0, p0

    #@6ca
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@6cc
    .line 4604
    add-int/2addr v2, v3

    #@6cd
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@6cf
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@6d1
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@6d3
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@6d5
    .line 4606
    move-object/from16 v0, p0

    #@6d7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6d9
    .line 4607
    move-object/from16 v0, p0

    #@6db
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@6dd
    .line 4606
    add-int/2addr v2, v3

    #@6de
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@6e0
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@6e2
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@6e4
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@6e6
    goto/16 :goto_15

    #@6e8
    .line 4598
    :cond_33
    move-object/from16 v0, v16

    #@6ea
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6ec
    const/16 v3, 0x7f4

    #@6ee
    if-eq v2, v3, :cond_32

    #@6f0
    .line 4608
    :cond_34
    move-object/from16 v0, v16

    #@6f2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6f4
    const/16 v3, 0x7e5

    #@6f6
    if-ne v2, v3, :cond_35

    #@6f8
    .line 4610
    move-object/from16 v0, p0

    #@6fa
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6fc
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@6fe
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@700
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@702
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@704
    .line 4611
    move-object/from16 v0, p0

    #@706
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@708
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@70a
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@70c
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@70e
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@710
    .line 4612
    move-object/from16 v0, p0

    #@712
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@714
    .line 4613
    move-object/from16 v0, p0

    #@716
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@718
    .line 4612
    add-int/2addr v2, v3

    #@719
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@71b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@71d
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@71f
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@721
    .line 4614
    move-object/from16 v0, p0

    #@723
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@725
    .line 4615
    move-object/from16 v0, p0

    #@727
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@729
    .line 4614
    add-int/2addr v2, v3

    #@72a
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@72c
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@72e
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@730
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@732
    goto/16 :goto_15

    #@734
    .line 4616
    :cond_35
    move-object/from16 v0, v16

    #@736
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@738
    const/16 v3, 0x7dd

    #@73a
    if-ne v2, v3, :cond_36

    #@73c
    .line 4619
    move-object/from16 v0, p0

    #@73e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@740
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@742
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@744
    .line 4620
    move-object/from16 v0, p0

    #@746
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@748
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@74a
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@74c
    .line 4621
    move-object/from16 v0, p0

    #@74e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@750
    move-object/from16 v0, p0

    #@752
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@754
    add-int/2addr v2, v3

    #@755
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@757
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@759
    .line 4622
    move-object/from16 v0, p0

    #@75b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@75d
    move-object/from16 v0, p0

    #@75f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@761
    add-int/2addr v2, v3

    #@762
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@764
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@766
    .line 4623
    move-object/from16 v0, p0

    #@768
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@76a
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@76c
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@76e
    .line 4624
    move-object/from16 v0, p0

    #@770
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@772
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@774
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@776
    .line 4625
    move-object/from16 v0, p0

    #@778
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@77a
    move-object/from16 v0, p0

    #@77c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@77e
    add-int/2addr v2, v3

    #@77f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@781
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@783
    .line 4626
    move-object/from16 v0, p0

    #@785
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@787
    move-object/from16 v0, p0

    #@789
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@78b
    add-int/2addr v2, v3

    #@78c
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@78e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@790
    goto/16 :goto_15

    #@792
    .line 4627
    :cond_36
    const/high16 v2, 0x2000000

    #@794
    and-int/2addr v2, v4

    #@795
    if-eqz v2, :cond_37

    #@797
    .line 4628
    move-object/from16 v0, v16

    #@799
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@79b
    const/4 v3, 0x1

    #@79c
    if-lt v2, v3, :cond_37

    #@79e
    .line 4629
    move-object/from16 v0, v16

    #@7a0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7a2
    const/16 v3, 0x7cf

    #@7a4
    if-gt v2, v3, :cond_37

    #@7a6
    .line 4632
    move-object/from16 v0, p0

    #@7a8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@7aa
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@7ac
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@7ae
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@7b0
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@7b2
    .line 4633
    move-object/from16 v0, p0

    #@7b4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@7b6
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@7b8
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@7ba
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@7bc
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@7be
    .line 4635
    move-object/from16 v0, p0

    #@7c0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@7c2
    move-object/from16 v0, p0

    #@7c4
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@7c6
    add-int/2addr v2, v3

    #@7c7
    .line 4634
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@7c9
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@7cb
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@7cd
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@7cf
    .line 4637
    move-object/from16 v0, p0

    #@7d1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@7d3
    move-object/from16 v0, p0

    #@7d5
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@7d7
    add-int/2addr v2, v3

    #@7d8
    .line 4636
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@7da
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@7dc
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@7de
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@7e0
    goto/16 :goto_15

    #@7e2
    .line 4638
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@7e5
    move-result v2

    #@7e6
    if-eqz v2, :cond_3a

    #@7e8
    .line 4639
    move/from16 v0, v26

    #@7ea
    and-int/lit16 v2, v0, 0x200

    #@7ec
    if-eqz v2, :cond_3a

    #@7ee
    .line 4640
    move-object/from16 v0, v16

    #@7f0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7f2
    const/16 v3, 0x7d0

    #@7f4
    if-eq v2, v3, :cond_38

    #@7f6
    .line 4641
    move-object/from16 v0, v16

    #@7f8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7fa
    const/16 v3, 0x7d5

    #@7fc
    if-ne v2, v3, :cond_39

    #@7fe
    .line 4653
    :cond_38
    move-object/from16 v0, p0

    #@800
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@802
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@804
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@806
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@808
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@80a
    .line 4654
    move-object/from16 v0, p0

    #@80c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@80e
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@810
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@812
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@814
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@816
    .line 4655
    move-object/from16 v0, p0

    #@818
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@81a
    .line 4656
    move-object/from16 v0, p0

    #@81c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@81e
    .line 4655
    add-int/2addr v2, v3

    #@81f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@821
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@823
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@825
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@827
    .line 4657
    move-object/from16 v0, p0

    #@829
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@82b
    .line 4658
    move-object/from16 v0, p0

    #@82d
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@82f
    .line 4657
    add-int/2addr v2, v3

    #@830
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@832
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@834
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@836
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@838
    goto/16 :goto_15

    #@83a
    .line 4642
    :cond_39
    move-object/from16 v0, v16

    #@83c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@83e
    const/16 v3, 0x7f2

    #@840
    if-eq v2, v3, :cond_38

    #@842
    .line 4643
    move-object/from16 v0, v16

    #@844
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@846
    const/16 v3, 0x7f1

    #@848
    if-eq v2, v3, :cond_38

    #@84a
    .line 4644
    move-object/from16 v0, v16

    #@84c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@84e
    const/4 v3, 0x1

    #@84f
    if-lt v2, v3, :cond_3a

    #@851
    .line 4645
    move-object/from16 v0, v16

    #@853
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@855
    const/16 v3, 0x7cf

    #@857
    if-le v2, v3, :cond_38

    #@859
    .line 4659
    :cond_3a
    move/from16 v0, v26

    #@85b
    and-int/lit16 v2, v0, 0x400

    #@85d
    if-eqz v2, :cond_3c

    #@85f
    .line 4660
    move-object/from16 v0, p0

    #@861
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@863
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@865
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@867
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@869
    .line 4661
    move-object/from16 v0, p0

    #@86b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@86d
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@86f
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@871
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@873
    .line 4662
    move-object/from16 v0, p0

    #@875
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@877
    move-object/from16 v0, p0

    #@879
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@87b
    add-int/2addr v2, v3

    #@87c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@87e
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@880
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@882
    .line 4663
    move-object/from16 v0, p0

    #@884
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@886
    .line 4664
    move-object/from16 v0, p0

    #@888
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@88a
    .line 4663
    add-int/2addr v2, v3

    #@88b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@88d
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@88f
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@891
    .line 4665
    const/16 v2, 0x10

    #@893
    if-eq v5, v2, :cond_3b

    #@895
    .line 4666
    move-object/from16 v0, p0

    #@897
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@899
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@89b
    .line 4667
    move-object/from16 v0, p0

    #@89d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@89f
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@8a1
    .line 4668
    move-object/from16 v0, p0

    #@8a3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@8a5
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@8a7
    .line 4669
    move-object/from16 v0, p0

    #@8a9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@8ab
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@8ad
    goto/16 :goto_15

    #@8af
    .line 4671
    :cond_3b
    move-object/from16 v0, p0

    #@8b1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@8b3
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@8b5
    .line 4672
    move-object/from16 v0, p0

    #@8b7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@8b9
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@8bb
    .line 4673
    move-object/from16 v0, p0

    #@8bd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@8bf
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@8c1
    .line 4674
    move-object/from16 v0, p0

    #@8c3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@8c5
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@8c7
    goto/16 :goto_15

    #@8c9
    .line 4677
    :cond_3c
    move-object/from16 v0, p0

    #@8cb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@8cd
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@8cf
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@8d1
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@8d3
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@8d5
    .line 4678
    move-object/from16 v0, p0

    #@8d7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@8d9
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@8db
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@8dd
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@8df
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@8e1
    .line 4679
    move-object/from16 v0, p0

    #@8e3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@8e5
    .line 4680
    move-object/from16 v0, p0

    #@8e7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@8e9
    .line 4679
    add-int/2addr v2, v3

    #@8ea
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@8ec
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@8ee
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@8f0
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@8f2
    .line 4681
    move-object/from16 v0, p0

    #@8f4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@8f6
    .line 4682
    move-object/from16 v0, p0

    #@8f8
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@8fa
    .line 4681
    add-int/2addr v2, v3

    #@8fb
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@8fd
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@8ff
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@901
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@903
    goto/16 :goto_15

    #@905
    .line 4693
    :cond_3d
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@908
    goto/16 :goto_3

    #@90a
    .line 4695
    :cond_3e
    if-eqz p2, :cond_3f

    #@90c
    .line 4700
    const/4 v7, 0x0

    #@90d
    move-object/from16 v2, p0

    #@90f
    move-object/from16 v3, p1

    #@911
    move-object/from16 v6, p2

    #@913
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@916
    goto/16 :goto_3

    #@918
    .line 4706
    :cond_3f
    move-object/from16 v0, v16

    #@91a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@91c
    const/16 v3, 0x7de

    #@91e
    if-eq v2, v3, :cond_40

    #@920
    move-object/from16 v0, v16

    #@922
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@924
    const/16 v3, 0x7e4

    #@926
    if-ne v2, v3, :cond_41

    #@928
    .line 4711
    :cond_40
    move-object/from16 v0, p0

    #@92a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@92c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@92e
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@930
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@932
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@934
    .line 4712
    move-object/from16 v0, p0

    #@936
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@938
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@93a
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@93c
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@93e
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@940
    .line 4713
    move-object/from16 v0, p0

    #@942
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@944
    .line 4714
    move-object/from16 v0, p0

    #@946
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@948
    .line 4713
    add-int/2addr v2, v3

    #@949
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@94b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@94d
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@94f
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@951
    .line 4715
    move-object/from16 v0, p0

    #@953
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@955
    .line 4716
    move-object/from16 v0, p0

    #@957
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@959
    .line 4715
    add-int/2addr v2, v3

    #@95a
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@95c
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@95e
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@960
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@962
    goto/16 :goto_3

    #@964
    .line 4717
    :cond_41
    move-object/from16 v0, v16

    #@966
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@968
    const/16 v3, 0x7d5

    #@96a
    if-eq v2, v3, :cond_42

    #@96c
    move-object/from16 v0, v16

    #@96e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@970
    const/16 v3, 0x7d3

    #@972
    if-ne v2, v3, :cond_43

    #@974
    .line 4719
    :cond_42
    move-object/from16 v0, p0

    #@976
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@978
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@97a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@97c
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@97e
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@980
    .line 4720
    move-object/from16 v0, p0

    #@982
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@984
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@986
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@988
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@98a
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@98c
    .line 4721
    move-object/from16 v0, p0

    #@98e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@990
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@992
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@994
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@996
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@998
    .line 4722
    move-object/from16 v0, p0

    #@99a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@99c
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@99e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@9a0
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@9a2
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@9a4
    goto/16 :goto_3

    #@9a6
    .line 4724
    :cond_43
    move-object/from16 v0, p0

    #@9a8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@9aa
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@9ac
    .line 4725
    move-object/from16 v0, p0

    #@9ae
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@9b0
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@9b2
    .line 4726
    move-object/from16 v0, p0

    #@9b4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@9b6
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@9b8
    .line 4727
    move-object/from16 v0, p0

    #@9ba
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@9bc
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@9be
    .line 4728
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@9c1
    move-result v2

    #@9c2
    if-eqz v2, :cond_44

    #@9c4
    .line 4729
    move-object/from16 v0, p0

    #@9c6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@9c8
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@9ca
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@9cc
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@9ce
    .line 4730
    move-object/from16 v0, p0

    #@9d0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@9d2
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@9d4
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@9d6
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@9d8
    .line 4731
    move-object/from16 v0, p0

    #@9da
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@9dc
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@9de
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@9e0
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@9e2
    .line 4732
    move-object/from16 v0, p0

    #@9e4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@9e6
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@9e8
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@9ea
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@9ec
    .line 4744
    :goto_16
    const/16 v2, 0x30

    #@9ee
    if-eq v5, v2, :cond_46

    #@9f0
    .line 4745
    move-object/from16 v0, p0

    #@9f2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@9f4
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@9f6
    .line 4746
    move-object/from16 v0, p0

    #@9f8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@9fa
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@9fc
    .line 4747
    move-object/from16 v0, p0

    #@9fe
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@a00
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@a02
    .line 4748
    move-object/from16 v0, p0

    #@a04
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@a06
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@a08
    goto/16 :goto_3

    #@a0a
    .line 4733
    :cond_44
    const/16 v2, 0x10

    #@a0c
    if-eq v5, v2, :cond_45

    #@a0e
    .line 4734
    move-object/from16 v0, p0

    #@a10
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@a12
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@a14
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@a16
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@a18
    .line 4735
    move-object/from16 v0, p0

    #@a1a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@a1c
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@a1e
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@a20
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@a22
    .line 4736
    move-object/from16 v0, p0

    #@a24
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@a26
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@a28
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@a2a
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@a2c
    .line 4737
    move-object/from16 v0, p0

    #@a2e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@a30
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@a32
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@a34
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a36
    goto :goto_16

    #@a37
    .line 4739
    :cond_45
    move-object/from16 v0, p0

    #@a39
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@a3b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@a3d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@a3f
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@a41
    .line 4740
    move-object/from16 v0, p0

    #@a43
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@a45
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@a47
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@a49
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@a4b
    .line 4741
    move-object/from16 v0, p0

    #@a4d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@a4f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@a51
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@a53
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@a55
    .line 4742
    move-object/from16 v0, p0

    #@a57
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@a59
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@a5b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@a5d
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a5f
    goto :goto_16

    #@a60
    .line 4750
    :cond_46
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a63
    goto/16 :goto_3

    #@a65
    .line 4760
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    :cond_47
    const/16 v2, -0x2710

    #@a67
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@a69
    const/16 v2, -0x2710

    #@a6b
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@a6d
    .line 4761
    const/16 v2, 0x2710

    #@a6f
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a71
    const/16 v2, 0x2710

    #@a73
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@a75
    .line 4762
    move-object/from16 v0, v16

    #@a77
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a79
    const/16 v3, 0x7dd

    #@a7b
    if-eq v2, v3, :cond_4

    #@a7d
    .line 4763
    const/16 v2, -0x2710

    #@a7f
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@a81
    const/16 v2, -0x2710

    #@a83
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@a85
    const/16 v2, -0x2710

    #@a87
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@a89
    const/16 v2, -0x2710

    #@a8b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@a8d
    const/16 v2, -0x2710

    #@a8f
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@a91
    const/16 v2, -0x2710

    #@a93
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@a95
    .line 4764
    const/16 v2, 0x2710

    #@a97
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@a99
    const/16 v2, 0x2710

    #@a9b
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@a9d
    const/16 v2, 0x2710

    #@a9f
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@aa1
    const/16 v2, 0x2710

    #@aa3
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@aa5
    const/16 v2, 0x2710

    #@aa7
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@aa9
    const/16 v2, 0x2710

    #@aab
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@aad
    goto/16 :goto_4

    #@aaf
    .line 4781
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v24    # "rotation":I
    .restart local v28    # "useOutsets":Z
    :cond_48
    const/4 v2, 0x1

    #@ab0
    move/from16 v0, v24

    #@ab2
    if-ne v0, v2, :cond_49

    #@ab4
    .line 4782
    iget v2, v15, Landroid/graphics/Rect;->right:I

    #@ab6
    add-int v2, v2, v22

    #@ab8
    iput v2, v15, Landroid/graphics/Rect;->right:I

    #@aba
    goto/16 :goto_5

    #@abc
    .line 4783
    :cond_49
    const/4 v2, 0x2

    #@abd
    move/from16 v0, v24

    #@abf
    if-ne v0, v2, :cond_4a

    #@ac1
    .line 4784
    iget v2, v15, Landroid/graphics/Rect;->top:I

    #@ac3
    sub-int v2, v2, v22

    #@ac5
    iput v2, v15, Landroid/graphics/Rect;->top:I

    #@ac7
    goto/16 :goto_5

    #@ac9
    .line 4785
    :cond_4a
    const/4 v2, 0x3

    #@aca
    move/from16 v0, v24

    #@acc
    if-ne v0, v2, :cond_5

    #@ace
    .line 4786
    iget v2, v15, Landroid/graphics/Rect;->left:I

    #@ad0
    sub-int v2, v2, v22

    #@ad2
    iput v2, v15, Landroid/graphics/Rect;->left:I

    #@ad4
    goto/16 :goto_5

    #@ad6
    .line 4810
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v24    # "rotation":I
    :cond_4b
    const/4 v2, 0x0

    #@ad7
    const/4 v3, 0x0

    #@ad8
    move-object/from16 v0, p0

    #@ada
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@add
    .line 4811
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@ae0
    goto/16 :goto_6

    #@ae2
    .line 4815
    :cond_4c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@ae5
    goto/16 :goto_7
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6885
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 6886
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 6887
    if-eqz p1, :cond_0

    #@12
    .line 6890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    #@17
    .line 6892
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 6884
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
    .line 927
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 928
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@8
    if-eq v0, v3, :cond_0

    #@a
    .line 929
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@c
    const/16 v1, 0xa

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 934
    :cond_0
    return v2

    #@11
    .line 930
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@13
    const/4 v1, 0x7

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 931
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@18
    const/4 v1, 0x6

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 937
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
    .line 943
    :cond_3
    return v2

    #@25
    .line 938
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@27
    if-eqz v0, :cond_5

    #@29
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2b
    if-eq v0, v2, :cond_3

    #@2d
    .line 939
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2f
    const/4 v1, 0x3

    #@30
    if-eq v0, v1, :cond_3

    #@32
    .line 940
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@34
    if-eq v0, v3, :cond_3

    #@36
    .line 945
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@38
    if-ne v0, v2, :cond_6

    #@3a
    .line 954
    const/4 v0, 0x0

    #@3b
    return v0

    #@3c
    .line 956
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@3e
    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 6384
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6385
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 6383
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
    .line 5286
    if-eqz p3, :cond_0

    #@3
    const/4 v2, 0x1

    #@4
    .line 5287
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@6
    if-ne v3, v2, :cond_1

    #@8
    .line 5288
    return-void

    #@9
    .line 5286
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    #@a
    .restart local v2    # "lensCoverState":I
    goto :goto_0

    #@b
    .line 5290
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@d
    const/4 v4, 0x1

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 5291
    if-nez v2, :cond_2

    #@12
    .line 5293
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@14
    if-nez v3, :cond_3

    #@16
    .line 5295
    .local v1, "keyguardActive":Z
    :goto_1
    if-eqz v1, :cond_4

    #@18
    .line 5296
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    #@1d
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 5300
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    #@23
    div-long v4, p1, v4

    #@25
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@27
    .line 5301
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    #@2a
    .line 5300
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@2d
    .line 5302
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@2f
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@32
    .line 5304
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyguardActive":Z
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@34
    .line 5285
    return-void

    #@35
    .line 5294
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@37
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@3a
    move-result v1

    #@3b
    goto :goto_1

    #@3c
    .line 5298
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
    .line 5267
    if-eqz p3, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 5268
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 5269
    return-void

    #@8
    .line 5267
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    #@9
    .restart local v0    # "newLidState":I
    goto :goto_0

    #@a
    .line 5272
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@c
    .line 5273
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@f
    .line 5274
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@13
    .line 5276
    if-eqz p3, :cond_3

    #@15
    .line 5277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v2

    #@19
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@1b
    .line 5278
    const-string/jumbo v4, "android.policy:LID"

    #@1e
    .line 5277
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@21
    .line 5265
    :cond_2
    :goto_1
    return-void

    #@22
    .line 5279
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@24
    if-nez v1, :cond_2

    #@26
    .line 5280
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
    .line 2284
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 2287
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v1

    #@d
    .line 2286
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@f
    .line 2290
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@11
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@13
    .line 2292
    const v3, 0x1050018

    #@16
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@19
    move-result v3

    #@1a
    .line 2291
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@1c
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@1e
    aput v3, v4, v5

    #@20
    .line 2290
    aput v3, v1, v2

    #@22
    .line 2293
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@24
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@26
    .line 2295
    const v3, 0x1050019

    #@29
    .line 2294
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
    .line 2293
    aput v3, v1, v2

    #@35
    .line 2298
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@37
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@39
    .line 2302
    const v3, 0x105001a

    #@3c
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3f
    move-result v3

    #@40
    .line 2301
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@42
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@44
    aput v3, v4, v5

    #@46
    .line 2300
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@48
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@4a
    aput v3, v4, v5

    #@4c
    .line 2299
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@4e
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@50
    aput v3, v4, v5

    #@52
    .line 2298
    aput v3, v1, v2

    #@54
    .line 2305
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@56
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@58
    .line 2308
    const v3, 0x105001b

    #@5b
    .line 2307
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5e
    move-result v3

    #@5f
    .line 2306
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@61
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@63
    aput v3, v4, v5

    #@65
    .line 2305
    aput v3, v1, v2

    #@67
    .line 2309
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@69
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@6b
    .line 2311
    const v3, 0x105001c

    #@6e
    .line 2310
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@71
    move-result v3

    #@72
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@74
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@76
    aput v3, v4, v5

    #@78
    .line 2309
    aput v3, v1, v2

    #@7a
    .line 2314
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@7c
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@7e
    .line 2319
    const v3, 0x105001d

    #@81
    .line 2318
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@84
    move-result v3

    #@85
    .line 2317
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@87
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@89
    aput v3, v4, v5

    #@8b
    .line 2316
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@8d
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@8f
    aput v3, v4, v5

    #@91
    .line 2315
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@93
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@95
    aput v3, v4, v5

    #@97
    .line 2314
    aput v3, v1, v2

    #@99
    .line 2283
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
    .line 7170
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@4
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 7171
    return v5

    #@b
    .line 7173
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    .line 7174
    const-string/jumbo v6, "haptic_feedback_enabled"

    #@14
    const/4 v8, -0x2

    #@15
    .line 7173
    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    move v0, v7

    #@1c
    .line 7175
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1e
    if-eqz p3, :cond_3

    #@20
    .line 7178
    :cond_1
    const/4 v4, 0x0

    #@21
    .line 7179
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    #@24
    .line 7205
    return v5

    #@25
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    move v0, v5

    #@26
    .line 7173
    goto :goto_0

    #@27
    .line 7176
    .restart local v0    # "hapticsDisabled":Z
    :cond_3
    return v5

    #@28
    .line 7181
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@2a
    .line 7209
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    #@2c
    .line 7210
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    #@2f
    move-result v2

    #@30
    .line 7211
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 7216
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    #@35
    if-ne v1, v7, :cond_5

    #@37
    .line 7218
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@39
    aget-wide v4, v4, v5

    #@3b
    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@3d
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    #@40
    .line 7223
    :goto_3
    return v7

    #@41
    .line 7184
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@43
    .local v4, "pattern":[J
    goto :goto_1

    #@44
    .line 7187
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@46
    .local v4, "pattern":[J
    goto :goto_1

    #@47
    .line 7190
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@49
    .local v4, "pattern":[J
    goto :goto_1

    #@4a
    .line 7193
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@4c
    .local v4, "pattern":[J
    goto :goto_1

    #@4d
    .line 7196
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@4f
    .local v4, "pattern":[J
    goto :goto_1

    #@50
    .line 7199
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@52
    .local v4, "pattern":[J
    goto :goto_1

    #@53
    .line 7202
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@55
    .local v4, "pattern":[J
    goto :goto_1

    #@56
    .line 7213
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@59
    move-result v2

    #@5a
    .line 7214
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
    .line 7221
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
    .line 7179
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
    .line 2705
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 2746
    :goto_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 2707
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    .line 2708
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@d
    .line 2709
    const-string/jumbo v2, "PhoneWindowManager"

    #@10
    .line 2707
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 2710
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 2711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 2712
    return v3

    #@20
    .line 2715
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@22
    .line 2716
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@24
    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@27
    goto :goto_0

    #@28
    .line 2719
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2a
    .line 2720
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@2d
    .line 2721
    const-string/jumbo v2, "PhoneWindowManager"

    #@30
    .line 2719
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 2722
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 2723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@39
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 2724
    return v3

    #@40
    .line 2727
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@42
    .line 2728
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@44
    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@47
    goto :goto_0

    #@48
    .line 2735
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4a
    .line 2736
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@4d
    .line 2737
    const-string/jumbo v2, "PhoneWindowManager"

    #@50
    .line 2735
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 2740
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@56
    if-eqz v0, :cond_2

    #@58
    .line 2741
    return v3

    #@59
    .line 2743
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@5b
    goto :goto_0

    #@5c
    .line 2705
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
    .line 2239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@8
    .line 2238
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
    .line 3532
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 3533
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@5
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    #@b
    .line 3534
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
    .line 3535
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
    .line 3532
    .end local v0    # "service":Lcom/android/internal/policy/IShortcutService;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 3538
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
    .line 3531
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    #@0
    .prologue
    .line 2682
    if-eqz p2, :cond_0

    #@2
    .line 2683
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
    .line 2684
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@10
    .line 2678
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
    .line 2752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-ne v0, p1, :cond_2

    #@5
    .line 2753
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    .line 2754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@c
    .line 2755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@e
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    #@11
    .line 2759
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    if-ne v0, p1, :cond_1

    #@15
    .line 2760
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@17
    .line 2761
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@19
    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@1c
    .line 2751
    :cond_1
    return-void

    #@1d
    .line 2756
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@1f
    if-ne v0, p1, :cond_0

    #@21
    .line 2757
    const-string/jumbo v0, "WindowManager"

    #@24
    const-string/jumbo v1, "Removing keyguard scrim"

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2758
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
    .line 6471
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 6472
    return v4

    #@b
    .line 6475
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 6476
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@10
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    #@13
    move-result v1

    #@14
    .line 6477
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    #@16
    .line 6478
    move v1, p2

    #@17
    .line 6482
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@1d
    if-ltz v2, :cond_2

    #@1f
    .line 6484
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 6563
    .local v0, "preferredRotation":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@24
    .line 6617
    :pswitch_0
    if-ltz v0, :cond_20

    #@26
    monitor-exit v5

    #@27
    .line 6618
    return v0

    #@28
    .line 6485
    .end local v0    # "preferredRotation":I
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2a
    if-ne v2, v7, :cond_5

    #@2c
    .line 6486
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@2e
    if-nez v2, :cond_3

    #@30
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@32
    if-ltz v2, :cond_5

    #@34
    .line 6490
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 6491
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
    .line 6492
    .end local v0    # "preferredRotation":I
    :cond_5
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@3f
    if-eq v2, v3, :cond_6

    #@41
    .line 6493
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@43
    const/4 v6, 0x3

    #@44
    if-ne v2, v6, :cond_8

    #@46
    .line 6495
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@48
    if-nez v2, :cond_7

    #@4a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@4c
    if-ltz v2, :cond_9

    #@4e
    .line 6499
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@50
    if-eqz v2, :cond_a

    #@52
    .line 6500
    move v0, v1

    #@53
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@54
    .line 6494
    .end local v0    # "preferredRotation":I
    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@56
    if-eq v2, v8, :cond_6

    #@58
    .line 6501
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@5a
    if-eqz v2, :cond_b

    #@5c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@5e
    if-eqz v2, :cond_b

    #@60
    .line 6504
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@62
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@63
    .line 6500
    .end local v0    # "preferredRotation":I
    :cond_a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@65
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@66
    .line 6505
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
    .line 6506
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@70
    if-ltz v2, :cond_c

    #@72
    .line 6511
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@74
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@75
    .line 6512
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@77
    if-eqz v2, :cond_d

    #@79
    .line 6515
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@7b
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@7c
    .line 6516
    .end local v0    # "preferredRotation":I
    :cond_d
    const/16 v2, 0xe

    #@7e
    if-ne p1, v2, :cond_e

    #@80
    .line 6518
    move v0, p2

    #@81
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@82
    .line 6519
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@84
    if-nez v2, :cond_f

    #@86
    .line 6522
    const/4 v0, -0x1

    #@87
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@88
    .line 6523
    .end local v0    # "preferredRotation":I
    :cond_f
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@8a
    if-nez v2, :cond_14

    #@8c
    .line 6524
    if-eq p1, v7, :cond_10

    #@8e
    .line 6525
    const/4 v2, -0x1

    #@8f
    if-ne p1, v2, :cond_13

    #@91
    .line 6535
    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@93
    if-gez v2, :cond_11

    #@95
    .line 6539
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9a
    move-result-object v2

    #@9b
    .line 6540
    const v6, 0x1120035

    #@9e
    .line 6539
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
    .line 6542
    :cond_11
    if-ne v1, v7, :cond_12

    #@a9
    .line 6543
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@ab
    if-ne v2, v3, :cond_16

    #@ad
    .line 6546
    :cond_12
    move v0, v1

    #@ae
    .line 6545
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@b0
    .line 6526
    .end local v0    # "preferredRotation":I
    :cond_13
    const/16 v2, 0xb

    #@b2
    if-eq p1, v2, :cond_10

    #@b4
    .line 6527
    const/16 v2, 0xc

    #@b6
    if-eq p1, v2, :cond_10

    #@b8
    .line 6528
    const/16 v2, 0xd

    #@ba
    if-eq p1, v2, :cond_10

    #@bc
    .line 6529
    :cond_14
    if-eq p1, v8, :cond_10

    #@be
    .line 6530
    if-eq p1, v9, :cond_10

    #@c0
    .line 6531
    const/4 v2, 0x6

    #@c1
    if-eq p1, v2, :cond_10

    #@c3
    .line 6532
    const/4 v2, 0x7

    #@c4
    if-eq p1, v2, :cond_10

    #@c6
    .line 6550
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@c8
    if-ne v2, v3, :cond_17

    #@ca
    .line 6551
    const/4 v2, 0x5

    #@cb
    if-eq p1, v2, :cond_17

    #@cd
    .line 6556
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@cf
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@d1
    .end local v0    # "preferredRotation":I
    :cond_15
    move v2, v4

    #@d2
    .line 6540
    goto :goto_1

    #@d3
    .line 6544
    :cond_16
    if-eq p1, v9, :cond_12

    #@d5
    .line 6545
    const/16 v2, 0xd

    #@d7
    if-eq p1, v2, :cond_12

    #@d9
    .line 6548
    move v0, p2

    #@da
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@dc
    .line 6560
    .end local v0    # "preferredRotation":I
    :cond_17
    const/4 v0, -0x1

    #@dd
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@df
    .line 6566
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
    .line 6567
    return v0

    #@e7
    .line 6569
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
    .line 6573
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
    .line 6574
    return v0

    #@f3
    .line 6576
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
    .line 6580
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
    .line 6581
    return v0

    #@ff
    .line 6583
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
    .line 6587
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
    .line 6588
    return v0

    #@10b
    .line 6590
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
    .line 6595
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
    .line 6596
    return v0

    #@117
    .line 6598
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
    .line 6599
    return p2

    #@11f
    .line 6601
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
    .line 6606
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
    .line 6607
    return v0

    #@12b
    .line 6609
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
    .line 6610
    return p2

    #@133
    .line 6612
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
    .line 6620
    return v4

    #@139
    .line 6475
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    #@13a
    monitor-exit v5

    #@13b
    throw v2

    #@13c
    .line 6563
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
    .line 6627
    packed-switch p1, :pswitch_data_0

    #@3
    .line 6639
    :pswitch_0
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 6631
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 6636
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 6627
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
    .line 6187
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 6188
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 6189
    const/4 v0, 0x0

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 6190
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 6191
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6192
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 6193
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@16
    .line 6194
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@19
    .line 6196
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 6197
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v1

    #@23
    .line 6184
    return-void

    #@24
    .line 6188
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
    .line 6230
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6232
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 6229
    return-void

    #@e
    .line 6230
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
    .line 6207
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 6208
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 6209
    const/4 v0, 0x1

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 6210
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 6211
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6212
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 6213
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@15
    .line 6215
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6216
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1b
    const/4 v2, 0x6

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 6217
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@21
    const-wide/16 v2, 0x3e8

    #@23
    const/4 v4, 0x6

    #@24
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@27
    .line 6218
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
    .line 6204
    return-void

    #@30
    .line 6222
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 6208
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
    .line 2772
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-ne p1, v2, :cond_6

    #@9
    .line 2773
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
    .line 2774
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v3, :cond_0

    #@16
    .line 2775
    const/4 v2, 0x4

    #@17
    if-ne p2, v2, :cond_3

    #@19
    .line 2776
    :cond_0
    if-eqz v0, :cond_2

    #@1b
    :goto_1
    return v1

    #@1c
    .line 2773
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    #@1e
    .line 2776
    :cond_2
    const v1, 0x10a002a

    #@21
    goto :goto_1

    #@22
    .line 2777
    :cond_3
    if-eq p2, v5, :cond_4

    #@24
    .line 2778
    if-ne p2, v6, :cond_10

    #@26
    .line 2779
    :cond_4
    if-eqz v0, :cond_5

    #@28
    :goto_2
    return v1

    #@29
    :cond_5
    const v1, 0x10a0029

    #@2c
    goto :goto_2

    #@2d
    .line 2781
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2f
    if-ne p1, v2, :cond_f

    #@31
    .line 2782
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@34
    move-result-object v2

    #@35
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@37
    if-eqz v2, :cond_7

    #@39
    .line 2783
    return v4

    #@3a
    .line 2786
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@3c
    if-eqz v2, :cond_b

    #@3e
    .line 2787
    if-eq p2, v3, :cond_8

    #@40
    .line 2788
    const/4 v2, 0x4

    #@41
    if-ne p2, v2, :cond_9

    #@43
    .line 2789
    :cond_8
    const v1, 0x10a0024

    #@46
    return v1

    #@47
    .line 2790
    :cond_9
    if-eq p2, v5, :cond_a

    #@49
    .line 2791
    if-ne p2, v6, :cond_10

    #@4b
    .line 2792
    :cond_a
    const v1, 0x10a0023

    #@4e
    return v1

    #@4f
    .line 2795
    :cond_b
    if-eq p2, v3, :cond_c

    #@51
    .line 2796
    const/4 v2, 0x4

    #@52
    if-ne p2, v2, :cond_d

    #@54
    .line 2797
    :cond_c
    const v1, 0x10a0028

    #@57
    return v1

    #@58
    .line 2798
    :cond_d
    if-eq p2, v5, :cond_e

    #@5a
    .line 2799
    if-ne p2, v6, :cond_10

    #@5c
    .line 2800
    :cond_e
    const v1, 0x10a0027

    #@5f
    return v1

    #@60
    .line 2803
    :cond_f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@63
    move-result-object v2

    #@64
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@66
    const/16 v3, 0x7f2

    #@68
    if-ne v2, v3, :cond_10

    #@6a
    .line 2804
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@6d
    move-result v1

    #@6e
    return v1

    #@6f
    .line 2807
    :cond_10
    const/4 v2, 0x5

    #@70
    if-ne p2, v2, :cond_11

    #@72
    .line 2808
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_12

    #@78
    .line 2810
    const v1, 0x10a0011

    #@7b
    return v1

    #@7c
    .line 2812
    :cond_11
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@7f
    move-result-object v2

    #@80
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@82
    const/16 v3, 0x7e7

    #@84
    if-ne v2, v3, :cond_12

    #@86
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@88
    if-eqz v2, :cond_12

    #@8a
    .line 2813
    if-ne p2, v5, :cond_12

    #@8c
    .line 2818
    return v1

    #@8d
    .line 2821
    :cond_12
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    #@0
    .prologue
    const v3, 0x10a006b

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 2858
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2859
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
    .line 2870
    aput v1, p1, v2

    #@1a
    aput v1, p1, v1

    #@1c
    .line 2853
    :goto_0
    return-void

    #@1d
    .line 2861
    :pswitch_0
    const v0, 0x10a006d

    #@20
    aput v0, p1, v1

    #@22
    .line 2862
    aput v3, p1, v2

    #@24
    goto :goto_0

    #@25
    .line 2865
    :pswitch_1
    const v0, 0x10a006c

    #@28
    aput v0, p1, v1

    #@2a
    .line 2866
    aput v3, p1, v2

    #@2c
    goto :goto_0

    #@2d
    .line 2874
    :cond_0
    aput v1, p1, v2

    #@2f
    aput v1, p1, v1

    #@31
    goto :goto_0

    #@32
    .line 2859
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
    .line 6453
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 6452
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6457
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 6456
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
    .line 4212
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
    .line 4220
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
    .line 4221
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
    .line 4222
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
    .line 4223
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
    .line 4265
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    #@3a
    if-nez v0, :cond_0

    #@3c
    .line 4266
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@3f
    move-result-object p7

    #@40
    .line 4265
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@43
    .line 4211
    return-void

    #@44
    .line 4231
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    #@46
    if-eq p3, v0, :cond_5

    #@48
    .line 4236
    const/high16 v0, 0x40000000    # 2.0f

    #@4a
    and-int/2addr v0, p2

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 4237
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@50
    move-result-object v0

    #@51
    .line 4236
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@54
    .line 4258
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
    .line 4259
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
    .line 4260
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6d
    goto :goto_0

    #@6e
    .line 4237
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    #@71
    move-result-object v0

    #@72
    goto :goto_1

    #@73
    .line 4245
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7a
    .line 4246
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_9

    #@80
    .line 4247
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
    .line 4248
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
    .line 4249
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
    .line 4250
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
    .line 4251
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@ac
    move-result v0

    #@ad
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@af
    if-ge v0, v1, :cond_2

    #@b1
    .line 4252
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
    .line 4253
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
    .line 4254
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
    .line 4255
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
    .line 4258
    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    #@0
    .prologue
    .line 7135
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 7136
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 7137
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@9
    .line 7138
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 7134
    return-void

    #@e
    .line 7135
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
    .line 7533
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@3
    .line 7534
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 7535
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    #@c
    .line 7537
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f
    move-result-object v0

    #@10
    .line 7538
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    #@12
    .line 7539
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    #@15
    .line 7541
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@18
    .line 7532
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
    .line 1903
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1904
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@8
    .line 1905
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@a
    .line 1906
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@c
    .line 1907
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@e
    .line 1902
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
    .line 5308
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@3
    if-eq v1, p1, :cond_0

    #@5
    .line 5309
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@7
    .line 5310
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    #@a
    .line 5311
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 5312
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@17
    .line 5313
    const-string/jumbo v1, "state"

    #@1a
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1d
    .line 5314
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@21
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@24
    .line 5307
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
    .line 1808
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
    .line 1809
    :cond_0
    return-void

    #@b
    .line 1811
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@d
    .line 1813
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v3

    #@13
    .line 1815
    .local v3, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    #@15
    .line 1816
    move v4, p3

    #@16
    .line 1817
    .local v4, "shortSize":I
    move v0, p2

    #@17
    .line 1818
    .local v0, "longSize":I
    const/4 v6, 0x0

    #@18
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@1a
    .line 1819
    const/4 v6, 0x2

    #@1b
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@1d
    .line 1820
    const v6, 0x1120036

    #@20
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 1821
    const/4 v6, 0x1

    #@27
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@29
    .line 1822
    const/4 v6, 0x3

    #@2a
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@2c
    .line 1842
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    #@2e
    div-int v5, v6, p4

    #@30
    .line 1843
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v0, 0xa0

    #@32
    div-int v1, v6, p4

    #@34
    .line 1846
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
    .line 1848
    const v6, 0x1120067

    #@40
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@43
    move-result v6

    #@44
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@46
    .line 1852
    const-string/jumbo v6, "qemu.hw.mainkeys"

    #@49
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 1853
    .local v2, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v6, "1"

    #@50
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_7

    #@56
    .line 1854
    const/4 v6, 0x0

    #@57
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@59
    .line 1861
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
    .line 1862
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@6b
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@6d
    .line 1866
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
    .line 1870
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
    .line 1871
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@89
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@8b
    .line 1876
    :goto_4
    const-string/jumbo v6, "persist.demo.rotationlock"

    #@8e
    const/4 v7, 0x0

    #@8f
    .line 1875
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@92
    move-result v6

    #@93
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@95
    .line 1880
    const/16 v6, 0x3c0

    #@97
    if-lt v1, v6, :cond_b

    #@99
    const/16 v6, 0x2d0

    #@9b
    if-lt v5, v6, :cond_b

    #@9d
    .line 1881
    const v6, 0x1120081

    #@a0
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a3
    move-result v6

    #@a4
    .line 1880
    if-eqz v6, :cond_b

    #@a6
    .line 1885
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
    .line 1880
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@b9
    .line 1805
    return-void

    #@ba
    .line 1824
    .end local v1    # "longSizeDp":I
    .end local v2    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "shortSizeDp":I
    :cond_3
    const/4 v6, 0x3

    #@bb
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@bd
    .line 1825
    const/4 v6, 0x1

    #@be
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@c0
    goto/16 :goto_0

    #@c2
    .line 1828
    .end local v0    # "longSize":I
    .end local v4    # "shortSize":I
    :cond_4
    move v4, p2

    #@c3
    .line 1829
    .restart local v4    # "shortSize":I
    move v0, p3

    #@c4
    .line 1830
    .restart local v0    # "longSize":I
    const/4 v6, 0x0

    #@c5
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@c7
    .line 1831
    const/4 v6, 0x2

    #@c8
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@ca
    .line 1832
    const v6, 0x1120036

    #@cd
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d0
    move-result v6

    #@d1
    if-eqz v6, :cond_5

    #@d3
    .line 1833
    const/4 v6, 0x3

    #@d4
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@d6
    .line 1834
    const/4 v6, 0x1

    #@d7
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@d9
    goto/16 :goto_0

    #@db
    .line 1836
    :cond_5
    const/4 v6, 0x1

    #@dc
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@de
    .line 1837
    const/4 v6, 0x3

    #@df
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1846
    .restart local v1    # "longSizeDp":I
    .restart local v5    # "shortSizeDp":I
    :cond_6
    const/4 v6, 0x0

    #@e4
    goto/16 :goto_1

    #@e6
    .line 1855
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
    .line 1856
    const/4 v6, 0x1

    #@f0
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@f2
    goto/16 :goto_2

    #@f4
    .line 1864
    :cond_8
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@f6
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@f8
    goto/16 :goto_3

    #@fa
    .line 1873
    :cond_9
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@fc
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@fe
    goto :goto_4

    #@ff
    .line 1885
    :cond_a
    const/4 v6, 0x1

    #@100
    goto :goto_5

    #@101
    .line 1880
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
    .line 7522
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    .line 7523
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 7521
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 6645
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    #@5
    .line 6644
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 6689
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    #@2
    .line 6690
    if-eqz p1, :cond_0

    #@4
    .line 6691
    const/16 v0, 0x2711

    #@6
    .line 6690
    :goto_0
    const/4 v1, 0x0

    #@7
    .line 6692
    const/4 v2, 0x1

    #@8
    .line 6690
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@b
    .line 6688
    return-void

    #@c
    .line 6692
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
    .line 6667
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 6670
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    #@a
    .line 6672
    const-string/jumbo v1, "user_rotation"

    #@d
    .line 6671
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@10
    .line 6676
    const-string/jumbo v1, "accelerometer_rotation"

    #@13
    .line 6677
    const/4 v2, 0x0

    #@14
    .line 6675
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@17
    .line 6666
    :goto_0
    return-void

    #@18
    .line 6681
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    #@1b
    .line 6680
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
    .line 6773
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$21;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 6772
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 1362
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 1363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 1361
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    #@0
    .prologue
    .line 1367
    const-string/jumbo v1, "globalactions"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@6
    .line 1368
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1369
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
    .line 1371
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@18
    move-result v0

    #@19
    .line 1372
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    #@22
    .line 1373
    if-eqz v0, :cond_1

    #@24
    .line 1376
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
    .line 1366
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
    .line 3635
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@8
    .line 3636
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
    .line 3634
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 3636
    goto :goto_0
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    #@0
    .prologue
    .line 7049
    if-eqz p2, :cond_0

    #@2
    .line 7050
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@5
    .line 7053
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    .line 7054
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    #@b
    .line 7056
    if-eqz p1, :cond_1

    #@d
    .line 7057
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@10
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 7059
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@15
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 7060
    return-void

    #@19
    .line 7061
    :catch_0
    move-exception v1

    #@1a
    .line 7067
    :cond_2
    if-eqz p1, :cond_3

    #@1c
    .line 7068
    new-instance v2, Landroid/content/Intent;

    #@1e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@23
    .line 7069
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@26
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@29
    .line 7074
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@2b
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2e
    .line 7048
    return-void

    #@2f
    .line 7071
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
    .line 6403
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6405
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    #@9
    .line 6402
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    #@0
    .prologue
    .line 6084
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@3
    .line 6085
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@6
    .line 6086
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 6087
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    #@f
    .line 6082
    :cond_0
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 6118
    const v0, 0x11170

    #@4
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 6125
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    .line 6126
    const/4 v0, 0x1

    #@b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@d
    .line 6128
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@10
    .line 6129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@13
    .line 6130
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 6133
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 6134
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    #@20
    .line 6117
    :cond_0
    return-void

    #@21
    .line 6125
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
    .line 2428
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2441
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
    .line 2442
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 2431
    :pswitch_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 2433
    :pswitch_1
    const/4 v0, -0x2

    #@22
    return v0

    #@23
    .line 2435
    :pswitch_2
    const/4 v0, -0x1

    #@24
    return v0

    #@25
    .line 2437
    :pswitch_3
    const/4 v0, 0x2

    #@26
    return v0

    #@27
    .line 2439
    :pswitch_4
    const/4 v0, 0x3

    #@28
    return v0

    #@29
    .line 2428
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
    .line 6744
    const/4 v0, 0x0

    #@2
    .line 6745
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 6748
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 6749
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 6756
    if-eqz v0, :cond_0

    #@d
    .line 6757
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@14
    .line 6758
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@16
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@19
    .line 6760
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 6761
    const/4 v2, 0x1

    #@1d
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    monitor-exit v1

    #@20
    .line 6763
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    #@23
    .line 6764
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    #@26
    .line 6765
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    #@29
    .line 6743
    return-void

    #@2a
    .line 6753
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
    .line 6745
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1

    #@31
    .line 6760
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
    .line 6710
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    .line 6711
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@b
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    #@e
    .line 6713
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    #@11
    .line 6714
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    #@14
    .line 6716
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 6717
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@1a
    .line 6718
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@1d
    .line 6719
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$20;

    #@21
    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    .line 6726
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    #@29
    .line 6727
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    #@2b
    .line 6729
    const/4 v1, 0x0

    #@2c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v2

    #@2f
    .line 6733
    if-eqz v0, :cond_1

    #@31
    .line 6734
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@33
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@38
    .line 6735
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@3d
    .line 6737
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    #@42
    .line 6738
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@44
    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    #@47
    .line 6709
    return-void

    #@48
    .line 6716
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
    .line 970
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 972
    return-void

    #@9
    .line 981
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 984
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 985
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@14
    .line 984
    if-eqz v1, :cond_1

    #@16
    .line 985
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@18
    .line 984
    if-eqz v1, :cond_1

    #@1a
    .line 986
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 987
    const/4 v0, 0x0

    #@21
    .line 989
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@23
    if-nez v1, :cond_1

    #@25
    .line 990
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@27
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    #@2a
    .line 992
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@2d
    .line 997
    :cond_1
    if-eqz v0, :cond_2

    #@2f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 998
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@35
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    #@38
    .line 1000
    const/4 v1, 0x0

    #@39
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@3b
    .line 969
    :cond_2
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    #@0
    .prologue
    .line 6975
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 6972
    :goto_0
    return-void

    #@7
    .line 6976
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
    .line 6984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6981
    :goto_0
    return-void

    #@6
    .line 6985
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
    .line 1912
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 1913
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    #@9
    .line 1914
    .local v4, "updateRotation":Z
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v10

    #@c
    .line 1916
    :try_start_0
    const-string/jumbo v11, "end_button_behavior"

    #@f
    .line 1917
    const/4 v12, 0x2

    #@10
    .line 1918
    const/4 v13, -0x2

    #@11
    .line 1915
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@14
    move-result v11

    #@15
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@17
    .line 1920
    const-string/jumbo v11, "incall_power_button_behavior"

    #@1a
    .line 1921
    const/4 v12, 0x1

    #@1b
    .line 1922
    const/4 v13, -0x2

    #@1c
    .line 1919
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1f
    move-result v11

    #@20
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@22
    .line 1926
    const-string/jumbo v11, "wake_gesture_enabled"

    #@25
    const/4 v12, 0x0

    #@26
    .line 1927
    const/4 v13, -0x2

    #@27
    .line 1925
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2a
    move-result v11

    #@2b
    if-eqz v11, :cond_8

    #@2d
    const/4 v7, 0x1

    #@2e
    .line 1928
    .local v7, "wakeGestureEnabledSetting":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@30
    if-eq v11, v7, :cond_0

    #@32
    .line 1929
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@34
    .line 1930
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@37
    .line 1935
    :cond_0
    const-string/jumbo v11, "user_rotation"

    #@3a
    const/4 v12, 0x0

    #@3b
    .line 1936
    const/4 v13, -0x2

    #@3c
    .line 1934
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3f
    move-result v5

    #@40
    .line 1937
    .local v5, "userRotation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@42
    if-eq v11, v5, :cond_1

    #@44
    .line 1938
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@46
    .line 1939
    const/4 v4, 0x1

    #@47
    .line 1942
    :cond_1
    const-string/jumbo v11, "accelerometer_rotation"

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v13, -0x2

    #@4c
    .line 1941
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_9

    #@52
    .line 1943
    const/4 v6, 0x0

    #@53
    .line 1945
    .local v6, "userRotationMode":I
    :goto_1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@55
    if-eq v11, v6, :cond_2

    #@57
    .line 1946
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@59
    .line 1947
    const/4 v4, 0x1

    #@5a
    .line 1948
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@5d
    .line 1951
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@5f
    if-eqz v11, :cond_4

    #@61
    .line 1953
    const-string/jumbo v11, "pointer_location"

    #@64
    const/4 v12, 0x0

    #@65
    const/4 v13, -0x2

    #@66
    .line 1952
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@69
    move-result v2

    #@6a
    .line 1954
    .local v2, "pointerLocation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@6c
    if-eq v11, v2, :cond_4

    #@6e
    .line 1955
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@70
    .line 1956
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@72
    if-eqz v2, :cond_3

    #@74
    move v8, v9

    #@75
    :cond_3
    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@78
    .line 1962
    .end local v2    # "pointerLocation":I
    :cond_4
    const-string/jumbo v8, "screen_off_timeout"

    #@7b
    const/4 v11, 0x0

    #@7c
    const/4 v12, -0x2

    #@7d
    .line 1961
    invoke-static {v3, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@80
    move-result v8

    #@81
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@83
    .line 1964
    const-string/jumbo v8, "default_input_method"

    #@86
    const/4 v11, -0x2

    #@87
    .line 1963
    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 1965
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
    .line 1966
    .local v0, "hasSoftInput":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@96
    if-eq v8, v0, :cond_5

    #@98
    .line 1967
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@9a
    .line 1968
    const/4 v4, 0x1

    #@9b
    .line 1970
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@9d
    if-eqz v8, :cond_6

    #@9f
    .line 1971
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
    .line 1974
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@a9
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@ac
    move-result-object v10

    #@ad
    monitor-enter v10

    #@ae
    .line 1975
    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@b0
    invoke-static {v8}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b3
    monitor-exit v10

    #@b4
    .line 1977
    if-eqz v4, :cond_7

    #@b6
    .line 1978
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@b9
    .line 1911
    :cond_7
    return-void

    #@ba
    .line 1925
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
    .line 1944
    .restart local v5    # "userRotation":I
    :cond_9
    const/4 v6, 0x1

    #@be
    .restart local v6    # "userRotationMode":I
    goto :goto_1

    #@bf
    .line 1965
    .restart local v1    # "imId":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    #@c0
    .restart local v0    # "hasSoftInput":Z
    goto :goto_2

    #@c1
    .line 1914
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
    .line 1974
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
    .line 6962
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6964
    const-string/jumbo v1, "uimode"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 6963
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@11
    .line 6967
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
    .line 6961
    :goto_0
    return-void

    #@1a
    .line 6968
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
    .line 6852
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v1

    #@3
    .line 6853
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6855
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e
    .line 6856
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
    .line 6840
    return-void

    #@1a
    .line 6852
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
    .line 2881
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2892
    return v1

    #@6
    .line 2885
    :pswitch_0
    if-eqz p3, :cond_0

    #@8
    .line 2886
    return v2

    #@9
    .line 2888
    :cond_0
    const/4 v3, 0x2

    #@a
    new-array v0, v3, [I

    #@c
    .line 2889
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    #@f
    .line 2890
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
    .line 2881
    :pswitch_data_0
    .packed-switch 0x10a006c
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
    .line 2325
    const/4 v0, 0x1

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x63

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 2326
    return v3

    #@9
    .line 2328
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 2421
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
    .line 2422
    return v3

    #@27
    .line 2330
    :pswitch_1
    return v3

    #@28
    .line 2333
    :pswitch_2
    return v3

    #@29
    .line 2335
    :pswitch_3
    return v3

    #@2a
    .line 2337
    :pswitch_4
    return v3

    #@2b
    .line 2339
    :pswitch_5
    const/4 v0, 0x3

    #@2c
    return v0

    #@2d
    .line 2342
    :pswitch_6
    const/4 v0, 0x4

    #@2e
    return v0

    #@2f
    .line 2345
    :pswitch_7
    const/4 v0, 0x5

    #@30
    return v0

    #@31
    .line 2347
    :pswitch_8
    const/4 v0, 0x6

    #@32
    return v0

    #@33
    .line 2349
    :pswitch_9
    const/4 v0, 0x7

    #@34
    return v0

    #@35
    .line 2352
    :pswitch_a
    const/16 v0, 0x8

    #@37
    return v0

    #@38
    .line 2355
    :pswitch_b
    const/16 v0, 0x9

    #@3a
    return v0

    #@3b
    .line 2358
    :pswitch_c
    const/16 v0, 0xa

    #@3d
    return v0

    #@3e
    .line 2361
    :pswitch_d
    const/16 v0, 0xb

    #@40
    return v0

    #@41
    .line 2364
    :pswitch_e
    const/16 v0, 0xc

    #@43
    return v0

    #@44
    .line 2367
    :pswitch_f
    const/16 v0, 0xd

    #@46
    return v0

    #@47
    .line 2370
    :pswitch_10
    const/16 v0, 0xe

    #@49
    return v0

    #@4a
    .line 2372
    :pswitch_11
    const/16 v0, 0xf

    #@4c
    return v0

    #@4d
    .line 2374
    :pswitch_12
    const/16 v0, 0x10

    #@4f
    return v0

    #@50
    .line 2376
    :pswitch_13
    const/16 v0, 0x11

    #@52
    return v0

    #@53
    .line 2378
    :pswitch_14
    const/16 v0, 0x12

    #@55
    return v0

    #@56
    .line 2382
    :pswitch_15
    const/16 v0, 0x13

    #@58
    return v0

    #@59
    .line 2386
    :pswitch_16
    const/16 v0, 0x14

    #@5b
    return v0

    #@5c
    .line 2389
    :pswitch_17
    const/16 v0, 0x15

    #@5e
    return v0

    #@5f
    .line 2392
    :pswitch_18
    const/16 v0, 0x16

    #@61
    return v0

    #@62
    .line 2396
    :pswitch_19
    const/16 v0, 0x17

    #@64
    return v0

    #@65
    .line 2399
    :pswitch_1a
    const/16 v0, 0x18

    #@67
    return v0

    #@68
    .line 2402
    :pswitch_1b
    const/16 v0, 0x19

    #@6a
    return v0

    #@6b
    .line 2405
    :pswitch_1c
    const/16 v0, 0x1a

    #@6d
    return v0

    #@6e
    .line 2409
    :pswitch_1d
    const/16 v0, 0x1b

    #@70
    return v0

    #@71
    .line 2412
    :pswitch_1e
    const/16 v0, 0x1c

    #@73
    return v0

    #@74
    .line 2414
    :pswitch_1f
    const/16 v0, 0x1d

    #@76
    return v0

    #@77
    .line 2416
    :pswitch_20
    const/16 v0, 0x1e

    #@79
    return v0

    #@7a
    .line 2419
    :pswitch_21
    const/16 v0, 0x1f

    #@7c
    return v0

    #@7d
    .line 2328
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
