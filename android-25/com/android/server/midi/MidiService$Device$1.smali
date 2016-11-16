.class Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/midi/MidiService$Device;

    #@0
    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 408
    const/4 v3, 0x0

    #@1
    .line 409
    .local v3, "server":Landroid/media/midi/IMidiDeviceServer;
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@3
    invoke-static {v4}, Lcom/android/server/midi/MidiService$Device;->-get0(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    #@6
    move-result-object v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 410
    invoke-static {p2}, Landroid/media/midi/IBluetoothMidiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IBluetoothMidiService;

    #@c
    move-result-object v2

    #@d
    .line 414
    .local v2, "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@f
    invoke-static {v4}, Lcom/android/server/midi/MidiService$Device;->-get0(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    #@12
    move-result-object v4

    #@13
    invoke-interface {v2, v4}, Landroid/media/midi/IBluetoothMidiService;->addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;

    #@16
    move-result-object v0

    #@17
    .line 415
    .local v0, "deviceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v3

    #@1b
    .line 422
    .end local v0    # "deviceBinder":Landroid/os/IBinder;
    .end local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    .end local v3    # "server":Landroid/media/midi/IMidiDeviceServer;
    :goto_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@1d
    invoke-static {v4, v3}, Lcom/android/server/midi/MidiService$Device;->-wrap0(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    #@20
    .line 407
    return-void

    #@21
    .line 416
    .restart local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    .restart local v3    # "server":Landroid/media/midi/IMidiDeviceServer;
    :catch_0
    move-exception v1

    #@22
    .line 417
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MidiService"

    #@25
    const-string/jumbo v5, "Could not call addBluetoothDevice()"

    #@28
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 420
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :cond_0
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    #@2f
    move-result-object v3

    #@30
    .local v3, "server":Landroid/media/midi/IMidiDeviceServer;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 427
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->-wrap0(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    #@6
    .line 428
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    #@8
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->-set0(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    #@b
    .line 426
    return-void
.end method
