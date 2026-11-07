.class public Landroid/media/midi/IMidiManager$Default;
.super Ljava/lang/Object;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 3
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;
    .registers 3
    .param p1, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "device"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;
    .registers 10
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I
    .param p8, "defaultProtocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 3
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 2
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist updateTotalBytes(Landroid/media/midi/IMidiDeviceServer;II)V
    .registers 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "inputBytes"    # I
    .param p3, "outputBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method
