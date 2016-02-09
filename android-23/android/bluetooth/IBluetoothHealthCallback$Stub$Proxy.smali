.class Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothHealthCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHealthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHealthCallback$Stub;
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    iput-object p1, p0, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealthCallback"

    #@3
    return-object v0
.end method

.method public onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 5
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothHealthCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 122
    if-eqz p1, :cond_0

    #@10
    .line 123
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 124
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 129
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 130
    iget-object v2, p0, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 116
    return-void

    #@2c
    .line 127
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 133
    :catchall_0
    move-exception v2

    #@32
    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 133
    throw v2
.end method

.method public onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothHealthCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 144
    if-eqz p1, :cond_0

    #@10
    .line 145
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 146
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 151
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 152
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 153
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 158
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 159
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 160
    if-eqz p5, :cond_2

    #@2a
    .line 161
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 162
    const/4 v2, 0x0

    #@2f
    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 167
    :goto_2
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 168
    iget-object v2, p0, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/4 v3, 0x2

    #@38
    const/4 v4, 0x0

    #@39
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 138
    return-void

    #@46
    .line 149
    :cond_0
    const/4 v2, 0x0

    #@47
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 171
    :catchall_0
    move-exception v2

    #@4c
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 171
    throw v2

    #@53
    .line 156
    :cond_1
    const/4 v2, 0x0

    #@54
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    goto :goto_1

    #@58
    .line 165
    :cond_2
    const/4 v2, 0x0

    #@59
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_2
.end method
