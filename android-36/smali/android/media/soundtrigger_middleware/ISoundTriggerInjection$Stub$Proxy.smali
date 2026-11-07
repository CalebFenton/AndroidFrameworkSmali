.class Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
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

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 310
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 317
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    return-object v0
.end method

.method public blacklist onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 389
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v1
.end method

.method public blacklist onClientDetached(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 407
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v1
.end method

.method public blacklist onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 7
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 369
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v1
.end method

.method public blacklist onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 9
    .param p1, "modelParam"    # I
    .param p2, "value"    # I
    .param p3, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 456
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    throw v1
.end method

.method public blacklist onPreempted()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    throw v1
.end method

.method public blacklist onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 10
    .param p1, "audioSessionToken"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .param p3, "recognitionInjection"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .param p4, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 481
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 482
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw v1
.end method

.method public blacklist onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 7
    .param p1, "recognitionSession"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 500
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 502
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    nop

    .line 507
    return-void

    .line 505
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    throw v1
.end method

.method public blacklist onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 7
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 351
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    throw v1
.end method

.method public blacklist onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 10
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "phrases"    # [Landroid/media/soundtrigger/Phrase;
    .param p3, "modelInjection"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .param p4, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 432
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 433
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    throw v1
.end method

.method public blacklist onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 7
    .param p1, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 521
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    throw v1
.end method

.method public blacklist registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 6
    .param p1, "globalInjection"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 332
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v1
.end method
