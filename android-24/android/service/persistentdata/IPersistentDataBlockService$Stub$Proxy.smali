.class Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
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
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 127
    iput-object p1, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 125
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getDataBlockSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 193
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 198
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 201
    return v2

    #@23
    .line 197
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 197
    throw v3
.end method

.method public getFlashLockState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 259
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 264
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 267
    return v2

    #@24
    .line 263
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 263
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    const-string/jumbo v0, "android.service.persistentdata.IPersistentDataBlockService"

    #@3
    return-object v0
.end method

.method public getMaximumDataBlockSize()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 210
    iget-object v4, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 215
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 218
    return-wide v2

    #@23
    .line 214
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 214
    throw v4
.end method

.method public getOemUnlockEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 242
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 244
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
    .line 247
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 250
    return v2

    #@26
    .line 244
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 246
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 246
    throw v3
.end method

.method public read()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 162
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 167
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 170
    return-object v2

    #@23
    .line 166
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@24
    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 166
    throw v3
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 226
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 227
    iget-object v2, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 220
    return-void

    #@26
    .line 230
    :catchall_0
    move-exception v2

    #@27
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 230
    throw v2
.end method

.method public wipe()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 178
    iget-object v2, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 172
    return-void

    #@1f
    .line 181
    :catchall_0
    move-exception v2

    #@20
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 181
    throw v2
.end method

.method public write([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 145
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 150
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 153
    return v2

    #@26
    .line 149
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 149
    throw v3
.end method
