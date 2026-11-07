.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceBatteryListener;,
        Landroid/hardware/input/InputManager$KeyboardBacklightListener;,
        Landroid/hardware/input/InputManager$StickyModifierStateListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventHandler;,
        Landroid/hardware/input/InputManager$KeyEventActivityListener;,
        Landroid/hardware/input/InputManager$CustomInputGestureResult;,
        Landroid/hardware/input/InputManager$RemappableModifierKey;,
        Landroid/hardware/input/InputManager$SwitchState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_QUERY_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

.field public static final whitelist ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field public static final blacklist BLOCK_UNTRUSTED_TOUCHES:J = 0x96aec7eL

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_ALREADY_EXISTS:I = 0x2

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_DOES_NOT_EXIST:I = 0x3

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_OTHER:I = 0x5

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_RESERVED_GESTURE:I = 0x4

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_SUCCESS:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final greylist INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final blacklist META_DATA_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

.field public static final whitelist META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final greylist-max-o SWITCH_STATE_OFF:I = 0x0

.field public static final greylist-max-o SWITCH_STATE_ON:I = 0x1

.field public static final greylist-max-o SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final greylist-max-p mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mIsStylusPointerIconEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    const-string v0, "InputManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/input/InputManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    .line 332
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 333
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputManagerService()Landroid/hardware/input/IInputManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 334
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    .line 335
    return-void
.end method

.method public static greylist getInstance()Landroid/hardware/input/InputManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 355
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 354
    return-object v0
.end method


# virtual methods
.method public blacklist addCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .registers 5
    .param p1, "inputGestureData"    # Landroid/hardware/input/InputGestureData;

    .line 1509
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1510
    const/4 v0, 0x5

    return v0

    .line 1513
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 1514
    :catch_19
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 1336
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    .line 1337
    return-void
.end method

