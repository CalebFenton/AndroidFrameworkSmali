.class Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiPasspointManager.java"

# interfaces
.implements Landroid/net/wifi/passpoint/IWifiPasspointManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;
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
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 141
    return-void
.end method


# virtual methods
.method public addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 6
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    if-eqz p1, :cond_0

    #@10
    .line 235
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 236
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 241
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 246
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 249
    return v2

    #@30
    .line 239
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 245
    :catchall_0
    move-exception v3

    #@36
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 245
    throw v3

    #@3d
    .line 243
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getCredentials()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 217
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 219
    sget-object v3, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 222
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 225
    return-object v2

    #@25
    .line 221
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 221
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    const-string/jumbo v0, "android.net.wifi.passpoint.IWifiPasspointManager"

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
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 160
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 163
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
    .line 170
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 173
    return-object v2

    #@2d
    .line 166
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/os/Messenger;
    goto :goto_0

    #@2f
    .line 169
    .end local v2    # "_result":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@30
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 169
    throw v3
.end method

.method public getPasspointState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 182
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 187
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 190
    return v2

    #@23
    .line 186
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 186
    throw v3
.end method

.method public removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 6
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 282
    if-eqz p1, :cond_0

    #@10
    .line 283
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 284
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 289
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x7

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 294
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 297
    return v2

    #@30
    .line 287
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 293
    :catchall_0
    move-exception v3

    #@36
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 293
    throw v3

    #@3d
    .line 291
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public requestCredentialMatch(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p1, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11
    .line 200
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 202
    sget-object v3, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 205
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 208
    return-object v2

    #@28
    .line 204
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 204
    throw v3
.end method

.method public updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 6
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 258
    if-eqz p1, :cond_0

    #@10
    .line 259
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 260
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 265
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x6

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 270
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 273
    return v2

    #@30
    .line 263
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 269
    :catchall_0
    move-exception v3

    #@36
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 269
    throw v3

    #@3d
    .line 267
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method
