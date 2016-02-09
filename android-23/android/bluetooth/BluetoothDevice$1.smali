.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 614
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    #@2
    monitor-enter v0

    #@3
    .line 628
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 626
    return-void

    #@9
    .line 627
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 2
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    #@2
    monitor-enter v1

    #@3
    .line 619
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get0()Landroid/bluetooth/IBluetooth;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 620
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 617
    return-void

    #@e
    .line 618
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public onBrEdrDown()V
    .locals 0

    #@0
    .prologue
    .line 632
    return-void
.end method
