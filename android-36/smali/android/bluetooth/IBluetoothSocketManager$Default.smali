.class public Landroid/bluetooth/IBluetoothSocketManager$Default;
.super Ljava/lang/Object;
.source "IBluetoothSocketManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocketManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocketManager;
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

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connectSocketWithOffload(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .param p6, "dataPath"    # I
    .param p7, "socketName"    # Ljava/lang/String;
    .param p8, "hubId"    # J
    .param p10, "endpointId"    # J
    .param p12, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSocketChannelWithOffload(ILjava/lang/String;Landroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .param p6, "dataPath"    # I
    .param p7, "socketName"    # Ljava/lang/String;
    .param p8, "hubId"    # J
    .param p10, "endpointId"    # J
    .param p12, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getL2capLocalChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "connectionUuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getL2capRemoteChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "connectionUuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method
