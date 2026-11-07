.class public interface abstract Landroid/bluetooth/BluetoothVolumeControl$Callback;
.super Ljava/lang/Object;
.source "BluetoothVolumeControl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public whitelist onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 168
    return-void
.end method

.method public whitelist onVolumeOffsetAudioDescriptionChanged(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "audioDescription"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 154
    return-void
.end method

.method public whitelist onVolumeOffsetAudioLocationChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "audioLocation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 139
    return-void
.end method

.method public whitelist onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volumeOffset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    return-void
.end method

.method public whitelist onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 121
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    .line 122
    invoke-interface {p0, p1, p3}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 124
    :cond_6
    return-void
.end method
