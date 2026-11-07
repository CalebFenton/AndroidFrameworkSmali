.class public final Landroid/accessibilityservice/BrailleDisplayControllerImpl;
.super Ljava/lang/Object;
.source "BrailleDisplayControllerImpl.java"

# interfaces
.implements Landroid/accessibilityservice/BrailleDisplayController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    }
.end annotation


# static fields
.field private static final blacklist IS_HIDRAW_SUPPORTED:Z


# instance fields
.field private final blacklist mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

.field private blacklist mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsHidrawSupported:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$KHcEJn3pcti7FkPq9fG-Dv1PLh8(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->lambda$connect$0(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$se_al-kR4RiGxEP4kgmHPxOw1AE(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->lambda$connect$1(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/IBrailleDisplayConnection;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/IBrailleDisplayConnection;)V
    .registers 2

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearConnectionLocked(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    const-string/jumbo v0, "ro.accessibility.support_hidraw"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->IS_HIDRAW_SUPPORTED:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .registers 4
    .param p1, "accessibilityService"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 72
    sget-boolean v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->IS_HIDRAW_SUPPORTED:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;Z)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "accessibilityService"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "isHidrawSupported"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    .line 79
    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    .line 80
    iput-boolean p3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mIsHidrawSupported:Z

    .line 81
    return-void
.end method

.method private blacklist clearConnectionLocked()V
    .registers 2

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    .line 294
    return-void
.end method

.method private blacklist connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 7
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;",
            ")V"
        }
    .end annotation

    .line 139
    .local p1, "createConnection":Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;, "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<Landroid/accessibilityservice/IAccessibilityServiceConnection;>;"
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 140
    iget-boolean v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mIsHidrawSupported:Z

    if-nez v0, :cond_10

    .line 141
    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 145
    :cond_10
    invoke-virtual {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_40

    .line 149
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    .line 151
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    .line 150
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 152
    .local v0, "serviceConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_38

    .line 155
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_25
    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 157
    iput-object p3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 158
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 160
    :try_start_2a
    invoke-interface {p1, v0}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2f

    .line 163
    nop

    .line 164
    return-void

    .line 161
    :catch_2f
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    .line 153
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility service is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "serviceConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This service already has a connected Braille display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic blacklist lambda$connect$0(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceConnection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    nop

    .line 99
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/BrailleDisplayControllerImpl-IA;)V

    .line 98
    invoke-interface {p2, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method private synthetic blacklist lambda$connect$1(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 5
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "serviceConnection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/BrailleDisplayControllerImpl-IA;)V

    invoke-interface {p2, p1, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method static synthetic blacklist lambda$connect$2(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 141
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onConnectionFailed(I)V

    return-void
.end method


# virtual methods
.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 87
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    .line 88
    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 5
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    .line 101
    return-void
.end method

.method public whitelist connect(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 4
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 106
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    .line 107
    return-void
.end method

.method public whitelist connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 5
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    .line 119
    return-void
.end method

.method public whitelist disconnect()V
    .registers 4

    .line 195
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 196
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_6
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    if-eqz v1, :cond_f

    .line 199
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    invoke-interface {v1}, Landroid/accessibilityservice/IBrailleDisplayConnection;->disconnect()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_19
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    .line 204
    :cond_f
    :try_start_f
    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    .line 205
    nop

    .line 206
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    .line 207
    return-void

    .line 206
    :catchall_15
    move-exception v1

    goto :goto_24

    .line 204
    :catchall_17
    move-exception v1

    goto :goto_1f

    .line 201
    :catch_19
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1a
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    throw v2
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    :goto_1f
    :try_start_1f
    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    .line 205
    nop

    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    throw v1

    .line 206
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_15

    throw v1
.end method

.method public whitelist isConnected()Z
    .registers 2

    .line 168
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 169
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist write([B)V
    .registers 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 175
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    array-length v0, p1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v1

    if-gt v0, v1, :cond_2d

    .line 181
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_10
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_2a

    if-eqz v1, :cond_22

    .line 186
    :try_start_14
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    invoke-interface {v1, p1}, Landroid/accessibilityservice/IBrailleDisplayConnection;->write([B)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_2a

    .line 189
    nop

    .line 190
    :try_start_1a
    monitor-exit v0

    .line 191
    return-void

    .line 187
    :catch_1c
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    .end local p1    # "buffer":[B
    throw v2

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    .restart local p1    # "buffer":[B
    :cond_22
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Braille display is not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    .end local p1    # "buffer":[B
    throw v1

    .line 190
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl;
    .restart local p1    # "buffer":[B
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2a

    throw v1

    .line 179
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid write buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
