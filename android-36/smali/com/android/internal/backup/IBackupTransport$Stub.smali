.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final greylist-max-o TRANSACTION_abortFullRestore:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelFullBackup:I = 0x16

.field static final greylist-max-o TRANSACTION_checkFullBackupSize:I = 0x14

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0xa

.field static final greylist-max-o TRANSACTION_configurationIntent:I = 0x2

.field static final greylist-max-o TRANSACTION_currentDestinationString:I = 0x3

.field static final greylist-max-o TRANSACTION_dataManagementIntent:I = 0x4

.field static final blacklist TRANSACTION_dataManagementIntentLabel:I = 0x5

.field static final greylist-max-o TRANSACTION_finishBackup:I = 0xb

.field static final greylist-max-o TRANSACTION_finishRestore:I = 0x11

.field static final greylist-max-o TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final blacklist TRANSACTION_getBackupManagerMonitor:I = 0x1c

.field static final greylist-max-o TRANSACTION_getBackupQuota:I = 0x18

.field static final greylist-max-o TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final greylist-max-o TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final blacklist TRANSACTION_getPackagesThatShouldNotUseRestrictedMode:I = 0x1d

.field static final greylist-max-o TRANSACTION_getRestoreData:I = 0x10

.field static final greylist-max-o TRANSACTION_getTransportFlags:I = 0x1b

.field static final greylist-max-o TRANSACTION_initializeDevice:I = 0x8

.field static final greylist-max-o TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final greylist-max-o TRANSACTION_name:I = 0x1

.field static final greylist-max-o TRANSACTION_nextRestorePackage:I = 0xf

.field static final greylist-max-o TRANSACTION_performBackup:I = 0x9

.field static final greylist-max-o TRANSACTION_performFullBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_requestBackupTime:I = 0x7

.field static final greylist-max-o TRANSACTION_requestFullBackupTime:I = 0x12

.field static final greylist-max-o TRANSACTION_sendBackupData:I = 0x15

.field static final greylist-max-o TRANSACTION_startRestore:I = 0xe

