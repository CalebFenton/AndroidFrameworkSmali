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
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 352
    iput-object p1, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 350
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
    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1000
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1002
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1005
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1008
    return v2

    #@24
    .line 1004
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1004
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 356
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
    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 901
    iget-object v2, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x16

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 895
    return-void

    #@20
    .line 904
    :catchall_0
    move-exception v2

    #@21
    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 904
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
    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 866
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 867
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x14

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 872
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 875
    return v2

    #@27
    .line 871
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 871
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
    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 624
    if-eqz p1, :cond_0

    #@10
    .line 625
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 626
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 631
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 636
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 639
    return v2

    #@2e
    .line 629
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
    .line 635
    :catchall_0
    move-exception v3

    #@34
    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 635
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
    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 403
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 406
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
    .line 413
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 416
    return-object v2

    #@2d
    .line 409
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@2f
    .line 412
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@30
    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 412
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
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 434
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 439
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 442
    return-object v2

    #@23
    .line 438
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 438
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
    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 471
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 474
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
    .line 481
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 484
    return-object v2

    #@2d
    .line 477
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    #@2f
    .line 480
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@30
    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 480
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
    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 501
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 506
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 509
    return-object v2

    #@23
    .line 505
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 505
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
    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 648
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 653
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 656
    return v2

    #@24
    .line 652
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 652
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
    .line 799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 800
    iget-object v2, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x11

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 794
    return-void

    #@20
    .line 803
    :catchall_0
    move-exception v2

    #@21
    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 803
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
    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 671
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 673
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
    .line 676
    .local v2, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 679
    return-object v2

    #@28
    .line 675
    .end local v2    # "_result":[Landroid/app/backup/RestoreSet;
    :catchall_0
    move-exception v3

    #@29
    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 675
    throw v3
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.backup.IBackupTransport"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 958
    if-eqz p2, :cond_0

    #@14
    const/4 v4, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 959
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0x18

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-wide v2

    #@27
    .line 964
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 967
    return-wide v2

    #@2e
    .line 963
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@2f
    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 963
    throw v4
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
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 696
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0xd

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 701
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 704
    return-wide v2

    #@24
    .line 700
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 700
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 360
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
    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 976
    if-eqz p1, :cond_0

    #@10
    .line 977
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 978
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 983
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x19

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 988
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 991
    return v2

    #@2e
    .line 981
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
    .line 987
    :catchall_0
    move-exception v3

    #@34
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 987
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
    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 773
    if-eqz p1, :cond_0

    #@10
    .line 774
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 775
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 780
    :goto_0
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x10

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 785
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 788
    return v2

    #@2e
    .line 778
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
    .line 784
    :catchall_0
    move-exception v3

    #@34
    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 784
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
    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 575
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 580
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 583
    return v2

    #@24
    .line 579
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 579
    throw v3
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .locals 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z
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
    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 923
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.backup.IBackupTransport"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 924
    if-eqz p1, :cond_0

    #@12
    .line 925
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 926
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 931
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 932
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v4, 0x17

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    const/4 v2, 0x1

    #@31
    .line 937
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 940
    return v2

    #@38
    .line 929
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 936
    :catchall_0
    move-exception v3

    #@3e
    .line 937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 936
    throw v3

    #@45
    :cond_1
    move v3, v4

    #@46
    .line 931
    goto :goto_1

    #@47
    .line 934
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "_result":Z
    goto :goto_2
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
    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 373
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 378
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 381
    return-object v2

    #@23
    .line 377
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 377
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
    .line 750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 751
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 754
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
    .line 761
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 764
    return-object v2

    #@2e
    .line 757
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/app/backup/RestoreDescription;
    goto :goto_0

    #@30
    .line 760
    .end local v2    # "_result":Landroid/app/backup/RestoreDescription;
    :catchall_0
    move-exception v3

    #@31
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 760
    throw v3
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 592
    if-eqz p1, :cond_0

    #@10
    .line 593
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 594
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 599
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 600
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 601
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 606
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 607
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x9

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v2

    #@34
    .line 612
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 615
    return v2

    #@3b
    .line 597
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 611
    :catchall_0
    move-exception v3

    #@41
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 611
    throw v3

    #@48
    .line 604
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 830
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 834
    if-eqz p1, :cond_0

    #@10
    .line 835
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 836
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 841
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 842
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 843
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 848
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 849
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x13

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v2

    #@34
    .line 854
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 857
    return v2

    #@3b
    .line 839
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 853
    :catchall_0
    move-exception v3

    #@41
    .line 854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 853
    throw v3

    #@48
    .line 846
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
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
    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 558
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x7

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 563
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 566
    return-wide v2

    #@23
    .line 562
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 562
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
    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 817
    iget-object v4, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x12

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 822
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 825
    return-wide v2

    #@24
    .line 821
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 821
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
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 885
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 890
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 893
    return v2

    #@27
    .line 889
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 889
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
    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 713
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 714
    const/4 v3, 0x0

    #@12
    invoke-virtual {v0, p3, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@15
    .line 715
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0xe

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    .line 720
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 723
    return v2

    #@2b
    .line 719
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2c
    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 719
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
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IBackupTransport"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 530
    iget-object v3, p0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 535
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 538
    return-object v2

    #@23
    .line 534
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 534
    throw v3
.end method
