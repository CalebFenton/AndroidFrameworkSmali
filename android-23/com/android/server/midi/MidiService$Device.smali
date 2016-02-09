.class final Lcom/android/server/midi/MidiService$Device;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Device"
.end annotation


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field private mServer:Landroid/media/midi/IMidiDeviceServer;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method static synthetic -set0(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V
    .locals 0
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 289
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@c
    .line 303
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@e
    .line 304
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    .line 305
    invoke-static {p1}, Lcom/android/server/midi/MidiService;->-get1(Lcom/android/server/midi/MidiService;)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    #@17
    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 289
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@c
    .line 294
    iput-object p3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@e
    .line 295
    iput-object p4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    .line 296
    iput p5, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    #@12
    .line 297
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    .line 298
    const-string/jumbo v1, "bluetooth_device"

    #@19
    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1f
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@21
    .line 299
    invoke-direct {p0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    #@24
    .line 293
    return-void
.end method

.method private setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 6
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 309
    if-eqz p1, :cond_3

    #@3
    .line 310
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 311
    const-string/jumbo v4, "MidiService"

    #@a
    const-string/jumbo v5, "mServer already set in setDeviceServer"

    #@d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 312
    return-void

    #@11
    .line 314
    :cond_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    .line 316
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@17
    if-nez v4, :cond_1

    #@19
    .line 317
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@1c
    move-result-object v4

    #@1d
    iput-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@1f
    .line 319
    :cond_1
    const/4 v4, 0x0

    #@20
    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@23
    .line 320
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 325
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@27
    invoke-static {v4}, Lcom/android/server/midi/MidiService;->-get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 341
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@30
    if-eqz v4, :cond_4

    #@32
    .line 342
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v2

    #@38
    .local v2, "connection$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_4

    #@3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@44
    .line 343
    .local v1, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    #@47
    goto :goto_1

    #@48
    .line 321
    .end local v1    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v2    # "connection$iterator":Ljava/util/Iterator;
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    #@49
    .line 322
    .local v3, "e":Landroid/os/RemoteException;
    iput-object v5, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@4b
    .line 323
    return-void

    #@4c
    .line 326
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@4e
    if-eqz v4, :cond_2

    #@50
    .line 327
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@52
    .line 328
    iput-object v5, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@54
    .line 330
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@57
    move-result-object v0

    #@58
    .line 331
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@5a
    invoke-static {v4}, Lcom/android/server/midi/MidiService;->-get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 334
    :try_start_1
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    #@64
    .line 335
    const/4 v4, 0x0

    #@65
    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    goto :goto_0

    #@69
    .line 336
    :catch_1
    move-exception v3

    #@6a
    .restart local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    #@6b
    .line 308
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 5
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    #@0
    .prologue
    .line 386
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 388
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 389
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@e
    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    :goto_0
    monitor-exit v2

    #@12
    .line 385
    return-void

    #@13
    .line 390
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@15
    if-nez v1, :cond_4

    #@17
    .line 391
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@19
    if-nez v1, :cond_2

    #@1b
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@1d
    if-eqz v1, :cond_4

    #@1f
    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 394
    new-instance v1, Lcom/android/server/midi/MidiService$Device$1;

    #@26
    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    #@29
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@2b
    .line 409
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 410
    new-instance v0, Landroid/content/Intent;

    #@31
    const-string/jumbo v1, "android.media.midi.BluetoothMidiService"

    #@34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@37
    .line 411
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@39
    .line 412
    const-string/jumbo v3, "com.android.bluetoothmidiservice"

    #@3c
    .line 413
    const-string/jumbo v4, "com.android.bluetoothmidiservice.BluetoothMidiService"

    #@3f
    .line 411
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@45
    .line 414
    const-string/jumbo v1, "device"

    #@48
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@4a
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4d
    .line 421
    :goto_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@4f
    invoke-static {v1}, Lcom/android/server/midi/MidiService;->-get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    #@52
    move-result-object v1

    #@53
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@55
    .line 422
    const/4 v4, 0x1

    #@56
    .line 421
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_0

    #@5c
    .line 423
    const-string/jumbo v1, "MidiService"

    #@5f
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "Unable to bind service: "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 424
    const/4 v1, 0x0

    #@77
    invoke-direct {p0, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    #@7a
    .line 425
    const/4 v1, 0x0

    #@7b
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    goto :goto_0

    #@7e
    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@7f
    monitor-exit v2

    #@80
    throw v1

    #@81
    .line 416
    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    #@83
    const-string/jumbo v1, "android.media.midi.MidiDeviceService"

    #@86
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@89
    .line 418
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@8b
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@8d
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8f
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@91
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@93
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@96
    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@99
    goto :goto_1

    #@9a
    .line 428
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v1, "MidiService"

    #@9d
    const-string/jumbo v3, "No way to connect to device in addDeviceConnection"

    #@a0
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 429
    const/4 v1, 0x0

    #@a4
    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a7
    goto/16 :goto_0
.end method

.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 478
    const-string/jumbo v0, "MidiService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Device died: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 479
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@1c
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@1f
    move-result-object v0

    #@20
    monitor-enter v0

    #@21
    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v0

    #@25
    .line 477
    return-void

    #@26
    .line 479
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v0

    #@28
    throw v1
.end method

.method public closeLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 455
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@3
    monitor-enter v3

    #@4
    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@16
    .line 457
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getClient()Lcom/android/server/midi/MidiService$Client;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 455
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2

    #@21
    .line 459
    .restart local v1    # "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 461
    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    #@2a
    .line 465
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 466
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@30
    invoke-static {v2, p0}, Lcom/android/server/midi/MidiService;->-wrap1(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V

    #@33
    .line 471
    :goto_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 472
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@39
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->-get0(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@3f
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 454
    :cond_1
    return-void

    #@43
    .line 468
    :cond_2
    new-instance v2, Landroid/media/midi/MidiDeviceStatus;

    #@45
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@47
    invoke-direct {v2, v3}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    #@4a
    iput-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    #@4c
    goto :goto_1
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object v0
.end method

.method public getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@2
    return-object v0
.end method

.method public getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 374
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@8
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 378
    iget v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    #@2
    return v0
.end method

.method public isUidAllowed(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 382
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@3
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    #@b
    if-ne v1, p1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    #@0
    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 438
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 439
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@16
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@1c
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1f
    .line 440
    const/4 v0, 0x0

    #@20
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@22
    .line 441
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 443
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    #@28
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@2b
    move-result-object v0

    #@2c
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2d
    .line 444
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    :cond_0
    :goto_0
    monitor-exit v1

    #@32
    .line 434
    return-void

    #@33
    .line 443
    :catchall_0
    move-exception v2

    #@34
    :try_start_3
    monitor-exit v0

    #@35
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@36
    .line 435
    :catchall_1
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0

    #@39
    .line 447
    :cond_1
    const/4 v0, 0x0

    #@3a
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    goto :goto_0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    .line 353
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    #@2
    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "Device Info: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 487
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    .line 488
    const-string/jumbo v1, " Status: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 489
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    .line 490
    const-string/jumbo v1, " UID: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 491
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 492
    const-string/jumbo v1, " DeviceConnection count: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 493
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 494
    const-string/jumbo v1, " mServiceConnection: "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 495
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
