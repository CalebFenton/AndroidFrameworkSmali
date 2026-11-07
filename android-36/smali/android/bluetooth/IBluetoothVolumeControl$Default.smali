.class public Landroid/bluetooth/IBluetoothVolumeControl$Default;
.super Ljava/lang/Object;
.source "IBluetoothVolumeControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothVolumeControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputGainSettingMax(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputGainSettingMin(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputGainSettingUnit(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputStatus(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioInputType(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGroupVolume(ILandroid/content/AttributionSource;)I
    .registers 4
    .param p1, "group_id"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumberOfAudioInputControlServices(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumberOfVolumeOffsetInstances(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAudioInputDescriptionWritable(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolumeOffsetAvailable(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist muteGroup(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "group_id"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist notifyNewRegisteredCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist registerAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "callback"    # Landroid/bluetooth/IAudioInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist setAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "gainMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "gainSetting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "mute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "isGroupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist setGroupActive(IZLandroid/content/AttributionSource;)V
    .registers 4
    .param p1, "group_id"    # I
    .param p2, "active"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist setGroupVolume(IILandroid/content/AttributionSource;)V
    .registers 4
    .param p1, "group_id"    # I
    .param p2, "volume"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist setVolumeOffset(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist unmute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist unmuteGroup(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "group_id"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist unregisterAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "instanceId"    # I
    .param p4, "callback"    # Landroid/bluetooth/IAudioInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method
