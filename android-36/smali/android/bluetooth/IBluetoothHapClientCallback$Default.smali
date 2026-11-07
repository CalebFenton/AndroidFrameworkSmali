.class public Landroid/bluetooth/IBluetoothHapClientCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothHapClientCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHapClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHapClientCallback;
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

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    .local p2, "presetInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    return-void
.end method

.method public blacklist onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onPresetSelectionForGroupFailed(II)V
    .registers 3
    .param p1, "hapGroupId"    # I
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onSetPresetNameForGroupFailed(II)V
    .registers 3
    .param p1, "hapGroupId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
