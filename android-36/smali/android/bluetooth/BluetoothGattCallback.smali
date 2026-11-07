.class public abstract Landroid/bluetooth/BluetoothGattCallback;
.super Ljava/lang/Object;
.source "BluetoothGattCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    return-void
.end method

.method public whitelist onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B

    .line 150
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 151
    return-void
.end method

.method public whitelist onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    return-void
.end method

.method public whitelist onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .param p4, "status"    # I

    .line 102
    invoke-virtual {p0, p1, p2, p4}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 103
    return-void
.end method

.method public whitelist onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 120
    return-void
.end method

.method public whitelist onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 60
    return-void
.end method

.method public blacklist onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .registers 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 244
    return-void
.end method

.method public whitelist onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    return-void
.end method

.method public whitelist onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I
    .param p4, "value"    # [B

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 183
    return-void
.end method

.method public whitelist onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 194
    return-void
.end method

.method public whitelist onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 227
    return-void
.end method

.method public whitelist onPhyRead(Landroid/bluetooth/BluetoothGatt;III)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 49
    return-void
.end method

.method public whitelist onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 36
    return-void
.end method

.method public whitelist onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 215
    return-void
.end method

.method public whitelist onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 203
    return-void
.end method

.method public whitelist onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 254
    return-void
.end method

.method public whitelist onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 70
    return-void
.end method

.method public blacklist onSubrateChange(Landroid/bluetooth/BluetoothGatt;IIIII)V
    .registers 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 276
    return-void
.end method
