.class Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport$Stub;
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
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 319
    iput-object p1, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 317
    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1009
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1010
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1015
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1018
    return v2

    #@24
    .line 1014
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1014
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelFullBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 928
    iget-object v2, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x16

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 922
    return-void

    #@20
    .line 931
    :catchall_0
    move-exception v2

    #@21
    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 931
    throw v2
.end method

.method public checkFullBackupSize(J)I
    .locals 7
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 893
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 894
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x14

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 899
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 902
    return v2

    #@27
    .line 898
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 898
    throw v3
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 626
    if-eqz p1, :cond_0

    #@10
    .line 627
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 628
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 633
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 638
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 641
    return v2

    #@2e
    .line 631
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 637
    :catchall_0
    move-exception v3

    #@34
    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 637
    throw v3
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 370
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 373
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 380
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 383
    return-object v2

    #@2d
    .line 376
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@2f
    .line 379
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@30
    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 379
    throw v3
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 401
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 406
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 409
    return-object v2

    #@23
    .line 405
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 405
    throw v3
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 438
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 441
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 448
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 451
    return-object v2

    #@2d
    .line 444
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@2f
    .line 447
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@30
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 447
    throw v3
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 468
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 473
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 476
    return-object v2

    #@23
    .line 472
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 472
    throw v3
.end method

.method public finishBackup()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 658
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 663
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 666
    return v2

    #@24
    .line 662
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 662
    throw v3
.end method

.method public finishRestore()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 828
    iget-object v2, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x11

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 822
    return-void

    #@20
    .line 831
    :catchall_0
    move-exception v2

    #@21
    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 831
    throw v2
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 681
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 683
    sget-object v3, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/app/backup/RestoreSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 686
    .local v2, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 689
    return-object v2

    #@28
    .line 685
    .end local v2    # "_result":[Landroid/app/backup/RestoreSet;
    :catchall_0
    move-exception v3

    #@29
    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 685
    throw v3
.end method

.method public getCurrentRestoreSet()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 706
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0xd

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 711
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 714
    return-wide v2

    #@24
    .line 710
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 710
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 327
    const-string/jumbo v0, "com.android.internal.backup.IBackupTransport"

    #@3
    return-object v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 973
    if-eqz p1, :cond_0

    #@10
    .line 974
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 975
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 980
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x17

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 985
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 988
    return v2

    #@2e
    .line 978
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 984
    :catchall_0
    move-exception v3

    #@34
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 984
    throw v3
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 801
    if-eqz p1, :cond_0

    #@10
    .line 802
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 803
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 808
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x10

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 813
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 816
    return v2

    #@2e
    .line 806
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 812
    :catchall_0
    move-exception v3

    #@34
    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 812
    throw v3
.end method

.method public initializeDevice()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 551
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 556
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 559
    return v2

    #@24
    .line 555
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 555
    throw v3
.end method

.method public name()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 340
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 345
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 348
    return-object v2

    #@23
    .line 344
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 344
    throw v3
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 774
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 777
    sget-object v3, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/app/backup/RestoreDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 784
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 787
    return-object v2

    #@2e
    .line 780
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/app/backup/RestoreDescription;
    goto :goto_0

    #@30
    .line 783
    .end local v2    # "_result":Landroid/app/backup/RestoreDescription;
    :catchall_0
    move-exception v3

    #@31
    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 783
    throw v3
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 587
    if-eqz p1, :cond_0

    #@10
    .line 588
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 589
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 594
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 595
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 596
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 601
    :goto_1
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x9

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v2

    #@31
    .line 606
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 609
    return v2

    #@38
    .line 592
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 605
    :catchall_0
    move-exception v3

    #@3e
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 605
    throw v3

    #@45
    .line 599
    :cond_1
    const/4 v3, 0x0

    #@46
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 862
    if-eqz p1, :cond_0

    #@10
    .line 863
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 864
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 869
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 870
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 871
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 876
    :goto_1
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x13

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v2

    #@31
    .line 881
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 884
    return v2

    #@38
    .line 867
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 880
    :catchall_0
    move-exception v3

    #@3e
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 880
    throw v3

    #@45
    .line 874
    :cond_1
    const/4 v3, 0x0

    #@46
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_1
.end method

.method public requestBackupTime()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 525
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x7

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 530
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 533
    return-wide v2

    #@23
    .line 529
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 529
    throw v4
.end method

.method public requestFullBackupTime()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 845
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x12

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 850
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 853
    return-wide v2

    #@24
    .line 849
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 849
    throw v4
.end method

.method public sendBackupData(I)I
    .locals 6
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 910
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 912
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 917
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 920
    return v2

    #@27
    .line 916
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 916
    throw v3
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 736
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 737
    const/4 v3, 0x0

    #@12
    invoke-virtual {v0, p3, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@15
    .line 738
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0xe

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    .line 743
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 746
    return v2

    #@2b
    .line 742
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2c
    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 742
    throw v3
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 497
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 502
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 505
    return-object v2

    #@23
    .line 501
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 501
    throw v3
.end method
