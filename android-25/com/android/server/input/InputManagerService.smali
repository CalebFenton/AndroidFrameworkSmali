.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$Shell;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_INPUT_METHOD_SUBTYPE_CHANGED:I = 0x7

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/input/InputManagerService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 1
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p1, "pid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 0
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(JLandroid/view/InputEvent;IIIIII)I
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "displayId"    # I
    .param p4, "injectorPid"    # I
    .param p5, "injectorUid"    # I
    .param p6, "syncMode"    # I
    .param p7, "timeoutMillis"    # I
    .param p8, "policyFlags"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/input/InputManagerService;JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .locals 0
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "handle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(JZ)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "interactive"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(JI)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "deviceId"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p1, "pid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 302
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    #@4
    .line 152
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    #@b
    .line 155
    new-instance v1, Landroid/util/SparseArray;

    #@d
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@10
    .line 154
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@12
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 156
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    #@19
    .line 160
    new-instance v1, Lcom/android/server/input/PersistentDataStore;

    #@1b
    invoke-direct {v1}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@20
    .line 163
    new-instance v1, Ljava/lang/Object;

    #@22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@27
    .line 165
    const/4 v1, 0x0

    #@28
    new-array v1, v1, [Landroid/view/InputDevice;

    #@2a
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@2c
    .line 167
    new-instance v1, Landroid/util/SparseArray;

    #@2e
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@31
    .line 166
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@33
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    #@35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 169
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@3a
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3f
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@41
    .line 177
    new-instance v1, Ljava/lang/Object;

    #@43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@46
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@48
    .line 179
    new-instance v1, Ljava/util/HashMap;

    #@4a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@4d
    .line 178
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@4f
    .line 183
    new-instance v1, Ljava/lang/Object;

    #@51
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@54
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@56
    .line 303
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@58
    .line 304
    new-instance v1, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@5a
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    #@61
    move-result-object v3

    #@62
    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    #@65
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@67
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v1

    #@6b
    const v3, 0x1120079

    #@6e
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@71
    move-result v1

    #@72
    .line 306
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@74
    .line 308
    const-string/jumbo v1, "InputManager"

    #@77
    new-instance v3, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v4, "Initializing input manager, mUseDevInputEventForAudioJack="

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    .line 309
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@85
    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 310
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@92
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@94
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@9b
    move-result-object v3

    #@9c
    invoke-static {p0, v1, v3}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    #@9f
    move-result-wide v4

    #@a0
    iput-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@a2
    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a5
    move-result-object v1

    #@a6
    .line 313
    const v3, 0x1040070

    #@a9
    .line 312
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    .line 314
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b0
    move-result v1

    #@b1
    if-eqz v1, :cond_0

    #@b3
    move-object v1, v2

    #@b4
    :goto_0
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    #@b6
    .line 317
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    #@b8
    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    #@ba
    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V

    #@bd
    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@c0
    .line 302
    return-void

    #@c1
    .line 315
    :cond_0
    new-instance v1, Ljava/io/File;

    #@c3
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c6
    goto :goto_0
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 4
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    #@0
    .prologue
    .line 1691
    monitor-enter p1

    #@1
    .line 1692
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1693
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@7
    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    #@9
    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    #@b
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    #@e
    .line 1694
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p1

    #@12
    .line 1690
    return-void

    #@13
    .line 1691
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p1

    #@15
    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1770
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v1

    #@6
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@9
    move-result v2

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 1771
    return v4

    #@d
    .line 1774
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 1775
    return v4

    #@16
    .line 1777
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Permission Denial: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " from pid="

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 1778
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@30
    move-result v2

    #@31
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 1779
    const-string/jumbo v2, ", uid="

    #@38
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3f
    move-result v2

    #@40
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 1780
    const-string/jumbo v2, " requires "

    #@47
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 1781
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "InputManager"

    #@56
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 1782
    return v3
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 3
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1895
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.INJECT_EVENTS"

    #@6
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1028
    array-length v2, p0

    #@1
    .line 1029
    .local v2, "numDevices":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@4
    .line 1030
    aget-object v1, p0, v0

    #@6
    .line 1031
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 1032
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 1029
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1035
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    #@16
    return v3
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 13
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    .line 700
    const/4 v7, 0x0

    #@1
    .line 701
    .local v7, "numFullKeyboardsAdded":I
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@6
    .line 702
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 705
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@d
    monitor-enter v11

    #@e
    .line 706
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v10, :cond_0

    #@12
    monitor-exit v11

    #@13
    .line 707
    return-void

    #@14
    .line 709
    :cond_0
    const/4 v10, 0x0

    #@15
    :try_start_1
    iput-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@17
    .line 711
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v9

    #@1d
    .line 712
    .local v9, "numListeners":I
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    #@20
    .line 713
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@22
    .line 714
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v10

    #@28
    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@2a
    .line 713
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 712
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 717
    :cond_1
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@32
    array-length v5, v10

    #@33
    .line 718
    .local v5, "numDevices":I
    mul-int/lit8 v10, v5, 0x2

    #@35
    new-array v0, v10, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 719
    .local v0, "deviceIdAndGeneration":[I
    const/4 v1, 0x0

    #@38
    move v8, v7

    #@39
    .end local v7    # "numFullKeyboardsAdded":I
    .local v8, "numFullKeyboardsAdded":I
    :goto_1
    if-ge v1, v5, :cond_4

    #@3b
    .line 720
    :try_start_2
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@3d
    aget-object v2, v10, v1

    #@3f
    .line 721
    .local v2, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v10, v1, 0x2

    #@41
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    #@44
    move-result v12

    #@45
    aput v12, v0, v10

    #@47
    .line 722
    mul-int/lit8 v10, v1, 0x2

    #@49
    add-int/lit8 v10, v10, 0x1

    #@4b
    invoke-virtual {v2}, Landroid/view/InputDevice;->getGeneration()I

    #@4e
    move-result v12

    #@4f
    aput v12, v0, v10

    #@51
    .line 724
    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    #@54
    move-result v10

    #@55
    if-nez v10, :cond_2

    #@57
    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_c

    #@5d
    .line 726
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    #@60
    move-result-object v10

    #@61
    .line 725
    invoke-static {p1, v10}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    #@64
    move-result v10

    #@65
    if-nez v10, :cond_3

    #@67
    .line 727
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@69
    add-int/lit8 v7, v8, 0x1

    #@6b
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :try_start_3
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6e
    .line 719
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@70
    move v8, v7

    #@71
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    goto :goto_1

    #@72
    :cond_2
    move v7, v8

    #@73
    .line 724
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_2

    #@74
    .line 729
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_3
    :try_start_4
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@79
    move v7, v8

    #@7a
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_2

    #@7b
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_4
    monitor-exit v11

    #@7c
    .line 736
    const/4 v1, 0x0

    #@7d
    :goto_3
    if-ge v1, v9, :cond_5

    #@7f
    .line 737
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@84
    move-result-object v10

    #@85
    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@87
    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    #@8a
    .line 736
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_3

    #@8d
    .line 705
    .end local v0    # "deviceIdAndGeneration":[I
    .end local v1    # "i":I
    .end local v5    # "numDevices":I
    .end local v8    # "numFullKeyboardsAdded":I
    .end local v9    # "numListeners":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :catchall_0
    move-exception v10

    #@8e
    :goto_4
    monitor-exit v11

    #@8f
    throw v10

    #@90
    .line 740
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v0    # "deviceIdAndGeneration":[I
    .restart local v1    # "i":I
    .restart local v5    # "numDevices":I
    .restart local v8    # "numFullKeyboardsAdded":I
    .restart local v9    # "numListeners":I
    :cond_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@95
    .line 743
    new-instance v3, Ljava/util/ArrayList;

    #@97
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9a
    .line 744
    .local v3, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@9c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@9f
    move-result v6

    #@a0
    .line 745
    .local v6, "numFullKeyboards":I
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@a2
    monitor-enter v11

    #@a3
    .line 746
    const/4 v1, 0x0

    #@a4
    :goto_5
    if-ge v1, v6, :cond_8

    #@a6
    .line 747
    :try_start_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v2

    #@ac
    check-cast v2, Landroid/view/InputDevice;

    #@ae
    .line 749
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@b1
    move-result-object v10

    #@b2
    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    .line 750
    .local v4, "layout":Ljava/lang/String;
    if-nez v4, :cond_6

    #@b8
    .line 751
    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    .line 752
    if-eqz v4, :cond_6

    #@be
    .line 754
    invoke-virtual {v2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@c1
    move-result-object v10

    #@c2
    .line 753
    invoke-virtual {p0, v10, v4}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@c5
    .line 757
    :cond_6
    if-nez v4, :cond_7

    #@c7
    .line 758
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ca
    .line 746
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@cc
    goto :goto_5

    #@cd
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v4    # "layout":Ljava/lang/String;
    :cond_8
    monitor-exit v11

    #@ce
    .line 763
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@d0
    if-eqz v10, :cond_9

    #@d2
    .line 764
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@d5
    move-result v10

    #@d6
    if-nez v10, :cond_b

    #@d8
    .line 765
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@db
    move-result v10

    #@dc
    const/4 v11, 0x1

    #@dd
    if-le v10, v11, :cond_a

    #@df
    .line 769
    const/4 v10, 0x0

    #@e0
    invoke-direct {p0, v10}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    #@e3
    .line 777
    :cond_9
    :goto_6
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@e8
    .line 698
    return-void

    #@e9
    .line 745
    :catchall_1
    move-exception v10

    #@ea
    monitor-exit v11

    #@eb
    throw v10

    #@ec
    .line 771
    :cond_a
    const/4 v10, 0x0

    #@ed
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v10

    #@f1
    check-cast v10, Landroid/view/InputDevice;

    #@f3
    invoke-direct {p0, v10}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    #@f6
    goto :goto_6

    #@f7
    .line 773
    :cond_b
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@f9
    if-eqz v10, :cond_9

    #@fb
    .line 774
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    #@fe
    goto :goto_6

    #@ff
    .line 705
    .end local v3    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v6    # "numFullKeyboards":I
    :catchall_2
    move-exception v10

    #@100
    move v7, v8

    #@101
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_4

    #@102
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_c
    move v7, v8

    #@103
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto/16 :goto_2
.end method

.method private deliverTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    #@0
    .prologue
    .line 946
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@5
    .line 948
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 949
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v1

    #@e
    .line 950
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@11
    .line 951
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    #@13
    .line 952
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    #@1b
    .line 951
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 950
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 955
    const/4 v0, 0x0

    #@23
    :goto_1
    if-ge v0, v1, :cond_1

    #@25
    .line 956
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    #@27
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    #@2d
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    #@30
    .line 955
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 948
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v2

    #@34
    monitor-exit v3

    #@35
    throw v2

    #@36
    .line 945
    .restart local v0    # "i":I
    .restart local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 11
    .param p1, "d"    # Landroid/view/InputDevice;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 781
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v9

    #@7
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@a
    move-result-object v9

    #@b
    iget-object v8, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@d
    .line 784
    .local v8, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@10
    move-result-object v9

    #@11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_0

    #@17
    .line 785
    return-object v10

    #@18
    .line 787
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 788
    .local v3, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$4;

    #@1f
    invoke-direct {v9, p0, p1, v8, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    #@22
    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@25
    .line 809
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_1

    #@2b
    .line 810
    return-object v10

    #@2c
    .line 814
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2f
    .line 816
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@32
    move-result v0

    #@33
    .line 817
    .local v0, "N":I
    const/4 v1, 0x0

    #@34
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@36
    .line 818
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    #@3c
    .line 819
    .local v2, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    #@3f
    move-result-object v6

    #@40
    .line 820
    .local v6, "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    #@43
    move-result v7

    #@44
    .line 821
    .local v7, "numLocales":I
    const/4 v5, 0x0

    #@45
    .local v5, "localeIndex":I
    :goto_1
    if-ge v5, v7, :cond_3

    #@47
    .line 822
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@4a
    move-result-object v4

    #@4b
    .line 823
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v9

    #@57
    if-eqz v9, :cond_2

    #@59
    .line 824
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v9

    #@65
    .line 823
    if-eqz v9, :cond_2

    #@67
    .line 825
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    #@6a
    move-result-object v9

    #@6b
    return-object v9

    #@6c
    .line 821
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 817
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_0

    #@72
    .line 830
    .end local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "localeIndex":I
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    :cond_4
    const/4 v1, 0x0

    #@73
    :goto_2
    if-ge v1, v0, :cond_7

    #@75
    .line 831
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    #@7b
    .line 832
    .restart local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    #@7e
    move-result-object v6

    #@7f
    .line 833
    .restart local v6    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    #@82
    move-result v7

    #@83
    .line 834
    .restart local v7    # "numLocales":I
    const/4 v5, 0x0

    #@84
    .restart local v5    # "localeIndex":I
    :goto_3
    if-ge v5, v7, :cond_6

    #@86
    .line 835
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@89
    move-result-object v4

    #@8a
    .line 836
    .restart local v4    # "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@91
    move-result-object v10

    #@92
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v9

    #@96
    if-eqz v9, :cond_5

    #@98
    .line 837
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    return-object v9

    #@9d
    .line 834
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@9f
    goto :goto_3

    #@a0
    .line 830
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@a2
    goto :goto_2

    #@a3
    .line 843
    .end local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "localeIndex":I
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    :cond_7
    const/4 v9, 0x0

    #@a4
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v9

    #@a8
    check-cast v9, Landroid/hardware/input/KeyboardLayout;

    #@aa
    invoke-virtual {v9}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    #@ad
    move-result-object v9

    #@ae
    return-object v9
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2016
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2018
    return-object v1

    #@8
    .line 2020
    :cond_0
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1963
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 1907
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1910
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    #@6
    .line 1912
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    #@8
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@b
    move-result-object v9

    #@c
    const-string/jumbo v10, "etc/excluded-input-devices.xml"

    #@f
    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12
    .line 1913
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    #@13
    .line 1915
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    #@15
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1916
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v8

    #@1c
    .line 1917
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1f
    .line 1918
    const-string/jumbo v9, "devices"

    #@22
    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@25
    .line 1921
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@28
    .line 1922
    const-string/jumbo v9, "device"

    #@2b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    move-result v9

    #@33
    if-nez v9, :cond_3

    #@35
    .line 1935
    if-eqz v2, :cond_1

    #@37
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@3a
    :cond_1
    :goto_1
    move-object v1, v2

    #@3b
    .line 1938
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v9

    #@3f
    new-array v9, v9, [Ljava/lang/String;

    #@41
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@44
    move-result-object v9

    #@45
    check-cast v9, [Ljava/lang/String;

    #@47
    return-object v9

    #@48
    .line 1925
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_3
    const-string/jumbo v9, "name"

    #@4b
    const/4 v10, 0x0

    #@4c
    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 1926
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@52
    .line 1927
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@55
    goto :goto_0

    #@56
    .line 1930
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    #@57
    .local v3, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    #@58
    .line 1935
    .end local v2    # "confreader":Ljava/io/FileReader;
    :goto_3
    if-eqz v1, :cond_2

    #@5a
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@5d
    goto :goto_2

    #@5e
    :catch_1
    move-exception v4

    #@5f
    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    #@60
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v4

    #@61
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    #@62
    .line 1932
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v5

    #@63
    .line 1933
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string/jumbo v9, "InputManager"

    #@66
    new-instance v10, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v11, "Exception while parsing \'"

    #@6e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v10

    #@7a
    const-string/jumbo v11, "\'"

    #@7d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v10

    #@85
    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@88
    .line 1935
    if-eqz v1, :cond_2

    #@8a
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@8d
    goto :goto_2

    #@8e
    :catch_4
    move-exception v4

    #@8f
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    #@90
    .line 1934
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    #@91
    .line 1935
    :goto_5
    if-eqz v1, :cond_4

    #@93
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@96
    .line 1934
    :cond_4
    :goto_6
    throw v9

    #@97
    .line 1935
    :catch_5
    move-exception v4

    #@98
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    #@99
    .line 1934
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    #@9a
    move-object v1, v2

    #@9b
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_5

    #@9c
    .line 1930
    .local v1, "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v3

    #@9d
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@9e
    .line 1932
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v5

    #@9f
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v1, v2

    #@a0
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method private getHoverTapSlop()I
    .locals 1

    #@0
    .prologue
    .line 1958
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1953
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    #@0
    .prologue
    .line 1948
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1943
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1983
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1984
    return-object v5

    #@6
    .line 1987
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1988
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    #@c
    .line 1989
    return-object v5

    #@d
    .line 1992
    :cond_1
    const/4 v2, 0x2

    #@e
    new-array v1, v2, [Ljava/lang/String;

    #@10
    .line 1993
    .local v1, "result":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    #@12
    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    #@15
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@18
    .line 2006
    const/4 v2, 0x0

    #@19
    aget-object v2, v1, v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 2007
    const-string/jumbo v2, "InputManager"

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Could not get keyboard layout with descriptor \'"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 2008
    const-string/jumbo v4, "\'."

    #@33
    .line 2007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 2009
    return-object v5

    #@3f
    .line 2011
    :cond_2
    return-object v1
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1251
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 1252
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "identifier and descriptor must not be null"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1255
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 1256
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 1258
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 1259
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    #@31
    move-result v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 1260
    const-string/jumbo v1, ",product:"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    #@3f
    move-result v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 1261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    return-object v1
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2
    .param p0, "languageTags"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1241
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1243
    :cond_0
    const/16 v0, 0x7c

    #@d
    const/16 v1, 0x2c

    #@f
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private getLongPressTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1968
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    #@0
    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    #@0
    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getPointerSpeedSetting()I
    .locals 5

    #@0
    .prologue
    .line 1586
    const/4 v1, 0x0

    #@1
    .line 1588
    .local v1, "speed":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 1589
    const-string/jumbo v3, "pointer_speed"

    #@a
    const/4 v4, -0x2

    #@b
    .line 1588
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    .line 1592
    :goto_0
    return v1

    #@10
    .line 1590
    :catch_0
    move-exception v0

    #@11
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 5
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 1631
    move v0, p1

    #@1
    .line 1633
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 1634
    const-string/jumbo v3, "show_touches"

    #@a
    const/4 v4, -0x2

    #@b
    .line 1633
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v0

    #@f
    .line 1637
    :goto_0
    return v0

    #@10
    .line 1635
    :catch_0
    move-exception v1

    #@11
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    #@0
    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1902
    const v1, 0x10e006d

    #@9
    .line 1901
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1468
    if-nez p2, :cond_0

    #@3
    .line 1469
    const-string/jumbo v1, "InputManager"

    #@6
    const-string/jumbo v2, "No InputMethod is running, ignoring change"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1470
    return-void

    #@d
    .line 1472
    :cond_0
    if-eqz p3, :cond_1

    #@f
    const-string/jumbo v1, "keyboard"

    #@12
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 1476
    :cond_1
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@1e
    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@21
    .line 1477
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_2

    #@29
    .line 1478
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@2b
    .line 1479
    invoke-direct {p0, v3, v0}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    #@2e
    .line 1463
    :cond_2
    return-void

    #@2f
    .line 1473
    .end local v0    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :cond_3
    const-string/jumbo v1, "InputManager"

    #@32
    const-string/jumbo v2, "InputMethodSubtype changed to non-keyboard subtype, ignoring change"

    #@35
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1474
    return-void
.end method

.method private handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .locals 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "handle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    .line 1486
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1487
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@5
    const/4 v3, 0x0

    #@6
    array-length v6, v5

    #@7
    :goto_0
    if-ge v3, v6, :cond_3

    #@9
    aget-object v1, v5, v3

    #@b
    .line 1488
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v7, p1}, Landroid/hardware/input/InputDeviceIdentifier;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_2

    #@17
    .line 1489
    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_2

    #@1d
    .line 1492
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@20
    move-result-object v7

    #@21
    invoke-direct {p0, v7}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1493
    .local v2, "key":Ljava/lang/String;
    const/4 v0, 0x0

    #@26
    .line 1494
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@28
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@29
    .line 1496
    :try_start_1
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@2b
    invoke-virtual {v8, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 1497
    const/4 v0, 0x1

    #@32
    .line 1500
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@34
    invoke-virtual {v8}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    :try_start_3
    monitor-exit v7

    #@38
    .line 1503
    if-eqz v0, :cond_2

    #@3a
    .line 1504
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@3d
    .line 1487
    .end local v0    # "changed":Z
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1499
    .restart local v0    # "changed":Z
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@41
    .line 1500
    :try_start_4
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@43
    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@46
    .line 1499
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    .line 1494
    :catchall_1
    move-exception v3

    #@48
    :try_start_5
    monitor-exit v7

    #@49
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@4a
    .line 1486
    .end local v0    # "changed":Z
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_2
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3

    #@4d
    :cond_3
    monitor-exit v4

    #@4e
    .line 1485
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    #@0
    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 996
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@7
    .line 997
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@9
    .line 999
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b
    .line 997
    const/4 v2, 0x0

    #@c
    .line 998
    const v3, 0x104042c

    #@f
    .line 997
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@12
    .line 994
    :cond_0
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 583
    if-nez p1, :cond_0

    #@2
    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "event must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 586
    :cond_0
    if-eqz p3, :cond_1

    #@d
    .line 587
    const/4 v0, 0x2

    #@e
    if-eq p3, v0, :cond_1

    #@10
    .line 588
    const/4 v0, 0x1

    #@11
    if-eq p3, v0, :cond_1

    #@13
    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "mode is invalid"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 592
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v4

    #@20
    .line 593
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v5

    #@24
    .line 594
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@27
    move-result-wide v10

    #@28
    .line 597
    .local v10, "ident":J
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2a
    .line 598
    const/16 v7, 0x7530

    #@2c
    const/high16 v8, 0x8000000

    #@2e
    move-object v2, p1

    #@2f
    move v3, p2

    #@30
    move v6, p3

    #@31
    .line 597
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v9

    #@35
    .line 600
    .local v9, "result":I
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 602
    packed-switch v9, :pswitch_data_0

    #@3b
    .line 614
    :pswitch_0
    const-string/jumbo v0, "InputManager"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Input event injection from pid "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, " failed."

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 615
    const/4 v0, 0x0

    #@5d
    return v0

    #@5e
    .line 599
    .end local v9    # "result":I
    :catchall_0
    move-exception v0

    #@5f
    .line 600
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@62
    .line 599
    throw v0

    #@63
    .line 604
    .restart local v9    # "result":I
    :pswitch_1
    const-string/jumbo v0, "InputManager"

    #@66
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v2, "Input event injection from pid "

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    const-string/jumbo v2, " permission denied."

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 605
    new-instance v0, Ljava/lang/SecurityException;

    #@86
    .line 606
    const-string/jumbo v1, "Injecting to another application requires INJECT_EVENTS permission"

    #@89
    .line 605
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v0

    #@8d
    .line 608
    :pswitch_2
    const/4 v0, 0x1

    #@8e
    return v0

    #@8f
    .line 610
    :pswitch_3
    const-string/jumbo v0, "InputManager"

    #@92
    new-instance v1, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v2, "Input event injection from pid "

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    const-string/jumbo v2, " timed out."

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 611
    const/4 v0, 0x0

    #@b1
    return v0

    #@b2
    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 3
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 848
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 849
    return v2

    #@10
    .line 852
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 853
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 857
    :cond_1
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 854
    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_1

    #@34
    .line 855
    return v2
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDisplayViewport(JZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    #@0
    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    #@5
    .line 1793
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    #@5
    .line 1843
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    .line 1799
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1800
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1801
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@a
    .line 1802
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@c
    .line 1803
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@e
    .line 1802
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 1806
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1798
    return-void

    #@1a
    .line 1799
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private notifySwitch(JII)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1817
    and-int/lit8 v4, p4, 0x1

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1818
    and-int/lit8 v4, p3, 0x1

    #@7
    if-nez v4, :cond_5

    #@9
    const/4 v2, 0x1

    #@a
    .line 1819
    .local v2, "lidOpen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@c
    invoke-interface {v4, p1, p2, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    #@f
    .line 1822
    .end local v2    # "lidOpen":Z
    :cond_0
    and-int/lit16 v4, p4, 0x200

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 1823
    and-int/lit16 v4, p3, 0x200

    #@15
    if-eqz v4, :cond_6

    #@17
    const/4 v1, 0x1

    #@18
    .line 1824
    .local v1, "lensCovered":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@1a
    invoke-interface {v4, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    #@1d
    .line 1827
    .end local v1    # "lensCovered":Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@1f
    if-eqz v4, :cond_2

    #@21
    and-int/lit16 v4, p4, 0xd4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 1828
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@27
    invoke-interface {v4, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    #@2a
    .line 1832
    :cond_2
    and-int/lit8 v4, p4, 0x2

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 1833
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@31
    move-result-object v0

    #@32
    .line 1834
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v4, -0x1

    #@34
    and-long/2addr v4, p1

    #@35
    long-to-int v4, v4

    #@36
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@38
    .line 1835
    const/16 v4, 0x20

    #@3a
    shr-long v4, p1, v4

    #@3c
    long-to-int v4, v4

    #@3d
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@3f
    .line 1836
    and-int/lit8 v4, p3, 0x2

    #@41
    if-eqz v4, :cond_3

    #@43
    const/4 v3, 0x1

    #@44
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@47
    move-result-object v3

    #@48
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4a
    .line 1837
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@4c
    const/4 v4, 0x6

    #@4d
    invoke-virtual {v3, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@54
    .line 1811
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4
    return-void

    #@55
    .line 1818
    :cond_5
    const/4 v2, 0x0

    #@56
    .restart local v2    # "lidOpen":Z
    goto :goto_0

    #@57
    .line 1823
    .end local v2    # "lidOpen":Z
    :cond_6
    const/4 v1, 0x0

    #@58
    .restart local v1    # "lensCovered":Z
    goto :goto_1
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 691
    return-void

    #@a
    .line 692
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private onTabletModeChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 938
    return-void

    #@a
    .line 939
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1621
    const-string/jumbo v1, "accessibility_large_pointer_icon"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 1622
    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    #@f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@11
    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    #@14
    .line 1621
    const/4 v3, 0x1

    #@15
    .line 1627
    const/4 v4, -0x1

    #@16
    .line 1620
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 1619
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1576
    const-string/jumbo v1, "pointer_speed"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 1577
    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    #@f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@11
    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    #@14
    .line 1576
    const/4 v3, 0x1

    #@15
    .line 1582
    const/4 v4, -0x1

    #@16
    .line 1575
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 1574
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1602
    const-string/jumbo v1, "show_touches"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 1603
    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    #@f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@11
    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    #@14
    .line 1602
    const/4 v3, 0x1

    #@15
    .line 1608
    const/4 v4, -0x1

    #@16
    .line 1601
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 1600
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 2

    #@0
    .prologue
    .line 401
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    #@5
    .line 397
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    #@0
    .prologue
    .line 394
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    #@5
    .line 390
    return-void
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .locals 17
    .param p1, "external"    # Z
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 418
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@4
    .line 419
    move-object/from16 v0, p2

    #@6
    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@8
    move-object/from16 v0, p2

    #@a
    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@c
    .line 420
    move-object/from16 v0, p2

    #@e
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@10
    iget v7, v4, Landroid/graphics/Rect;->left:I

    #@12
    move-object/from16 v0, p2

    #@14
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@16
    iget v8, v4, Landroid/graphics/Rect;->top:I

    #@18
    .line 421
    move-object/from16 v0, p2

    #@1a
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@1c
    iget v9, v4, Landroid/graphics/Rect;->right:I

    #@1e
    move-object/from16 v0, p2

    #@20
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@22
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    #@24
    .line 422
    move-object/from16 v0, p2

    #@26
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@28
    iget v11, v4, Landroid/graphics/Rect;->left:I

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@2e
    iget v12, v4, Landroid/graphics/Rect;->top:I

    #@30
    .line 423
    move-object/from16 v0, p2

    #@32
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@34
    iget v13, v4, Landroid/graphics/Rect;->right:I

    #@36
    move-object/from16 v0, p2

    #@38
    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@3a
    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    #@3c
    .line 424
    move-object/from16 v0, p2

    #@3e
    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    #@40
    move-object/from16 v0, p2

    #@42
    iget v0, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    #@44
    move/from16 v16, v0

    #@46
    move/from16 v4, p1

    #@48
    .line 418
    invoke-static/range {v2 .. v16}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    #@4b
    .line 417
    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 2
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 406
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 407
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@9
    .line 410
    :cond_0
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 411
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@10
    .line 405
    :cond_1
    :goto_0
    return-void

    #@11
    .line 412
    :cond_2
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 413
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@18
    goto :goto_0
.end method

.method private setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p3, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1374
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6
    monitor-enter v3

    #@7
    .line 1376
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@9
    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1382
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@11
    invoke-virtual {p2, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1386
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1a
    move-result-object v0

    #@1b
    .line 1387
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1d
    .line 1388
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1f
    .line 1389
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@21
    const/4 v4, 0x2

    #@22
    invoke-virtual {v2, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@29
    .line 1391
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@2b
    const/4 v4, 0x3

    #@2c
    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1394
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@31
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@34
    monitor-exit v3

    #@35
    .line 1372
    return-void

    #@36
    .line 1393
    :catchall_0
    move-exception v2

    #@37
    .line 1394
    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@39
    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@3c
    .line 1393
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3d
    .line 1374
    :catchall_1
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    #@0
    .prologue
    .line 1569
    const/4 v0, -0x7

    #@1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    .line 1570
    const/4 v1, 0x7

    #@6
    .line 1569
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result p1

    #@a
    .line 1571
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@c
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    #@f
    .line 1568
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/view/InputDevice;

    #@0
    .prologue
    const v9, 0x104042c

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 963
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@7
    if-nez v0, :cond_1

    #@9
    .line 964
    new-instance v2, Landroid/content/Intent;

    #@b
    const-string/jumbo v0, "android.settings.HARD_KEYBOARD_SETTINGS"

    #@e
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 965
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@13
    .line 966
    const-string/jumbo v0, "input_device_identifier"

    #@16
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1d
    .line 968
    :cond_0
    const/high16 v0, 0x14200000

    #@1f
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    .line 971
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@24
    .line 972
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@26
    move v3, v1

    #@27
    .line 971
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@2a
    move-result-object v6

    #@2b
    .line 974
    .local v6, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v8

    #@31
    .line 975
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    #@33
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@35
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@38
    .line 976
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 975
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v0

    #@40
    .line 979
    const v1, 0x104042d

    #@43
    .line 978
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 975
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@4e
    move-result-object v0

    #@4f
    .line 981
    const v1, 0x1080438

    #@52
    .line 975
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@55
    move-result-object v0

    #@56
    .line 982
    const/4 v1, -0x1

    #@57
    .line 975
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v0

    #@5b
    .line 983
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@5d
    .line 984
    const v3, 0x106005b

    #@60
    .line 983
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@63
    move-result v1

    #@64
    .line 975
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@6b
    move-result-object v7

    #@6c
    .line 986
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@6e
    .line 988
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@70
    .line 986
    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@73
    .line 989
    const/4 v0, 0x1

    #@74
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@76
    .line 962
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    #@0
    .prologue
    .line 1006
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1007
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    #@7
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@d
    .line 1014
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@f
    monitor-enter v2

    #@10
    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 1018
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@17
    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    monitor-exit v2

    #@1b
    .line 1023
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    #@1e
    .line 1004
    return-void

    #@1f
    .line 1017
    :catchall_0
    move-exception v1

    #@20
    .line 1018
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@22
    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@25
    .line 1017
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1014
    :catchall_1
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 9
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v1

    #@6
    .line 1123
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    #@8
    const-string/jumbo v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    #@b
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 1125
    .local v6, "intent":Landroid/content/Intent;
    const v0, 0xc0080

    #@11
    .line 1124
    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v8

    #@19
    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@25
    .line 1127
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@27
    .line 1128
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v4, v7, Landroid/content/pm/ResolveInfo;->priority:I

    #@29
    .line 1129
    .local v4, "priority":I
    const/4 v3, 0x0

    #@2a
    move-object v0, p0

    #@2b
    move-object v5, p1

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@2f
    goto :goto_0

    #@30
    .line 1121
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "priority":I
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 8
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    #@0
    .prologue
    .line 1135
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    #@3
    move-result-object v6

    #@4
    .line 1136
    .local v6, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v6, :cond_0

    #@6
    .line 1137
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 1140
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    #@e
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    #@10
    iget-object v4, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    #@12
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 1141
    const v3, 0xc0080

    #@18
    .line 1139
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@1b
    move-result-object v2

    #@1c
    .line 1144
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    #@1e
    const/4 v4, 0x0

    #@1f
    move-object v0, p0

    #@20
    move-object v5, p2

    #@21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1134
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    #@25
    .line 1145
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    #@26
    .local v7, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 25
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    #@0
    .prologue
    .line 1152
    move-object/from16 v0, p2

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@4
    move-object/from16 v17, v0

    #@6
    .line 1153
    .local v17, "metaData":Landroid/os/Bundle;
    if-nez v17, :cond_0

    #@8
    .line 1154
    return-void

    #@9
    .line 1157
    :cond_0
    const-string/jumbo v22, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    #@c
    move-object/from16 v0, v17

    #@e
    move-object/from16 v1, v22

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@13
    move-result v12

    #@14
    .line 1158
    .local v12, "configResId":I
    if-nez v12, :cond_1

    #@16
    .line 1159
    const-string/jumbo v22, "InputManager"

    #@19
    new-instance v23, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v24, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    #@21
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v23

    #@25
    .line 1160
    move-object/from16 v0, p2

    #@27
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@29
    move-object/from16 v24, v0

    #@2b
    .line 1159
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v23

    #@2f
    .line 1160
    const-string/jumbo v24, "/"

    #@32
    .line 1159
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v23

    #@36
    .line 1160
    move-object/from16 v0, p2

    #@38
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3a
    move-object/from16 v24, v0

    #@3c
    .line 1159
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v23

    #@40
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v23

    #@44
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 1161
    return-void

    #@48
    .line 1164
    :cond_1
    move-object/from16 v0, p2

    #@4a
    move-object/from16 v1, p1

    #@4c
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@4f
    move-result-object v20

    #@50
    .line 1165
    .local v20, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v20, :cond_2

    #@52
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    .line 1167
    .local v6, "collection":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    #@58
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a
    move-object/from16 v22, v0

    #@5c
    move-object/from16 v0, v22

    #@5e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@60
    move/from16 v22, v0

    #@62
    and-int/lit8 v22, v22, 0x1

    #@64
    if-eqz v22, :cond_3

    #@66
    .line 1168
    move/from16 v7, p4

    #@68
    .line 1174
    .local v7, "priority":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    #@6a
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6c
    move-object/from16 v22, v0

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v22

    #@72
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@75
    move-result-object v21

    #@76
    .line 1175
    .local v21, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v21

    #@78
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    move-result-object v19

    #@7c
    .line 1177
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v22, "keyboard-layouts"

    #@7f
    move-object/from16 v0, v19

    #@81
    move-object/from16 v1, v22

    #@83
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@86
    .line 1180
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@89
    .line 1181
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    move-result-object v13

    #@8d
    .line 1182
    .local v13, "element":Ljava/lang/String;
    if-nez v13, :cond_4

    #@8f
    .line 1230
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@92
    .line 1151
    .end local v13    # "element":Ljava/lang/String;
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "resources":Landroid/content/res/Resources;
    :goto_3
    return-void

    #@93
    .line 1165
    .end local v6    # "collection":Ljava/lang/String;
    .end local v7    # "priority":I
    :cond_2
    const-string/jumbo v6, ""

    #@96
    .restart local v6    # "collection":Ljava/lang/String;
    goto :goto_0

    #@97
    .line 1170
    :cond_3
    const/4 v7, 0x0

    #@98
    .restart local v7    # "priority":I
    goto :goto_1

    #@99
    .line 1185
    .restart local v13    # "element":Ljava/lang/String;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "resources":Landroid/content/res/Resources;
    :cond_4
    :try_start_3
    const-string/jumbo v22, "keyboard-layout"

    #@9c
    move-object/from16 v0, v22

    #@9e
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v22

    #@a2
    if-eqz v22, :cond_9

    #@a4
    .line 1187
    sget-object v22, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    #@a6
    .line 1186
    move-object/from16 v0, v21

    #@a8
    move-object/from16 v1, v19

    #@aa
    move-object/from16 v2, v22

    #@ac
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@af
    move-result-object v11

    #@b0
    .line 1190
    .local v11, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    #@b2
    .line 1189
    :try_start_4
    move/from16 v0, v22

    #@b4
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@b7
    move-result-object v18

    #@b8
    .line 1192
    .local v18, "name":Ljava/lang/String;
    const/16 v22, 0x0

    #@ba
    .line 1191
    move/from16 v0, v22

    #@bc
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    .line 1194
    .local v5, "label":Ljava/lang/String;
    const/16 v22, 0x2

    #@c2
    .line 1195
    const/16 v23, 0x0

    #@c4
    .line 1193
    move/from16 v0, v22

    #@c6
    move/from16 v1, v23

    #@c8
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@cb
    move-result v15

    #@cc
    .line 1197
    .local v15, "keyboardLayoutResId":I
    const/16 v22, 0x3

    #@ce
    .line 1196
    move/from16 v0, v22

    #@d0
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d3
    move-result-object v16

    #@d4
    .line 1198
    .local v16, "languageTags":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    #@d7
    move-result-object v8

    #@d8
    .line 1200
    .local v8, "locales":Landroid/os/LocaleList;
    const/16 v22, 0x4

    #@da
    const/16 v23, -0x1

    #@dc
    .line 1199
    move/from16 v0, v22

    #@de
    move/from16 v1, v23

    #@e0
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e3
    move-result v9

    #@e4
    .line 1202
    .local v9, "vid":I
    const/16 v22, 0x5

    #@e6
    const/16 v23, -0x1

    #@e8
    .line 1201
    move/from16 v0, v22

    #@ea
    move/from16 v1, v23

    #@ec
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ef
    move-result v10

    #@f0
    .line 1204
    .local v10, "pid":I
    if-eqz v18, :cond_5

    #@f2
    if-nez v5, :cond_7

    #@f4
    .line 1205
    :cond_5
    const-string/jumbo v22, "InputManager"

    #@f7
    new-instance v23, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v24, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    #@ff
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v23

    #@103
    .line 1208
    move-object/from16 v0, p2

    #@105
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@107
    move-object/from16 v24, v0

    #@109
    .line 1205
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v23

    #@10d
    .line 1208
    const-string/jumbo v24, "/"

    #@110
    .line 1205
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v23

    #@114
    .line 1208
    move-object/from16 v0, p2

    #@116
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@118
    move-object/from16 v24, v0

    #@11a
    .line 1205
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v23

    #@11e
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v23

    #@122
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@125
    .line 1221
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@128
    goto/16 :goto_2

    #@12a
    .line 1229
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "vid":I
    .end local v10    # "pid":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "element":Ljava/lang/String;
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "languageTags":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v22

    #@12b
    .line 1230
    :try_start_6
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    #@12e
    .line 1229
    throw v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@12f
    .line 1232
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v14

    #@130
    .line 1233
    .local v14, "ex":Ljava/lang/Exception;
    const-string/jumbo v22, "InputManager"

    #@133
    new-instance v23, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v24, "Could not parse keyboard layout resource from receiver "

    #@13b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v23

    #@13f
    .line 1234
    move-object/from16 v0, p2

    #@141
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@143
    move-object/from16 v24, v0

    #@145
    .line 1233
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v23

    #@149
    .line 1234
    const-string/jumbo v24, "/"

    #@14c
    .line 1233
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v23

    #@150
    .line 1234
    move-object/from16 v0, p2

    #@152
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@154
    move-object/from16 v24, v0

    #@156
    .line 1233
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v23

    #@15a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v23

    #@15e
    move-object/from16 v0, v22

    #@160
    move-object/from16 v1, v23

    #@162
    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@165
    goto/16 :goto_3

    #@167
    .line 1204
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v8    # "locales":Landroid/os/LocaleList;
    .restart local v9    # "vid":I
    .restart local v10    # "pid":I
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    .restart local v13    # "element":Ljava/lang/String;
    .restart local v15    # "keyboardLayoutResId":I
    .restart local v16    # "languageTags":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "resources":Landroid/content/res/Resources;
    :cond_7
    if-eqz v15, :cond_5

    #@169
    .line 1211
    :try_start_7
    move-object/from16 v0, p2

    #@16b
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@16d
    move-object/from16 v22, v0

    #@16f
    move-object/from16 v0, p2

    #@171
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@173
    move-object/from16 v23, v0

    #@175
    .line 1210
    move-object/from16 v0, v22

    #@177
    move-object/from16 v1, v23

    #@179
    move-object/from16 v2, v18

    #@17b
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17e
    move-result-object v4

    #@17f
    .line 1212
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_8

    #@181
    move-object/from16 v0, v18

    #@183
    move-object/from16 v1, p3

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@188
    move-result v22

    #@189
    if-eqz v22, :cond_6

    #@18b
    .line 1213
    :cond_8
    new-instance v3, Landroid/hardware/input/KeyboardLayout;

    #@18d
    invoke-direct/range {v3 .. v10}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V

    #@190
    .line 1216
    .local v3, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v0, p5

    #@192
    move-object/from16 v1, v21

    #@194
    invoke-interface {v0, v1, v15, v3}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@197
    goto :goto_4

    #@198
    .line 1220
    .end local v3    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "vid":I
    .end local v10    # "pid":I
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "languageTags":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v22

    #@199
    .line 1221
    :try_start_8
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@19c
    .line 1220
    throw v22

    #@19d
    .line 1224
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_9
    const-string/jumbo v22, "InputManager"

    #@1a0
    new-instance v23, Ljava/lang/StringBuilder;

    #@1a2
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1a5
    const-string/jumbo v24, "Skipping unrecognized element \'"

    #@1a8
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v23

    #@1ac
    move-object/from16 v0, v23

    #@1ae
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v23

    #@1b2
    .line 1225
    const-string/jumbo v24, "\' in keyboard layout resource from receiver "

    #@1b5
    .line 1224
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v23

    #@1b9
    .line 1226
    move-object/from16 v0, p2

    #@1bb
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1bd
    move-object/from16 v24, v0

    #@1bf
    .line 1224
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v23

    #@1c3
    .line 1226
    const-string/jumbo v24, "/"

    #@1c6
    .line 1224
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v23

    #@1ca
    .line 1226
    move-object/from16 v0, p2

    #@1cc
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1ce
    move-object/from16 v24, v0

    #@1d0
    .line 1224
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v23

    #@1d4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v23

    #@1d8
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1db
    goto/16 :goto_2
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1402
    const-string/jumbo v2, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1403
    const-string/jumbo v3, "addKeyboardLayoutForInputDevice()"

    #@6
    .line 1402
    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1404
    new-instance v2, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v3, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 1406
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 1410
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1411
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v3

    #@27
    .line 1413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1414
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_2

    #@2f
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 1417
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3b
    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 1418
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@43
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_5

    #@4d
    .line 1422
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@4f
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@52
    monitor-exit v3

    #@53
    .line 1401
    return-void

    #@54
    .line 1415
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@56
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    goto :goto_0

    #@5f
    .line 1419
    :cond_5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@61
    const/4 v4, 0x3

    #@62
    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    goto :goto_1

    #@66
    .line 1421
    .end local v1    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@67
    .line 1422
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@69
    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@6c
    .line 1421
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6d
    .line 1411
    :catchall_1
    move-exception v2

    #@6e
    monitor-exit v3

    #@6f
    throw v2
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1672
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1673
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    #@b
    .line 1674
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_0

    #@d
    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-eq v1, p1, :cond_1

    #@11
    :cond_0
    monitor-exit v2

    #@12
    .line 1675
    return-void

    #@13
    :cond_1
    monitor-exit v2

    #@14
    .line 1679
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    #@17
    .line 1670
    return-void

    #@18
    .line 1672
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1713
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.DUMP"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Permission Denial: can\'t dump InputManager from from pid="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    .line 1715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1717
    const-string/jumbo v2, ", uid="

    #@22
    .line 1715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v2

    #@2a
    .line 1715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 1718
    return-void

    #@36
    .line 1721
    :cond_0
    const-string/jumbo v1, "INPUT MANAGER (dumpsys input)\n"

    #@39
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1722
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@3e
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 1723
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@44
    .line 1724
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1726
    :cond_1
    const-string/jumbo v1, "  Keyboard Layouts:"

    #@4a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d
    .line 1727
    new-instance v1, Lcom/android/server/input/InputManagerService$13;

    #@4f
    invoke-direct {v1, p0, p2}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Ljava/io/PrintWriter;)V

    #@52
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@55
    .line 1734
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@58
    .line 1735
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@5a
    monitor-enter v2

    #@5b
    .line 1736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@5d
    const-string/jumbo v3, "  "

    #@60
    invoke-virtual {v1, p2, v3}, Lcom/android/server/input/PersistentDataStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    monitor-exit v2

    #@64
    .line 1712
    return-void

    #@65
    .line 1735
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v2

    #@67
    throw v1
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 1856
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1859
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@9
    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 1863
    :goto_0
    const/4 v1, 0x0

    #@d
    monitor-exit v2

    #@e
    return v1

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 1866
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    #@13
    .line 1867
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 1856
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .line 1860
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1268
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6
    monitor-enter v3

    #@7
    .line 1269
    const/4 v1, 0x0

    #@8
    .line 1271
    .local v1, "layout":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@a
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1272
    .local v1, "layout":Ljava/lang/String;
    if-nez v1, :cond_0

    #@10
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    :cond_0
    :goto_0
    monitor-exit v3

    #@1b
    .line 1280
    return-object v1

    #@1c
    .line 1274
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@1e
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-object v1

    #@26
    goto :goto_0

    #@27
    .line 1268
    .end local v1    # "layout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1313
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6
    monitor-enter v3

    #@7
    .line 1314
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@9
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1315
    .local v1, "layouts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@f
    array-length v2, v1

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1316
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :cond_1
    :goto_0
    monitor-exit v3

    #@1d
    .line 1319
    return-object v1

    #@1e
    .line 1317
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@20
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v1

    #@28
    goto :goto_0

    #@29
    .line 1313
    .end local v1    # "layouts":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 626
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@5
    array-length v0, v3

    #@6
    .line 628
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 629
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@b
    aget-object v2, v3, v1

    #@d
    .line 630
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v3

    #@11
    if-ne v3, p1, :cond_0

    #@13
    monitor-exit v4

    #@14
    .line 631
    return-object v2

    #@15
    .line 628
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    monitor-exit v4

    #@19
    .line 635
    const/4 v3, 0x0

    #@1a
    return-object v3

    #@1b
    .line 626
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v4

    #@1d
    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 5

    #@0
    .prologue
    .line 644
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 645
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@5
    array-length v0, v3

    #@6
    .line 646
    .local v0, "count":I
    new-array v2, v0, [I

    #@8
    .line 647
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 648
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@d
    aget-object v3, v3, v1

    #@f
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    #@12
    move-result v3

    #@13
    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 647
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_0
    monitor-exit v4

    #@19
    .line 650
    return-object v2

    #@1a
    .line 644
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    #@1b
    monitor-exit v4

    #@1c
    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    #@0
    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 659
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getKeyCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    #@0
    .prologue
    .line 437
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 5
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1102
    if-nez p1, :cond_0

    #@3
    .line 1103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 1106
    :cond_0
    const/4 v1, 0x1

    #@d
    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    #@f
    .line 1107
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    #@11
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    #@14
    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@17
    .line 1114
    aget-object v1, v0, v4

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 1115
    const-string/jumbo v1, "InputManager"

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Could not get keyboard layout with descriptor \'"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 1116
    const-string/jumbo v3, "\'."

    #@31
    .line 1115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1118
    :cond_1
    aget-object v1, v0, v4

    #@3e
    return-object v1
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .locals 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1327
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@4
    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@7
    .line 1328
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1330
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@d
    monitor-enter v5

    #@e
    .line 1331
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@10
    invoke-virtual {v4, v1, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .local v2, "keyboardLayoutDescriptor":Ljava/lang/String;
    monitor-exit v5

    #@15
    .line 1334
    if-nez v2, :cond_0

    #@17
    .line 1335
    return-object v6

    #@18
    .line 1330
    .end local v2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@19
    monitor-exit v5

    #@1a
    throw v4

    #@1b
    .line 1338
    .restart local v2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    #@1c
    new-array v3, v4, [Landroid/hardware/input/KeyboardLayout;

    #@1e
    .line 1339
    .local v3, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v4, Lcom/android/server/input/InputManagerService$9;

    #@20
    invoke-direct {v4, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    #@23
    invoke-direct {p0, v2, v4}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@26
    .line 1346
    aget-object v4, v3, v7

    #@28
    if-nez v4, :cond_1

    #@2a
    .line 1347
    const-string/jumbo v4, "InputManager"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Could not get keyboard layout with descriptor \'"

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1348
    const-string/jumbo v6, "\'."

    #@40
    .line 1347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1350
    :cond_1
    aget-object v4, v3, v7

    #@4d
    return-object v4
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    #@0
    .prologue
    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1041
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    #@7
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@d
    .line 1048
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v1

    #@11
    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    #@19
    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 10
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1057
    .local v2, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    #@6
    array-length v0, v2

    #@7
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 1058
    .local v3, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@c
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1059
    .local v5, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Lcom/android/server/input/InputManagerService$7;

    #@11
    move-object v1, p0

    #@12
    move-object v4, p1

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@19
    .line 1090
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v6

    #@1d
    .line 1091
    .local v6, "enabledLayoutSize":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v9

    #@21
    .line 1092
    .local v9, "potentialLayoutSize":I
    add-int v0, v6, v9

    #@23
    new-array v8, v0, [Landroid/hardware/input/KeyboardLayout;

    #@25
    .line 1093
    .local v8, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@28
    .line 1094
    const/4 v7, 0x0

    #@29
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    #@2b
    .line 1095
    add-int v1, v6, v7

    #@2d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    #@33
    aput-object v0, v8, v1

    #@35
    .line 1094
    add-int/lit8 v7, v7, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1097
    :cond_0
    return-object v8
.end method

.method public getScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    #@0
    .prologue
    .line 450
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSwitchState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    #@0
    .prologue
    .line 463
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    #@0
    .prologue
    .line 863
    if-nez p1, :cond_0

    #@2
    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@d
    monitor-enter v1

    #@e
    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@10
    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 867
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    #@0
    .prologue
    .line 480
    if-nez p3, :cond_0

    #@2
    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "keyCodes must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 483
    :cond_0
    if-eqz p4, :cond_1

    #@d
    array-length v0, p4

    #@e
    array-length v1, p3

    #@f
    if-ge v0, v1, :cond_2

    #@11
    .line 484
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 488
    :cond_2
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@1c
    move v2, p1

    #@1d
    move v3, p2

    #@1e
    move-object v4, p3

    #@1f
    move-object v5, p4

    #@20
    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isInTabletMode()I
    .locals 3

    #@0
    .prologue
    .line 903
    const-string/jumbo v0, "android.permission.TABLET_MODE"

    #@3
    .line 904
    const-string/jumbo v1, "isInTabletMode()"

    #@6
    .line 903
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 905
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Requires TABLET_MODE permission"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 907
    :cond_0
    const/4 v0, -0x1

    #@16
    const/16 v1, -0x100

    #@18
    const/4 v2, 0x1

    #@19
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public monitor()V
    .locals 2

    #@0
    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 1789
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@6
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    #@9
    .line 1787
    return-void
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 7
    .param p1, "inputChannelName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 497
    if-nez p1, :cond_0

    #@5
    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "inputChannelName must not be null."

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 501
    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@11
    move-result-object v0

    #@12
    .line 502
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@14
    aget-object v1, v0, v4

    #@16
    invoke-static {v2, v3, v1, v6, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    #@19
    .line 503
    aget-object v1, v0, v4

    #@1b
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@1e
    .line 504
    aget-object v1, v0, v5

    #@20
    return-object v1
.end method

.method public onShellCommand(Lcom/android/server/input/InputManagerService$Shell;Ljava/lang/String;)I
    .locals 7
    .param p1, "shell"    # Lcom/android/server/input/InputManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1747
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1748
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->onHelp()V

    #@9
    .line 1749
    const/4 v5, 0x1

    #@a
    return v5

    #@b
    .line 1751
    :cond_0
    const-string/jumbo v5, "setlayout"

    #@e
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 1752
    const-string/jumbo v5, "android.permission.SET_KEYBOARD_LAYOUT"

    #@17
    .line 1753
    const-string/jumbo v6, "onShellCommand()"

    #@1a
    .line 1752
    invoke-direct {p0, v5, v6}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_1

    #@20
    .line 1754
    new-instance v5, Ljava/lang/SecurityException;

    #@22
    const-string/jumbo v6, "Requires SET_KEYBOARD_LAYOUT permission"

    #@25
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 1756
    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@2b
    .line 1757
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36
    move-result v6

    #@37
    .line 1756
    invoke-direct {v1, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;I)V

    #@3a
    .line 1758
    .local v1, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 1759
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v4

    #@4a
    .line 1760
    .local v4, "vid":I
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v3

    #@56
    .line 1761
    .local v3, "pid":I
    new-instance v2, Landroid/hardware/input/InputDeviceIdentifier;

    #@58
    invoke-direct {v2, v0, v4, v3}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    #@5b
    .line 1762
    .local v2, "id":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-direct {p0, v2, v1, v5}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    #@62
    .line 1764
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .end local v2    # "id":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "pid":I
    .end local v4    # "vid":I
    :cond_2
    const/4 v5, 0x0

    #@63
    return v5
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 1743
    new-instance v0, Lcom/android/server/input/InputManagerService$Shell;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$Shell;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$Shell;)V

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move-object v4, p3

    #@a
    move-object v5, p4

    #@b
    move-object v6, p5

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@f
    .line 1742
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    #@0
    .prologue
    .line 1683
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1684
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@5
    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    #@7
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 1687
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    #@e
    .line 1682
    return-void

    #@f
    .line 1683
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 515
    if-nez p1, :cond_0

    #@2
    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 519
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    #@11
    .line 514
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    #@0
    .prologue
    .line 666
    if-nez p1, :cond_0

    #@2
    .line 667
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "listener must not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 670
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 671
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@11
    move-result v1

    #@12
    .line 672
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 673
    new-instance v4, Ljava/lang/SecurityException;

    #@1c
    const-string/jumbo v6, "The calling process has already registered an InputDevicesChangedListener."

    #@1f
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 670
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 678
    .restart local v1    # "callingPid":I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@28
    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 680
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v0

    #@2f
    .line 681
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    #@30
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    .line 687
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    monitor-exit v5

    #@39
    .line 665
    return-void

    #@3a
    .line 682
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    #@3b
    .line 684
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    #@3d
    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    #@0
    .prologue
    .line 912
    const-string/jumbo v4, "android.permission.TABLET_MODE"

    #@3
    .line 913
    const-string/jumbo v5, "registerTabletModeChangedListener()"

    #@6
    .line 912
    invoke-direct {p0, v4, v5}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 914
    new-instance v4, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v5, "Requires TABLET_MODE_LISTENER permission"

    #@11
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 916
    :cond_0
    if-nez p1, :cond_1

    #@17
    .line 917
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "listener must not be null"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 920
    :cond_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    #@22
    monitor-enter v5

    #@23
    .line 921
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@26
    move-result v1

    #@27
    .line 922
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 923
    new-instance v4, Ljava/lang/IllegalStateException;

    #@31
    const-string/jumbo v6, "The calling process has already registered a TabletModeChangedListener."

    #@34
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 920
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 927
    .restart local v1    # "callingPid":I
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    #@3d
    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 929
    .local v3, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    #@43
    move-result-object v0

    #@44
    .line 930
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    #@45
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 934
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    monitor-exit v5

    #@4e
    .line 911
    return-void

    #@4f
    .line 931
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    #@50
    .line 932
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    #@52
    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@55
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1430
    const-string/jumbo v3, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1431
    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    #@6
    .line 1430
    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 1432
    new-instance v3, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v4, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 1434
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1435
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 1438
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1439
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v4

    #@27
    .line 1441
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1442
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_2

    #@2f
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_5

    #@39
    .line 1445
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3b
    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    .line 1446
    .local v2, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_3

    #@49
    .line 1448
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@4b
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v3, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@52
    move-result v3

    #@53
    or-int/2addr v2, v3

    #@54
    .line 1451
    :cond_3
    if-eqz v2, :cond_4

    #@56
    .line 1452
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@58
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 1451
    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_6

    #@62
    .line 1456
    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@64
    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@67
    monitor-exit v4

    #@68
    .line 1429
    return-void

    #@69
    .line 1443
    .end local v2    # "removed":Z
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6b
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v3, v5}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    goto :goto_0

    #@74
    .line 1453
    .restart local v2    # "removed":Z
    :cond_6
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@76
    const/4 v5, 0x3

    #@77
    invoke-virtual {v3, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    goto :goto_1

    #@7b
    .line 1455
    .end local v1    # "oldLayout":Ljava/lang/String;
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    #@7c
    .line 1456
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@7e
    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@81
    .line 1455
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@82
    .line 1439
    :catchall_1
    move-exception v3

    #@83
    monitor-exit v4

    #@84
    throw v3
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1287
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1288
    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    #@6
    .line 1287
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1289
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1291
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1295
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1296
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v2

    #@27
    .line 1298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_2

    #@2f
    .line 1302
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@31
    const/4 v3, 0x3

    #@32
    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1305
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@37
    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    monitor-exit v2

    #@3b
    .line 1286
    return-void

    #@3c
    .line 1304
    :catchall_0
    move-exception v1

    #@3d
    .line 1305
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3f
    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@42
    .line 1304
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    .line 1296
    :catchall_1
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 2
    .param p1, "icon"    # Landroid/view/PointerIcon;

    #@0
    .prologue
    .line 1708
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    #@5
    .line 1707
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 2
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    #@0
    .prologue
    .line 1515
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    #@5
    .line 1514
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    #@0
    .prologue
    .line 1519
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    #@5
    .line 1518
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    #@0
    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 548
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 549
    return-void

    #@9
    .line 552
    :cond_0
    if-eqz v0, :cond_1

    #@b
    .line 553
    const/4 v2, 0x0

    #@c
    :try_start_1
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@e
    .line 554
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    #@10
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    #@13
    .line 555
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 557
    :try_start_2
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 563
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    #@1b
    .line 564
    :try_start_3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@1d
    .line 565
    new-instance v2, Lcom/android/server/input/InputManagerService$InputFilterHost;

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-direct {v2, p0, v4}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost;)V

    #@23
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    .line 567
    :try_start_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    #@27
    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2a
    .line 573
    :cond_2
    :goto_1
    :try_start_5
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2c
    if-eqz p1, :cond_3

    #@2e
    const/4 v2, 0x1

    #@2f
    :goto_2
    invoke-static {v4, v5, v2}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@32
    monitor-exit v3

    #@33
    .line 545
    return-void

    #@34
    .line 558
    :catch_0
    move-exception v1

    #@35
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    #@36
    .line 573
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x0

    #@37
    goto :goto_2

    #@38
    .line 546
    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 568
    .restart local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catch_1
    move-exception v1

    #@3c
    .restart local v1    # "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .locals 2
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 1511
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    #@5
    .line 1510
    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1357
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1358
    const-string/jumbo v2, "setKeyboardLayoutForInputDevice()"

    #@6
    .line 1357
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1359
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1361
    :cond_0
    if-nez p4, :cond_1

    #@17
    .line 1362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1364
    :cond_1
    if-nez p2, :cond_2

    #@22
    .line 1365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v2, "imeInfo must not be null"

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 1367
    :cond_2
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@2d
    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@30
    .line 1368
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    #@33
    .line 1356
    return-void
.end method

.method public setPointerIconType(I)V
    .locals 2
    .param p1, "iconId"    # I

    #@0
    .prologue
    .line 1702
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    #@5
    .line 1701
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1523
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    #@5
    .line 1522
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    .line 875
    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    #@3
    .line 876
    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    #@6
    .line 875
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 877
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Requires SET_INPUT_CALIBRATION permission"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 879
    :cond_0
    if-nez p1, :cond_1

    #@17
    .line 880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 882
    :cond_1
    if-nez p3, :cond_2

    #@22
    .line 883
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "calibration must not be null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 885
    :cond_2
    if-ltz p2, :cond_3

    #@2d
    const/4 v0, 0x3

    #@2e
    if-le p2, v0, :cond_4

    #@30
    .line 886
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v1, "surfaceRotation value out of bounds"

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 889
    :cond_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3b
    monitor-enter v1

    #@3c
    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 893
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@46
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 896
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@4b
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4e
    monitor-exit v1

    #@4f
    .line 874
    return-void

    #@50
    .line 895
    :catchall_0
    move-exception v0

    #@51
    .line 896
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@53
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@56
    .line 895
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@57
    .line 889
    :catchall_1
    move-exception v0

    #@58
    monitor-exit v1

    #@59
    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@0
    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    .line 320
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@2
    .line 324
    return-void
.end method

.method public start()V
    .locals 5

    #@0
    .prologue
    .line 329
    const-string/jumbo v0, "InputManager"

    #@3
    const-string/jumbo v1, "Starting input manager"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 330
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@b
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    #@e
    .line 333
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@15
    .line 335
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    #@18
    .line 336
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    #@1b
    .line 337
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    #@1e
    .line 339
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@20
    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    #@22
    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@25
    .line 346
    new-instance v2, Landroid/content/IntentFilter;

    #@27
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@2a
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@2f
    const/4 v4, 0x0

    #@30
    .line 339
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@33
    .line 348
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    #@36
    .line 349
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    #@39
    .line 350
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    #@3c
    .line 328
    return-void
.end method

.method public systemRunning()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 358
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    .line 359
    const-string/jumbo v2, "notification"

    #@6
    .line 358
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/app/NotificationManager;

    #@c
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@e
    .line 360
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    #@11
    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    #@13
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@16
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@19
    .line 363
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@1c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 364
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 365
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    #@28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 366
    const-string/jumbo v1, "package"

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@31
    .line 367
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@33
    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    #@35
    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@38
    .line 372
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@3a
    .line 367
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@3d
    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    #@3f
    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    #@42
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@45
    .line 375
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@47
    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    #@49
    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@4c
    .line 380
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@4e
    .line 375
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@51
    .line 382
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@53
    const/4 v2, 0x5

    #@54
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    #@57
    .line 383
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@59
    const/4 v2, 0x4

    #@5a
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    #@5d
    .line 385
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@5f
    if-eqz v1, :cond_0

    #@61
    .line 386
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@63
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    #@66
    .line 354
    :cond_0
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1540
    if-nez p1, :cond_0

    #@2
    .line 1541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "fromChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1543
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 1544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "toChannel must not be null."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1546
    :cond_1
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@18
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    #@0
    .prologue
    .line 1551
    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    #@3
    .line 1552
    const-string/jumbo v1, "tryPointerSpeed()"

    #@6
    .line 1551
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1553
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Requires SET_POINTER_SPEED permission"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1556
    :cond_0
    const/4 v0, -0x7

    #@16
    if-lt p1, v0, :cond_1

    #@18
    const/4 v0, 0x7

    #@19
    if-le p1, v0, :cond_2

    #@1b
    .line 1557
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "speed out of range"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1560
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    #@27
    .line 1550
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 527
    if-nez p1, :cond_0

    #@2
    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 531
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@d
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    #@10
    .line 526
    return-void
.end method

.method public updateAccessibilityLargePointerFromSettings()V
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1613
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    const-string/jumbo v4, "accessibility_large_pointer_icon"

    #@b
    .line 1614
    const/4 v5, -0x2

    #@c
    .line 1612
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v0

    #@10
    .line 1615
    .local v0, "accessibilityConfig":I
    if-ne v0, v1, :cond_0

    #@12
    :goto_0
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    #@15
    .line 1616
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@17
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    #@1a
    .line 1611
    return-void

    #@1b
    :cond_0
    move v1, v2

    #@1c
    .line 1615
    goto :goto_0
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    #@0
    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    #@3
    move-result v0

    #@4
    .line 1565
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    #@7
    .line 1563
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1596
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    #@4
    move-result v0

    #@5
    .line 1597
    .local v0, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    #@d
    .line 1595
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1643
    array-length v0, p2

    #@1
    if-lt p3, v0, :cond_0

    #@3
    .line 1644
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1648
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    #@14
    .line 1650
    .local v7, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v7, :cond_1

    #@16
    .line 1651
    new-instance v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    #@18
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    #@1a
    add-int/lit8 v2, v0, 0x1

    #@1c
    iput v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    #@1e
    invoke-direct {v7, p0, p1, p4, v0}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1653
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v0, 0x0

    #@22
    :try_start_1
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 1658
    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@27
    invoke-virtual {v0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    :cond_1
    monitor-exit v1

    #@2b
    .line 1662
    monitor-enter v7

    #@2c
    .line 1663
    const/4 v0, 0x1

    #@2d
    :try_start_3
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    #@2f
    .line 1664
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@31
    iget v5, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    #@33
    move v2, p1

    #@34
    move-object v3, p2

    #@35
    move v4, p3

    #@36
    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@39
    monitor-exit v7

    #@3a
    .line 1642
    return-void

    #@3b
    .line 1654
    :catch_0
    move-exception v6

    #@3c
    .line 1656
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    #@3e
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    .line 1648
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 1662
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v0

    #@46
    monitor-exit v7

    #@47
    throw v0
.end method
