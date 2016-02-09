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
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    iput-object p1, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 117
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 123
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
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 185
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 190
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 193
    return v2

    #@23
    .line 189
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 189
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
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
    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 202
    iget-object v4, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 207
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 210
    return-wide v2

    #@23
    .line 206
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 206
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
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 236
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
    .line 239
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 242
    return v2

    #@26
    .line 236
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 238
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 238
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
    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 154
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 159
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 162
    return-object v2

    #@23
    .line 158
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@24
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 158
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
    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 218
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 219
    iget-object v2, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 212
    return-void

    #@26
    .line 222
    :catchall_0
    move-exception v2

    #@27
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 222
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
    .line 169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 170
    iget-object v2, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 164
    return-void

    #@1f
    .line 173
    :catchall_0
    move-exception v2

    #@20
    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 173
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
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.persistentdata.IPersistentDataBlockService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 137
    iget-object v3, p0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 142
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 145
    return v2

    #@26
    .line 141
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 141
    throw v3
.end method
