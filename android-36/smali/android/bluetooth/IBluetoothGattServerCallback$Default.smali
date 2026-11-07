.class public Landroid/bluetooth/IBluetoothGattServerCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "handle"    # I
    .param p8, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onConnectionUpdated(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist onDescriptorReadRequest(Ljava/lang/String;IIZI)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "handle"    # I
    .param p8, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onExecuteWrite(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "execWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onMtuChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onNotificationSent(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onPhyRead(Ljava/lang/String;III)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onPhyUpdate(Ljava/lang/String;III)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onServerConnectionState(IIZLjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onServerRegistered(II)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onSubrateChange(Ljava/lang/String;IIIII)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method
