.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDeviceVibrator;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/input/InputManager;[I)V
    .locals 0
    .param p1, "deviceIdAndGeneration"    # [I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .locals 1
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@a
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 67
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@11
    .line 175
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@13
    .line 174
    return-void
.end method

.method private static containsDeviceId([II)Z
    .locals 2
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 764
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 765
    aget v1, p0, v0

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 766
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 764
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@c
    goto :goto_0

    #@d
    .line 769
    :cond_1
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    #@0
    .prologue
    .line 324
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 325
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 326
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    #@11
    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 327
    return v0

    #@16
    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 330
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .locals 4

    #@0
    .prologue
    .line 186
    const-class v2, Landroid/hardware/input/InputManager;

    #@2
    monitor-enter v2

    #@3
    .line 187
    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 188
    const-string/jumbo v1, "input"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 189
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/input/InputManager;

    #@10
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v1, v3}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    #@17
    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    #@19
    .line 191
    :cond_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 186
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private onInputDevicesChanged([I)V
    .locals 8
    .param p1, "deviceIdAndGeneration"    # [I

    #@0
    .prologue
    .line 717
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 718
    :try_start_0
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v3

    #@9
    .local v3, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    #@b
    if-lez v3, :cond_1

    #@d
    .line 719
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@12
    move-result v1

    #@13
    .line 720
    .local v1, "deviceId":I
    invoke-static {p1, v1}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_0

    #@19
    .line 724
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    #@1e
    .line 725
    const/4 v5, 0x2

    #@1f
    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 717
    .end local v1    # "deviceId":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    #@24
    monitor-exit v6

    #@25
    throw v5

    #@26
    .line 729
    .restart local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    #@27
    :goto_1
    :try_start_1
    array-length v5, p1

    #@28
    if-ge v3, v5, :cond_4

    #@2a
    .line 730
    aget v1, p1, v3

    #@2c
    .line 731
    .restart local v1    # "deviceId":I
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@31
    move-result v4

    #@32
    .line 732
    .local v4, "index":I
    if-ltz v4, :cond_3

    #@34
    .line 733
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/view/InputDevice;

    #@3c
    .line 734
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_2

    #@3e
    .line 735
    add-int/lit8 v5, v3, 0x1

    #@40
    aget v2, p1, v5

    #@42
    .line 736
    .local v2, "generation":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getGeneration()I

    #@45
    move-result v5

    #@46
    if-eq v5, v2, :cond_2

    #@48
    .line 740
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@4a
    const/4 v7, 0x0

    #@4b
    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    #@4e
    .line 741
    const/4 v5, 0x3

    #@4f
    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    #@52
    .line 729
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v2    # "generation":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x2

    #@54
    goto :goto_1

    #@55
    .line 748
    :cond_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@57
    const/4 v7, 0x0

    #@58
    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5b
    .line 749
    const/4 v5, 0x1

    #@5c
    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    goto :goto_2

    #@60
    .end local v1    # "deviceId":I
    .end local v4    # "index":I
    :cond_4
    monitor-exit v6

    #@61
    .line 712
    return-void
.end method

.method private populateInputDevicesLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 686
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 687
    new-instance v3, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    #@7
    invoke-direct {v3, p0, v6}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$InputDevicesChangedListener;)V

    #@a
    .line 689
    .local v3, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@c
    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 694
    iput-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    #@11
    .line 697
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :cond_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 700
    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@17
    invoke-interface {v4}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    move-result-object v2

    #@1b
    .line 705
    .local v2, "ids":[I
    new-instance v4, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@20
    iput-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@22
    .line 706
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@24
    if-ge v1, v4, :cond_1

    #@26
    .line 707
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@28
    aget v5, v2, v1

    #@2a
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2d
    .line 706
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 690
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .restart local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_0
    move-exception v0

    #@31
    .line 691
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@33
    .line 692
    const-string/jumbo v5, "Could not get register input device changed listener"

    #@36
    .line 691
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v4

    #@3a
    .line 701
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_1
    move-exception v0

    #@3b
    .line 702
    .restart local v0    # "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@3d
    const-string/jumbo v5, "Could not get input device ids."

    #@40
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    throw v4

    #@44
    .line 685
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 756
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 757
    .local v2, "numListeners":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 758
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    #@11
    .line 759
    .local v1, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 757
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 755
    .end local v1    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    if-nez p1, :cond_0

    #@2
    .line 460
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 462
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 467
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 458
    :goto_0
    return-void

    #@1c
    .line 468
    :catch_0
    move-exception v0

    #@1d
    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@20
    const-string/jumbo v2, "Could not add keyboard layout for input device."

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method public deviceHasKeys(I[I)[Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    #@0
    .prologue
    .line 637
    array-length v2, p2

    #@1
    new-array v1, v2, [Z

    #@3
    .line 639
    .local v1, "ret":[Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@5
    const/16 v3, -0x100

    #@7
    invoke-interface {v2, p1, v3, p2, v1}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 643
    :goto_0
    return-object v1

    #@b
    .line 640
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deviceHasKeys([I)[Z
    .locals 1
    .param p1, "keyCodes"    # [I

    #@0
    .prologue
    .line 620
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 388
    :catch_0
    move-exception v0

    #@8
    .line 389
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@b
    const-string/jumbo v2, "Could not get current keyboard layout for input device."

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 390
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 201
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 202
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    #@7
    .line 204
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    .line 205
    .local v1, "index":I
    if-gez v1, :cond_0

    #@f
    monitor-exit v4

    #@10
    .line 206
    return-object v5

    #@11
    .line 209
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/view/InputDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 210
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    #@1b
    .line 212
    :try_start_2
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@1d
    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 216
    if-eqz v2, :cond_1

    #@23
    .line 217
    :try_start_3
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    :cond_1
    monitor-exit v4

    #@29
    .line 220
    return-object v2

    #@2a
    .line 213
    :catch_0
    move-exception v0

    #@2b
    .line 214
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v5, "Could not get input device information."

    #@30
    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@34
    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 8
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 231
    if-nez p1, :cond_0

    #@3
    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "descriptor must not be null."

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 235
    :cond_0
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@e
    monitor-enter v6

    #@f
    .line 236
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    #@12
    .line 238
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v4

    #@18
    .line 239
    .local v4, "numDevices":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    #@1b
    .line 240
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/view/InputDevice;

    #@23
    .line 241
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_3

    #@25
    .line 242
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v2

    #@2b
    .line 244
    .local v2, "id":I
    :try_start_1
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2d
    invoke-interface {v5, v2}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v3

    #@31
    .line 248
    :goto_1
    if-nez v3, :cond_2

    #@33
    .line 239
    .end local v2    # "id":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 251
    .restart local v2    # "id":I
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    #@3b
    .line 253
    .end local v2    # "id":I
    :cond_3
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_1

    #@45
    monitor-exit v6

    #@46
    .line 254
    return-object v3

    #@47
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_4
    monitor-exit v6

    #@48
    .line 257
    return-object v7

    #@49
    .line 235
    .end local v1    # "i":I
    .end local v4    # "numDevices":I
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit v6

    #@4b
    throw v5

    #@4c
    .line 245
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    .restart local v4    # "numDevices":I
    :catch_0
    move-exception v0

    #@4d
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public getInputDeviceIds()[I
    .locals 5

    #@0
    .prologue
    .line 266
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    #@6
    .line 269
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v0

    #@c
    .line 270
    .local v0, "count":I
    new-array v2, v0, [I

    #@e
    .line 271
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 272
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@16
    move-result v3

    #@17
    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 271
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    monitor-exit v4

    #@1d
    .line 274
    return-object v2

    #@1e
    .line 266
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 778
    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    #@5
    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 4
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 364
    if-nez p1, :cond_0

    #@3
    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@e
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 370
    :catch_0
    move-exception v0

    #@14
    .line 371
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@17
    const-string/jumbo v2, "Could not get keyboard layout information."

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 372
    return-object v3
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 3

    #@0
    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 348
    :catch_0
    move-exception v0

    #@8
    .line 349
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@b
    const-string/jumbo v2, "Could not get list of keyboard layout informations."

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 350
    const/4 v1, 0x0

    #@12
    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    #@14
    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 433
    if-nez p1, :cond_0

    #@2
    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 438
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@d
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 439
    :catch_0
    move-exception v0

    #@13
    .line 440
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@16
    const-string/jumbo v2, "Could not get keyboard layouts for input device."

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 441
    const-class v1, Ljava/lang/String;

    #@1e
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, [Ljava/lang/String;

    #@24
    return-object v1
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 554
    const/4 v1, 0x0

    #@1
    .line 556
    .local v1, "speed":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 557
    const-string/jumbo v3, "pointer_speed"

    #@8
    .line 556
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 560
    :goto_0
    return v1

    #@d
    .line 558
    :catch_0
    move-exception v0

    #@e
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    #@0
    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 513
    :catch_0
    move-exception v0

    #@8
    .line 514
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@b
    const-string/jumbo v2, "Could not get calibration matrix for input device."

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 515
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@13
    return-object v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 669
    if-nez p1, :cond_0

    #@3
    .line 670
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "event must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 672
    :cond_0
    if-eqz p2, :cond_1

    #@e
    .line 673
    const/4 v1, 0x2

    #@f
    if-eq p2, v1, :cond_1

    #@11
    .line 674
    const/4 v1, 0x1

    #@12
    if-eq p2, v1, :cond_1

    #@14
    .line 675
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "mode is invalid"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 679
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@1f
    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 680
    :catch_0
    move-exception v0

    #@25
    .line 681
    .local v0, "ex":Landroid/os/RemoteException;
    return v2
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 293
    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@d
    monitor-enter v2

    #@e
    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    #@11
    move-result v0

    #@12
    .line 295
    .local v0, "index":I
    if-gez v0, :cond_1

    #@14
    .line 296
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@16
    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    #@18
    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    #@1b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit v2

    #@1f
    .line 288
    return-void

    #@20
    .line 293
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 487
    if-nez p1, :cond_0

    #@2
    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 490
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 495
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 486
    :goto_0
    return-void

    #@1c
    .line 496
    :catch_0
    move-exception v0

    #@1d
    .line 497
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@20
    const-string/jumbo v2, "Could not remove keyboard layout for input device."

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    if-nez p1, :cond_0

    #@2
    .line 410
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "identifier must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 412
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 417
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 408
    :goto_0
    return-void

    #@1c
    .line 419
    :catch_0
    move-exception v0

    #@1d
    .line 420
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@20
    const-string/jumbo v2, "Could not set current keyboard layout for input device."

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    #@0
    .prologue
    .line 576
    const/4 v0, -0x7

    #@1
    if-lt p2, v0, :cond_0

    #@3
    const/4 v0, 0x7

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "speed out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 580
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v0

    #@13
    .line 581
    const-string/jumbo v1, "pointer_speed"

    #@16
    .line 580
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@19
    .line 575
    return-void
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 532
    :goto_0
    return-void

    #@6
    .line 535
    :catch_0
    move-exception v0

    #@7
    .line 536
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@a
    const-string/jumbo v2, "Could not set calibration matrix for input device."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public tryPointerSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    #@0
    .prologue
    .line 596
    const/4 v1, -0x7

    #@1
    if-lt p1, v1, :cond_0

    #@3
    const/4 v1, 0x7

    #@4
    if-le p1, v1, :cond_1

    #@6
    .line 597
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "speed out of range"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 601
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    #@11
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 595
    :goto_0
    return-void

    #@15
    .line 602
    :catch_0
    move-exception v0

    #@16
    .line 603
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@19
    const-string/jumbo v2, "Could not set temporary pointer speed."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    #@0
    .prologue
    .line 309
    if-nez p1, :cond_0

    #@2
    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "listener must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 313
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 314
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    #@11
    move-result v1

    #@12
    .line 315
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@14
    .line 316
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    #@1c
    .line 317
    .local v0, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@20
    .line 318
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .end local v0    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_1
    monitor-exit v3

    #@26
    .line 308
    return-void

    #@27
    .line 313
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method
