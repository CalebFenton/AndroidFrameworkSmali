.class Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
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
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 170
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 6
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.uce.uceservice.IUceService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 259
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/uce/options/IOptionsListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 260
    if-eqz p2, :cond_2

    #@1a
    .line 261
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 262
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 267
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x4

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    .line 270
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 271
    invoke-virtual {p2, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 275
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 278
    return v2

    #@40
    .line 265
    .end local v2    # "_result":I
    :cond_2
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 274
    :catchall_0
    move-exception v3

    #@46
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 274
    throw v3
.end method

.method public createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 6
    .param p1, "presenceServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.uce.uceservice.IUceService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 308
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/uce/presence/IPresenceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 309
    if-eqz p2, :cond_2

    #@1a
    .line 310
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 311
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 316
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x6

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    .line 319
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 320
    invoke-virtual {p2, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 324
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 327
    return v2

    #@40
    .line 314
    .end local v2    # "_result":I
    :cond_2
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 323
    :catchall_0
    move-exception v3

    #@46
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 323
    throw v3
.end method

.method public destroyOptionsService(I)V
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 293
    iget-object v2, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 286
    return-void

    #@22
    .line 296
    :catchall_0
    move-exception v2

    #@23
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 296
    throw v2
.end method

.method public destroyPresenceService(I)V
    .locals 5
    .param p1, "presenceServiceHdl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 341
    iget-object v2, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 334
    return-void

    #@22
    .line 344
    :catchall_0
    move-exception v2

    #@23
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 344
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    const-string/jumbo v0, "com.android.ims.internal.uce.uceservice.IUceService"

    #@3
    return-object v0
.end method

.method public getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 405
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 410
    .local v2, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 413
    return-object v2

    #@28
    .line 409
    .end local v2    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :catchall_0
    move-exception v3

    #@29
    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 409
    throw v3
.end method

.method public getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 383
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 388
    .local v2, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 391
    return-object v2

    #@28
    .line 387
    .end local v2    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :catchall_0
    move-exception v3

    #@29
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 387
    throw v3
.end method

.method public getServiceStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 361
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 366
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 369
    return v2

    #@27
    .line 363
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 365
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 365
    throw v3
.end method

.method public isServiceStarted()Z
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
    const-string/jumbo v3, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 242
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

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

.method public startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 6
    .param p1, "uceListener"    # Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.uce.uceservice.IUceService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 197
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/uce/uceservice/IUceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 198
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 200
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
    .line 203
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 206
    return v2

    #@30
    .line 200
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 202
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 202
    throw v3
.end method

.method public stopService()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 220
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 222
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
    .line 225
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 228
    return v2

    #@26
    .line 222
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 224
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 224
    throw v3
.end method