.method public greylist-max-o addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 644
    return-void
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .registers 5
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I

    .line 1147
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addPortAssociation(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1150
    nop

    .line 1151
    return-void

    .line 1148
    :catch_7
    move-exception v0

    .line 1149
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method public blacklist areTouchpadGesturesAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1355
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 2

    .line 1282
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->cancelCurrentTouch()V

    .line 1283
    return-void
.end method

.method public blacklist clearAllModifierKeyRemappings()V
    .registers 3

    .line 684
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->clearAllModifierKeyRemappings()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 687
    nop

    .line 688
    return-void

    .line 685
    :catch_7
    move-exception v0

    .line 686
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o deviceHasKeys(I[I)[Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .line 923
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o deviceHasKeys([I)[Z
    .registers 3
    .param p1, "keyCodes"    # [I

    .line 907
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o disableInputDevice(I)V
    .registers 3
    .param p1, "id"    # I

    .line 436
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    .line 437
    return-void
.end method

.method public greylist-max-o enableInputDevice(I)V
    .registers 3
    .param p1, "id"    # I

    .line 422
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    .line 423
    return-void
.end method

.method public blacklist getAppLaunchBookmarks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 1598
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 1600
    .local v4, "data":Landroid/hardware/input/AidlInputGestureData;
    new-instance v5, Landroid/hardware/input/InputGestureData;

    invoke-direct {v5, v4}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1e

    .line 1599
    nop

    .end local v4    # "data":Landroid/hardware/input/AidlInputGestureData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1602
    :cond_1d
    return-object v0

    .line 1603
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    :catch_1e
    move-exception v0

    .line 1604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .registers 8
    .param p1, "filter"    # Landroid/hardware/input/InputGestureData$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputGestureData$Filter;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 1573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1575
    return-object v0

    .line 1578
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1579
    if-nez p1, :cond_18

    const/4 v3, -0x1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result v3

    .line 1578
    :goto_1c
    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 1580
    .local v4, "data":Landroid/hardware/input/AidlInputGestureData;
    new-instance v5, Landroid/hardware/input/InputGestureData;

    invoke-direct {v5, v4}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_34

    .line 1578
    nop

    .end local v4    # "data":Landroid/hardware/input/AidlInputGestureData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1584
    :cond_32
    nop

    .line 1585
    return-object v0

    .line 1582
    :catch_34
    move-exception v1

    .line 1583
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 635
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 1251
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .param p1, "id"    # I

    .line 373
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1265
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputDeviceIds()[I
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "vibratorId"    # I

    .line 1274
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInputDeviceViewBehavior(I)Landroid/view/InputDevice$ViewBehavior;
    .registers 4
    .param p1, "deviceId"    # I

    .line 389
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 390
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/view/InputDevice;->getViewBehavior()Landroid/view/InputDevice$ViewBehavior;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public blacklist getInputGesture(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;
    .registers 5
    .param p1, "trigger"    # Landroid/hardware/input/InputGestureData$Trigger;

    .line 1488
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1489
    invoke-interface {p1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object v2

    .line 1488
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object v0

    .line 1490
    .local v0, "result":Landroid/hardware/input/AidlInputGestureData;
    if-nez v0, :cond_14

    .line 1491
    const/4 v1, 0x0

    return-object v1

    .line 1493
    :cond_14
    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, v0}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    .line 1494
    .end local v0    # "result":Landroid/hardware/input/AidlInputGestureData;
    :catch_1a
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I

    .line 948
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result v0

    return v0
.end method

.method public blacklist getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .registers 4
    .param p1, "deviceId"    # I

    .line 980
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardGlyphMap()Z

    move-result v0

    if-nez v0, :cond_8

    .line 981
    const/4 v0, 0x0

    return-object v0

    .line 984
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 985
    :catch_f
    move-exception v0

    .line 986
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 4
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 602
    if-eqz p1, :cond_f

    .line 607
    :try_start_2
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 608
    :catch_9
    move-exception v0

    .line 609
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 603
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKeyboardLayoutDescriptors()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 555
    .local v0, "layouts":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 557
    .local v4, "kl":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v4    # "kl":Landroid/hardware/input/KeyboardLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 559
    :cond_19
    return-object v1
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 765
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 766
    :catch_7
    move-exception v0

    .line 767
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 822
    if-eqz p1, :cond_f

    .line 827
    :try_start_2
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 828
    :catch_9
    move-exception v0

    .line 829
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 823
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKeyboardLayoutPreview(Landroid/hardware/input/KeyboardLayout;II)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "keyboardLayout"    # Landroid/hardware/input/KeyboardLayout;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 968
    new-instance v0, Landroid/hardware/input/PhysicalKeyLayout;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 969
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/PhysicalKeyLayout;-><init>(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V

    .line 970
    .local v0, "keyLayout":Landroid/hardware/input/PhysicalKeyLayout;
    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p2, p3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;-><init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V

    return-object v1
.end method

.method public blacklist getKeyboardLayoutTypeForLayoutDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "layoutDescriptor"    # Ljava/lang/String;

    .line 577
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 578
    .local v0, "layout":Landroid/hardware/input/KeyboardLayout;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1
.end method

.method public greylist-max-o getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 534
    :catch_7
    move-exception v0

    .line 535
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 588
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    return-object v0
.end method

.method public whitelist getMaximumObscuringOpacityForTouch()F
    .registers 2

    .line 892
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public blacklist getModifierKeyRemapping()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 705
    :catch_7
    move-exception v0

    .line 706
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMousePointerSpeed()I
    .registers 3

    .line 849
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getMousePointerSpeed()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 850
    :catch_7
    move-exception v0

    .line 851
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 722
    :catch_7
    move-exception v0

    .line 723
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1046
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 1020
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isInTabletMode()I
    .registers 3

    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 475
    :catch_7
    move-exception v0

    .line 476
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMicMuted()I
    .registers 3

    .line 513
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isMicMuted()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 514
    :catch_7
    move-exception v0

    .line 515
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStylusPointerIconEnabled()Z
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 1095
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    .line 1097
    :cond_10
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;

    .line 1320
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    .line 1321
    return-void
.end method

.method public whitelist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 450
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyEventActivityListener;

    .line 1782
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 4
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

    .line 1460
    .local p1, "keyGesturesToHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 1461
    return-void
.end method

.method public blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1431
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    .line 1432
    return-void
.end method

.method public blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    .line 1373
    return-void
.end method

.method public greylist-max-o registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 490
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 491
    return-void
.end method

.method public blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    .line 1403
    return-void
.end method

.method public blacklist remapModifierKey(II)V
    .registers 5
    .param p1, "fromKey"    # I
    .param p2, "toKey"    # I

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->remapModifierKey(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 672
    nop

    .line 673
    return-void

    .line 670
    :catch_7
    move-exception v0

    .line 671
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)V
    .registers 5
    .param p1, "filter"    # Landroid/hardware/input/InputGestureData$Filter;

    .line 1553
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1554
    return-void

    .line 1557
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1558
    if-nez p1, :cond_13

    const/4 v2, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result v2

    .line 1557
    :goto_17
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->removeAllCustomInputGestures(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 1561
    nop

    .line 1562
    return-void

    .line 1559
    :catch_1c
    move-exception v0

    .line 1560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .registers 5
    .param p1, "inputGestureData"    # Landroid/hardware/input/InputGestureData;

    .line 1532
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1533
    const/4 v0, 0x5

    return v0

    .line 1536
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1537
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v2

    .line 1536
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 1538
    :catch_19
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 1346
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    .line 1347
    return-void
.end method

.method public greylist-max-o removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 653
    return-void
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 1165
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removePortAssociation(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1168
    nop

    .line 1169
    return-void

    .line 1166
    :catch_7
    move-exception v0

    .line 1167
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 1239
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method public greylist-max-o requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .line 1112
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 1113
    return-void
.end method

.method public blacklist resetLockedModifierState()V
    .registers 3

    .line 1617
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->resetLockedModifierState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1620
    nop

    .line 1621
    return-void

    .line 1618
    :catch_7
    move-exception v0

    .line 1619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 628
    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p5, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 792
    if-eqz p1, :cond_29

    .line 795
    if-eqz p5, :cond_1f

    .line 800
    :try_start_4
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_6} :catch_13

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "userId":I
    .end local p3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local p4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local p5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .local v2, "userId":I
    .local v3, "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .local v4, "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v5, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_b
    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 804
    nop

    .line 805
    return-void

    .line 802
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "userId":I
    .end local v3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "userId":I
    .restart local p3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local p5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 803
    .end local p2    # "userId":I
    .end local p3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local p4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local p5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .restart local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v2    # "userId":I
    .restart local v3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 796
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "userId":I
    .end local v3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .local p1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "userId":I
    .restart local p3    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p4    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local p5    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1f
    move-object v1, p1

    move v2, p2

    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "userId":I
    .restart local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v2    # "userId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 793
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "userId":I
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "userId":I
    :cond_29
    move-object v1, p1

    move v2, p2

    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "userId":I
    .restart local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v2    # "userId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 12
    .param p1, "icon"    # Landroid/view/PointerIcon;
    .param p2, "displayId"    # I
    .param p3, "deviceId"    # I
    .param p4, "pointerId"    # I
    .param p5, "inputToken"    # Landroid/os/IBinder;

    .line 1084
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

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
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public greylist setPointerIconType(I)V
    .registers 4
    .param p1, "iconId"    # I

    .line 1078
    const-string v0, "InputManager"

    const-string v1, "setPointerIcon: Unsupported app usage!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method public greylist-max-o setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 745
    nop

    .line 746
    return-void

    .line 743
    :catch_7
    move-exception v0

    .line 744
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 867
    const/4 v0, -0x7

    if-lt p1, v0, :cond_13

    const/4 v0, 0x7

    if-gt p1, v0, :cond_13

    .line 872
    :try_start_6
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 875
    nop

    .line 876
    return-void

    .line 873
    :catch_d
    move-exception v0

    .line 874
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 868
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 461
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 462
    return-void
.end method

.method public blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyEventActivityListener;

    .line 1795
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1472
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 1473
    return-void
.end method

.method public blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;

    .line 1443
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    .line 1444
    return-void
.end method

.method public blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    .line 1385
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    .line 1386
    return-void
.end method

.method public greylist-max-o unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 500
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V

    .line 501
    return-void
.end method

.method public blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;

    .line 1415
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    .line 1416
    return-void
.end method

.method public whitelist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1064
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1065
    :catch_7
    move-exception v0

    .line 1066
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
