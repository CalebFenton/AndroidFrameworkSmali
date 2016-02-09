.class Landroid/net/IEthernetManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager$Stub;
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
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 111
    iput-object p1, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 109
    return-void
.end method


# virtual methods
.method public addListener(Landroid/net/IEthernetServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IEthernetManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 187
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/IEthernetServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 188
    iget-object v2, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 181
    return-void

    #@29
    .line 191
    :catchall_0
    move-exception v2

    #@2a
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 191
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IEthernetManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 128
    iget-object v3, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 131
    sget-object v3, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/IpConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 138
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 141
    return-object v2

    #@2d
    .line 134
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/IpConfiguration;
    goto :goto_0

    #@2f
    .line 137
    .end local v2    # "_result":Landroid/net/IpConfiguration;
    :catchall_0
    move-exception v3

    #@30
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 137
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    const-string/jumbo v0, "android.net.IEthernetManager"

    #@3
    return-object v0
.end method

.method public isAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IEthernetManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 171
    iget-object v3, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 176
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 179
    return v2

    #@26
    .line 173
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 175
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 175
    throw v3
.end method

.method public removeListener(Landroid/net/IEthernetServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IEthernetManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 202
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/IEthernetServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 203
    iget-object v2, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 196
    return-void

    #@29
    .line 206
    :catchall_0
    move-exception v2

    #@2a
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 206
    throw v2
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IEthernetManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 149
    if-eqz p1, :cond_0

    #@10
    .line 150
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 151
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 156
    :goto_0
    iget-object v2, p0, Landroid/net/IEthernetManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 143
    return-void

    #@29
    .line 154
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 159
    :catchall_0
    move-exception v2

    #@2f
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 159
    throw v2
.end method
