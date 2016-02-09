.class Landroid/os/IPowerManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager$Stub;
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
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 325
    iput-object p1, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 323
    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 345
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 346
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 347
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 348
    if-eqz p5, :cond_0

    #@1c
    .line 349
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 350
    const/4 v2, 0x0

    #@21
    invoke-virtual {p5, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 355
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 356
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x1

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 338
    return-void

    #@38
    .line 353
    :cond_0
    const/4 v2, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 359
    :catchall_0
    move-exception v2

    #@3e
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 359
    throw v2
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uidtoblame"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 373
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 374
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 375
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x2

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 364
    return-void

    #@2e
    .line 378
    :catchall_0
    move-exception v2

    #@2f
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 378
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public boostScreenBrightness(J)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 673
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 674
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x14

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 667
    return-void

    #@23
    .line 677
    :catchall_0
    move-exception v2

    #@24
    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 677
    throw v2
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 644
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x12

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 637
    return-void

    #@23
    .line 647
    :catchall_0
    move-exception v2

    #@24
    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 647
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 333
    const-string/jumbo v0, "android.os.IPowerManager"

    #@3
    return-object v0
.end method

.method public goToSleep(JII)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 509
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 510
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 511
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 512
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 503
    return-void

    #@29
    .line 515
    :catchall_0
    move-exception v2

    #@2a
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 515
    throw v2
.end method

.method public isDeviceIdleMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 594
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 596
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
    .line 599
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 602
    return v2

    #@27
    .line 596
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 598
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 598
    throw v3
.end method

.method public isInteractive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 542
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 544
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
    .line 547
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 550
    return v2

    #@27
    .line 544
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 546
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 546
    throw v3
.end method

.method public isPowerSaveMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 559
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 561
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
    .line 564
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 567
    return v2

    #@27
    .line 561
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 563
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 563
    throw v3
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 689
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x15

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 691
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
    .line 694
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 697
    return v2

    #@27
    .line 691
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 693
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 693
    throw v3
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 6
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 459
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 464
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 467
    return v2

    #@29
    .line 461
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 463
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 463
    throw v3
.end method

.method public nap(J)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 526
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 527
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 520
    return-void

    #@23
    .line 530
    :catchall_0
    move-exception v2

    #@24
    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 530
    throw v2
.end method

.method public powerHint(II)V
    .locals 5
    .param p1, "hintId"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IPowerManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 422
    iget-object v1, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x5

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 415
    return-void

    #@1c
    .line 424
    :catchall_0
    move-exception v1

    #@1d
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 424
    throw v1
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.IPowerManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 610
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 612
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 613
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x10

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 604
    return-void

    #@30
    :cond_0
    move v4, v3

    #@31
    .line 610
    goto :goto_0

    #@32
    :cond_1
    move v2, v3

    #@33
    .line 612
    goto :goto_1

    #@34
    .line 616
    :catchall_0
    move-exception v2

    #@35
    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 616
    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 391
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 383
    return-void

    #@25
    .line 394
    :catchall_0
    move-exception v2

    #@26
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 394
    throw v2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 739
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 740
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 741
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 742
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x18

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 734
    return-void

    #@2a
    .line 745
    :catchall_0
    move-exception v2

    #@2b
    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 745
    throw v2
.end method

.method public setPowerSaveMode(Z)Z
    .locals 6
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.IPowerManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 576
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 577
    iget-object v3, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0xe

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    const/4 v2, 0x1

    #@27
    .line 582
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 585
    return v2

    #@2e
    .line 579
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "_result":Z
    goto :goto_0

    #@30
    .line 581
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@31
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 581
    throw v3
.end method

.method public setStayOnSetting(I)V
    .locals 5
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 659
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x13

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 652
    return-void

    #@23
    .line 662
    :catchall_0
    move-exception v2

    #@24
    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 662
    throw v2
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .param p1, "adj"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 724
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x17

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 717
    return-void

    #@23
    .line 727
    :catchall_0
    move-exception v2

    #@24
    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 727
    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .param p1, "brightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 709
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x16

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 702
    return-void

    #@23
    .line 712
    :catchall_0
    move-exception v2

    #@24
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 712
    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 626
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.IPowerManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 627
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 628
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 629
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x11

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 621
    return-void

    #@2d
    :cond_0
    move v4, v3

    #@2e
    .line 627
    goto :goto_0

    #@2f
    :cond_1
    move v2, v3

    #@30
    .line 628
    goto :goto_1

    #@31
    .line 632
    :catchall_0
    move-exception v2

    #@32
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 632
    throw v2
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@14
    .line 407
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x4

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 399
    return-void

    #@25
    .line 410
    :catchall_0
    move-exception v2

    #@26
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 410
    throw v2
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 435
    if-eqz p2, :cond_0

    #@13
    .line 436
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 437
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 442
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 443
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x6

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 428
    return-void

    #@2f
    .line 440
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
    .line 446
    :catchall_0
    move-exception v2

    #@35
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 446
    throw v2
.end method

.method public userActivity(JII)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 476
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 477
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 478
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x8

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 469
    return-void

    #@29
    .line 481
    :catchall_0
    move-exception v2

    #@2a
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 481
    throw v2
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IPowerManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 492
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 494
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 495
    iget-object v2, p0, Landroid/os/IPowerManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x9

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 486
    return-void

    #@29
    .line 498
    :catchall_0
    move-exception v2

    #@2a
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 498
    throw v2
.end method
