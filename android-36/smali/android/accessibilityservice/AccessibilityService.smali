.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;,
        Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;,
        Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;,
        Landroid/accessibilityservice/AccessibilityService$Callbacks;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;,
        Landroid/accessibilityservice/AccessibilityService$AttachOverlayResult;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotErrorCode;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardShowMode;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_TAKE_SCREENSHOT_REQUEST_INTERVAL_TIMES_MS:I = 0x14d

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INTERNAL_ERROR:I = 0x1

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INTERVAL_TIME_SHORT:I = 0x3

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INVALID_DISPLAY:I = 0x4

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INVALID_WINDOW:I = 0x5

.field public static final whitelist ERROR_TAKE_SCREENSHOT_NO_ACCESSIBILITY_ACCESS:I = 0x2

.field public static final whitelist ERROR_TAKE_SCREENSHOT_SECURE_WINDOW:I = 0x6

.field public static final whitelist GESTURE_2_FINGER_DOUBLE_TAP:I = 0x14

.field public static final whitelist GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x28

.field public static final whitelist GESTURE_2_FINGER_SINGLE_TAP:I = 0x13

.field public static final whitelist GESTURE_2_FINGER_SWIPE_DOWN:I = 0x1a

.field public static final whitelist GESTURE_2_FINGER_SWIPE_LEFT:I = 0x1b

.field public static final whitelist GESTURE_2_FINGER_SWIPE_RIGHT:I = 0x1c

.field public static final whitelist GESTURE_2_FINGER_SWIPE_UP:I = 0x19

.field public static final whitelist GESTURE_2_FINGER_TRIPLE_TAP:I = 0x15

.field public static final whitelist GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2b

.field public static final whitelist GESTURE_3_FINGER_DOUBLE_TAP:I = 0x17

.field public static final whitelist GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x29

.field public static final whitelist GESTURE_3_FINGER_SINGLE_TAP:I = 0x16

.field public static final whitelist GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD:I = 0x2c

.field public static final whitelist GESTURE_3_FINGER_SWIPE_DOWN:I = 0x1e

.field public static final whitelist GESTURE_3_FINGER_SWIPE_LEFT:I = 0x1f

.field public static final whitelist GESTURE_3_FINGER_SWIPE_RIGHT:I = 0x20

.field public static final whitelist GESTURE_3_FINGER_SWIPE_UP:I = 0x1d

.field public static final whitelist GESTURE_3_FINGER_TRIPLE_TAP:I = 0x18

.field public static final whitelist GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2d

.field public static final whitelist GESTURE_4_FINGER_DOUBLE_TAP:I = 0x26

.field public static final whitelist GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x2a

.field public static final whitelist GESTURE_4_FINGER_SINGLE_TAP:I = 0x25

.field public static final whitelist GESTURE_4_FINGER_SWIPE_DOWN:I = 0x22

.field public static final whitelist GESTURE_4_FINGER_SWIPE_LEFT:I = 0x23

.field public static final whitelist GESTURE_4_FINGER_SWIPE_RIGHT:I = 0x24

.field public static final whitelist GESTURE_4_FINGER_SWIPE_UP:I = 0x21

.field public static final whitelist GESTURE_4_FINGER_TRIPLE_TAP:I = 0x27

.field public static final whitelist GESTURE_DOUBLE_TAP:I = 0x11

.field public static final whitelist GESTURE_DOUBLE_TAP_AND_HOLD:I = 0x12

.field public static final blacklist GESTURE_PASSTHROUGH:I = -0x1

.field public static final whitelist GESTURE_SWIPE_DOWN:I = 0x2

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final whitelist GESTURE_SWIPE_LEFT:I = 0x3

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final whitelist GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final whitelist GESTURE_SWIPE_UP:I = 0x1

.field public static final whitelist GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final whitelist GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final whitelist GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final blacklist GESTURE_TOUCH_EXPLORATION:I = -0x2

