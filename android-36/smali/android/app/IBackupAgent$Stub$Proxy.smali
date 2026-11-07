.class Landroid/app/IBackupAgent$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 484
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 487
    iget-object v0, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearBackupRestoreEventLogger()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 813
    nop

    .line 814
    return-void

    .line 812
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 813
    throw v1
.end method

.method public blacklist doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 12
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "quotaBytes"    # J
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupCallback;
    .param p7, "transportFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 519
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 520
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 521
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 522
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 523
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2c

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v1
.end method

.method public greylist-max-o doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 12
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quotaBytes"    # J
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p6, "transportFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 620
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 621
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 622
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 623
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 625
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    throw v1
.end method

.method public greylist-max-o doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 11
    .param p1, "quotaBytes"    # J
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p5, "transportFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 639
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 641
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    nop

    .line 647
    return-void

    .line 645
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw v1
.end method

.method public blacklist doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 11
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 672
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 674
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 675
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 676
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw v1
.end method

.method public greylist-max-o doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 12
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 557
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 559
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 561
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 563
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
    nop

    .line 568
    return-void

    .line 566
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
    throw v1
.end method

.method public greylist-max-o doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 29
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 707
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 709
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_68

    .line 710
    move/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_64

    .line 711
    move-object/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_60

    .line 712
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_5c

    .line 713
    move-wide/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_58

    .line 714
    move-wide/from16 v10, p9

    :try_start_2e
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_54

    .line 715
    move/from16 v12, p11

    :try_start_33
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_50

    .line 716
    move-object/from16 v13, p12

    :try_start_38
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4c

    .line 717
    move-object/from16 v14, p0

    :try_start_3d
    iget-object v0, v14, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_4a

    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-void

    .line 720
    :catchall_4a
    move-exception v0

    goto :goto_79

    :catchall_4c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_79

    :catchall_50
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_77

    :catchall_54
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_75

    :catchall_58
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_73

    :catchall_5c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_71

    :catchall_60
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6f

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6d

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v5, p4

    :goto_6d
    move-object/from16 v6, p5

    :goto_6f
    move-object/from16 v7, p6

    :goto_71
    move-wide/from16 v8, p7

    :goto_73
    move-wide/from16 v10, p9

    :goto_75
    move/from16 v12, p11

    :goto_77
    move-object/from16 v13, p12

    :goto_79
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v0
.end method

.method public greylist-max-o doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 743
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    nop

    .line 748
    return-void

    .line 746
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    throw v1
.end method

.method public blacklist doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 13
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    .local p7, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 584
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 585
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 586
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 588
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 589
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2d

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    nop

    .line 594
    return-void

    .line 592
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw v1
.end method

.method public greylist-max-o fail(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    nop

    .line 767
    return-void

    .line 765
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 491
    const-string v0, "android.app.IBackupAgent"

    return-object v0
.end method

.method public blacklist getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    .local p1, "resultsFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;>;"
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 779
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 781
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    nop

    .line 786
    return-void

    .line 784
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v1
.end method

.method public blacklist getOperationType(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    .local p1, "operationTypeFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/app/IBackupAgent$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 797
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    nop

    .line 802
    return-void

    .line 800
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    throw v1
.end method
