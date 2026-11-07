.class public final Landroid/hardware/input/InputManagerGlobal;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerGlobal$TestSession;,
        Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;,
        Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;,
        Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputManagerGlobal"

.field private static blacklist sInstance:Landroid/hardware/input/InputManagerGlobal;


# instance fields
.field private blacklist mBatteryListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBatteryListenersLock:Ljava/lang/Object;

.field private final blacklist mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field private final blacklist mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

.field private blacklist mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

.field private blacklist mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

.field private blacklist mKeyEventActivityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManager$KeyEventActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyEventActivityLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

.field private final blacklist mKeyGestureEventListenerLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field private final blacklist mKeyGesturesToHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field private final blacklist mKeyboardBacklightListenerLock:Ljava/lang/Object;

.field private blacklist mKeyboardBacklightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnTabletModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

.field private final blacklist mStickyModifierStateListenerLock:Ljava/lang/Object;

.field private blacklist mStickyModifierStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVelocityTrackerStrategy:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGesturesToHandlerMap(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManagerGlobal;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->onInputDevicesChanged([I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onTabletModeChanged(JZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/IInputManager;)V
    .registers 6
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    .line 156
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "strategy":Ljava/lang/String;
    :try_start_3e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_46

    move-object v0, v1

    .line 162
    goto :goto_5f

    .line 160
    :catch_46
    move-exception v1

    .line 161
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get VelocityTracker strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManagerGlobal"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_5f
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 164
    return-void
.end method

.method private static blacklist containsDeviceId([II)Z
    .registers 4
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 372
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 373
    const/4 v1, 0x1

    return v1

    .line 371
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 376
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist createTestSession(Landroid/hardware/input/IInputManager;)Landroid/hardware/input/InputManagerGlobal$TestSession;
    .registers 4
    .param p0, "inputManagerService"    # Landroid/hardware/input/IInputManager;

    .line 206
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 208
    .local v1, "oldInstance":Landroid/hardware/input/InputManagerGlobal;
    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {v2, p0}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 209
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    monitor-exit v0

    return-object v2

    .line 210
    .end local v1    # "oldInstance":Landroid/hardware/input/InputManagerGlobal;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist debug()Z
    .registers 3

    .line 85
    const-string v0, "InputManagerGlobal"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private blacklist findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 423
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 424
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 425
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_16

    .line 426
    return v1

    .line 424
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 429
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 635
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 637
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_16

    .line 638
    return v1

    .line 636
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 641
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getInstance()Landroid/hardware/input/InputManagerGlobal;
    .registers 4

    .line 173
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 174
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    if-nez v1, :cond_1a

    .line 175
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 176
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 177
    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 180
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 181
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private blacklist initializeTabletModeListenerLocked()V
    .registers 4

    .line 625
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    .line 627
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 630
    nop

    .line 631
    return-void

    .line 628
    :catch_d
    move-exception v1

    .line 629
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic blacklist lambda$createTestSession$0(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 1
    .param p0, "oldInstance"    # Landroid/hardware/input/InputManagerGlobal;

    .line 209
    sput-object p0, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    return-void
.end method

.method static synthetic blacklist lambda$unregisterKeyGestureEventListener$3(Landroid/hardware/input/InputManager$KeyGestureEventListener;Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;)Z
    .registers 3
    .param p0, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;
    .param p1, "delegate"    # Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    .line 1166
    iget-object v0, p1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$unregisterKeyboardBacklightListener$1(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;)Z
    .registers 3
    .param p0, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    .param p1, "delegate"    # Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    .line 928
    iget-object v0, p1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$unregisterStickyModifierStateListener$2(Landroid/hardware/input/InputManager$StickyModifierStateListener;Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;)Z
    .registers 3
    .param p0, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;
    .param p1, "delegate"    # Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    .line 1080
    iget-object v0, p1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist onInputDevicesChanged([I)V
    .registers 13
    .param p1, "deviceIdAndGeneration"    # [I

    .line 285
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    .line 286
    .local v0, "enableDebugLogs":Z
    if-eqz v0, :cond_22

    .line 287
    const-string v1, "InputManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received input devices changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_22
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 291
    :try_start_25
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "i":I
    :goto_2b
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_89

    .line 292
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 293
    .local v3, "deviceId":I
    invoke-static {p1, v3}, Landroid/hardware/input/InputManagerGlobal;->containsDeviceId([II)Z

    move-result v4

    if-nez v4, :cond_88

    .line 294
    if-eqz v0, :cond_76

    .line 295
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 296
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4e

    :cond_4c
    const-string v5, "<null>"

    .line 297
    .local v5, "name":Ljava/lang/String;
    :goto_4e
    const-string v6, "InputManagerGlobal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "name":Ljava/lang/String;
    :cond_76
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 300
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_84

    .line 301
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceRemoved(I)V

    .line 303
    :cond_84
    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 306
    .end local v3    # "deviceId":I
    :cond_88
    goto :goto_2b

    .line 308
    .end local v2    # "i":I
    :cond_89
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8a
    array-length v3, p1

    if-ge v2, v3, :cond_11d

    .line 309
    aget v3, p1, v2

    .line 310
    .restart local v3    # "deviceId":I
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 311
    .local v4, "index":I
    const/4 v5, 0x0

    if-ltz v4, :cond_ed

    .line 312
    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice;

    .line 313
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_ec

    .line 314
    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    .line 315
    .local v7, "generation":I
    invoke-virtual {v6}, Landroid/view/InputDevice;->getGeneration()I

    move-result v8

    if-eq v8, v7, :cond_ec

    .line 316
    if-eqz v0, :cond_da

    .line 317
    const-string v8, "InputManagerGlobal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 318
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_da
    iget-object v8, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 321
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v5, :cond_e8

    .line 322
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v5, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceChanged(I)V

    .line 324
    :cond_e8
    const/4 v5, 0x3

    invoke-direct {p0, v5, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 328
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v7    # "generation":I
    :cond_ec
    goto :goto_119

    .line 329
    :cond_ed
    if-eqz v0, :cond_107

    .line 330
    const-string v6, "InputManagerGlobal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_107
    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v5, :cond_115

    .line 334
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v5, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceAdded(I)V

    .line 336
    :cond_115
    const/4 v5, 0x1

    invoke-direct {p0, v5, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 308
    .end local v3    # "deviceId":I
    .end local v4    # "index":I
    :goto_119
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_8a

    .line 340
    .end local v2    # "i":I
    :cond_11d
    monitor-exit v1

    .line 341
    return-void

    .line 340
    :catchall_11f
    move-exception v2

    monitor-exit v1
    :try_end_121
    .catchall {:try_start_25 .. :try_end_121} :catchall_11f

    throw v2
.end method

.method private blacklist onTabletModeChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 537
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 538
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received tablet mode changed: whenNanos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inTabletMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_28
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 542
    :try_start_2b
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 543
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_42

    .line 544
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 545
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 546
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 543
    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 548
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_42
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_44

    throw v1
.end method

.method private blacklist populateInputDevicesLocked()V
    .registers 7

    .line 251
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 253
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    .line 255
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;
    :try_start_a
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_13

    .line 258
    nop

    .line 259
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    goto :goto_19

    .line 256
    :catch_13
    move-exception v1

    .line 257
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 262
    .end local v0    # "listener":Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_3f

    .line 265
    :try_start_1d
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_39

    .line 268
    .local v0, "ids":[I
    nop

    .line 270
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    .line 271
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_3f

    aget v4, v0, v3

    .line 272
    .local v4, "id":I
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 266
    .end local v0    # "ids":[I
    :catch_39
    move-exception v0

    .line 267
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 275
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3f
    return-void
.end method

.method private blacklist sendMessageToInputDeviceListenersLocked(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .line 381
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 383
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 384
    .local v2, "listener":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .end local v2    # "listener":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 386
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 12
    .param p1, "deviceId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 670
    const-string v0, "executor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 671
    const-string v0, "listener should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 675
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 676
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 678
    :cond_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 679
    .local v1, "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    if-nez v1, :cond_43

    .line 682
    new-instance v3, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    invoke-direct {v3, v2}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>(Landroid/hardware/input/InputManagerGlobal-IA;)V

    move-object v1, v3

    .line 683
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_8d

    .line 685
    :try_start_35
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2, p1, v3}, Landroid/hardware/input/IInputManager;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_8d

    .line 688
    goto :goto_78

    .line 686
    :catch_3d
    move-exception v2

    .line 687
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v3

    .line 692
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_43
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 693
    .local v2, "numDelegates":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    if-ge v3, v2, :cond_78

    .line 694
    iget-object v4, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 695
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v4, v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 696
    .local v4, "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 693
    .end local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 697
    .restart local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_5f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to register an InputDeviceBatteryListener that has already been registered for deviceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v5

    .line 704
    .end local v2    # "numDelegates":I
    .end local v3    # "i":I
    .end local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_78
    :goto_78
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    invoke-direct {v2, p3, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V

    .line 706
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    if-eqz v3, :cond_8b

    .line 710
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 712
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
    :cond_8b
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 1774
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1777
    nop

    .line 1778
    return-void

    .line 1775
    :catch_7
    move-exception v0

    .line 1776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 1751
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1754
    nop

    .line 1755
    return-void

    .line 1752
    :catch_7
    move-exception v0

    .line 1753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 3

    .line 1809
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->cancelCurrentTouch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1812
    nop

    .line 1813
    return-void

    .line 1810
    :catch_7
    move-exception v0

    .line 1811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1599
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1602
    nop

    .line 1603
    return-void

    .line 1600
    :catch_7
    move-exception v0

    .line 1601
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist closeLightSession(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1539
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->closeLightSession(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1542
    nop

    .line 1543
    return-void

    .line 1540
    :catch_7
    move-exception v0

    .line 1541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deviceHasKeys(I[I)[Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .line 1649
    array-length v0, p2

    new-array v0, v0, [Z

    .line 1651
    .local v0, "ret":[Z
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1654
    nop

    .line 1655
    return-object v0

    .line 1652
    :catch_c
    move-exception v1

    .line 1653
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist deviceHasKeys([I)[Z
    .registers 3
    .param p1, "keyCodes"    # [I

    .line 1642
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableInputDevice(I)V
    .registers 5
    .param p1, "id"    # I

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 469
    nop

    .line 470
    return-void

    .line 466
    :catch_7
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist disableSensor(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1428
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->disableSensor(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1431
    nop

    .line 1432
    return-void

    .line 1429
    :catch_7
    move-exception v0

    .line 1430
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableInputDevice(I)V
    .registers 5
    .param p1, "id"    # I

    .line 453
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 457
    nop

    .line 458
    return-void

    .line 454
    :catch_7
    move-exception v0

    .line 455
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist enableSensor(IIII)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .line 1416
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->enableSensor(IIII)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1418
    :catch_7
    move-exception v0

    .line 1419
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist flushSensor(II)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1439
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->flushSensor(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1440
    :catch_7
    move-exception v0

    .line 1441
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;

    .line 509
    const-string v0, "display should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 514
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 517
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 518
    .local v2, "device":Landroid/view/InputDevice;
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_36

    .line 519
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 520
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 516
    .end local v2    # "device":Landroid/view/InputDevice;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 524
    .end local v1    # "i":I
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_4b

    .line 530
    :try_start_3a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/input/IInputManager;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object v0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_45

    return-object v0

    .line 531
    :catch_45
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public blacklist getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "id"    # I

    .line 226
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 227
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 229
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 230
    .local v1, "index":I
    if-gez v1, :cond_11

    .line 231
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_11
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_33

    .line 235
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_31

    .line 237
    :try_start_1b
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_2b
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    move-object v2, v3

    .line 240
    nop

    .line 241
    if-eqz v2, :cond_31

    .line 242
    :try_start_25
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_31

    .line 238
    :catch_2b
    move-exception v3

    .line 239
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "id":I
    throw v4

    .line 245
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "id":I
    :cond_31
    :goto_31
    monitor-exit v0

    return-object v2

    .line 246
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "hasBattery"    # Z

    .line 783
    if-nez p2, :cond_8

    .line 784
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    invoke-direct {v0}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>()V

    return-object v0

    .line 787
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object v0

    .line 788
    .local v0, "state":Landroid/hardware/input/IInputDeviceBatteryState;
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean v2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v3, v0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget v4, v0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v1

    .line 789
    .end local v0    # "state":Landroid/hardware/input/IInputDeviceBatteryState;
    :catch_1a
    move-exception v0

    .line 790
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 4
    .param p1, "deviceId"    # I

    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1799
    :catch_7
    move-exception v0

    .line 1800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 9
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 476
    const-string v0, "descriptor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 479
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 481
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 482
    .local v1, "numDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_4a

    .line 483
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 484
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_3b

    .line 485
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_4d

    .line 487
    .local v4, "id":I
    :try_start_24
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5, v4}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_35
    .catchall {:try_start_24 .. :try_end_2a} :catchall_4d

    move-object v3, v5

    .line 490
    nop

    .line 491
    if-nez v3, :cond_2f

    .line 492
    goto :goto_47

    .line 494
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3b

    .line 488
    :catch_35
    move-exception v5

    .line 489
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "descriptor":Ljava/lang/String;
    throw v6

    .line 496
    .end local v4    # "id":I
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "descriptor":Ljava/lang/String;
    :cond_3b
    :goto_3b
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 497
    monitor-exit v0

    return-object v3

    .line 482
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 500
    .end local v2    # "i":I
    :cond_4a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 501
    .end local v1    # "numDevices":I
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public blacklist getInputDeviceIds()[I
    .registers 6

    .line 436
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 437
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 439
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 440
    .local v1, "count":I
    new-array v2, v1, [I

    .line 441
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1c

    .line 442
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 444
    .end local v3    # "i":I
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 445
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1472
    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceLightsManager;-><init>(I)V

    return-object v0
.end method

.method public blacklist getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;
    .registers 4
    .param p1, "deviceId"    # I

    .line 1390
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1391
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-nez v1, :cond_e

    .line 1392
    new-instance v1, Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/input/InputDeviceSensorManager;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    .line 1394
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1395
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "vibratorId"    # I

    .line 1549
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object v0
.end method

.method public blacklist getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1557
    new-instance v0, Landroid/hardware/input/InputDeviceVibratorManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceVibratorManager;-><init>(I)V

    return-object v0
.end method

.method public blacklist getInputManagerService()Landroid/hardware/input/IInputManager;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method public blacklist getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;
    .registers 4
    .param p1, "keyboardLayout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1674
    if-nez p1, :cond_8

    .line 1675
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/input/IInputManager;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 1679
    :catch_13
    move-exception v0

    .line 1680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I

    .line 1663
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getKeyCodeForKeyLocation(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1664
    :catch_7
    move-exception v0

    .line 1665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1374
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    return-object v0
.end method

.method blacklist getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "light"    # Landroid/hardware/lights/Light;

    .line 1493
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/input/IInputManager;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1494
    :catch_b
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getLights(I)Ljava/util/List;
    .registers 4
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 1481
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getLights(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1482
    :catch_7
    move-exception v0

    .line 1483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 4
    .param p1, "deviceId"    # I

    .line 1404
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1405
    :catch_7
    move-exception v0

    .line 1406
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getVibratorIds(I)[I
    .registers 4
    .param p1, "deviceId"    # I

    .line 1566
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getVibratorIds(I)[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1567
    :catch_7
    move-exception v0

    .line 1568
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1708
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 1689
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1691
    if-eqz p2, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    goto :goto_16

    .line 1694
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1698
    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v0

    .line 1699
    :catch_1d
    move-exception v0

    .line 1700
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isVibrating(I)Z
    .registers 4
    .param p1, "deviceId"    # I

    .line 1610
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isVibrating(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1611
    :catch_7
    move-exception v0

    .line 1612
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1739
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1740
    :catch_c
    move-exception v0

    .line 1741
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1527
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1530
    nop

    .line 1531
    return-void

    .line 1528
    :catch_7
    move-exception v0

    .line 1529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;

    .line 1821
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->pilferPointers(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1824
    nop

    .line 1825
    return-void

    .line 1822
    :catch_7
    move-exception v0

    .line 1823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 392
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 395
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 396
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 397
    .local v1, "index":I
    if-gez v1, :cond_1b

    .line 398
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v1    # "index":I
    :cond_1b
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyEventActivityListener;

    .line 1288
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1289
    const/4 v0, 0x0

    .line 1290
    .local v0, "success":Z
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_9
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    if-nez v2, :cond_2c

    .line 1292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    .line 1293
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_43

    .line 1296
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    invoke-interface {v2, v3}, Landroid/hardware/input/IInputManager;->registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_26
    .catchall {:try_start_1c .. :try_end_24} :catchall_43

    .line 1299
    .end local v0    # "success":Z
    .local v2, "success":Z
    move v0, v2

    goto :goto_2c

    .line 1297
    .end local v2    # "success":Z
    .restart local v0    # "success":Z
    :catch_26
    move-exception v2

    .line 1298
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    throw v3

    .line 1301
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    :cond_2c
    :goto_2c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1304
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    monitor-exit v1

    return v0

    .line 1302
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener has already been registered!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    throw v2

    .line 1306
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_43

    throw v2
.end method

.method blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 9
    .param p2, "handler"    # Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1200
    .local p1, "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "List of gestures should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1201
    const-string v0, "handler should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1207
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1208
    :try_start_13
    new-instance v1, Landroid/util/IntArray;

    .line 1209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 1212
    .local v1, "newKeyGestures":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 1213
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1214
    .local v3, "h":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    if-eq v3, p2, :cond_42

    .line 1217
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1212
    .end local v3    # "h":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1215
    .restart local v3    # "h":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Handler has already been registered!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    throw v4

    .line 1221
    .end local v2    # "i":I
    .end local v3    # "h":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_4a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1222
    .local v3, "gesture":I
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1226
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1227
    .end local v3    # "gesture":I
    goto :goto_4e

    .line 1223
    .restart local v3    # "gesture":I
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key gesture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already registered by another handler!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    throw v2
    :try_end_89
    .catchall {:try_start_13 .. :try_end_89} :catchall_cb

    .line 1232
    .end local v3    # "gesture":I
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_89
    :try_start_89
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-eqz v2, :cond_95

    .line 1233
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, v3}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V

    goto :goto_9d

    .line 1235
    :cond_95
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    .line 1237
    :goto_9d
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, v3, v4}, Landroid/hardware/input/IInputManager;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V

    .line 1238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1239
    .restart local v3    # "gesture":I
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_c1} :catch_c5
    .catchall {:try_start_89 .. :try_end_c1} :catchall_cb

    .line 1240
    .end local v3    # "gesture":I
    goto :goto_ac

    .line 1243
    :cond_c2
    nop

    .line 1244
    .end local v1    # "newKeyGestures":Landroid/util/IntArray;
    :try_start_c3
    monitor-exit v0

    .line 1245
    return-void

    .line 1241
    .restart local v1    # "newKeyGestures":Landroid/util/IntArray;
    :catch_c5
    move-exception v2

    .line 1242
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    throw v3

    .line 1244
    .end local v1    # "newKeyGestures":Landroid/util/IntArray;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_cb

    throw v1

    .line 1204
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key gestures provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1129
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1130
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1132
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1133
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    if-nez v1, :cond_2e

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    .line 1135
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5b

    .line 1138
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5b

    .line 1141
    goto :goto_2e

    .line 1139
    :catch_28
    move-exception v1

    .line 1140
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    throw v2

    .line 1143
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1144
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v1, :cond_4e

    .line 1145
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-eq v3, p2, :cond_46

    .line 1144
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1146
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Listener has already been registered!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    throw v3

    .line 1149
    .end local v2    # "i":I
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    :cond_4e
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;Ljava/util/concurrent/Executor;)V

    .line 1151
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    nop

    .end local v1    # "numListeners":I
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 890
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 891
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 893
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    if-nez v1, :cond_2e

    .line 895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 896
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5b

    .line 899
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5b

    .line 902
    goto :goto_2e

    .line 900
    :catch_28
    move-exception v1

    .line 901
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v2

    .line 904
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 905
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v1, :cond_4e

    .line 906
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-eq v3, p2, :cond_46

    .line 905
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 907
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Listener has already been registered!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v3

    .line 910
    .end local v2    # "i":I
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_4e
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Ljava/util/concurrent/Executor;)V

    .line 912
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    nop

    .end local v1    # "numListeners":I
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method blacklist registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 593
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 596
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 597
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeTabletModeListenerLocked()V

    .line 599
    :cond_13
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 600
    .local v1, "idx":I
    if-gez v1, :cond_23

    .line 601
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 603
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    :cond_23
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v1
.end method

.method blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1451
    :catch_7
    move-exception v0

    .line 1452
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1042
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1043
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    if-nez v1, :cond_2e

    .line 1047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    .line 1048
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5b

    .line 1051
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5b

    .line 1054
    goto :goto_2e

    .line 1052
    :catch_28
    move-exception v1

    .line 1053
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    throw v2

    .line 1056
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1057
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v1, :cond_4e

    .line 1058
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-eq v3, p2, :cond_46

    .line 1057
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1059
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Listener has already been registered!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    throw v3

    .line 1062
    .end local v2    # "i":I
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    :cond_4e
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;Ljava/util/concurrent/Executor;)V

    .line 1064
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    nop

    .end local v1    # "numListeners":I
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 1621
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1622
    :catch_7
    move-exception v0

    .line 1623
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 720
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 724
    monitor-exit v0

    return-void

    .line 726
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 727
    .local v1, "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    if-nez v1, :cond_1a

    .line 729
    monitor-exit v0

    return-void

    .line 731
    :cond_1a
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 733
    .local v2, "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 734
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v4, v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 735
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 736
    goto :goto_1d

    .line 738
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 740
    .end local v3    # "i":I
    :cond_38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 741
    monitor-exit v0

    return-void

    .line 745
    :cond_40
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_62

    .line 747
    :try_start_45
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v3, p1, v4}, Landroid/hardware/input/IInputManager;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_5c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_62

    .line 750
    nop

    .line 751
    :try_start_4d
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5a

    .line 754
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 755
    iput-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 757
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    :cond_5a
    monitor-exit v0

    .line 758
    return-void

    .line 748
    .restart local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .restart local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    :catch_5c
    move-exception v3

    .line 749
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v4

    .line 757
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_62

    throw v1
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 1785
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1788
    nop

    .line 1789
    return-void

    .line 1786
    :catch_7
    move-exception v0

    .line 1787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 1762
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1765
    nop

    .line 1766
    return-void

    .line 1763
    :catch_7
    move-exception v0

    .line 1764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "request"    # Landroid/hardware/lights/LightsRequest;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1506
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 1507
    .local v0, "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1508
    .local v1, "lightIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    .line 1509
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 1508
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1511
    .end local v2    # "i":I
    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object v2

    .line 1512
    .local v2, "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/hardware/lights/LightState;

    .line 1513
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 1512
    invoke-interface {v3, p1, v1, v4, p3}, Landroid/hardware/input/IInputManager;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_31

    .line 1517
    .end local v0    # "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "lightIds":[I
    .end local v2    # "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    nop

    .line 1518
    return-void

    .line 1515
    :catch_31
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .line 1728
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1731
    nop

    .line 1732
    return-void

    .line 1729
    :catch_7
    move-exception v0

    .line 1730
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1382
    return-void
.end method

.method public blacklist setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1358
    const-string v0, "identifier should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1359
    const-string v0, "keyboardLayoutDescriptor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1362
    :try_start_a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 1365
    nop

    .line 1366
    return-void

    .line 1363
    :catch_11
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 12
    .param p1, "icon"    # Landroid/view/PointerIcon;
    .param p2, "displayId"    # I
    .param p3, "deviceId"    # I
    .param p4, "pointerId"    # I
    .param p5, "inputToken"    # Landroid/os/IBinder;

    .line 1717
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "icon":Landroid/view/PointerIcon;
    .end local p2    # "displayId":I
    .end local p3    # "deviceId":I
    .end local p4    # "pointerId":I
    .end local p5    # "inputToken":Landroid/os/IBinder;
    .local v1, "icon":Landroid/view/PointerIcon;
    .local v2, "displayId":I
    .local v3, "deviceId":I
    .local v4, "pointerId":I
    .local v5, "inputToken":Landroid/os/IBinder;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    .line 1718
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "icon":Landroid/view/PointerIcon;
    .end local v2    # "displayId":I
    .end local v3    # "deviceId":I
    .end local v4    # "pointerId":I
    .end local v5    # "inputToken":Landroid/os/IBinder;
    .restart local p1    # "icon":Landroid/view/PointerIcon;
    .restart local p2    # "displayId":I
    .restart local p3    # "deviceId":I
    .restart local p4    # "pointerId":I
    .restart local p5    # "inputToken":Landroid/os/IBinder;
    :catch_f
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 1719
    .end local p2    # "displayId":I
    .end local p3    # "deviceId":I
    .end local p4    # "pointerId":I
    .end local p5    # "inputToken":Landroid/os/IBinder;
    .restart local v1    # "icon":Landroid/view/PointerIcon;
    .restart local v2    # "displayId":I
    .restart local v3    # "deviceId":I
    .restart local v4    # "pointerId":I
    .restart local v5    # "inputToken":Landroid/os/IBinder;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 407
    if-eqz p1, :cond_21

    .line 411
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 412
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 413
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 414
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 415
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 416
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 408
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyEventActivityListener;

    .line 1310
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1312
    const/4 v0, 0x1

    .line 1313
    .local v0, "success":Z
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1314
    :try_start_9
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_f

    .line 1315
    monitor-exit v1

    return v0

    .line 1317
    :cond_f
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1318
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_34

    if-eqz v2, :cond_32

    .line 1320
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    invoke-interface {v2, v3}, Landroid/hardware/input/IInputManager;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_2c
    .catchall {:try_start_1c .. :try_end_24} :catchall_34

    move v0, v2

    .line 1323
    nop

    .line 1324
    const/4 v2, 0x0

    :try_start_27
    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    .line 1325
    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    goto :goto_32

    .line 1321
    :catch_2c
    move-exception v2

    .line 1322
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    throw v3

    .line 1327
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    :cond_32
    :goto_32
    monitor-exit v1

    .line 1328
    return v0

    .line 1327
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v2
.end method

.method blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 5
    .param p1, "handler"    # Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1252
    const-string v0, "handler should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1255
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-nez v1, :cond_e

    .line 1256
    monitor-exit v0

    return-void

    .line 1258
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_28

    .line 1259
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_25

    .line 1260
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1258
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1263
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_44

    if-nez v1, :cond_42

    .line 1265
    :try_start_30
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_3c
    .catchall {:try_start_30 .. :try_end_37} :catchall_44

    .line 1268
    nop

    .line 1269
    const/4 v1, 0x0

    :try_start_39
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    goto :goto_42

    .line 1266
    :catch_3c
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    throw v2

    .line 1271
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_42
    :goto_42
    monitor-exit v0

    .line 1272
    return-void

    .line 1271
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v1
.end method

.method blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;

    .line 1160
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1162
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1164
    monitor-exit v0

    return-void

    .line 1166
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1167
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz v1, :cond_34

    .line 1169
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 1172
    nop

    .line 1173
    const/4 v1, 0x0

    :try_start_29
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    .line 1174
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    goto :goto_34

    .line 1170
    :catch_2e
    move-exception v1

    .line 1171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    throw v2

    .line 1176
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyGestureEventListener;
    :cond_34
    :goto_34
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method

.method blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    .line 922
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 926
    monitor-exit v0

    return-void

    .line 928
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 929
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz v1, :cond_34

    .line 931
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 934
    nop

    .line 935
    const/4 v1, 0x0

    :try_start_29
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 936
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    goto :goto_34

    .line 932
    :catch_2e
    move-exception v1

    .line 933
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v2

    .line 938
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_34
    :goto_34
    monitor-exit v0

    .line 939
    return-void

    .line 938
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method

.method blacklist unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 612
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 615
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 616
    .local v1, "idx":I
    if-ltz v1, :cond_1a

    .line 617
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 618
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 620
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    :cond_1a
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1461
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catch_7
    move-exception v0

    .line 1463
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;

    .line 1074
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1076
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1078
    monitor-exit v0

    return-void

    .line 1080
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1081
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz v1, :cond_34

    .line 1083
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 1086
    nop

    .line 1087
    const/4 v1, 0x0

    :try_start_29
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    .line 1088
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    goto :goto_34

    .line 1084
    :catch_2e
    move-exception v1

    .line 1085
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    throw v2

    .line 1090
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$StickyModifierStateListener;
    :cond_34
    :goto_34
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method

.method blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 1632
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1633
    :catch_7
    move-exception v0

    .line 1634
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1591
    nop

    .line 1592
    return-void

    .line 1589
    :catch_7
    move-exception v0

    .line 1590
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1577
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1580
    nop

    .line 1581
    return-void

    .line 1578
    :catch_7
    move-exception v0

    .line 1579
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