.field static final greylist-max-o TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 442
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 443
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 451
    if-nez p0, :cond_4

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_4
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 455
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_14

    .line 456
    move-object v1, v0

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;

    return-object v1

    .line 458
    :cond_14
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 467
    packed-switch p0, :pswitch_data_62

    .line 587
    const/4 v0, 0x0

    return-object v0

    .line 583
    :pswitch_5
    const-string v0, "getPackagesThatShouldNotUseRestrictedMode"

    return-object v0

    .line 579
    :pswitch_8
    const-string v0, "getBackupManagerMonitor"

    return-object v0

    .line 575
    :pswitch_b
    const-string v0, "getTransportFlags"

    return-object v0

    .line 571
    :pswitch_e
    const-string v0, "abortFullRestore"

    return-object v0

    .line 567
    :pswitch_11
    const-string v0, "getNextFullRestoreDataChunk"

    return-object v0

    .line 563
    :pswitch_14
    const-string v0, "getBackupQuota"

    return-object v0

    .line 559
    :pswitch_17
    const-string v0, "isAppEligibleForBackup"

    return-object v0

    .line 555
    :pswitch_1a
    const-string v0, "cancelFullBackup"

    return-object v0

    .line 551
    :pswitch_1d
    const-string/jumbo v0, "sendBackupData"

    return-object v0

    .line 547
    :pswitch_21
    const-string v0, "checkFullBackupSize"

    return-object v0

    .line 543
    :pswitch_24
    const-string v0, "performFullBackup"

    return-object v0

    .line 539
    :pswitch_27
    const-string/jumbo v0, "requestFullBackupTime"

    return-object v0

    .line 535
    :pswitch_2b
    const-string v0, "finishRestore"

    return-object v0

    .line 531
    :pswitch_2e
    const-string v0, "getRestoreData"

    return-object v0

    .line 527
    :pswitch_31
    const-string v0, "nextRestorePackage"

    return-object v0

    .line 523
    :pswitch_34
    const-string/jumbo v0, "startRestore"

    return-object v0

    .line 519
    :pswitch_38
    const-string v0, "getCurrentRestoreSet"

    return-object v0

    .line 515
    :pswitch_3b
    const-string v0, "getAvailableRestoreSets"

    return-object v0

    .line 511
    :pswitch_3e
    const-string v0, "finishBackup"

    return-object v0

    .line 507
    :pswitch_41
    const-string v0, "clearBackupData"

    return-object v0

    .line 503
    :pswitch_44
    const-string v0, "performBackup"

    return-object v0

    .line 499
    :pswitch_47
    const-string v0, "initializeDevice"

    return-object v0

    .line 495
    :pswitch_4a
    const-string/jumbo v0, "requestBackupTime"

    return-object v0

    .line 491
    :pswitch_4e
    const-string/jumbo v0, "transportDirName"

    return-object v0

    .line 487
    :pswitch_52
    const-string v0, "dataManagementIntentLabel"

    return-object v0

    .line 483
    :pswitch_55
    const-string v0, "dataManagementIntent"

    return-object v0

    .line 479
    :pswitch_58
    const-string v0, "currentDestinationString"

    return-object v0

    .line 475
    :pswitch_5b
    const-string v0, "configurationIntent"

    return-object v0

    .line 471
    :pswitch_5e
    const-string v0, "name"

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 462
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1630
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 594
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    const-string v0, "com.android.internal.backup.IBackupTransport"

    .line 599
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 600
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    return v1

    .line 606
    :cond_16
    packed-switch p1, :pswitch_data_258

    .line 880
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 869
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 871
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 873
    .local v3, "_arg1":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 874
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 876
    goto/16 :goto_256

    .line 861
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_36
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 862
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/IBackupManagerMonitor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupManagerMonitor(Lcom/android/internal/infra/AndroidFuture;)V

    .line 864
    goto/16 :goto_256

    .line 853
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/IBackupManagerMonitor;>;"
    :pswitch_46
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 854
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    .line 856
    goto/16 :goto_256

    .line 845
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 846
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 848
    goto/16 :goto_256

    .line 835
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_66
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 837
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 838
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 840
    goto/16 :goto_256

    .line 823
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 827
    .local v3, "_arg1":Z
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 828
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 830
    goto/16 :goto_256

    .line 811
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_96
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 813
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 815
    .restart local v3    # "_arg1":Z
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 816
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 818
    goto/16 :goto_256

    .line 803
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 804
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 806
    goto/16 :goto_256

    .line 793
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 795
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 796
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 798
    goto/16 :goto_256

    .line 783
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 785
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v4

    .line 786
    .local v4, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    .line 788
    goto/16 :goto_256

    .line 769
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_ea
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 771
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 773
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 775
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 776
    .local v5, "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 778
    goto/16 :goto_256

    .line 761
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_10e
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 762
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 764
    goto/16 :goto_256

    .line 753
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 754
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 756
    goto/16 :goto_256

    .line 743
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_12e
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 745
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 746
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 748
    goto/16 :goto_256

    .line 735
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_146
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 736
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 738
    goto/16 :goto_256

    .line 723
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 725
    .local v2, "_arg0":J
    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/PackageInfo;

    .line 727
    .local v4, "_arg1":[Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 728
    .local v5, "_arg2":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 730
    goto/16 :goto_256

    .line 715
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v5    # "_arg2":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_172
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 716
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 718
    goto/16 :goto_256

    .line 707
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_182
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 708
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    .line 710
    goto/16 :goto_256

    .line 699
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 700
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 702
    goto/16 :goto_256

    .line 689
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_1a2
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 691
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 692
    .restart local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 694
    goto/16 :goto_256

    .line 675
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_1ba
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 677
    .restart local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 679
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 681
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 682
    .local v5, "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 684
    goto/16 :goto_256

    .line 667
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 668
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 670
    goto :goto_256

    .line 659
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_1ed
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 660
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 662
    goto :goto_256

    .line 651
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_1fc
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 652
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    .line 654
    goto :goto_256

    .line 643
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_20b
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 644
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V

    .line 646
    goto :goto_256

    .line 635
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :pswitch_21a
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 636
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 638
    goto :goto_256

    .line 627
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_229
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 628
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V

    .line 630
    goto :goto_256

    .line 619
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_238
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 620
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 622
    goto :goto_256

    .line 611
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_247
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 612
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->name(Lcom/android/internal/infra/AndroidFuture;)V

    .line 614
    nop

    .line 883
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :goto_256
    return v1

    nop

    :pswitch_data_258
    .packed-switch 0x1
        :pswitch_247
        :pswitch_238
        :pswitch_229
        :pswitch_21a
        :pswitch_20b
        :pswitch_1fc
        :pswitch_1ed
        :pswitch_1de
        :pswitch_1ba
        :pswitch_1a2
        :pswitch_192
        :pswitch_182
        :pswitch_172
        :pswitch_156
        :pswitch_146
        :pswitch_12e
        :pswitch_11e
        :pswitch_10e
        :pswitch_ea
        :pswitch_d6
        :pswitch_c2
        :pswitch_b2
        :pswitch_96
        :pswitch_7e
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
