.class Landroid/app/backup/IBackupManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager$Stub;
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
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 378
    iput-object p1, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 376
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 786
    if-eqz p2, :cond_0

    #@15
    const/4 v3, 0x1

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 787
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 788
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 789
    if-eqz p5, :cond_1

    #@21
    invoke-interface {p5}, Landroid/app/backup/IFullBackupRestoreObserver;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v2

    #@25
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 790
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0x10

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 779
    return-void

    #@3a
    .line 793
    :catchall_0
    move-exception v2

    #@3b
    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 793
    throw v2
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 446
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 447
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 439
    return-void

    #@25
    .line 450
    :catchall_0
    move-exception v2

    #@26
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 450
    throw v2
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 466
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 459
    return-void

    #@22
    .line 469
    :catchall_0
    move-exception v2

    #@23
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 469
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public backupNow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 653
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 647
    return-void

    #@20
    .line 656
    :catchall_0
    move-exception v2

    #@21
    .line 657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 656
    throw v2
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1003
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x18

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3}, Landroid/app/backup/IRestoreSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 1008
    .local v2, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1011
    return-object v2

    #@2e
    .line 1007
    .end local v2    # "_result":Landroid/app/backup/IRestoreSession;
    :catchall_0
    move-exception v3

    #@2f
    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1007
    throw v3
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 427
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 419
    return-void

    #@25
    .line 430
    :catchall_0
    move-exception v2

    #@26
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 430
    throw v2
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 403
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 396
    return-void

    #@22
    .line 406
    :catchall_0
    move-exception v2

    #@23
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 406
    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "packageNames"    # [Ljava/lang/String;
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
    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 694
    if-eqz p1, :cond_0

    #@12
    .line 695
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 696
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 701
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    move v4, v2

    #@1d
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 702
    if-eqz p3, :cond_2

    #@22
    move v4, v2

    #@23
    :goto_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 703
    if-eqz p4, :cond_3

    #@28
    move v4, v2

    #@29
    :goto_3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 704
    if-eqz p5, :cond_4

    #@2e
    move v4, v2

    #@2f
    :goto_4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 705
    if-eqz p6, :cond_5

    #@34
    move v4, v2

    #@35
    :goto_5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 706
    if-eqz p7, :cond_6

    #@3a
    move v4, v2

    #@3b
    :goto_6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 707
    if-eqz p8, :cond_7

    #@40
    :goto_7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 708
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@46
    .line 709
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@48
    const/16 v3, 0xd

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@4e
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 688
    return-void

    #@58
    .line 699
    :cond_0
    const/4 v4, 0x0

    #@59
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 712
    :catchall_0
    move-exception v2

    #@5e
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 712
    throw v2

    #@65
    :cond_1
    move v4, v3

    #@66
    .line 701
    goto :goto_1

    #@67
    :cond_2
    move v4, v3

    #@68
    .line 702
    goto :goto_2

    #@69
    :cond_3
    move v4, v3

    #@6a
    .line 703
    goto :goto_3

    #@6b
    :cond_4
    move v4, v3

    #@6c
    .line 704
    goto :goto_4

    #@6d
    :cond_5
    move v4, v3

    #@6e
    .line 705
    goto :goto_5

    #@6f
    :cond_6
    move v4, v3

    #@70
    .line 706
    goto :goto_6

    #@71
    :cond_7
    move v2, v3

    #@72
    .line 707
    goto :goto_7
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 750
    if-eqz p1, :cond_0

    #@10
    .line 751
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 752
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 757
    :goto_0
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xf

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 744
    return-void

    #@2a
    .line 755
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 760
    :catchall_0
    move-exception v2

    #@30
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 760
    throw v2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@11
    .line 730
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xe

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 723
    return-void

    #@23
    .line 733
    :catchall_0
    move-exception v2

    #@24
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 733
    throw v2
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1108
    iget-object v4, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0x1c

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 1113
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1116
    return-wide v2

    #@27
    .line 1112
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1112
    throw v4
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 885
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x14

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 888
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 895
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 898
    return-object v2

    #@31
    .line 891
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@33
    .line 894
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@34
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 894
    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 809
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 814
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 817
    return-object v2

    #@24
    .line 813
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 813
    throw v3
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 938
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x16

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 941
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 948
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 951
    return-object v2

    #@31
    .line 944
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@33
    .line 947
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@34
    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 947
    throw v3
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 965
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x17

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 970
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 973
    return-object v2

    #@27
    .line 969
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 969
    throw v3
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 916
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 921
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 924
    return-object v2

    #@27
    .line 920
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 920
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 386
    const-string/jumbo v0, "android.app.backup.IBackupManager"

    #@3
    return-object v0
.end method

.method public hasBackupPassword()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 623
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 626
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 627
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 629
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
    .line 632
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 635
    return v2

    #@27
    .line 629
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 631
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 631
    throw v3
.end method

.method public isBackupEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 578
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 580
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
    .line 583
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 586
    return v2

    #@27
    .line 580
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 582
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 582
    throw v3
.end method

.method public isBackupServiceActive(I)Z
    .locals 6
    .param p1, "whichUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1079
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1084
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1087
    return v2

    #@2a
    .line 1081
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1083
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1083
    throw v3
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 826
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 829
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 830
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x12

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 831
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 835
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 838
    return-object v2

    #@24
    .line 834
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 834
    throw v3
.end method

.method public opComplete(IJ)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1031
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1032
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x19

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1024
    return-void

    #@26
    .line 1035
    :catchall_0
    move-exception v2

    #@27
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1035
    throw v2
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 486
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x5

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 478
    return-void

    #@25
    .line 489
    :catchall_0
    move-exception v2

    #@26
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 489
    throw v2
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 858
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x13

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 860
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 863
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 866
    return-object v2

    #@27
    .line 862
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 862
    throw v3
.end method

.method public setAutoRestore(Z)V
    .locals 5
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 537
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 538
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x7

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 531
    return-void

    #@26
    .line 541
    :catchall_0
    move-exception v2

    #@27
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 541
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 509
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 510
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 503
    return-void

    #@26
    .line 513
    :catchall_0
    move-exception v2

    #@27
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 513
    throw v2
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 604
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xa

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 609
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 612
    return v2

    #@2d
    .line 606
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 608
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 608
    throw v3
.end method

.method public setBackupProvisioned(Z)V
    .locals 5
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 557
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 558
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x8

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 551
    return-void

    #@27
    .line 561
    :catchall_0
    move-exception v2

    #@28
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 561
    throw v2
.end method

.method public setBackupServiceActive(IZ)V
    .locals 5
    .param p1, "whichUser"    # I
    .param p2, "makeActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.backup.IBackupManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1056
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1057
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1058
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x1a

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1050
    return-void

    #@2a
    .line 1061
    :catchall_0
    move-exception v2

    #@2b
    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1061
    throw v2
.end method
