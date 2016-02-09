.class Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "android.net.wifi.p2p.IWifiP2pManager"

    #@3
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 112
    iget-object v3, p0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 115
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 122
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 125
    return-object v2

    #@2d
    .line 118
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/os/Messenger;
    goto :goto_0

    #@2f
    .line 121
    .end local v2    # "_result":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@30
    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 121
    throw v3
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 134
    iget-object v3, p0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 137
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 144
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 147
    return-object v2

    #@2d
    .line 140
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/os/Messenger;
    goto :goto_0

    #@2f
    .line 143
    .end local v2    # "_result":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@30
    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 143
    throw v3
.end method

.method public setMiracastMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.p2p.IWifiP2pManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 156
    iget-object v2, p0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 149
    return-void

    #@22
    .line 159
    :catchall_0
    move-exception v2

    #@23
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 159
    throw v2
.end method
