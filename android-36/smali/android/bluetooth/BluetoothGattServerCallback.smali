.class public abstract Landroid/bluetooth/BluetoothGattServerCallback;
.super Ljava/lang/Object;
.source "BluetoothGattServerCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 55
    return-void
.end method

.method public whitelist onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .line 77
    return-void
.end method

.method public whitelist onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 30
    return-void
.end method

.method public blacklist onConnectionUpdated(Landroid/bluetooth/BluetoothDevice;IIII)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 192
    return-void
.end method

.method public whitelist onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .line 93
    return-void
.end method

.method public whitelist onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .line 115
    return-void
.end method

.method public whitelist onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "execute"    # Z

    .line 126
    return-void
.end method

.method public whitelist onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "mtu"    # I

    .line 148
    return-void
.end method

.method public whitelist onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 137
    return-void
.end method

.method public whitelist onPhyRead(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 175
    return-void
.end method

.method public whitelist onPhyUpdate(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 162
    return-void
.end method

.method public whitelist onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 39
    return-void
.end method

.method public blacklist onSubrateChange(Landroid/bluetooth/BluetoothDevice;IIIII)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 214
    return-void
.end method
