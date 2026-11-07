.class Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreMaintenance.java"

# interfaces
.implements Landroid/security/maintenance/IKeystoreMaintenance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/maintenance/IKeystoreMaintenance$Stub;
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

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 339
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearNamespace(IJ)V
    .registers 9
    .param p1, "domain"    # I
    .param p2, "nspace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 474
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2e

    .line 478
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return-void

    .line 478
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v2
.end method

.method public blacklist deleteAllKeys()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 549
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_29

    .line 552
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    nop

    .line 555
    return-void

    .line 552
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    throw v2
.end method

.method public blacklist earlyBootEnded()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 498
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_28

    .line 501
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    nop

    .line 504
    return-void

    .line 501
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    throw v2
.end method

.method public blacklist getAppUidsAffectedBySid(IJ)[J
    .registers 9
    .param p1, "userId"    # I
    .param p2, "sid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 583
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_33

    .line 588
    .end local v2    # "_status":Z
    .local v3, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-object v3

    .line 588
    .end local v3    # "_result":[J
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 346
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    return-object v0
.end method

.method public blacklist initUserSuperKeys(I[BZ)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "password"    # [B
    .param p3, "allowExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 398
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_31

    .line 401
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    throw v2
.end method

.method public blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    .registers 8
    .param p1, "source"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "destination"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 526
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 527
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 528
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2f

    .line 531
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    nop

    .line 534
    return-void

    .line 531
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw v2
.end method

.method public blacklist onUserAdded(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 368
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_2b

    .line 371
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    nop

    .line 374
    return-void

    .line 371
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v2
.end method

.method public blacklist onUserLskfRemoved(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 450
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_2b

    .line 453
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v2
.end method

.method public blacklist onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    const-string v2, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v2, p0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_2b

    .line 427
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    nop

    .line 430
    return-void

    .line 427
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw v2
.end method
