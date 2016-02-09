.class Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothManagerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "android.bluetooth.IBluetoothManagerCallback"

    #@3
    return-object v0
.end method

.method public onBluetoothServiceDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothManagerCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 112
    iget-object v2, p0, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 106
    return-void

    #@1f
    .line 115
    :catchall_0
    move-exception v2

    #@20
    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 115
    throw v2
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 5
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 96
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothManagerCallback"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 97
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 98
    iget-object v2, p0, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 91
    return-void

    #@29
    .line 101
    :catchall_0
    move-exception v2

    #@2a
    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 101
    throw v2
.end method

.method public onBrEdrDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothManagerCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 126
    iget-object v2, p0, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 120
    return-void

    #@1f
    .line 129
    :catchall_0
    move-exception v2

    #@20
    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 129
    throw v2
.end method