.field public static final whitelist GESTURE_UNKNOWN:I = 0x0

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_ALL_APPS:I = 0xe

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_BUTTON:I = 0xb

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_BUTTON_CHOOSER:I = 0xc

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_SHORTCUT:I = 0xd

.field public static final whitelist GLOBAL_ACTION_BACK:I = 0x1

.field public static final whitelist GLOBAL_ACTION_DISMISS_NOTIFICATION_SHADE:I = 0xf

.field public static final whitelist GLOBAL_ACTION_DPAD_CENTER:I = 0x14

.field public static final whitelist GLOBAL_ACTION_DPAD_DOWN:I = 0x11

.field public static final whitelist GLOBAL_ACTION_DPAD_LEFT:I = 0x12

.field public static final whitelist GLOBAL_ACTION_DPAD_RIGHT:I = 0x13

.field public static final whitelist GLOBAL_ACTION_DPAD_UP:I = 0x10

.field public static final whitelist GLOBAL_ACTION_HOME:I = 0x2

.field public static final whitelist GLOBAL_ACTION_KEYCODE_HEADSETHOOK:I = 0xa

.field public static final whitelist GLOBAL_ACTION_LOCK_SCREEN:I = 0x8

.field public static final whitelist GLOBAL_ACTION_MEDIA_PLAY_PAUSE:I = 0x16

.field public static final whitelist GLOBAL_ACTION_MENU:I = 0x15

.field public static final whitelist GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final whitelist GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final whitelist GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final whitelist GLOBAL_ACTION_RECENTS:I = 0x3

.field public static final whitelist GLOBAL_ACTION_TAKE_SCREENSHOT:I = 0x9

.field public static final whitelist GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN:I = 0x7

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_COLORSPACE:Ljava/lang/String; = "screenshot_colorSpace"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_HARDWAREBUFFER:Ljava/lang/String; = "screenshot_hardwareBuffer"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_STATUS:Ljava/lang/String; = "screenshot_status"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_TIMESTAMP:Ljava/lang/String; = "screenshot_timestamp"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final blacklist OVERLAY_RESULT_INTERNAL_ERROR:I = 0x1

.field public static final blacklist OVERLAY_RESULT_INVALID:I = 0x2

.field public static final blacklist OVERLAY_RESULT_SUCCESS:I = 0x0

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"

.field public static final whitelist SHOW_MODE_AUTO:I = 0x0

.field public static final blacklist SHOW_MODE_HARD_KEYBOARD_ORIGINAL_VALUE:I = 0x20000000

.field public static final blacklist SHOW_MODE_HARD_KEYBOARD_OVERRIDDEN:I = 0x40000000

.field public static final whitelist SHOW_MODE_HIDDEN:I = 0x1

.field public static final whitelist SHOW_MODE_IGNORE_HARD_KEYBOARD:I = 0x2

.field public static final blacklist SHOW_MODE_MASK:I = 0x3

.field public static final blacklist TAKE_SCREENSHOT_SUCCESS:I


# instance fields
.field private final blacklist mAccessibilityButtonControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBrailleDisplayController:Landroid/accessibilityservice/BrailleDisplayController;

.field private greylist-max-o mConnectionId:I

.field private greylist-max-o mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

.field private greylist-max-o mGestureStatusCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGestureStatusCallbackSequence:I

.field private greylist mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private blacklist mInputMethod:Landroid/accessibilityservice/InputMethod;

.field private blacklist mInputMethodInitialized:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mMagnificationControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMotionEventSources:I

.field private greylist-max-o mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field private final blacklist mTouchInteractionControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/TouchInteractionController;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWindowManager:Landroid/view/WindowManager;

