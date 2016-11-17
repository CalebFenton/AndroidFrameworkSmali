.class Landroid/service/quicksettings/IQSService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService$Stub;
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
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    iput-object p1, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 165
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "android.service.quicksettings.IQSService"

    #@3
    return-object v0
.end method

.method public getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .locals 6
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 185
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 188
    sget-object v3, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/service/quicksettings/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 195
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 198
    return-object v2

    #@30
    .line 191
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/service/quicksettings/Tile;
    goto :goto_0

    #@32
    .line 194
    .end local v2    # "_result":Landroid/service/quicksettings/Tile;
    :catchall_0
    move-exception v3

    #@33
    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 194
    throw v3
.end method

.method public isLocked()Z
    .locals 6
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
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 282
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 284
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
    .line 287
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 290
    return v2

    #@26
    .line 284
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 286
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 286
    throw v3
.end method

.method public isSecure()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 299
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 301
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
    .line 304
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 307
    return v2

    #@26
    .line 301
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 303
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 303
    throw v3
.end method

.method public onDialogHidden(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 331
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 324
    return-void

    #@23
    .line 334
    :catchall_0
    move-exception v2

    #@24
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 334
    throw v2
.end method

.method public onShowDialog(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 252
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 245
    return-void

    #@22
    .line 255
    :catchall_0
    move-exception v2

    #@23
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 255
    throw v2
.end method

.method public onStartActivity(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 267
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 260
    return-void

    #@22
    .line 270
    :catchall_0
    move-exception v2

    #@23
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 270
    throw v2
.end method

.method public onStartSuccessful(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 346
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 339
    return-void

    #@23
    .line 349
    :catchall_0
    move-exception v2

    #@24
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 349
    throw v2
.end method

.method public startUnlockAndRun(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 316
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x8

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 309
    return-void

    #@23
    .line 319
    :catchall_0
    move-exception v2

    #@24
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 319
    throw v2
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 206
    if-eqz p1, :cond_0

    #@10
    .line 207
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 208
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 213
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 214
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x2

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 200
    return-void

    #@2c
    .line 211
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
    .line 217
    :catchall_0
    move-exception v2

    #@32
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 217
    throw v2
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 5
    .param p1, "tile"    # Landroid/os/IBinder;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 229
    if-eqz p2, :cond_0

    #@13
    .line 230
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 231
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 236
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 237
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x3

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 222
    return-void

    #@2f
    .line 234
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 240
    :catchall_0
    move-exception v2

    #@35
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 240
    throw v2
.end method
