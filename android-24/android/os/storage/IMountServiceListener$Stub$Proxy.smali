.class Landroid/os/storage/IMountServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMountServiceListener.java"

# interfaces
.implements Landroid/os/storage/IMountServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountServiceListener$Stub;
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
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 130
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "IMountServiceListener"

    #@3
    return-object v0
.end method

.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 263
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@12
    .line 264
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v3, 0x7

    #@15
    .line 265
    const/4 v4, 0x1

    #@16
    .line 264
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 258
    return-void

    #@23
    .line 267
    :catchall_0
    move-exception v2

    #@24
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 267
    throw v2
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 246
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@12
    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 248
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    .line 249
    const/4 v4, 0x1

    #@19
    .line 248
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 241
    return-void

    #@26
    .line 251
    :catchall_0
    move-exception v2

    #@27
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 251
    throw v2
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 179
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 180
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x2

    #@1a
    .line 181
    const/4 v4, 0x1

    #@1b
    .line 180
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 172
    return-void

    #@28
    .line 183
    :catchall_0
    move-exception v2

    #@29
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 183
    throw v2
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 5
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountServiceListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 152
    if-eqz p1, :cond_0

    #@11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 153
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x1

    #@17
    .line 154
    const/4 v4, 0x1

    #@18
    .line 153
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 147
    return-void

    #@25
    .line 152
    :cond_0
    const/4 v2, 0x0

    #@26
    goto :goto_0

    #@27
    .line 156
    :catchall_0
    move-exception v2

    #@28
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 156
    throw v2
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 231
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    .line 232
    const/4 v4, 0x1

    #@15
    .line 231
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 225
    return-void

    #@22
    .line 234
    :catchall_0
    move-exception v2

    #@23
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 234
    throw v2
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 5
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 214
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@12
    .line 215
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v3, 0x4

    #@15
    .line 216
    const/4 v4, 0x1

    #@16
    .line 215
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 209
    return-void

    #@23
    .line 218
    :catchall_0
    move-exception v2

    #@24
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 218
    throw v2
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountServiceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 196
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@12
    .line 197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 199
    iget-object v2, p0, Landroid/os/storage/IMountServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    .line 200
    const/4 v4, 0x1

    #@1c
    .line 199
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 191
    return-void

    #@29
    .line 202
    :catchall_0
    move-exception v2

    #@2a
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 202
    throw v2
.end method
