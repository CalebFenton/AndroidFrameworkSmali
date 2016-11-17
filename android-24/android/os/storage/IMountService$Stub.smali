.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isConvertibleToFBE:I = 0x45

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountAppFuse:I = 0x46

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1526
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 1527
    const-string/jumbo v0, "IMountService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 1526
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1515
    if-nez p0, :cond_0

    #@3
    .line 1516
    return-object v1

    #@4
    .line 1518
    :cond_0
    const-string/jumbo v1, "IMountService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 1519
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/storage/IMountService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1520
    check-cast v0, Landroid/os/storage/IMountService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 1522
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 1531
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 72
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1537
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2158
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 1539
    :sswitch_0
    const-string/jumbo v6, "IMountService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1540
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 1543
    :sswitch_1
    const-string/jumbo v6, "IMountService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v6

    #@1e
    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    #@21
    move-result-object v38

    #@22
    .line 1546
    .local v38, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v38

    #@26
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    #@29
    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 1548
    const/4 v6, 0x1

    #@2d
    return v6

    #@2e
    .line 1551
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string/jumbo v6, "IMountService"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39
    move-result-object v6

    #@3a
    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    #@3d
    move-result-object v38

    #@3e
    .line 1554
    .restart local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    #@40
    move-object/from16 v1, v38

    #@42
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    #@45
    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 1556
    const/4 v6, 0x1

    #@49
    return v6

    #@4a
    .line 1559
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string/jumbo v6, "IMountService"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    #@55
    move-result v57

    #@56
    .line 1561
    .local v57, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 1562
    if-eqz v57, :cond_0

    #@5b
    const/4 v6, 0x1

    #@5c
    :goto_0
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 1563
    const/4 v6, 0x1

    #@62
    return v6

    #@63
    .line 1562
    :cond_0
    const/4 v6, 0x0

    #@64
    goto :goto_0

    #@65
    .line 1566
    .end local v57    # "result":Z
    :sswitch_4
    const-string/jumbo v6, "IMountService"

    #@68
    move-object/from16 v0, p2

    #@6a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_1

    #@73
    const/16 v26, 0x1

    #@75
    .line 1569
    .local v26, "enable":Z
    :goto_1
    move-object/from16 v0, p0

    #@77
    move/from16 v1, v26

    #@79
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    #@7c
    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 1571
    const/4 v6, 0x1

    #@80
    return v6

    #@81
    .line 1568
    .end local v26    # "enable":Z
    :cond_1
    const/16 v26, 0x0

    #@83
    goto :goto_1

    #@84
    .line 1574
    :sswitch_5
    const-string/jumbo v6, "IMountService"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    #@8f
    move-result v57

    #@90
    .line 1576
    .restart local v57    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 1577
    if-eqz v57, :cond_2

    #@95
    const/4 v6, 0x1

    #@96
    :goto_2
    move-object/from16 v0, p3

    #@98
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 1578
    const/4 v6, 0x1

    #@9c
    return v6

    #@9d
    .line 1577
    :cond_2
    const/4 v6, 0x0

    #@9e
    goto :goto_2

    #@9f
    .line 1581
    .end local v57    # "result":Z
    :sswitch_6
    const-string/jumbo v6, "IMountService"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 1583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v39

    #@ab
    .line 1584
    .local v39, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v39

    #@af
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    #@b2
    move-result v59

    #@b3
    .line 1585
    .local v59, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 1586
    move-object/from16 v0, p3

    #@b8
    move/from16 v1, v59

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 1587
    const/4 v6, 0x1

    #@be
    return v6

    #@bf
    .line 1590
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_7
    const-string/jumbo v6, "IMountService"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v39

    #@cb
    .line 1593
    .restart local v39    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v6

    #@cf
    if-eqz v6, :cond_3

    #@d1
    const/16 v31, 0x1

    #@d3
    .line 1594
    .local v31, "force":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v6

    #@d7
    if-eqz v6, :cond_4

    #@d9
    const/16 v52, 0x1

    #@db
    .line 1595
    .local v52, "removeEncrypt":Z
    :goto_4
    move-object/from16 v0, p0

    #@dd
    move-object/from16 v1, v39

    #@df
    move/from16 v2, v31

    #@e1
    move/from16 v3, v52

    #@e3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    #@e6
    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 1597
    const/4 v6, 0x1

    #@ea
    return v6

    #@eb
    .line 1593
    .end local v31    # "force":Z
    .end local v52    # "removeEncrypt":Z
    :cond_3
    const/16 v31, 0x0

    #@ed
    .restart local v31    # "force":Z
    goto :goto_3

    #@ee
    .line 1594
    :cond_4
    const/16 v52, 0x0

    #@f0
    goto :goto_4

    #@f1
    .line 1600
    .end local v31    # "force":Z
    .end local v39    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "IMountService"

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fc
    move-result-object v39

    #@fd
    .line 1603
    .restart local v39    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, v39

    #@101
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    #@104
    move-result v53

    #@105
    .line 1604
    .local v53, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    .line 1605
    move-object/from16 v0, p3

    #@10a
    move/from16 v1, v53

    #@10c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10f
    .line 1606
    const/4 v6, 0x1

    #@110
    return v6

    #@111
    .line 1609
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_9
    const-string/jumbo v6, "IMountService"

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11c
    move-result-object v48

    #@11d
    .line 1612
    .local v48, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11f
    move-object/from16 v1, v48

    #@121
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    #@124
    move-result-object v49

    #@125
    .line 1613
    .local v49, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128
    .line 1614
    move-object/from16 v0, p3

    #@12a
    move-object/from16 v1, v49

    #@12c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@12f
    .line 1615
    const/4 v6, 0x1

    #@130
    return v6

    #@131
    .line 1618
    .end local v48    # "path":Ljava/lang/String;
    .end local v49    # "pids":[I
    :sswitch_a
    const-string/jumbo v6, "IMountService"

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v39

    #@13d
    .line 1621
    .restart local v39    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v39

    #@141
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    #@144
    move-result-object v62

    #@145
    .line 1622
    .local v62, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@148
    .line 1623
    move-object/from16 v0, p3

    #@14a
    move-object/from16 v1, v62

    #@14c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14f
    .line 1624
    const/4 v6, 0x1

    #@150
    return v6

    #@151
    .line 1627
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v62    # "state":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "IMountService"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159
    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    .line 1631
    .local v7, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@160
    move-result v8

    #@161
    .line 1633
    .local v8, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@164
    move-result-object v9

    #@165
    .line 1635
    .local v9, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@168
    move-result-object v10

    #@169
    .line 1637
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v11

    #@16d
    .line 1639
    .local v11, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v6

    #@171
    if-eqz v6, :cond_5

    #@173
    const/4 v12, 0x1

    #@174
    .local v12, "external":Z
    :goto_5
    move-object/from16 v6, p0

    #@176
    .line 1640
    invoke-virtual/range {v6 .. v12}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    #@179
    move-result v59

    #@17a
    .line 1642
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 1643
    move-object/from16 v0, p3

    #@17f
    move/from16 v1, v59

    #@181
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@184
    .line 1644
    const/4 v6, 0x1

    #@185
    return v6

    #@186
    .line 1639
    .end local v12    # "external":Z
    .end local v59    # "resultCode":I
    :cond_5
    const/4 v12, 0x0

    #@187
    goto :goto_5

    #@188
    .line 1647
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v9    # "fstype":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_c
    const-string/jumbo v6, "IMountService"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@193
    move-result-object v7

    #@194
    .line 1650
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    #@199
    move-result v59

    #@19a
    .line 1651
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 1652
    move-object/from16 v0, p3

    #@19f
    move/from16 v1, v59

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4
    .line 1653
    const/4 v6, 0x1

    #@1a5
    return v6

    #@1a6
    .line 1656
    .end local v7    # "id":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_d
    const-string/jumbo v6, "IMountService"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b1
    move-result-object v7

    #@1b2
    .line 1660
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v6

    #@1b6
    if-eqz v6, :cond_6

    #@1b8
    const/16 v31, 0x1

    #@1ba
    .line 1661
    .local v31, "force":Z
    :goto_6
    move-object/from16 v0, p0

    #@1bc
    move/from16 v1, v31

    #@1be
    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    #@1c1
    move-result v59

    #@1c2
    .line 1662
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c5
    .line 1663
    move-object/from16 v0, p3

    #@1c7
    move/from16 v1, v59

    #@1c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1cc
    .line 1664
    const/4 v6, 0x1

    #@1cd
    return v6

    #@1ce
    .line 1660
    .end local v31    # "force":Z
    .end local v59    # "resultCode":I
    :cond_6
    const/16 v31, 0x0

    #@1d0
    goto :goto_6

    #@1d1
    .line 1667
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "IMountService"

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v7

    #@1dd
    .line 1671
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e0
    move-result-object v10

    #@1e1
    .line 1673
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v11

    #@1e5
    .line 1675
    .restart local v11    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v6

    #@1e9
    if-eqz v6, :cond_7

    #@1eb
    const/16 v51, 0x1

    #@1ed
    .line 1676
    .local v51, "readOnly":Z
    :goto_7
    move-object/from16 v0, p0

    #@1ef
    move/from16 v1, v51

    #@1f1
    invoke-virtual {v0, v7, v10, v11, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    #@1f4
    move-result v59

    #@1f5
    .line 1677
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f8
    .line 1678
    move-object/from16 v0, p3

    #@1fa
    move/from16 v1, v59

    #@1fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ff
    .line 1679
    const/4 v6, 0x1

    #@200
    return v6

    #@201
    .line 1675
    .end local v51    # "readOnly":Z
    .end local v59    # "resultCode":I
    :cond_7
    const/16 v51, 0x0

    #@203
    goto :goto_7

    #@204
    .line 1682
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_f
    const-string/jumbo v6, "IMountService"

    #@207
    move-object/from16 v0, p2

    #@209
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c
    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20f
    move-result-object v7

    #@210
    .line 1686
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v6

    #@214
    if-eqz v6, :cond_8

    #@216
    const/16 v31, 0x1

    #@218
    .line 1687
    .restart local v31    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v31

    #@21c
    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    #@21f
    move-result v59

    #@220
    .line 1688
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@223
    .line 1689
    move-object/from16 v0, p3

    #@225
    move/from16 v1, v59

    #@227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22a
    .line 1690
    const/4 v6, 0x1

    #@22b
    return v6

    #@22c
    .line 1686
    .end local v31    # "force":Z
    .end local v59    # "resultCode":I
    :cond_8
    const/16 v31, 0x0

    #@22e
    goto :goto_8

    #@22f
    .line 1693
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "IMountService"

    #@232
    move-object/from16 v0, p2

    #@234
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@237
    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23a
    move-result-object v7

    #@23b
    .line 1696
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23d
    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    #@240
    move-result v63

    #@241
    .line 1697
    .local v63, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 1698
    if-eqz v63, :cond_9

    #@246
    const/4 v6, 0x1

    #@247
    :goto_9
    move-object/from16 v0, p3

    #@249
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@24c
    .line 1699
    const/4 v6, 0x1

    #@24d
    return v6

    #@24e
    .line 1698
    :cond_9
    const/4 v6, 0x0

    #@24f
    goto :goto_9

    #@250
    .line 1702
    .end local v7    # "id":Ljava/lang/String;
    .end local v63    # "status":Z
    :sswitch_11
    const-string/jumbo v6, "IMountService"

    #@253
    move-object/from16 v0, p2

    #@255
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25b
    move-result-object v45

    #@25c
    .line 1706
    .local v45, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25f
    move-result-object v42

    #@260
    .line 1707
    .local v42, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@262
    move-object/from16 v1, v45

    #@264
    move-object/from16 v2, v42

    #@266
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    #@269
    move-result v59

    #@26a
    .line 1708
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26d
    .line 1709
    move-object/from16 v0, p3

    #@26f
    move/from16 v1, v59

    #@271
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@274
    .line 1710
    const/4 v6, 0x1

    #@275
    return v6

    #@276
    .line 1713
    .end local v42    # "newId":Ljava/lang/String;
    .end local v45    # "oldId":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_12
    const-string/jumbo v6, "IMountService"

    #@279
    move-object/from16 v0, p2

    #@27b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27e
    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@281
    move-result-object v7

    #@282
    .line 1716
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@284
    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    #@287
    move-result-object v48

    #@288
    .line 1717
    .restart local v48    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28b
    .line 1718
    move-object/from16 v0, p3

    #@28d
    move-object/from16 v1, v48

    #@28f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@292
    .line 1719
    const/4 v6, 0x1

    #@293
    return v6

    #@294
    .line 1722
    .end local v7    # "id":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "IMountService"

    #@297
    move-object/from16 v0, p2

    #@299
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29c
    .line 1723
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    #@29f
    move-result-object v34

    #@2a0
    .line 1724
    .local v34, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3
    .line 1725
    move-object/from16 v0, p3

    #@2a5
    move-object/from16 v1, v34

    #@2a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2aa
    .line 1726
    const/4 v6, 0x1

    #@2ab
    return v6

    #@2ac
    .line 1729
    .end local v34    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "IMountService"

    #@2af
    move-object/from16 v0, p2

    #@2b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b4
    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b7
    move-result-object v6

    #@2b8
    invoke-static {v6}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    #@2bb
    move-result-object v44

    #@2bc
    .line 1733
    .local v44, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    #@2be
    move-object/from16 v1, v44

    #@2c0
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    #@2c3
    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c6
    .line 1735
    const/4 v6, 0x1

    #@2c7
    return v6

    #@2c8
    .line 1738
    .end local v44    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string/jumbo v6, "IMountService"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    #@2d3
    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d6
    .line 1741
    const/4 v6, 0x1

    #@2d7
    return v6

    #@2d8
    .line 1744
    :sswitch_16
    const-string/jumbo v6, "IMountService"

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e0
    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e3
    move-result-object v14

    #@2e4
    .line 1746
    .local v14, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e7
    move-result-object v15

    #@2e8
    .line 1747
    .local v15, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2eb
    move-result-object v10

    #@2ec
    .line 1749
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ef
    move-result-object v6

    #@2f0
    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    #@2f3
    move-result-object v17

    #@2f4
    .line 1751
    .local v17, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v18

    #@2f8
    .local v18, "nonce":I
    move-object/from16 v13, p0

    #@2fa
    move-object/from16 v16, v10

    #@2fc
    .line 1752
    invoke-virtual/range {v13 .. v18}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    #@2ff
    .line 1753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 1754
    const/4 v6, 0x1

    #@303
    return v6

    #@304
    .line 1757
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "rawPath":Ljava/lang/String;
    .end local v15    # "canonicalPath":Ljava/lang/String;
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    :sswitch_17
    const-string/jumbo v6, "IMountService"

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30c
    .line 1759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30f
    move-result-object v30

    #@310
    .line 1761
    .local v30, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v6

    #@314
    if-eqz v6, :cond_a

    #@316
    const/16 v31, 0x1

    #@318
    .line 1763
    .local v31, "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@31b
    move-result-object v6

    #@31c
    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    #@31f
    move-result-object v17

    #@320
    .line 1765
    .restart local v17    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@323
    move-result v18

    #@324
    .line 1766
    .restart local v18    # "nonce":I
    move-object/from16 v0, p0

    #@326
    move-object/from16 v1, v30

    #@328
    move/from16 v2, v31

    #@32a
    move-object/from16 v3, v17

    #@32c
    move/from16 v4, v18

    #@32e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    #@331
    .line 1767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@334
    .line 1768
    const/4 v6, 0x1

    #@335
    return v6

    #@336
    .line 1761
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    .end local v31    # "force":Z
    :cond_a
    const/16 v31, 0x0

    #@338
    .restart local v31    # "force":Z
    goto :goto_a

    #@339
    .line 1771
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "force":Z
    :sswitch_18
    const-string/jumbo v6, "IMountService"

    #@33c
    move-object/from16 v0, p2

    #@33e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@341
    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@344
    move-result-object v30

    #@345
    .line 1774
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@347
    move-object/from16 v1, v30

    #@349
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    #@34c
    move-result v63

    #@34d
    .line 1775
    .restart local v63    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@350
    .line 1776
    if-eqz v63, :cond_b

    #@352
    const/4 v6, 0x1

    #@353
    :goto_b
    move-object/from16 v0, p3

    #@355
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@358
    .line 1777
    const/4 v6, 0x1

    #@359
    return v6

    #@35a
    .line 1776
    :cond_b
    const/4 v6, 0x0

    #@35b
    goto :goto_b

    #@35c
    .line 1780
    .end local v30    # "filename":Ljava/lang/String;
    .end local v63    # "status":Z
    :sswitch_19
    const-string/jumbo v6, "IMountService"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@367
    move-result-object v30

    #@368
    .line 1783
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36a
    move-object/from16 v1, v30

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    #@36f
    move-result-object v40

    #@370
    .line 1784
    .local v40, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@373
    .line 1785
    move-object/from16 v0, p3

    #@375
    move-object/from16 v1, v40

    #@377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37a
    .line 1786
    const/4 v6, 0x1

    #@37b
    return v6

    #@37c
    .line 1789
    .end local v30    # "filename":Ljava/lang/String;
    .end local v40    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "IMountService"

    #@37f
    move-object/from16 v0, p2

    #@381
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 1790
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    #@387
    move-result v25

    #@388
    .line 1791
    .local v25, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38b
    .line 1792
    if-eqz v25, :cond_c

    #@38d
    const/4 v6, 0x1

    #@38e
    :goto_c
    move-object/from16 v0, p3

    #@390
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@393
    .line 1793
    const/4 v6, 0x1

    #@394
    return v6

    #@395
    .line 1792
    :cond_c
    const/4 v6, 0x0

    #@396
    goto :goto_c

    #@397
    .line 1796
    .end local v25    # "emulated":Z
    :sswitch_1b
    const-string/jumbo v6, "IMountService"

    #@39a
    move-object/from16 v0, p2

    #@39c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39f
    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a2
    move-result-object v47

    #@3a3
    .line 1798
    .local v47, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a5
    move-object/from16 v1, v47

    #@3a7
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    #@3aa
    move-result v53

    #@3ab
    .line 1799
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ae
    .line 1800
    move-object/from16 v0, p3

    #@3b0
    move/from16 v1, v53

    #@3b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b5
    .line 1801
    const/4 v6, 0x1

    #@3b6
    return v6

    #@3b7
    .line 1804
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_1c
    const-string/jumbo v6, "IMountService"

    #@3ba
    move-object/from16 v0, p2

    #@3bc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bf
    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c2
    move-result v65

    #@3c3
    .line 1806
    .local v65, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c6
    move-result-object v47

    #@3c7
    .line 1807
    .restart local v47    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v65

    #@3cb
    move-object/from16 v2, v47

    #@3cd
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    #@3d0
    move-result v53

    #@3d1
    .line 1808
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d4
    .line 1809
    move-object/from16 v0, p3

    #@3d6
    move/from16 v1, v53

    #@3d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3db
    .line 1810
    const/4 v6, 0x1

    #@3dc
    return v6

    #@3dd
    .line 1813
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    .end local v65    # "type":I
    :sswitch_1d
    const-string/jumbo v6, "IMountService"

    #@3e0
    move-object/from16 v0, p2

    #@3e2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e5
    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e8
    move-result v65

    #@3e9
    .line 1815
    .restart local v65    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ec
    move-result-object v47

    #@3ed
    .line 1816
    .restart local v47    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ef
    move/from16 v1, v65

    #@3f1
    move-object/from16 v2, v47

    #@3f3
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    #@3f6
    move-result v53

    #@3f7
    .line 1817
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fa
    .line 1818
    move-object/from16 v0, p3

    #@3fc
    move/from16 v1, v53

    #@3fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@401
    .line 1819
    const/4 v6, 0x1

    #@402
    return v6

    #@403
    .line 1822
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    .end local v65    # "type":I
    :sswitch_1e
    const-string/jumbo v6, "IMountService"

    #@406
    move-object/from16 v0, p2

    #@408
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40b
    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40e
    move-result v66

    #@40f
    .line 1824
    .local v66, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@412
    move-result-object v46

    #@413
    .line 1825
    .local v46, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@416
    move-result v19

    #@417
    .line 1826
    .local v19, "_flags":I
    move-object/from16 v0, p0

    #@419
    move/from16 v1, v66

    #@41b
    move-object/from16 v2, v46

    #@41d
    move/from16 v3, v19

    #@41f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    #@422
    move-result-object v58

    #@423
    .line 1827
    .local v58, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@426
    .line 1828
    const/4 v6, 0x1

    #@427
    move-object/from16 v0, p3

    #@429
    move-object/from16 v1, v58

    #@42b
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@42e
    .line 1829
    const/4 v6, 0x1

    #@42f
    return v6

    #@430
    .line 1832
    .end local v19    # "_flags":I
    .end local v46    # "packageName":Ljava/lang/String;
    .end local v58    # "result":[Landroid/os/storage/StorageVolume;
    .end local v66    # "uid":I
    :sswitch_1f
    const-string/jumbo v6, "IMountService"

    #@433
    move-object/from16 v0, p2

    #@435
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@438
    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43b
    move-result-object v7

    #@43c
    .line 1835
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43e
    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    #@441
    move-result-object v48

    #@442
    .line 1836
    .restart local v48    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@445
    .line 1837
    move-object/from16 v0, p3

    #@447
    move-object/from16 v1, v48

    #@449
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@44c
    .line 1838
    const/4 v6, 0x1

    #@44d
    return v6

    #@44e
    .line 1841
    .end local v7    # "id":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v6, "IMountService"

    #@451
    move-object/from16 v0, p2

    #@453
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@456
    .line 1842
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    #@459
    move-result v53

    #@45a
    .line 1843
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45d
    .line 1844
    move-object/from16 v0, p3

    #@45f
    move/from16 v1, v53

    #@461
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@464
    .line 1845
    const/4 v6, 0x1

    #@465
    return v6

    #@466
    .line 1848
    .end local v53    # "result":I
    :sswitch_21
    const-string/jumbo v6, "IMountService"

    #@469
    move-object/from16 v0, p2

    #@46b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46e
    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@471
    move-result-object v7

    #@472
    .line 1852
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@475
    move-result v33

    #@476
    .line 1854
    .local v33, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@479
    move-result-object v30

    #@47a
    .line 1855
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@47c
    move/from16 v1, v33

    #@47e
    move-object/from16 v2, v30

    #@480
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    #@483
    move-result v59

    #@484
    .line 1856
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@487
    .line 1857
    move-object/from16 v0, p3

    #@489
    move/from16 v1, v59

    #@48b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48e
    .line 1858
    const/4 v6, 0x1

    #@48f
    return v6

    #@490
    .line 1861
    .end local v7    # "id":Ljava/lang/String;
    .end local v30    # "filename":Ljava/lang/String;
    .end local v33    # "gid":I
    .end local v59    # "resultCode":I
    :sswitch_22
    const-string/jumbo v6, "IMountService"

    #@493
    move-object/from16 v0, p2

    #@495
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@498
    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49b
    move-result-object v21

    #@49c
    .line 1863
    .local v21, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49f
    move-result-object v48

    #@4a0
    .line 1864
    .restart local v48    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4a2
    move-object/from16 v1, v21

    #@4a4
    move-object/from16 v2, v48

    #@4a6
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    #@4a9
    move-result v53

    #@4aa
    .line 1865
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ad
    .line 1866
    move-object/from16 v0, p3

    #@4af
    move/from16 v1, v53

    #@4b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b4
    .line 1867
    const/4 v6, 0x1

    #@4b5
    return v6

    #@4b6
    .line 1870
    .end local v21    # "callingPkg":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_23
    const-string/jumbo v6, "IMountService"

    #@4b9
    move-object/from16 v0, p2

    #@4bb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4be
    .line 1871
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    #@4c1
    move-result v53

    #@4c2
    .line 1872
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c5
    .line 1873
    move-object/from16 v0, p3

    #@4c7
    move/from16 v1, v53

    #@4c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4cc
    .line 1874
    const/4 v6, 0x1

    #@4cd
    return v6

    #@4ce
    .line 1877
    .end local v53    # "result":I
    :sswitch_24
    const-string/jumbo v6, "IMountService"

    #@4d1
    move-object/from16 v0, p2

    #@4d3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d6
    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    #@4d9
    move-result-object v56

    #@4da
    .line 1879
    .local v56, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4dd
    .line 1880
    move-object/from16 v0, p3

    #@4df
    move-object/from16 v1, v56

    #@4e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4e4
    .line 1881
    const/4 v6, 0x1

    #@4e5
    return v6

    #@4e6
    .line 1884
    .end local v56    # "result":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "IMountService"

    #@4e9
    move-object/from16 v0, p2

    #@4eb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ee
    .line 1885
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    #@4f1
    .line 1886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f4
    .line 1887
    const/4 v6, 0x1

    #@4f5
    return v6

    #@4f6
    .line 1890
    :sswitch_26
    const-string/jumbo v6, "IMountService"

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fe
    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@501
    move-result-object v29

    #@502
    .line 1892
    .local v29, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@505
    move-result-object v22

    #@506
    .line 1893
    .local v22, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    #@508
    move-object/from16 v1, v29

    #@50a
    move-object/from16 v2, v22

    #@50c
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    #@50f
    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@512
    .line 1895
    const/4 v6, 0x1

    #@513
    return v6

    #@514
    .line 1898
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "IMountService"

    #@517
    move-object/from16 v0, p2

    #@519
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51c
    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51f
    move-result-object v29

    #@520
    .line 1900
    .restart local v29    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    #@522
    move-object/from16 v1, v29

    #@524
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    #@527
    move-result-object v22

    #@528
    .line 1901
    .restart local v22    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52b
    .line 1902
    move-object/from16 v0, p3

    #@52d
    move-object/from16 v1, v22

    #@52f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@532
    .line 1903
    const/4 v6, 0x1

    #@533
    return v6

    #@534
    .line 1906
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v6, "IMountService"

    #@537
    move-object/from16 v0, p2

    #@539
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53c
    .line 1907
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isConvertibleToFBE()Z

    #@53f
    move-result v6

    #@540
    if-eqz v6, :cond_d

    #@542
    const/16 v59, 0x1

    #@544
    .line 1908
    .restart local v59    # "resultCode":I
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@547
    .line 1909
    move-object/from16 v0, p3

    #@549
    move/from16 v1, v59

    #@54b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54e
    .line 1910
    const/4 v6, 0x1

    #@54f
    return v6

    #@550
    .line 1907
    .end local v59    # "resultCode":I
    :cond_d
    const/16 v59, 0x0

    #@552
    .restart local v59    # "resultCode":I
    goto :goto_d

    #@553
    .line 1913
    .end local v59    # "resultCode":I
    :sswitch_29
    const-string/jumbo v6, "IMountService"

    #@556
    move-object/from16 v0, p2

    #@558
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55b
    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55e
    move-result-object v7

    #@55f
    .line 1917
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@562
    move-result v8

    #@563
    .line 1919
    .restart local v8    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@566
    move-result-object v10

    #@567
    .line 1920
    .restart local v10    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@569
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    #@56c
    move-result v59

    #@56d
    .line 1921
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@570
    .line 1922
    move-object/from16 v0, p3

    #@572
    move/from16 v1, v59

    #@574
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@577
    .line 1923
    const/4 v6, 0x1

    #@578
    return v6

    #@579
    .line 1926
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_2a
    const-string/jumbo v6, "IMountService"

    #@57c
    move-object/from16 v0, p2

    #@57e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@581
    .line 1927
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    #@584
    move-result-wide v36

    #@585
    .line 1928
    .local v36, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@588
    .line 1929
    move-object/from16 v0, p3

    #@58a
    move-wide/from16 v1, v36

    #@58c
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@58f
    .line 1930
    const/4 v6, 0x1

    #@590
    return v6

    #@591
    .line 1933
    .end local v36    # "lastMaintenance":J
    :sswitch_2b
    const-string/jumbo v6, "IMountService"

    #@594
    move-object/from16 v0, p2

    #@596
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@599
    .line 1934
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    #@59c
    .line 1935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59f
    .line 1936
    const/4 v6, 0x1

    #@5a0
    return v6

    #@5a1
    .line 1939
    :sswitch_2c
    const-string/jumbo v6, "IMountService"

    #@5a4
    move-object/from16 v0, p2

    #@5a6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a9
    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    #@5ac
    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5af
    .line 1942
    const/4 v6, 0x1

    #@5b0
    return v6

    #@5b1
    .line 1945
    :sswitch_2d
    const-string/jumbo v6, "IMountService"

    #@5b4
    move-object/from16 v0, p2

    #@5b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b9
    .line 1946
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    #@5bc
    move-result-object v24

    #@5bd
    .line 1947
    .local v24, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c0
    .line 1948
    const/4 v6, 0x1

    #@5c1
    move-object/from16 v0, p3

    #@5c3
    move-object/from16 v1, v24

    #@5c5
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5c8
    .line 1949
    const/4 v6, 0x1

    #@5c9
    return v6

    #@5ca
    .line 1952
    .end local v24    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2e
    const-string/jumbo v6, "IMountService"

    #@5cd
    move-object/from16 v0, p2

    #@5cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d2
    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d5
    move-result v19

    #@5d6
    .line 1954
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    #@5d8
    move/from16 v1, v19

    #@5da
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@5dd
    move-result-object v70

    #@5de
    .line 1955
    .local v70, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e1
    .line 1956
    const/4 v6, 0x1

    #@5e2
    move-object/from16 v0, p3

    #@5e4
    move-object/from16 v1, v70

    #@5e6
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5e9
    .line 1957
    const/4 v6, 0x1

    #@5ea
    return v6

    #@5eb
    .line 1960
    .end local v19    # "_flags":I
    .end local v70    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2f
    const-string/jumbo v6, "IMountService"

    #@5ee
    move-object/from16 v0, p2

    #@5f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f3
    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f6
    move-result v19

    #@5f7
    .line 1962
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    #@5f9
    move/from16 v1, v19

    #@5fb
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    #@5fe
    move-result-object v71

    #@5ff
    .line 1963
    .local v71, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@602
    .line 1964
    const/4 v6, 0x1

    #@603
    move-object/from16 v0, p3

    #@605
    move-object/from16 v1, v71

    #@607
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@60a
    .line 1965
    const/4 v6, 0x1

    #@60b
    return v6

    #@60c
    .line 1968
    .end local v19    # "_flags":I
    .end local v71    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_30
    const-string/jumbo v6, "IMountService"

    #@60f
    move-object/from16 v0, p2

    #@611
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@614
    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@617
    move-result-object v68

    #@618
    .line 1970
    .local v68, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@61a
    move-object/from16 v1, v68

    #@61c
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    #@61f
    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@622
    .line 1972
    const/4 v6, 0x1

    #@623
    return v6

    #@624
    .line 1975
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v6, "IMountService"

    #@627
    move-object/from16 v0, p2

    #@629
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62c
    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62f
    move-result-object v68

    #@630
    .line 1977
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@632
    move-object/from16 v1, v68

    #@634
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    #@637
    .line 1978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63a
    .line 1979
    const/4 v6, 0x1

    #@63b
    return v6

    #@63c
    .line 1982
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "IMountService"

    #@63f
    move-object/from16 v0, p2

    #@641
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@644
    .line 1983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@647
    move-result-object v68

    #@648
    .line 1984
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@64a
    move-object/from16 v1, v68

    #@64c
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    #@64f
    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@652
    .line 1986
    const/4 v6, 0x1

    #@653
    return v6

    #@654
    .line 1989
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "IMountService"

    #@657
    move-object/from16 v0, p2

    #@659
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65c
    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65f
    move-result-object v68

    #@660
    .line 1991
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@662
    move-object/from16 v1, v68

    #@664
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    #@667
    move-result-wide v54

    #@668
    .line 1992
    .local v54, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66b
    .line 1993
    move-object/from16 v0, p3

    #@66d
    move-wide/from16 v1, v54

    #@66f
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@672
    .line 1994
    const/4 v6, 0x1

    #@673
    return v6

    #@674
    .line 1997
    .end local v54    # "res":J
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v6, "IMountService"

    #@677
    move-object/from16 v0, p2

    #@679
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67c
    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67f
    move-result-object v23

    #@680
    .line 1999
    .local v23, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@682
    move-object/from16 v1, v23

    #@684
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    #@687
    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68a
    .line 2001
    const/4 v6, 0x1

    #@68b
    return v6

    #@68c
    .line 2004
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v6, "IMountService"

    #@68f
    move-object/from16 v0, p2

    #@691
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@694
    .line 2005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@697
    move-result-object v23

    #@698
    .line 2006
    .restart local v23    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@69a
    move-object/from16 v1, v23

    #@69c
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    #@69f
    .line 2007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a2
    .line 2008
    const/4 v6, 0x1

    #@6a3
    return v6

    #@6a4
    .line 2011
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v6, "IMountService"

    #@6a7
    move-object/from16 v0, p2

    #@6a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ac
    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6af
    move-result-object v23

    #@6b0
    .line 2013
    .restart local v23    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b3
    move-result v50

    #@6b4
    .line 2014
    .local v50, "ratio":I
    move-object/from16 v0, p0

    #@6b6
    move-object/from16 v1, v23

    #@6b8
    move/from16 v2, v50

    #@6ba
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    #@6bd
    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c0
    .line 2016
    const/4 v6, 0x1

    #@6c1
    return v6

    #@6c2
    .line 2019
    .end local v23    # "diskId":Ljava/lang/String;
    .end local v50    # "ratio":I
    :sswitch_37
    const-string/jumbo v6, "IMountService"

    #@6c5
    move-object/from16 v0, p2

    #@6c7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ca
    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6cd
    move-result-object v68

    #@6ce
    .line 2021
    .restart local v68    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d1
    move-result-object v43

    #@6d2
    .line 2022
    .local v43, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d4
    move-object/from16 v1, v68

    #@6d6
    move-object/from16 v2, v43

    #@6d8
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    #@6db
    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6de
    .line 2024
    const/4 v6, 0x1

    #@6df
    return v6

    #@6e0
    .line 2027
    .end local v43    # "nickname":Ljava/lang/String;
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v6, "IMountService"

    #@6e3
    move-object/from16 v0, p2

    #@6e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e8
    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6eb
    move-result-object v68

    #@6ec
    .line 2029
    .restart local v68    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ef
    move-result v19

    #@6f0
    .line 2030
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f3
    move-result v20

    #@6f4
    .line 2031
    .local v20, "_mask":I
    move-object/from16 v0, p0

    #@6f6
    move-object/from16 v1, v68

    #@6f8
    move/from16 v2, v19

    #@6fa
    move/from16 v3, v20

    #@6fc
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    #@6ff
    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@702
    .line 2033
    const/4 v6, 0x1

    #@703
    return v6

    #@704
    .line 2036
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "IMountService"

    #@707
    move-object/from16 v0, p2

    #@709
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70c
    .line 2037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70f
    move-result-object v32

    #@710
    .line 2038
    .local v32, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@712
    move-object/from16 v1, v32

    #@714
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    #@717
    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71a
    .line 2040
    const/4 v6, 0x1

    #@71b
    return v6

    #@71c
    .line 2043
    .end local v32    # "fsUuid":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "IMountService"

    #@71f
    move-object/from16 v0, p2

    #@721
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@724
    .line 2044
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    #@727
    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72a
    .line 2046
    const/4 v6, 0x1

    #@72b
    return v6

    #@72c
    .line 2049
    :sswitch_3b
    const-string/jumbo v6, "IMountService"

    #@72f
    move-object/from16 v0, p2

    #@731
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@734
    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@737
    move-result v19

    #@738
    .line 2051
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73b
    move-result v20

    #@73c
    .line 2052
    .restart local v20    # "_mask":I
    move-object/from16 v0, p0

    #@73e
    move/from16 v1, v19

    #@740
    move/from16 v2, v20

    #@742
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    #@745
    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@748
    .line 2054
    const/4 v6, 0x1

    #@749
    return v6

    #@74a
    .line 2057
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    :sswitch_3c
    const-string/jumbo v6, "IMountService"

    #@74d
    move-object/from16 v0, p2

    #@74f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@752
    .line 2058
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    #@755
    move-result-object v69

    #@756
    .line 2059
    .local v69, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@759
    .line 2060
    move-object/from16 v0, p3

    #@75b
    move-object/from16 v1, v69

    #@75d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@760
    .line 2061
    const/4 v6, 0x1

    #@761
    return v6

    #@762
    .line 2064
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "IMountService"

    #@765
    move-object/from16 v0, p2

    #@767
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76a
    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76d
    move-result-object v69

    #@76e
    .line 2067
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@771
    move-result-object v6

    #@772
    .line 2066
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@775
    move-result-object v35

    #@776
    .line 2068
    .local v35, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@778
    move-object/from16 v1, v69

    #@77a
    move-object/from16 v2, v35

    #@77c
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    #@77f
    .line 2069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@782
    .line 2070
    const/4 v6, 0x1

    #@783
    return v6

    #@784
    .line 2073
    .end local v35    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v6, "IMountService"

    #@787
    move-object/from16 v0, p2

    #@789
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78c
    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78f
    move-result v67

    #@790
    .line 2075
    .local v67, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@793
    move-result v61

    #@794
    .line 2076
    .local v61, "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@797
    move-result v6

    #@798
    if-eqz v6, :cond_e

    #@79a
    const/16 v27, 0x1

    #@79c
    .line 2077
    .local v27, "ephemeral":Z
    :goto_e
    move-object/from16 v0, p0

    #@79e
    move/from16 v1, v67

    #@7a0
    move/from16 v2, v61

    #@7a2
    move/from16 v3, v27

    #@7a4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->createUserKey(IIZ)V

    #@7a7
    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7aa
    .line 2079
    const/4 v6, 0x1

    #@7ab
    return v6

    #@7ac
    .line 2076
    .end local v27    # "ephemeral":Z
    :cond_e
    const/16 v27, 0x0

    #@7ae
    goto :goto_e

    #@7af
    .line 2082
    .end local v61    # "serialNumber":I
    .end local v67    # "userId":I
    :sswitch_3f
    const-string/jumbo v6, "IMountService"

    #@7b2
    move-object/from16 v0, p2

    #@7b4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b7
    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ba
    move-result v67

    #@7bb
    .line 2084
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    #@7bd
    move/from16 v1, v67

    #@7bf
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->destroyUserKey(I)V

    #@7c2
    .line 2085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c5
    .line 2086
    const/4 v6, 0x1

    #@7c6
    return v6

    #@7c7
    .line 2089
    .end local v67    # "userId":I
    :sswitch_40
    const-string/jumbo v6, "IMountService"

    #@7ca
    move-object/from16 v0, p2

    #@7cc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cf
    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d2
    move-result v67

    #@7d3
    .line 2091
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d6
    move-result v61

    #@7d7
    .line 2092
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7da
    move-result-object v64

    #@7db
    .line 2093
    .local v64, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7de
    move-result-object v60

    #@7df
    .line 2094
    .local v60, "secret":[B
    move-object/from16 v0, p0

    #@7e1
    move/from16 v1, v67

    #@7e3
    move/from16 v2, v61

    #@7e5
    move-object/from16 v3, v64

    #@7e7
    move-object/from16 v4, v60

    #@7e9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->addUserKeyAuth(II[B[B)V

    #@7ec
    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ef
    .line 2096
    const/4 v6, 0x1

    #@7f0
    return v6

    #@7f1
    .line 2099
    .end local v60    # "secret":[B
    .end local v61    # "serialNumber":I
    .end local v64    # "token":[B
    .end local v67    # "userId":I
    :sswitch_41
    const-string/jumbo v6, "IMountService"

    #@7f4
    move-object/from16 v0, p2

    #@7f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f9
    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7fc
    move-result v67

    #@7fd
    .line 2101
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    #@7ff
    move/from16 v1, v67

    #@801
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->fixateNewestUserKeyAuth(I)V

    #@804
    .line 2102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@807
    .line 2103
    const/4 v6, 0x1

    #@808
    return v6

    #@809
    .line 2106
    .end local v67    # "userId":I
    :sswitch_42
    const-string/jumbo v6, "IMountService"

    #@80c
    move-object/from16 v0, p2

    #@80e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@811
    .line 2107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@814
    move-result v67

    #@815
    .line 2108
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@818
    move-result v61

    #@819
    .line 2109
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@81c
    move-result-object v64

    #@81d
    .line 2110
    .restart local v64    # "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@820
    move-result-object v60

    #@821
    .line 2111
    .restart local v60    # "secret":[B
    move-object/from16 v0, p0

    #@823
    move/from16 v1, v67

    #@825
    move/from16 v2, v61

    #@827
    move-object/from16 v3, v64

    #@829
    move-object/from16 v4, v60

    #@82b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unlockUserKey(II[B[B)V

    #@82e
    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@831
    .line 2113
    const/4 v6, 0x1

    #@832
    return v6

    #@833
    .line 2116
    .end local v60    # "secret":[B
    .end local v61    # "serialNumber":I
    .end local v64    # "token":[B
    .end local v67    # "userId":I
    :sswitch_43
    const-string/jumbo v6, "IMountService"

    #@836
    move-object/from16 v0, p2

    #@838
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83b
    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83e
    move-result v67

    #@83f
    .line 2118
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    #@841
    move/from16 v1, v67

    #@843
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockUserKey(I)V

    #@846
    .line 2119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@849
    .line 2120
    const/4 v6, 0x1

    #@84a
    return v6

    #@84b
    .line 2123
    .end local v67    # "userId":I
    :sswitch_44
    const-string/jumbo v6, "IMountService"

    #@84e
    move-object/from16 v0, p2

    #@850
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@853
    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@856
    move-result v67

    #@857
    .line 2125
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    #@859
    move/from16 v1, v67

    #@85b
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isUserKeyUnlocked(I)Z

    #@85e
    move-result v57

    #@85f
    .line 2126
    .restart local v57    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@862
    .line 2127
    if-eqz v57, :cond_f

    #@864
    const/4 v6, 0x1

    #@865
    :goto_f
    move-object/from16 v0, p3

    #@867
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@86a
    .line 2128
    const/4 v6, 0x1

    #@86b
    return v6

    #@86c
    .line 2127
    :cond_f
    const/4 v6, 0x0

    #@86d
    goto :goto_f

    #@86e
    .line 2131
    .end local v57    # "result":Z
    .end local v67    # "userId":I
    :sswitch_45
    const-string/jumbo v6, "IMountService"

    #@871
    move-object/from16 v0, p2

    #@873
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@876
    .line 2132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@879
    move-result-object v69

    #@87a
    .line 2133
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87d
    move-result v67

    #@87e
    .line 2134
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@881
    move-result v61

    #@882
    .line 2135
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@885
    move-result v19

    #@886
    .line 2136
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    #@888
    move-object/from16 v1, v69

    #@88a
    move/from16 v2, v67

    #@88c
    move/from16 v3, v61

    #@88e
    move/from16 v4, v19

    #@890
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    #@893
    .line 2137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@896
    .line 2138
    const/4 v6, 0x1

    #@897
    return v6

    #@898
    .line 2141
    .end local v19    # "_flags":I
    .end local v61    # "serialNumber":I
    .end local v67    # "userId":I
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v6, "IMountService"

    #@89b
    move-object/from16 v0, p2

    #@89d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a0
    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8a3
    move-result-object v69

    #@8a4
    .line 2143
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a7
    move-result v67

    #@8a8
    .line 2144
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ab
    move-result v19

    #@8ac
    .line 2145
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    #@8ae
    move-object/from16 v1, v69

    #@8b0
    move/from16 v2, v67

    #@8b2
    move/from16 v3, v19

    #@8b4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    #@8b7
    .line 2146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ba
    .line 2147
    const/4 v6, 0x1

    #@8bb
    return v6

    #@8bc
    .line 2150
    .end local v19    # "_flags":I
    .end local v67    # "userId":I
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v6, "IMountService"

    #@8bf
    move-object/from16 v0, p2

    #@8c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c4
    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8c7
    move-result-object v41

    #@8c8
    .line 2152
    .local v41, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8ca
    move-object/from16 v1, v41

    #@8cc
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@8cf
    move-result-object v28

    #@8d0
    .line 2153
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d3
    .line 2154
    const/4 v6, 0x1

    #@8d4
    move-object/from16 v0, p3

    #@8d6
    move-object/from16 v1, v28

    #@8d8
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@8db
    .line 2155
    const/4 v6, 0x1

    #@8dc
    return v6

    #@8dd
    .line 1537
    nop

    #@8de
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_33
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_42
        0x41 -> :sswitch_43
        0x42 -> :sswitch_44
        0x43 -> :sswitch_45
        0x44 -> :sswitch_46
        0x45 -> :sswitch_28
        0x46 -> :sswitch_47
        0x47 -> :sswitch_40
        0x48 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
