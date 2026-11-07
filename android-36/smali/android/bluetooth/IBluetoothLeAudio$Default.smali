.class public Landroid/bluetooth/IBluetoothLeAudio$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeAudio.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeAudio;
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

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveDevices(Landroid/content/AttributionSource;)Ljava/util/List;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllBroadcastMetadata(Landroid/content/AttributionSource;)Ljava/util/List;
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAudioLocation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBroadcastToUnicastFallbackGroup(Landroid/content/AttributionSource;)I
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodecStatus(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    .registers 4
    .param p1, "groupId"    # I
    .param p2, "source"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectedGroupLeadDevice(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;
    .registers 4
    .param p1, "groupId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
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

    .line 54
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

    .line 38
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaximumNumberOfBroadcasts()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaximumStreamsPerBroadcast()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaximumSubgroupsPerBroadcast()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist groupAddNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .registers 5
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .registers 5
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBroadcastActive(Landroid/content/AttributionSource;)Z
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInbandRingtoneEnabled(Landroid/content/AttributionSource;I)Z
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPlaying(ILandroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "broadcastId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothLeAudioCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
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

.method public blacklist setBroadcastToUnicastFallbackGroup(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "groupId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist setCcidInformation(Landroid/os/ParcelUuid;IILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "userUuid"    # Landroid/os/ParcelUuid;
    .param p2, "ccid"    # I
    .param p3, "contextType"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "inputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p3, "outputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p4, "source"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
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

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setInCall(ZLandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "inCall"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist setInactiveForHfpHandover(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist setVolume(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "volume"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "broadcastSettings"    # Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist stopBroadcast(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "broadcastId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothLeAudioCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist unregisterLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "broadcastId"    # I
    .param p2, "broadcastSettings"    # Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method
