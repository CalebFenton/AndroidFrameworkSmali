.class Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICustomAudienceService.java"

# interfaces
.implements Landroid/adservices/customaudience/ICustomAudienceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/ICustomAudienceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 265
    iget-object v0, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;)V
    .registers 8
    .param p1, "input"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    .param p2, "callback"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 296
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 297
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 300
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 269
    const-string v0, "android.adservices.customaudience.ICustomAudienceService"

    return-object v0
.end method

.method public blacklist joinCustomAudience(Landroid/adservices/customaudience/CustomAudience;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .registers 9
    .param p1, "customAudience"    # Landroid/adservices/customaudience/CustomAudience;
    .param p2, "ownerPackageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/adservices/customaudience/ICustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 280
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 284
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v2
.end method

.method public blacklist leaveCustomAudience(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .registers 10
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/adservices/customaudience/ICustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 312
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 314
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 315
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 318
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-void

    .line 318
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v2
.end method

.method public blacklist overrideCustomAudienceRemoteInfo(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 14
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "biddingLogicJS"    # Ljava/lang/String;
    .param p5, "biddingLogicJsVersion"    # J
    .param p7, "trustedBiddingData"    # Landroid/adservices/common/AdSelectionSignals;
    .param p8, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 363
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 364
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_35

    .line 367
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    nop

    .line 370
    return-void

    .line 367
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw v2
.end method

.method public blacklist removeCustomAudienceRemoteInfoOverride(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 10
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 390
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 392
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 393
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 396
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    nop

    .line 399
    return-void

    .line 396
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    throw v2
.end method

.method public blacklist resetAllCustomAudienceOverrides(Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 415
    iget-object v2, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 416
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 419
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    nop

    .line 422
    return-void

    .line 419
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw v2
.end method

.method public blacklist scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;)V
    .registers 8
    .param p1, "input"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    .param p2, "callback"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 330
    iget-object v3, p0, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 331
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 334
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v2
.end method
