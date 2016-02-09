.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$LocalService;
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

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

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

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

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
.method static synthetic -get0(Lcom/android/server/input/InputManagerService;)J
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

.method static synthetic -wrap1(JLandroid/view/InputEvent;IIIIII)I
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

.method static synthetic -wrap2(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/input/InputManagerService;II)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(JZ)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "interactive"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p1, "pid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 0
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 261
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    #@3
    .line 128
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    #@5
    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@a
    .line 131
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@11
    .line 133
    const/4 v0, 0x0

    #@12
    new-array v0, v0, [Landroid/view/InputDevice;

    #@14
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@16
    .line 135
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    .line 134
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@1d
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 137
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@24
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@2b
    .line 146
    new-instance v0, Ljava/lang/Object;

    #@2d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@32
    .line 148
    new-instance v0, Ljava/util/HashMap;

    #@34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@37
    .line 147
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@39
    .line 152
    new-instance v0, Ljava/lang/Object;

    #@3b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@40
    .line 262
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@42
    .line 263
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@44
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    #@4f
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@51
    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@54
    move-result-object v0

    #@55
    const v1, 0x1120071

    #@58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5b
    move-result v0

    #@5c
    .line 265
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@5e
    .line 267
    const-string/jumbo v0, "InputManager"

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 268
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@6f
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 269
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@7c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@7e
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@85
    move-result-object v1

    #@86
    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    #@89
    move-result-wide v0

    #@8a
    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@8c
    .line 271
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    #@8e
    new-instance v1, Lcom/android/server/input/InputManagerService$LocalService;

    #@90
    const/4 v2, 0x0

    #@91
    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V

    #@94
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@97
    .line 261
    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 4
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    #@0
    .prologue
    .line 1334
    monitor-enter p1

    #@1
    .line 1335
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1336
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@7
    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    #@9
    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    #@b
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    #@e
    .line 1337
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p1

    #@12
    .line 1333
    return-void

    #@13
    .line 1334
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
    .line 1361
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
    .line 1362
    return v4

    #@d
    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 1366
    return v4

    #@16
    .line 1368
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
    .line 1369
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@30
    move-result v2

    #@31
    .line 1368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 1370
    const-string/jumbo v2, ", uid="

    #@38
    .line 1368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3f
    move-result v2

    #@40
    .line 1368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 1371
    const-string/jumbo v2, " requires "

    #@47
    .line 1368
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
    .line 1372
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "InputManager"

    #@56
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 1373
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
    .line 1477
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
    .line 844
    array-length v2, p0

    #@1
    .line 845
    .local v2, "numDevices":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@4
    .line 846
    aget-object v1, p0, v0

    #@6
    .line 847
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
    .line 848
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 851
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    #@16
    return v3
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 17
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    .line 651
    const/4 v11, 0x0

    #@1
    .line 652
    .local v11, "numFullKeyboardsAdded":I
    move-object/from16 v0, p0

    #@3
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 653
    move-object/from16 v0, p0

    #@a
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 656
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@13
    monitor-enter v15

    #@14
    .line 657
    :try_start_0
    move-object/from16 v0, p0

    #@16
    iget-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-nez v14, :cond_0

    #@1a
    monitor-exit v15

    #@1b
    .line 658
    return-void

    #@1c
    .line 660
    :cond_0
    const/4 v14, 0x0

    #@1d
    :try_start_1
    move-object/from16 v0, p0

    #@1f
    iput-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@21
    .line 662
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@28
    move-result v13

    #@29
    .line 663
    .local v13, "numListeners":I
    const/4 v2, 0x0

    #@2a
    .local v2, "i":I
    :goto_0
    if-ge v2, v13, :cond_1

    #@2c
    .line 664
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@30
    move-object/from16 v16, v0

    #@32
    .line 665
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v14

    #@3a
    check-cast v14, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@3c
    .line 664
    move-object/from16 v0, v16

    #@3e
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 663
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 668
    :cond_1
    move-object/from16 v0, p0

    #@46
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@48
    array-length v9, v14

    #@49
    .line 669
    .local v9, "numDevices":I
    mul-int/lit8 v14, v9, 0x2

    #@4b
    new-array v1, v14, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 670
    .local v1, "deviceIdAndGeneration":[I
    const/4 v2, 0x0

    #@4e
    move v12, v11

    #@4f
    .end local v11    # "numFullKeyboardsAdded":I
    .local v12, "numFullKeyboardsAdded":I
    :goto_1
    if-ge v2, v9, :cond_4

    #@51
    .line 671
    :try_start_2
    move-object/from16 v0, p0

    #@53
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@55
    aget-object v3, v14, v2

    #@57
    .line 672
    .local v3, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v14, v2, 0x2

    #@59
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    #@5c
    move-result v16

    #@5d
    aput v16, v1, v14

    #@5f
    .line 673
    mul-int/lit8 v14, v2, 0x2

    #@61
    add-int/lit8 v14, v14, 0x1

    #@63
    invoke-virtual {v3}, Landroid/view/InputDevice;->getGeneration()I

    #@66
    move-result v16

    #@67
    aput v16, v1, v14

    #@69
    .line 675
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    #@6c
    move-result v14

    #@6d
    if-nez v14, :cond_2

    #@6f
    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    #@72
    move-result v14

    #@73
    if-eqz v14, :cond_c

    #@75
    .line 677
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    #@78
    move-result-object v14

    #@79
    .line 676
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v14}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    #@7e
    move-result v14

    #@7f
    if-nez v14, :cond_3

    #@81
    .line 678
    move-object/from16 v0, p0

    #@83
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@85
    add-int/lit8 v11, v12, 0x1

    #@87
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    :try_start_3
    invoke-virtual {v14, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    .line 670
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@8c
    move v12, v11

    #@8d
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    goto :goto_1

    #@8e
    :cond_2
    move v11, v12

    #@8f
    .line 675
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_2

    #@90
    .line 680
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    #@92
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@94
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@97
    move v11, v12

    #@98
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_2

    #@99
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_4
    monitor-exit v15

    #@9a
    .line 687
    const/4 v2, 0x0

    #@9b
    :goto_3
    if-ge v2, v13, :cond_5

    #@9d
    .line 688
    move-object/from16 v0, p0

    #@9f
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@a1
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v14

    #@a5
    check-cast v14, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@a7
    invoke-virtual {v14, v1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    #@aa
    .line 687
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_3

    #@ad
    .line 656
    .end local v1    # "deviceIdAndGeneration":[I
    .end local v2    # "i":I
    .end local v9    # "numDevices":I
    .end local v12    # "numFullKeyboardsAdded":I
    .end local v13    # "numListeners":I
    .restart local v11    # "numFullKeyboardsAdded":I
    :catchall_0
    move-exception v14

    #@ae
    :goto_4
    monitor-exit v15

    #@af
    throw v14

    #@b0
    .line 691
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v1    # "deviceIdAndGeneration":[I
    .restart local v2    # "i":I
    .restart local v9    # "numDevices":I
    .restart local v12    # "numFullKeyboardsAdded":I
    .restart local v13    # "numListeners":I
    :cond_5
    move-object/from16 v0, p0

    #@b2
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@b7
    .line 694
    move-object/from16 v0, p0

    #@b9
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@bb
    if-eqz v14, :cond_9

    #@bd
    .line 695
    move-object/from16 v0, p0

    #@bf
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@c4
    move-result v10

    #@c5
    .line 696
    .local v10, "numFullKeyboards":I
    const/4 v6, 0x0

    #@c6
    .line 697
    .local v6, "missingLayoutForExternalKeyboard":Z
    const/4 v7, 0x0

    #@c7
    .line 698
    .local v7, "missingLayoutForExternalKeyboardAdded":Z
    const/4 v8, 0x0

    #@c8
    .line 699
    .local v8, "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    const/4 v4, 0x0

    #@c9
    .line 700
    .local v4, "keyboardMissingLayout":Landroid/view/InputDevice;
    move-object/from16 v0, p0

    #@cb
    iget-object v15, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@cd
    monitor-enter v15

    #@ce
    .line 701
    const/4 v2, 0x0

    #@cf
    .end local v4    # "keyboardMissingLayout":Landroid/view/InputDevice;
    :goto_5
    if-ge v2, v10, :cond_8

    #@d1
    .line 702
    :try_start_5
    move-object/from16 v0, p0

    #@d3
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@d5
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d8
    move-result-object v3

    #@d9
    check-cast v3, Landroid/view/InputDevice;

    #@db
    .line 704
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@de
    move-result-object v14

    #@df
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v14}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@e4
    move-result-object v5

    #@e5
    .line 705
    .local v5, "layout":Ljava/lang/String;
    if-nez v5, :cond_6

    #@e7
    .line 706
    const/4 v6, 0x1

    #@e8
    .line 707
    if-ge v2, v12, :cond_6

    #@ea
    .line 708
    const/4 v7, 0x1

    #@eb
    .line 709
    if-nez v4, :cond_7

    #@ed
    .line 710
    move-object v4, v3

    #@ee
    .line 701
    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    #@f0
    goto :goto_5

    #@f1
    .line 712
    :cond_7
    const/4 v8, 0x1

    #@f2
    goto :goto_6

    #@f3
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v5    # "layout":Ljava/lang/String;
    :cond_8
    monitor-exit v15

    #@f4
    .line 718
    if-eqz v6, :cond_b

    #@f6
    .line 719
    if-eqz v7, :cond_9

    #@f8
    .line 720
    if-eqz v8, :cond_a

    #@fa
    .line 724
    const/4 v14, 0x0

    #@fb
    move-object/from16 v0, p0

    #@fd
    invoke-direct {v0, v14}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    #@100
    .line 733
    .end local v6    # "missingLayoutForExternalKeyboard":Z
    .end local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v10    # "numFullKeyboards":I
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    #@102
    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    #@104
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@107
    .line 649
    return-void

    #@108
    .line 700
    .restart local v6    # "missingLayoutForExternalKeyboard":Z
    .restart local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .restart local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .restart local v10    # "numFullKeyboards":I
    :catchall_1
    move-exception v14

    #@109
    monitor-exit v15

    #@10a
    throw v14

    #@10b
    .line 726
    :cond_a
    move-object/from16 v0, p0

    #@10d
    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    #@110
    goto :goto_7

    #@111
    .line 729
    :cond_b
    move-object/from16 v0, p0

    #@113
    iget-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@115
    if-eqz v14, :cond_9

    #@117
    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    #@11a
    goto :goto_7

    #@11b
    .line 656
    .end local v6    # "missingLayoutForExternalKeyboard":Z
    .end local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v10    # "numFullKeyboards":I
    :catchall_2
    move-exception v14

    #@11c
    move v11, v12

    #@11d
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_4

    #@11e
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_c
    move v11, v12

    #@11f
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto/16 :goto_2
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1598
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1600
    return-object v1

    #@8
    .line 1602
    :cond_0
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1545
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
    .line 1489
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1492
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    #@6
    .line 1494
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
    .line 1495
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    #@13
    .line 1497
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
    .line 1498
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v8

    #@1c
    .line 1499
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1f
    .line 1500
    const-string/jumbo v9, "devices"

    #@22
    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@25
    .line 1503
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@28
    .line 1504
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
    .line 1517
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
    .line 1520
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
    .line 1507
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
    .line 1508
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@52
    .line 1509
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@55
    goto :goto_0

    #@56
    .line 1512
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    #@57
    .local v3, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    #@58
    .line 1517
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
    .line 1514
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v5

    #@63
    .line 1515
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
    .line 1517
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
    .line 1516
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    #@91
    .line 1517
    :goto_5
    if-eqz v1, :cond_4

    #@93
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@96
    .line 1516
    :cond_4
    :goto_6
    throw v9

    #@97
    .line 1517
    :catch_5
    move-exception v4

    #@98
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    #@99
    .line 1516
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
    .line 1512
    .local v1, "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v3

    #@9d
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@9e
    .line 1514
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
    .line 1540
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
    .line 1535
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
    .line 1530
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
    .line 1525
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
    .line 1565
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1566
    return-object v5

    #@6
    .line 1569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1570
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    #@c
    .line 1571
    return-object v5

    #@d
    .line 1574
    :cond_1
    const/4 v2, 0x2

    #@e
    new-array v1, v2, [Ljava/lang/String;

    #@10
    .line 1575
    .local v1, "result":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    #@12
    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    #@15
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@18
    .line 1588
    const/4 v2, 0x0

    #@19
    aget-object v2, v1, v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 1589
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
    .line 1590
    const-string/jumbo v4, "\'."

    #@33
    .line 1589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1591
    return-object v5

    #@3f
    .line 1593
    :cond_2
    return-object v1
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 996
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 997
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "identifier and descriptor must not be null"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1000
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
    .line 1001
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 1003
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 1004
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
    .line 1005
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
    .line 1006
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    return-object v1
.end method

.method private getLongPressTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1550
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
    .line 1560
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
    .line 1555
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
    .line 1248
    const/4 v1, 0x0

    #@1
    .line 1250
    .local v1, "speed":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 1251
    const-string/jumbo v3, "pointer_speed"

    #@a
    const/4 v4, -0x2

    #@b
    .line 1250
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    .line 1254
    :goto_0
    return v1

    #@10
    .line 1252
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
    .line 1274
    move v0, p1

    #@1
    .line 1276
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 1277
    const-string/jumbo v3, "show_touches"

    #@a
    const/4 v4, -0x2

    #@b
    .line 1276
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v0

    #@f
    .line 1280
    :goto_0
    return v0

    #@10
    .line 1278
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
    .line 1483
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1484
    const v1, 0x10e0065

    #@9
    .line 1483
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    #@4
    move-result-object v1

    #@5
    .line 1138
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_2

    #@7
    .line 1142
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@a
    move-result-object v5

    #@b
    invoke-direct {p0, v5}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1143
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@11
    monitor-enter v6

    #@12
    .line 1145
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@14
    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    .line 1146
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@1a
    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v4

    #@1e
    .line 1149
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@20
    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    monitor-exit v6

    #@24
    .line 1153
    if-eqz v0, :cond_2

    #@26
    .line 1154
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 1155
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    #@2c
    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    #@2f
    .line 1156
    iput-object v7, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    #@31
    .line 1158
    :cond_0
    if-eqz v4, :cond_1

    #@33
    .line 1159
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    #@36
    move-result-object v3

    #@37
    .line 1160
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_1

    #@39
    .line 1162
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3b
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    const/4 v7, 0x0

    #@40
    .line 1161
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@43
    move-result-object v5

    #@44
    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    #@46
    .line 1163
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    #@48
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    #@4b
    .line 1167
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    #@4e
    .line 1136
    .end local v0    # "changed":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_2
    return-void

    #@4f
    .line 1148
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@50
    .line 1149
    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@52
    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@55
    .line 1148
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    .line 1143
    :catchall_1
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    #@0
    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 812
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@7
    .line 813
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@9
    .line 815
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b
    .line 813
    const/4 v2, 0x0

    #@c
    .line 814
    const v3, 0x10403e5

    #@f
    .line 813
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@12
    .line 810
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
    .line 534
    if-nez p1, :cond_0

    #@2
    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "event must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 537
    :cond_0
    if-eqz p3, :cond_1

    #@d
    .line 538
    const/4 v0, 0x2

    #@e
    if-eq p3, v0, :cond_1

    #@10
    .line 539
    const/4 v0, 0x1

    #@11
    if-eq p3, v0, :cond_1

    #@13
    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "mode is invalid"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 543
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v4

    #@20
    .line 544
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v5

    #@24
    .line 545
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@27
    move-result-wide v10

    #@28
    .line 548
    .local v10, "ident":J
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2a
    .line 549
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
    .line 548
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v9

    #@35
    .line 551
    .local v9, "result":I
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 553
    packed-switch v9, :pswitch_data_0

    #@3b
    .line 565
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
    .line 566
    const/4 v0, 0x0

    #@5d
    return v0

    #@5e
    .line 550
    .end local v9    # "result":I
    :catchall_0
    move-exception v0

    #@5f
    .line 551
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@62
    .line 550
    throw v0

    #@63
    .line 555
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
    .line 556
    new-instance v0, Ljava/lang/SecurityException;

    #@86
    .line 557
    const-string/jumbo v1, "Injecting to another application requires INJECT_EVENTS permission"

    #@89
    .line 556
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v0

    #@8d
    .line 559
    :pswitch_2
    const/4 v0, 0x1

    #@8e
    return v0

    #@8f
    .line 561
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
    .line 562
    const/4 v0, 0x0

    #@b1
    return v0

    #@b2
    .line 553
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
    .line 1466
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
    .line 1454
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
    .line 1459
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    #@5
    move-result v0

    #@6
    return v0
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

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeStart(J)V
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
    .line 1432
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
    .line 1385
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    #@5
    .line 1384
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    #@5
    .line 1425
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    #@0
    .prologue
    .line 1390
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1391
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1392
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    #@a
    .line 1393
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@c
    .line 1394
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@e
    .line 1393
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 1397
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1389
    return-void

    #@1a
    .line 1390
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private notifySwitch(JII)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    #@0
    .prologue
    .line 1408
    and-int/lit8 v2, p4, 0x1

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1409
    and-int/lit8 v2, p3, 0x1

    #@6
    if-nez v2, :cond_3

    #@8
    const/4 v1, 0x1

    #@9
    .line 1410
    .local v1, "lidOpen":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@b
    invoke-interface {v2, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    #@e
    .line 1413
    .end local v1    # "lidOpen":Z
    :cond_0
    and-int/lit16 v2, p4, 0x200

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 1414
    and-int/lit16 v2, p3, 0x200

    #@14
    if-eqz v2, :cond_4

    #@16
    const/4 v0, 0x1

    #@17
    .line 1415
    .local v0, "lensCovered":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@19
    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    #@1c
    .line 1418
    .end local v0    # "lensCovered":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    #@1e
    if-eqz v2, :cond_2

    #@20
    and-int/lit16 v2, p4, 0xd4

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 1419
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@26
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    #@29
    .line 1402
    :cond_2
    return-void

    #@2a
    .line 1409
    :cond_3
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "lidOpen":Z
    goto :goto_0

    #@2c
    .line 1414
    .end local v1    # "lidOpen":Z
    :cond_4
    const/4 v0, 0x0

    #@2d
    .restart local v0    # "lensCovered":Z
    goto :goto_1
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 642
    return-void

    #@a
    .line 643
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1238
    const-string/jumbo v1, "pointer_speed"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 1239
    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    #@f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@11
    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    #@14
    .line 1238
    const/4 v3, 0x1

    #@15
    .line 1244
    const/4 v4, -0x1

    #@16
    .line 1237
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 1236
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1264
    const-string/jumbo v1, "show_touches"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 1265
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    #@f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@11
    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    #@14
    .line 1264
    const/4 v3, 0x1

    #@15
    .line 1270
    const/4 v4, -0x1

    #@16
    .line 1263
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 1262
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 2

    #@0
    .prologue
    .line 352
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    #@5
    .line 348
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    #@0
    .prologue
    .line 345
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    #@5
    .line 341
    return-void
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .locals 17
    .param p1, "external"    # Z
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 369
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@4
    .line 370
    move-object/from16 v0, p2

    #@6
    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@8
    move-object/from16 v0, p2

    #@a
    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@c
    .line 371
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
    .line 372
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
    .line 373
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
    .line 374
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
    .line 375
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
    .line 369
    invoke-static/range {v2 .. v16}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    #@4b
    .line 368
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
    .line 357
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 358
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@9
    .line 361
    :cond_0
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 362
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@10
    .line 356
    :cond_1
    :goto_0
    return-void

    #@11
    .line 363
    :cond_2
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 364
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    #@18
    goto :goto_0
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    #@0
    .prologue
    .line 1231
    const/4 v0, -0x7

    #@1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    .line 1232
    const/4 v1, 0x7

    #@6
    .line 1231
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result p1

    #@a
    .line 1233
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@c
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    #@f
    .line 1230
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/view/InputDevice;

    #@0
    .prologue
    const v9, 0x10403e5

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 779
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@7
    if-nez v0, :cond_1

    #@9
    .line 780
    new-instance v2, Landroid/content/Intent;

    #@b
    const-string/jumbo v0, "android.settings.INPUT_METHOD_SETTINGS"

    #@e
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 781
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@13
    .line 782
    const-string/jumbo v0, "input_device_identifier"

    #@16
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1d
    .line 784
    :cond_0
    const/high16 v0, 0x14200000

    #@1f
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    .line 787
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@24
    .line 788
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@26
    move v3, v1

    #@27
    .line 787
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@2a
    move-result-object v6

    #@2b
    .line 790
    .local v6, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v8

    #@31
    .line 791
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    #@33
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@35
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@38
    .line 792
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 791
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v0

    #@40
    .line 795
    const v1, 0x10403e6

    #@43
    .line 794
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 791
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@4e
    move-result-object v0

    #@4f
    .line 797
    const v1, 0x108041e

    #@52
    .line 791
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@55
    move-result-object v0

    #@56
    .line 798
    const/4 v1, -0x1

    #@57
    .line 791
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v0

    #@5b
    .line 799
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@5d
    .line 800
    const v3, 0x1060059

    #@60
    .line 799
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@63
    move-result v1

    #@64
    .line 791
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@6b
    move-result-object v7

    #@6c
    .line 802
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@6e
    .line 804
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@70
    .line 802
    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@73
    .line 805
    const/4 v0, 0x1

    #@74
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    #@76
    .line 778
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
    .line 822
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 823
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$4;

    #@7
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@d
    .line 830
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@f
    monitor-enter v2

    #@10
    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 834
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@17
    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    monitor-exit v2

    #@1b
    .line 839
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    #@1e
    .line 820
    return-void

    #@1f
    .line 833
    :catchall_0
    move-exception v1

    #@20
    .line 834
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@22
    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@25
    .line 833
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 830
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
    .line 889
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v1

    #@6
    .line 890
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    #@8
    const-string/jumbo v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    #@b
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 892
    .local v6, "intent":Landroid/content/Intent;
    const/16 v0, 0x80

    #@10
    .line 891
    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v8

    #@18
    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v7

    #@22
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@24
    .line 893
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@26
    .line 894
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v4, v7, Landroid/content/pm/ResolveInfo;->priority:I

    #@28
    .line 895
    .local v4, "priority":I
    const/4 v3, 0x0

    #@29
    move-object v0, p0

    #@2a
    move-object v5, p1

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@2e
    goto :goto_0

    #@2f
    .line 888
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
    .line 901
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    #@3
    move-result-object v6

    #@4
    .line 902
    .local v6, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v6, :cond_0

    #@6
    .line 903
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 906
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
    .line 907
    const/16 v3, 0x80

    #@17
    .line 905
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@1a
    move-result-object v2

    #@1b
    .line 908
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    #@1d
    const/4 v4, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-object v5, p2

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 900
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 909
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    #@25
    .local v7, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 19
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    #@0
    .prologue
    .line 916
    move-object/from16 v0, p2

    #@2
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@4
    .line 917
    .local v13, "metaData":Landroid/os/Bundle;
    if-nez v13, :cond_0

    #@6
    .line 918
    return-void

    #@7
    .line 921
    :cond_0
    const-string/jumbo v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    #@a
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@d
    move-result v10

    #@e
    .line 922
    .local v10, "configResId":I
    if-nez v10, :cond_1

    #@10
    .line 923
    const-string/jumbo v2, "InputManager"

    #@13
    new-instance v17, Ljava/lang/StringBuilder;

    #@15
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v18, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    #@1b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v17

    #@1f
    .line 924
    move-object/from16 v0, p2

    #@21
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@23
    move-object/from16 v18, v0

    #@25
    .line 923
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v17

    #@29
    .line 924
    const-string/jumbo v18, "/"

    #@2c
    .line 923
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v17

    #@30
    .line 924
    move-object/from16 v0, p2

    #@32
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@34
    move-object/from16 v18, v0

    #@36
    .line 923
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v17

    #@3a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v17

    #@3e
    move-object/from16 v0, v17

    #@40
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 925
    return-void

    #@44
    .line 928
    :cond_1
    move-object/from16 v0, p2

    #@46
    move-object/from16 v1, p1

    #@48
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@4b
    move-result-object v16

    #@4c
    .line 929
    .local v16, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v16, :cond_2

    #@4e
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    .line 931
    .local v6, "collection":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    #@54
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@56
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@58
    and-int/lit8 v2, v2, 0x1

    #@5a
    if-eqz v2, :cond_3

    #@5c
    .line 932
    move/from16 v8, p4

    #@5e
    .line 938
    .local v8, "priority":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    #@60
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@62
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@67
    move-result-object v3

    #@68
    .line 939
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    move-result-object v15

    #@6c
    .line 941
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v2, "keyboard-layouts"

    #@6f
    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@72
    .line 944
    :goto_2
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@75
    .line 945
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    move-result-object v11

    #@79
    .line 946
    .local v11, "element":Ljava/lang/String;
    if-nez v11, :cond_4

    #@7b
    .line 983
    :try_start_2
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@7e
    .line 915
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v11    # "element":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_3
    return-void

    #@7f
    .line 929
    .end local v6    # "collection":Ljava/lang/String;
    .end local v8    # "priority":I
    :cond_2
    const-string/jumbo v6, ""

    #@82
    .restart local v6    # "collection":Ljava/lang/String;
    goto :goto_0

    #@83
    .line 934
    :cond_3
    const/4 v8, 0x0

    #@84
    .restart local v8    # "priority":I
    goto :goto_1

    #@85
    .line 949
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_3
    const-string/jumbo v2, "keyboard-layout"

    #@88
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_9

    #@8e
    .line 951
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    #@90
    .line 950
    invoke-virtual {v3, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    move-result-object v9

    #@94
    .line 954
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    #@95
    .line 953
    :try_start_4
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@98
    move-result-object v14

    #@99
    .line 956
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x0

    #@9a
    .line 955
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    .line 958
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    #@9f
    .line 959
    const/16 v17, 0x0

    #@a1
    .line 957
    move/from16 v0, v17

    #@a3
    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a6
    move-result v7

    #@a7
    .line 960
    .local v7, "keyboardLayoutResId":I
    if-eqz v14, :cond_5

    #@a9
    if-nez v5, :cond_7

    #@ab
    .line 961
    :cond_5
    const-string/jumbo v2, "InputManager"

    #@ae
    new-instance v17, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v18, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    #@b6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v17

    #@ba
    .line 964
    move-object/from16 v0, p2

    #@bc
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@be
    move-object/from16 v18, v0

    #@c0
    .line 961
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v17

    #@c4
    .line 964
    const-string/jumbo v18, "/"

    #@c7
    .line 961
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v17

    #@cb
    .line 964
    move-object/from16 v0, p2

    #@cd
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@cf
    move-object/from16 v18, v0

    #@d1
    .line 961
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v17

    #@d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v17

    #@d9
    move-object/from16 v0, v17

    #@db
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@de
    .line 974
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e1
    goto :goto_2

    #@e2
    .line 982
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "element":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@e3
    .line 983
    :try_start_6
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    #@e6
    .line 982
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@e7
    .line 985
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v12

    #@e8
    .line 986
    .local v12, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "InputManager"

    #@eb
    new-instance v17, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v18, "Could not parse keyboard layout resource from receiver "

    #@f3
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v17

    #@f7
    .line 987
    move-object/from16 v0, p2

    #@f9
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@fb
    move-object/from16 v18, v0

    #@fd
    .line 986
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v17

    #@101
    .line 987
    const-string/jumbo v18, "/"

    #@104
    .line 986
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v17

    #@108
    .line 987
    move-object/from16 v0, p2

    #@10a
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@10c
    move-object/from16 v18, v0

    #@10e
    .line 986
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v17

    #@112
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v17

    #@116
    move-object/from16 v0, v17

    #@118
    invoke-static {v2, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11b
    goto/16 :goto_3

    #@11d
    .line 960
    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7
    if-eqz v7, :cond_5

    #@11f
    .line 967
    :try_start_7
    move-object/from16 v0, p2

    #@121
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@123
    move-object/from16 v0, p2

    #@125
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@127
    move-object/from16 v17, v0

    #@129
    .line 966
    move-object/from16 v0, v17

    #@12b
    invoke-static {v2, v0, v14}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12e
    move-result-object v4

    #@12f
    .line 968
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_8

    #@131
    move-object/from16 v0, p3

    #@133
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v2

    #@137
    if-eqz v2, :cond_6

    #@139
    :cond_8
    move-object/from16 v2, p5

    #@13b
    .line 969
    invoke-interface/range {v2 .. v8}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@13e
    goto :goto_4

    #@13f
    .line 973
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v14    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@140
    .line 974
    :try_start_8
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@143
    .line 973
    throw v2

    #@144
    .line 977
    .end local v9    # "a":Landroid/content/res/TypedArray;
    :cond_9
    const-string/jumbo v2, "InputManager"

    #@147
    new-instance v17, Ljava/lang/StringBuilder;

    #@149
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v18, "Skipping unrecognized element \'"

    #@14f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v17

    #@153
    move-object/from16 v0, v17

    #@155
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v17

    #@159
    .line 978
    const-string/jumbo v18, "\' in keyboard layout resource from receiver "

    #@15c
    .line 977
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v17

    #@160
    .line 979
    move-object/from16 v0, p2

    #@162
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@164
    move-object/from16 v18, v0

    #@166
    .line 977
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v17

    #@16a
    .line 979
    const-string/jumbo v18, "/"

    #@16d
    .line 977
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v17

    #@171
    .line 979
    move-object/from16 v0, p2

    #@173
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@175
    move-object/from16 v18, v0

    #@177
    .line 977
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v17

    #@17b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v17

    #@17f
    move-object/from16 v0, v17

    #@181
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@184
    goto/16 :goto_2
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1071
    const-string/jumbo v2, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1072
    const-string/jumbo v3, "addKeyboardLayoutForInputDevice()"

    #@6
    .line 1071
    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1073
    new-instance v2, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v3, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 1075
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1076
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 1079
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1080
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v3

    #@27
    .line 1082
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1083
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
    .line 1086
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
    .line 1088
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@43
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 1087
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_5

    #@4d
    .line 1092
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
    .line 1070
    return-void

    #@54
    .line 1084
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
    .line 1089
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
    .line 1091
    .end local v1    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@67
    .line 1092
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@69
    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@6c
    .line 1091
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6d
    .line 1080
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
    .line 1315
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    #@b
    .line 1317
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
    .line 1318
    return-void

    #@13
    :cond_1
    monitor-exit v2

    #@14
    .line 1322
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    #@17
    .line 1313
    return-void

    #@18
    .line 1315
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
    .line 1344
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
    .line 1346
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
    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    .line 1346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1348
    const-string/jumbo v2, ", uid="

    #@22
    .line 1346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v2

    #@2a
    .line 1346
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
    .line 1349
    return-void

    #@36
    .line 1352
    :cond_0
    const-string/jumbo v1, "INPUT MANAGER (dumpsys input)\n"

    #@39
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1353
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@3e
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 1354
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@44
    .line 1355
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1343
    :cond_1
    return-void
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 1438
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1441
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@9
    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 1445
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
    .line 1448
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    #@13
    .line 1449
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 1438
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .line 1442
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
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1013
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6
    monitor-enter v3

    #@7
    .line 1014
    const/4 v1, 0x0

    #@8
    .line 1016
    .local v1, "layout":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@a
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1017
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
    .line 1025
    return-object v1

    #@1c
    .line 1019
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
    .line 1013
    .end local v1    # "layout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 577
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 578
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@5
    array-length v0, v3

    #@6
    .line 579
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 580
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@b
    aget-object v2, v3, v1

    #@d
    .line 581
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
    .line 582
    return-object v2

    #@15
    .line 579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    monitor-exit v4

    #@19
    .line 586
    const/4 v3, 0x0

    #@1a
    return-object v3

    #@1b
    .line 577
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
    .line 595
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 596
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    #@5
    array-length v0, v3

    #@6
    .line 597
    .local v0, "count":I
    new-array v2, v0, [I

    #@8
    .line 598
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 599
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
    .line 598
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_0
    monitor-exit v4

    #@19
    .line 601
    return-object v2

    #@1a
    .line 595
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
    .line 610
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 610
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
    .line 388
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
    .line 869
    if-nez p1, :cond_0

    #@3
    .line 870
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 873
    :cond_0
    const/4 v1, 0x1

    #@d
    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    #@f
    .line 874
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    #@11
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    #@14
    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@17
    .line 881
    aget-object v1, v0, v4

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 882
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
    .line 883
    const-string/jumbo v3, "\'."

    #@31
    .line 882
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 885
    :cond_1
    aget-object v1, v0, v4

    #@3e
    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    #@0
    .prologue
    .line 856
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 857
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    #@7
    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    #@d
    .line 864
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

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1058
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@6
    monitor-enter v3

    #@7
    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@9
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1060
    .local v1, "layouts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@f
    array-length v2, v1

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1061
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
    .line 1064
    return-object v1

    #@1e
    .line 1062
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
    .line 1058
    .end local v1    # "layouts":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public getScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    #@0
    .prologue
    .line 401
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
    .line 414
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
    .line 739
    if-nez p1, :cond_0

    #@2
    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@d
    monitor-enter v1

    #@e
    .line 744
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
    .line 743
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
    .line 431
    if-nez p3, :cond_0

    #@2
    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "keyCodes must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 434
    :cond_0
    if-eqz p4, :cond_1

    #@d
    array-length v0, p4

    #@e
    array-length v1, p3

    #@f
    if-ge v0, v1, :cond_2

    #@11
    .line 435
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 439
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
    .line 530
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public monitor()V
    .locals 2

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 1380
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@6
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    #@9
    .line 1378
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
    .line 448
    if-nez p1, :cond_0

    #@5
    .line 449
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "inputChannelName must not be null."

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 452
    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@11
    move-result-object v0

    #@12
    .line 453
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@14
    aget-object v1, v0, v4

    #@16
    invoke-static {v2, v3, v1, v6, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    #@19
    .line 454
    aget-object v1, v0, v4

    #@1b
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@1e
    .line 455
    aget-object v1, v0, v5

    #@20
    return-object v1
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    #@0
    .prologue
    .line 1326
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1327
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
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    #@e
    .line 1325
    return-void

    #@f
    .line 1326
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
    .line 466
    if-nez p1, :cond_0

    #@2
    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 470
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    #@11
    .line 465
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    #@0
    .prologue
    .line 617
    if-nez p1, :cond_0

    #@2
    .line 618
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "listener must not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 621
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 622
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@11
    move-result v1

    #@12
    .line 623
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 624
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
    .line 621
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 629
    .restart local v1    # "callingPid":I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    #@28
    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 631
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v0

    #@2f
    .line 632
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    #@30
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    .line 638
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    monitor-exit v5

    #@39
    .line 616
    return-void

    #@3a
    .line 633
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    #@3b
    .line 635
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

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1100
    const-string/jumbo v3, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1101
    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    #@6
    .line 1100
    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 1102
    new-instance v3, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v4, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 1104
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1105
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 1108
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1109
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v4

    #@27
    .line 1111
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1112
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
    .line 1115
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3b
    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    .line 1116
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
    .line 1118
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
    .line 1121
    :cond_3
    if-eqz v2, :cond_4

    #@56
    .line 1122
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@58
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 1121
    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_6

    #@62
    .line 1126
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
    .line 1099
    return-void

    #@69
    .line 1113
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
    .line 1123
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
    .line 1125
    .end local v1    # "oldLayout":Ljava/lang/String;
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    #@7c
    .line 1126
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@7e
    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@81
    .line 1125
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@82
    .line 1109
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
    .line 1032
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    #@3
    .line 1033
    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    #@6
    .line 1032
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1034
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1036
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 1037
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1040
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1041
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@26
    monitor-enter v2

    #@27
    .line 1043
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@29
    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_2

    #@2f
    .line 1047
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@31
    const/4 v3, 0x3

    #@32
    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1050
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
    .line 1031
    return-void

    #@3c
    .line 1049
    :catchall_0
    move-exception v1

    #@3d
    .line 1050
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3f
    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@42
    .line 1049
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    .line 1041
    :catchall_1
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 2
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    #@0
    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    #@5
    .line 1176
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    #@0
    .prologue
    .line 1181
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    #@5
    .line 1180
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    #@0
    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 499
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 500
    return-void

    #@9
    .line 503
    :cond_0
    if-eqz v0, :cond_1

    #@b
    .line 504
    const/4 v2, 0x0

    #@c
    :try_start_1
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@e
    .line 505
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    #@10
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    #@13
    .line 506
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 508
    :try_start_2
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 514
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    #@1b
    .line 515
    :try_start_3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    #@1d
    .line 516
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
    .line 518
    :try_start_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    #@27
    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2a
    .line 524
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
    .line 496
    return-void

    #@34
    .line 509
    :catch_0
    move-exception v1

    #@35
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    #@36
    .line 524
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x0

    #@37
    goto :goto_2

    #@38
    .line 497
    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 519
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
    .line 1173
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    #@5
    .line 1172
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1185
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    #@5
    .line 1184
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    .line 751
    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    #@3
    .line 752
    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    #@6
    .line 751
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 753
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Requires SET_INPUT_CALIBRATION permission"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 755
    :cond_0
    if-nez p1, :cond_1

    #@17
    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 758
    :cond_1
    if-nez p3, :cond_2

    #@22
    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "calibration must not be null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 761
    :cond_2
    if-ltz p2, :cond_3

    #@2d
    const/4 v0, 0x3

    #@2e
    if-le p2, v0, :cond_4

    #@30
    .line 762
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v1, "surfaceRotation value out of bounds"

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 765
    :cond_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3b
    monitor-enter v1

    #@3c
    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@3e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 769
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@46
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 772
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
    .line 750
    return-void

    #@50
    .line 771
    :catchall_0
    move-exception v0

    #@51
    .line 772
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    #@53
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    #@56
    .line 771
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@57
    .line 765
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
    .line 275
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    #@2
    .line 274
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@0
    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@2
    .line 278
    return-void
.end method

.method public start()V
    .locals 5

    #@0
    .prologue
    .line 283
    const-string/jumbo v0, "InputManager"

    #@3
    const-string/jumbo v1, "Starting input manager"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 284
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@b
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    #@e
    .line 287
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@15
    .line 289
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    #@18
    .line 290
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    #@1b
    .line 292
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@1d
    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    #@1f
    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@22
    .line 298
    new-instance v2, Landroid/content/IntentFilter;

    #@24
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@27
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2a
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@2c
    const/4 v4, 0x0

    #@2d
    .line 292
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@30
    .line 300
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    #@33
    .line 301
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    #@36
    .line 282
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1131
    return-void
.end method

.method public systemRunning()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 309
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@3
    .line 310
    const-string/jumbo v2, "notification"

    #@6
    .line 309
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/app/NotificationManager;

    #@c
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@e
    .line 311
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    #@11
    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    #@13
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@16
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@19
    .line 314
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@1c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 315
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 316
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    #@28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 317
    const-string/jumbo v1, "package"

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@31
    .line 318
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@33
    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    #@35
    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@38
    .line 323
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@3a
    .line 318
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@3d
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    #@3f
    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    #@42
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@45
    .line 326
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    #@47
    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    #@49
    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@4c
    .line 331
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@4e
    .line 326
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@51
    .line 333
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@53
    const/4 v2, 0x5

    #@54
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    #@57
    .line 334
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@59
    const/4 v2, 0x4

    #@5a
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    #@5d
    .line 336
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@5f
    if-eqz v1, :cond_0

    #@61
    .line 337
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    #@63
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    #@66
    .line 305
    :cond_0
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1202
    if-nez p1, :cond_0

    #@2
    .line 1203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "fromChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1205
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 1206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "toChannel must not be null."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1208
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
    .line 1213
    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    #@3
    .line 1214
    const-string/jumbo v1, "tryPointerSpeed()"

    #@6
    .line 1213
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1215
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Requires SET_POINTER_SPEED permission"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1218
    :cond_0
    const/4 v0, -0x7

    #@16
    if-lt p1, v0, :cond_1

    #@18
    const/4 v0, 0x7

    #@19
    if-le p1, v0, :cond_2

    #@1b
    .line 1219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "speed out of range"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1222
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    #@27
    .line 1212
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 478
    if-nez p1, :cond_0

    #@2
    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputChannel must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 482
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    #@d
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    #@10
    .line 477
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    #@0
    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    #@3
    move-result v0

    #@4
    .line 1227
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    #@7
    .line 1225
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1258
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    #@4
    move-result v0

    #@5
    .line 1259
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
    .line 1257
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
    .line 1286
    array-length v0, p2

    #@1
    if-lt p3, v0, :cond_0

    #@3
    .line 1287
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 1292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    #@14
    .line 1293
    .local v7, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v7, :cond_1

    #@16
    .line 1294
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
    .line 1296
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v0, 0x0

    #@22
    :try_start_1
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 1301
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
    .line 1305
    monitor-enter v7

    #@2c
    .line 1306
    const/4 v0, 0x1

    #@2d
    :try_start_3
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    #@2f
    .line 1307
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
    .line 1285
    return-void

    #@3b
    .line 1297
    :catch_0
    move-exception v6

    #@3c
    .line 1299
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
    .line 1291
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 1305
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v0

    #@46
    monitor-exit v7

    #@47
    throw v0
.end method
