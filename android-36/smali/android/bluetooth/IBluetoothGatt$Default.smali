.class public Landroid/bluetooth/IBluetoothGatt$Default;
.super Ljava/lang/Object;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "serverIf"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist clearServices(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "serverIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist clientConnect(ILjava/lang/String;IZIZILandroid/content/AttributionSource;)V
    .registers 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "addressType"    # I
    .param p4, "isDirect"    # Z
    .param p5, "transport"    # I
    .param p6, "opportunistic"    # Z
    .param p7, "phy"    # I
    .param p8, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSources"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V
    .registers 7
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "txPhy"    # I
    .param p4, "rxPhy"    # I
    .param p5, "phyOptions"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist disconnectAll(Landroid/content/AttributionSource;)V
    .registers 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;)V
    .registers 10
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I
    .param p5, "peripheralLatency"    # I
    .param p6, "supervisionTimeout"    # I
    .param p7, "minConnectionEventLen"    # I
    .param p8, "maxConnectionEventLen"    # I
    .param p9, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;)V
    .registers 6
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;)V
    .registers 6
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;)V
    .registers 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "startHandle"    # I
    .param p5, "endHandle"    # I
    .param p6, "authReq"    # I
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .param p3, "eatt_support"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;)V
    .registers 6
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "enable"    # Z
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;
    .param p3, "eatt_support"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist removeService(IILandroid/content/AttributionSource;)V
    .registers 4
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;)I
    .registers 8
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "confirm"    # Z
    .param p5, "value"    # [B
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;)V
    .registers 8
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist serverConnect(ILjava/lang/String;IZILandroid/content/AttributionSource;)V
    .registers 7
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "addressType"    # I
    .param p4, "isDirect"    # Z
    .param p5, "transport"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V
    .registers 7
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "txPhy"    # I
    .param p4, "rxPhy"    # I
    .param p5, "phyOptions"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist subrateModeRequest(ILandroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I
    .registers 6
    .param p1, "clientIf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "subrateMode"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterClient(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "clientIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist unregisterServer(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "serverIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;)I
    .registers 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "writeType"    # I
    .param p5, "authReq"    # I
    .param p6, "value"    # [B
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;)I
    .registers 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "value"    # [B
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method
