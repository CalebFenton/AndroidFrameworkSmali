.class Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService$Stub;
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    iput-object p1, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 162
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 7
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IMediaContainerService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 272
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v5, 0x5

    #@14
    const/4 v6, 0x0

    #@15
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-wide v2

    #@1f
    .line 277
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 280
    return-wide v2

    #@26
    .line 276
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@27
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 276
    throw v4
.end method

.method public calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J
    .locals 7
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "isForwardLocked"    # Z
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.app.IMediaContainerService"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 324
    if-eqz p2, :cond_0

    #@14
    const/4 v4, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 326
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v5, 0x8

    #@1f
    const/4 v6, 0x0

    #@20
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-wide v2

    #@2a
    .line 331
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 334
    return-wide v2

    #@31
    .line 330
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@32
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 330
    throw v4
.end method

.method public clearDirectory(Ljava/lang/String;)V
    .locals 5
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 308
    iget-object v2, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 301
    return-void

    #@22
    .line 311
    :catchall_0
    move-exception v2

    #@23
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 311
    throw v2
.end method

.method public copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "target"    # Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IMediaContainerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 205
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/os/IParcelFileDescriptorFactory;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 206
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 211
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 214
    return v2

    #@30
    .line 210
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 210
    throw v3
.end method

.method public copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z
    .param p6, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.app.IMediaContainerService"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 183
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 184
    if-eqz p4, :cond_0

    #@1b
    move v5, v3

    #@1c
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 185
    if-eqz p5, :cond_1

    #@21
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 186
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 187
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x1

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v2

    #@35
    .line 192
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 195
    return-object v2

    #@3c
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    move v5, v4

    #@3d
    .line 184
    goto :goto_0

    #@3e
    :cond_1
    move v3, v4

    #@3f
    .line 185
    goto :goto_1

    #@40
    .line 191
    :catchall_0
    move-exception v3

    #@41
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 191
    throw v3
.end method

.method public getFileSystemStats(Ljava/lang/String;)[J
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IMediaContainerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 291
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 296
    .local v2, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 299
    return-object v2

    #@26
    .line 295
    .end local v2    # "_result":[J
    :catchall_0
    move-exception v3

    #@27
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 295
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    const-string/jumbo v0, "com.android.internal.app.IMediaContainerService"

    #@3
    return-object v0
.end method

.method public getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IMediaContainerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 226
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 229
    sget-object v3, Landroid/content/pm/PackageInfoLite;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 236
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 239
    return-object v2

    #@36
    .line 232
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Landroid/content/pm/PackageInfoLite;
    goto :goto_0

    #@38
    .line 235
    .end local v2    # "_result":Landroid/content/pm/PackageInfoLite;
    :catchall_0
    move-exception v3

    #@39
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 235
    throw v3
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IMediaContainerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 249
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 252
    sget-object v3, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/content/res/ObbInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 259
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 262
    return-object v2

    #@30
    .line 255
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/content/res/ObbInfo;
    goto :goto_0

    #@32
    .line 258
    .end local v2    # "_result":Landroid/content/res/ObbInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 258
    throw v3
.end method
