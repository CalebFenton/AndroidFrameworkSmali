.class public final Landroid/media/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiManager$DeviceListener;,
        Landroid/media/midi/MidiManager$DeviceCallback;,
        Landroid/media/midi/MidiManager$OnDeviceOpenedListener;,
        Landroid/media/midi/MidiManager$Transport;
    }
.end annotation


# static fields
.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.bluetoothmidiservice.BluetoothMidiService"

.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_INTENT:Ljava/lang/String; = "android.media.midi.BluetoothMidiService"

.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.bluetoothmidiservice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiManager"

.field public static final whitelist TRANSPORT_MIDI_BYTE_STREAM:I = 0x1

.field public static final whitelist TRANSPORT_UNIVERSAL_MIDI_PACKETS:I = 0x2


# instance fields
.field private greylist-max-o mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/media/midi/MidiManager$DeviceCallback;",
            "Landroid/media/midi/MidiManager$DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/media/midi/IMidiManager;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendOpenDeviceResponse(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/IMidiManager;)V
    .registers 3
    .param p1, "service"    # Landroid/media/midi/IMidiManager;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    iput-object p1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    .line 225
    return-void
.end method

.method private greylist-max-o sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 347
    if-eqz p3, :cond_b

    .line 348
    new-instance v0, Landroid/media/midi/MidiManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/midi/MidiManager$1;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 354
    :cond_b
    invoke-interface {p2, p1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    .line 356
    :goto_e
    return-void
.end method


# virtual methods
.method public blacklist closeBluetoothDevice(Landroid/media/midi/MidiDevice;)V
    .registers 5
    .param p1, "midiDevice"    # Landroid/media/midi/MidiDevice;

    .line 448
    :try_start_0
    invoke-virtual {p1}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 451
    goto :goto_1d

    .line 449
    :catch_4
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception closing BLE-MIDI device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1d
    return-void
.end method

.method public blacklist createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;
    .registers 21
    .param p1, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p2, "numOutputPorts"    # I
    .param p3, "inputPortNames"    # [Ljava/lang/String;
    .param p4, "outputPortNames"    # [Ljava/lang/String;
    .param p5, "properties"    # Landroid/os/Bundle;
    .param p6, "type"    # I
    .param p7, "defaultProtocol"    # I
    .param p8, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .line 460
    :try_start_0
    new-instance v0, Landroid/media/midi/MidiDeviceServer;

    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_2c

    move-object/from16 v2, p8

    :try_start_6
    invoke-direct {v0, v1, p1, p2, v2}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 462
    .local v0, "server":Landroid/media/midi/MidiDeviceServer;
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v4

    array-length v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 465
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v1, :cond_29

    .line 466
    const-string v3, "MidiManager"

    const-string v4, "registerVirtualDevice failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_27} :catch_2a

    .line 467
    const/4 v3, 0x0

    return-object v3

    .line 469
    :cond_29
    return-object v0

    .line 470
    .end local v0    # "server":Landroid/media/midi/MidiDeviceServer;
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :catch_2a
    move-exception v0

    goto :goto_2f

    :catch_2c
    move-exception v0

    move-object/from16 v2, p8

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v0}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 318
    :catch_7
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDevicesForTransport(I)Ljava/util/Set;
    .registers 4
    .param p1, "transport"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v0, p1}, Landroid/media/midi/IMidiManager;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 336
    .local v0, "devices":[Landroid/media/midi/MidiDeviceInfo;
    if-nez v0, :cond_d

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 339
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 340
    .end local v0    # "devices":[Landroid/media/midi/MidiDeviceInfo;
    :catch_13
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 416
    move-object v0, p2

    .line 417
    .local v0, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v1, p3

    .line 419
    .local v1, "handlerF":Landroid/os/Handler;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openBluetoothDevice() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MidiManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v2, Landroid/media/midi/MidiManager$3;

    invoke-direct {v2, p0, v0, v1}, Landroid/media/midi/MidiManager$3;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 439
    .local v2, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_1f
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, p1, v2}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_28

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catch_28
    move-exception v3

    .line 441
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public whitelist openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 10
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 370
    move-object v0, p1

    .line 371
    .local v0, "deviceInfoF":Landroid/media/midi/MidiDeviceInfo;
    move-object v1, p2

    .line 372
    .local v1, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v2, p3

    .line 374
    .local v2, "handlerF":Landroid/os/Handler;
    new-instance v3, Landroid/media/midi/MidiManager$2;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/media/midi/MidiManager$2;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 388
    .local v3, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_8
    iget-object v4, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, p1, v3}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    .line 391
    nop

    .line 392
    return-void

    .line 389
    :catch_11
    move-exception v4

    .line 390
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist registerDeviceCallback(ILjava/util/concurrent/Executor;Landroid/media/midi/MidiManager$DeviceCallback;)V
    .registers 7
    .param p1, "transport"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .line 280
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Landroid/media/midi/MidiManager$DeviceListener;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V

    .line 283
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_8
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_16

    .line 286
    nop

    .line 287
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void

    .line 284
    :catch_16
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-eqz p2, :cond_c

    .line 249
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    move-object v0, v1

    .line 251
    :cond_c
    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V

    .line 254
    .local v1, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_12
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_20

    .line 257
    nop

    .line 258
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void

    .line 255
    :catch_20
    move-exception v2

    .line 256
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist unregisterDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .line 296
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager$DeviceListener;

    .line 297
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    if-eqz v0, :cond_18

    .line 299
    :try_start_a
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 302
    goto :goto_18

    .line 300
    :catch_12
    move-exception v1

    .line 301
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 304
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method