.field private greylist-max-p mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$BawudSHoPYTbokOBCYHA70ge13U(Landroid/accessibilityservice/AccessibilityService;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->lambda$takeScreenshot$0(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/accessibilityservice/AccessibilityService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/accessibilityservice/AccessibilityService;I)V
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowToken(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchServiceConnected(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccessibilityButtonAvailabilityChanged(Landroid/accessibilityservice/AccessibilityService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccessibilityButtonClicked(Landroid/accessibilityservice/AccessibilityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonClicked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFingerprintCapturingGesturesChanged(Landroid/accessibilityservice/AccessibilityService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintCapturingGesturesChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFingerprintGesture(Landroid/accessibilityservice/AccessibilityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintGesture(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMagnificationChanged(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoftKeyboardShowModeChanged(Landroid/accessibilityservice/AccessibilityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 273
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 854
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    .line 859
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    .line 864
    iput-boolean v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    .line 865
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist calculateGestureSampleTimeMs(I)I
    .registers 7
    .param p1, "displayId"    # I

    .line 1324
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    const/16 v2, 0x64

    if-gt v0, v1, :cond_d

    .line 1325
    return v2

    .line 1327
    :cond_d
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1329
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1c

    .line 1330
    return v2

    .line 1332
    :cond_1c
    const/16 v1, 0x3e8

    .line 1333
    .local v1, "msPerSecond":I
    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1334
    .local v3, "sampleTimeMs":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_29

    .line 1336
    return v2

    .line 1338
    :cond_29
    return v3
.end method

.method private greylist-max-o dispatchServiceConnected()V
    .registers 4

    .line 898
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 900
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->onServiceConnectedLocked()V

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 902
    .end local v1    # "i":I
    :cond_1a
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 903
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v1, :cond_29

    .line 904
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 905
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getMotionEventSources()I

    move-result v2

    iput v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMotionEventSources:I

    .line 907
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_37

    .line 908
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_33

    .line 909
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->onServiceConnected()V

    .line 914
    :cond_33
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 915
    return-void

    .line 907
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method static synthetic blacklist lambda$sendScreenshotFailure$2(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "errorCode"    # I

    .line 3249
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendScreenshotSuccess$1(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "screenshot"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 3244
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshot$0(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 2717
    const-string/jumbo v0, "screenshot_status"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2718
    .local v0, "status":I
    if-eqz v0, :cond_d

    .line 2719
    invoke-direct {p0, v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2720
    return-void

    .line 2722
    :cond_d
    const-class v1, Landroid/hardware/HardwareBuffer;

    .line 2723
    const-string/jumbo v2, "screenshot_hardwareBuffer"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    .line 2724
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    const-class v2, Landroid/graphics/ParcelableColorSpace;

    .line 2725
    const-string/jumbo v3, "screenshot_colorSpace"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ParcelableColorSpace;

    .line 2727
    .local v2, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    new-instance v3, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 2728
    invoke-virtual {v2}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 2729
    const-string/jumbo v5, "screenshot_timestamp"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V

    .line 2730
    .local v3, "screenshot":Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    invoke-direct {p0, v3, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2731
    return-void
.end method

.method private greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 2422
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonAvailabilityChanged(Z)V

    .line 2424
    return-void
.end method

.method private blacklist onAccessibilityButtonClicked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2418
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonClicked()V

    .line 2419
    return-void
.end method

.method private greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 1392
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGestureDetectionActiveChanged(Z)V

    .line 1393
    return-void
.end method

.method private greylist-max-o onFingerprintGesture(I)V
    .registers 3
    .param p1, "gesture"    # I

    .line 1400
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGesture(I)V

    .line 1401
    return-void
.end method

.method private blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1379
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 1381
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 1382
    if-eqz v1, :cond_11

    .line 1383
    invoke-virtual {v1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1385
    :cond_11
    return-void

    .line 1381
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .registers 3
    .param p1, "showMode"    # I

    .line 2046
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_9

    .line 2047
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V

    .line 2049
    :cond_9
    return-void
.end method

.method private blacklist sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 3249
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3250
    return-void
.end method

.method private blacklist sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 5
    .param p1, "screenshot"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 3244
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3245
    return-void
.end method

.method private greylist-max-o sendServiceInfo()V
    .registers 5

    .line 2652
    nop

    .line 2653
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2654
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    .line 2656
    :try_start_10
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2657
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2658
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_22

    .line 2662
    goto :goto_2d

    .line 2659
    :catch_22
    move-exception v1

    .line 2660
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2661
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2664
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private blacklist updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 918
    if-eqz p1, :cond_2c

    .line 919
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 921
    .local v0, "requestIme":Z
    :goto_f
    if-eqz v0, :cond_1e

    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    if-nez v3, :cond_1e

    .line 922
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreateInputMethod()Landroid/accessibilityservice/InputMethod;

    move-result-object v2

    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    .line 923
    iput-boolean v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    goto :goto_2c

    .line 924
    :cond_1e
    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    and-int/2addr v1, v3

    if-eqz v1, :cond_2c

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    .line 926
    iput-boolean v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    .line 929
    .end local v0    # "requestIme":Z
    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public whitelist attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 3535
    const-string v0, "SurfaceControl cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 3537
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    .end local p1    # "displayId":I
    .end local p2    # "sc":Landroid/view/SurfaceControl;
    .local v3, "displayId":I
    .local v4, "sc":Landroid/view/SurfaceControl;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 3538
    return-void
.end method

.method public final blacklist attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Ljava/util/function/IntConsumer;

    .line 3576
    const-string v0, "SurfaceControl cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3577
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 3578
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "displayId":I
    .end local p2    # "sc":Landroid/view/SurfaceControl;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/IntConsumer;
    .local v3, "displayId":I
    .local v4, "sc":Landroid/view/SurfaceControl;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Ljava/util/function/IntConsumer;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 3580
    return-void
.end method

.method public whitelist attachAccessibilityOverlayToWindow(ILandroid/view/SurfaceControl;)V
    .registers 10
    .param p1, "accessibilityWindowId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 3608
    const-string v0, "SurfaceControl cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 3610
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    .end local p1    # "accessibilityWindowId":I
    .end local p2    # "sc":Landroid/view/SurfaceControl;
    .local v3, "accessibilityWindowId":I
    .local v4, "sc":Landroid/view/SurfaceControl;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 3612
    return-void
.end method

.method public final blacklist attachAccessibilityOverlayToWindow(ILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 12
    .param p1, "accessibilityWindowId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Ljava/util/function/IntConsumer;

    .line 3649
    const-string v0, "SurfaceControl cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 3651
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "accessibilityWindowId":I
    .end local p2    # "sc":Landroid/view/SurfaceControl;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/IntConsumer;
    .local v3, "accessibilityWindowId":I
    .local v4, "sc":Landroid/view/SurfaceControl;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Ljava/util/function/IntConsumer;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 3653
    return-void
.end method

.method public whitelist clearCache()Z
    .registers 3

    .line 2473
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2474
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2475
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_a

    .line 2476
    const/4 v1, 0x0

    return v1

    .line 2478
    :cond_a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 2479
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist clearCachedSubtree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2461
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2462
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2463
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_a

    .line 2464
    const/4 v1, 0x0

    return v1

    .line 2466
    :cond_a
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;

    .line 1163
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    invoke-super {p0, p1}, Landroid/app/Service;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService-IA;)V

    return-object v0
.end method

.method public whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 7
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1169
    invoke-super {p0, p1, p2}, Landroid/app/Service;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 1170
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p1, v1, :cond_9

    .line 1171
    return-object v0

    .line 1173
    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService-IA;)V

    return-object v1
.end method

.method public whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 8
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1180
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 1181
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p2, v1, :cond_9

    .line 1182
    return-object v0

    .line 1184
    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService-IA;)V

    return-object v1
.end method

.method public final whitelist disableSelf()V
    .registers 4

    .line 1149
    nop

    .line 1150
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1151
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_17

    .line 1153
    :try_start_c
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1156
    goto :goto_17

    .line 1154
    :catch_10
    move-exception v1

    .line 1155
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1158
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public final whitelist dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    .registers 12
    .param p1, "gesture"    # Landroid/accessibilityservice/GestureDescription;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1289
    nop

    .line 1290
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1291
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v0, :cond_e

    .line 1292
    const/4 v1, 0x0

    return v1

    .line 1294
    :cond_e
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->calculateGestureSampleTimeMs(I)I

    move-result v1

    .line 1295
    .local v1, "sampleTimeMs":I
    nop

    .line 1296
    invoke-static {p1, v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;

    move-result-object v2

    .line 1298
    .local v2, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    :try_start_1b
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_51

    .line 1299
    :try_start_1e
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    .line 1300
    if-eqz p2, :cond_3d

    .line 1301
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v4, :cond_31

    .line 1302
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    .line 1304
    :cond_31
    new-instance v4, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;-><init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V

    .line 1306
    .local v4, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    iget v7, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1308
    .end local v4    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :cond_3d
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1309
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result v7

    .line 1308
    invoke-interface {v0, v4, v6, v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 1310
    monitor-exit v3

    .line 1313
    nop

    .line 1314
    return v5

    .line 1310
    :catchall_4e
    move-exception v4

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_4e

    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "sampleTimeMs":I
    .end local v2    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityService;
    .end local p1    # "gesture":Landroid/accessibilityservice/GestureDescription;
    .end local p2    # "callback":Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    :try_start_50
    throw v4
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_51} :catch_51

    .line 1311
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v1    # "sampleTimeMs":I
    .restart local v2    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityService;
    .restart local p1    # "gesture":Landroid/accessibilityservice/GestureDescription;
    .restart local p2    # "callback":Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    :catch_51
    move-exception v3

    .line 1312
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .param p1, "focus"    # I

    .line 2603
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v2, -0x2

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v5, p1

    .end local p1    # "focus":I
    .local v5, "focus":I
    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;
    .registers 2

    .line 2385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;
    .registers 6
    .param p1, "displayId"    # I

    .line 2405
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2406
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 2408
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityButtonController;
    if-nez v1, :cond_21

    .line 2409
    new-instance v2, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 2410
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/accessibilityservice/AccessibilityButtonController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    move-object v1, v2

    .line 2411
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2413
    :cond_21
    monitor-exit v0

    return-object v1

    .line 2414
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityButtonController;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final whitelist getBrailleDisplayController()Landroid/accessibilityservice/BrailleDisplayController;
    .registers 4

    .line 3662
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 3663
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3664
    :try_start_6
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mBrailleDisplayController:Landroid/accessibilityservice/BrailleDisplayController;

    if-nez v1, :cond_13

    .line 3665
    new-instance v1, Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mBrailleDisplayController:Landroid/accessibilityservice/BrailleDisplayController;

    .line 3667
    :cond_13
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mBrailleDisplayController:Landroid/accessibilityservice/BrailleDisplayController;

    monitor-exit v0

    return-object v1

    .line 3668
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getConnectionId()I
    .registers 2

    .line 1406
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return v0
.end method

.method public final whitelist getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;
    .registers 3

    .line 1242
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    if-nez v0, :cond_14

    .line 1243
    new-instance v0, Landroid/accessibilityservice/FingerprintGestureController;

    .line 1244
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    .line 1246
    :cond_14
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    return-object v0
.end method

.method public final whitelist getInputMethod()Landroid/accessibilityservice/InputMethod;
    .registers 2

    .line 2042
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    return-object v0
.end method

.method public final whitelist getMagnificationController()Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .registers 2

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .registers 6
    .param p1, "displayId"    # I

    .line 1222
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 1224
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    if-nez v1, :cond_1a

    .line 1225
    new-instance v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, p0, v3, p1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V

    move-object v1, v2

    .line 1226
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1228
    :cond_1a
    monitor-exit v0

    return-object v1

    .line 1229
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1122
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "prefetchingStrategy"    # I

    .line 1140
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    .line 2618
    nop

    .line 2619
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2620
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 2622
    :try_start_c
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 2623
    :catch_11
    move-exception v1

    .line 2624
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2625
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2628
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist getSoftKeyboardController()Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .registers 4

    .line 2011
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-nez v1, :cond_10

    .line 2013
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    .line 2015
    :cond_10
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    monitor-exit v0

    return-object v1

    .line 2016
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final whitelist getSystemActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 2522
    nop

    .line 2523
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2524
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 2526
    :try_start_c
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getSystemActions()Ljava/util/List;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 2527
    :catch_11
    move-exception v1

    .line 2528
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while calling getSystemActions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2529
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2532
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2668
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2674
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2675
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_28

    .line 2676
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    .line 2677
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 2680
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    .line 2682
    .end local v0    # "wm":Landroid/view/WindowManagerImpl;
    :cond_28
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 2684
    :cond_2b
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2669
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getTouchInteractionController(I)Landroid/accessibilityservice/TouchInteractionController;
    .registers 6
    .param p1, "displayId"    # I

    .line 3469
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3470
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/TouchInteractionController;

    .line 3471
    .local v1, "controller":Landroid/accessibilityservice/TouchInteractionController;
    if-nez v1, :cond_1a

    .line 3472
    new-instance v2, Landroid/accessibilityservice/TouchInteractionController;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, p0, v3, p1}, Landroid/accessibilityservice/TouchInteractionController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V

    move-object v1, v2

    .line 3473
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3475
    :cond_1a
    monitor-exit v0

    return-object v1

    .line 3476
    .end local v1    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 1074
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 1102
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isCacheEnabled()Z
    .registers 3

    .line 2497
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2498
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2499
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_a

    .line 2500
    const/4 v1, 0x0

    return v1

    .line 2502
    :cond_a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public whitelist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2487
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2488
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2489
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_a

    .line 2490
    const/4 v1, 0x0

    return v1

    .line 2492
    :cond_a
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method public abstract whitelist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2799
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$2;

    invoke-direct {v2, p0}, Landroid/accessibilityservice/AccessibilityService$2;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethod()Landroid/accessibilityservice/InputMethod;
    .registers 2

    .line 2028
    new-instance v0, Landroid/accessibilityservice/InputMethod;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/InputMethod;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    return-object v0
.end method

.method protected whitelist onGesture(I)Z
    .registers 3
    .param p1, "gestureId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 3
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 997
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_d

    .line 998
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    .line 1000
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist onInterrupt()V
.end method

.method protected whitelist onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1048
    return-void
.end method

.method greylist-max-o onPerformGestureResult(IZ)V
    .registers 7
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .line 1342
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1343
    return-void

    .line 1346
    :cond_5
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1347
    :try_start_8
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    .line 1348
    .local v1, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1349
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_42

    .line 1350
    move-object v0, v1

    .line 1351
    .local v0, "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    if-eqz v1, :cond_41

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    if-eqz v2, :cond_41

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    if-eqz v2, :cond_41

    .line 1353
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_30

    .line 1354
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$1;

    invoke-direct {v3, p0, p2, v0}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void

    .line 1368
    :cond_30
    if-eqz p2, :cond_3a

    .line 1369
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_41

    .line 1371
    :cond_3a
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 1374
    :cond_41
    :goto_41
    return-void

    .line 1349
    .end local v0    # "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    .end local v1    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method protected whitelist onServiceConnected()V
    .registers 1

    .line 941
    return-void
.end method

.method public whitelist onSystemActionsChanged()V
    .registers 1

    .line 2507
    return-void
.end method

.method blacklist onTouchStateChanged(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 3501
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3502
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/TouchInteractionController;

    .line 3503
    .local v1, "controller":Landroid/accessibilityservice/TouchInteractionController;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 3504
    if-eqz v1, :cond_11

    .line 3505
    invoke-virtual {v1, p2}, Landroid/accessibilityservice/TouchInteractionController;->onStateChanged(I)V

    .line 3507
    :cond_11
    return-void

    .line 3503
    .end local v1    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final whitelist performGlobalAction(I)Z
    .registers 6
    .param p1, "action"    # I

    .line 2561
    nop

    .line 2562
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2563
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 2565
    :try_start_c
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return v1

    .line 2566
    :catch_11
    move-exception v1

    .line 2567
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2568
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2571
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method blacklist sendMotionEventToCallback(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3480
    const/4 v0, 0x0

    .line 3481
    .local v0, "sendingTouchEventToTouchInteractionController":Z
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3483
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3484
    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    .line 3485
    .local v2, "displayId":I
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController;

    .line 3486
    .end local v2    # "displayId":I
    .local v3, "controller":Landroid/accessibilityservice/TouchInteractionController;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_20

    .line 3487
    if-eqz v3, :cond_23

    .line 3488
    const/4 v0, 0x1

    .line 3489
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/TouchInteractionController;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_23

    .line 3486
    .end local v3    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 3492
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    .line 3493
    .local v1, "eventSourceWithoutClass":I
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMotionEventSources:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_33

    if-nez v0, :cond_33

    .line 3495
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 3497
    :cond_33
    return-void
.end method

.method public whitelist setAccessibilityFocusAppearance(II)V
    .registers 7
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 2780
    nop

    .line 2781
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2782
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1b

    .line 2784
    :try_start_c
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setFocusAppearance(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 2789
    goto :goto_1b

    .line 2785
    :catch_10
    move-exception v1

    .line 2786
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while setting the strokeWidth and color of the accessibility focus rectangle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2788
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2791
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setAnimationScale(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 3392
    nop

    .line 3393
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3394
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_17

    .line 3396
    :try_start_c
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAnimationScale(F)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 3399
    goto :goto_17

    .line 3397
    :catch_10
    move-exception v1

    .line 3398
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3401
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist setCacheEnabled(Z)Z
    .registers 8
    .param p1, "enabled"    # Z

    .line 2435
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2436
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2437
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2438
    return v1

    .line 2440
    :cond_a
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2441
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 2442
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v2, :cond_13

    .line 2443
    return v1

    .line 2446
    :cond_13
    :try_start_13
    invoke-interface {v2, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setCacheEnabled(Z)V

    .line 2447
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->setEnabled(Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b

    .line 2448
    const/4 v1, 0x1

    return v1

    .line 2449
    :catch_1b
    move-exception v3

    .line 2450
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityService"

    const-string v5, "Error while setting status of cache"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2451
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2453
    .end local v3    # "re":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3338
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    nop

    .line 3340
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3341
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1d

    .line 3343
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 3346
    goto :goto_1d

    .line 3344
    :catch_16
    move-exception v1

    .line 3345
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3348
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public final whitelist setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2640
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2641
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2642
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getMotionEventSources()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMotionEventSources:I

    .line 2643
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    .line 2644
    return-void
.end method

.method public whitelist setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3364
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    nop

    .line 3366
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3367
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1d

    .line 3369
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 3372
    goto :goto_1d

    .line 3370
    :catch_16
    move-exception v1

    .line 3371
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3374
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 2707
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    nop

    .line 2710
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2711
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v0, :cond_1b

    .line 2712
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2713
    return-void

    .line 2716
    :cond_1b
    :try_start_1b
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->takeScreenshot(ILandroid/os/RemoteCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_2a

    .line 2734
    nop

    .line 2735
    return-void

    .line 2732
    :catch_2a
    move-exception v1

    .line 2733
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist takeScreenshotOfWindow(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 2764
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->takeScreenshotOfWindow(IILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2766
    return-void
.end method
