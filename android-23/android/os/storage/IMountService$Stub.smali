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

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

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

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

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
    .line 1314
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 1315
    const-string/jumbo v0, "IMountService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 1314
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1303
    if-nez p0, :cond_0

    #@3
    .line 1304
    return-object v1

    #@4
    .line 1306
    :cond_0
    const-string/jumbo v1, "IMountService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 1307
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/storage/IMountService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1308
    check-cast v0, Landroid/os/storage/IMountService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 1310
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
    .line 1319
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 63
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
    .line 1325
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1854
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 1327
    :sswitch_0
    const-string/jumbo v4, "IMountService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1328
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 1331
    :sswitch_1
    const-string/jumbo v4, "IMountService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    #@21
    move-result-object v34

    #@22
    .line 1334
    .local v34, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v34

    #@26
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    #@29
    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 1336
    const/4 v4, 0x1

    #@2d
    return v4

    #@2e
    .line 1339
    .end local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string/jumbo v4, "IMountService"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    #@3d
    move-result-object v34

    #@3e
    .line 1342
    .restart local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    #@40
    move-object/from16 v1, v34

    #@42
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    #@45
    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 1344
    const/4 v4, 0x1

    #@49
    return v4

    #@4a
    .line 1347
    .end local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string/jumbo v4, "IMountService"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    #@55
    move-result v52

    #@56
    .line 1349
    .local v52, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 1350
    if-eqz v52, :cond_0

    #@5b
    const/4 v4, 0x1

    #@5c
    :goto_0
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 1351
    const/4 v4, 0x1

    #@62
    return v4

    #@63
    .line 1350
    :cond_0
    const/4 v4, 0x0

    #@64
    goto :goto_0

    #@65
    .line 1354
    .end local v52    # "result":Z
    :sswitch_4
    const-string/jumbo v4, "IMountService"

    #@68
    move-object/from16 v0, p2

    #@6a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_1

    #@73
    const/16 v24, 0x1

    #@75
    .line 1357
    .local v24, "enable":Z
    :goto_1
    move-object/from16 v0, p0

    #@77
    move/from16 v1, v24

    #@79
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    #@7c
    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 1359
    const/4 v4, 0x1

    #@80
    return v4

    #@81
    .line 1356
    .end local v24    # "enable":Z
    :cond_1
    const/16 v24, 0x0

    #@83
    .restart local v24    # "enable":Z
    goto :goto_1

    #@84
    .line 1362
    .end local v24    # "enable":Z
    :sswitch_5
    const-string/jumbo v4, "IMountService"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 1363
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    #@8f
    move-result v52

    #@90
    .line 1364
    .restart local v52    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 1365
    if-eqz v52, :cond_2

    #@95
    const/4 v4, 0x1

    #@96
    :goto_2
    move-object/from16 v0, p3

    #@98
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 1366
    const/4 v4, 0x1

    #@9c
    return v4

    #@9d
    .line 1365
    :cond_2
    const/4 v4, 0x0

    #@9e
    goto :goto_2

    #@9f
    .line 1369
    .end local v52    # "result":Z
    :sswitch_6
    const-string/jumbo v4, "IMountService"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v35

    #@ab
    .line 1372
    .local v35, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v35

    #@af
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    #@b2
    move-result v54

    #@b3
    .line 1373
    .local v54, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 1374
    move-object/from16 v0, p3

    #@b8
    move/from16 v1, v54

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 1375
    const/4 v4, 0x1

    #@be
    return v4

    #@bf
    .line 1378
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_7
    const-string/jumbo v4, "IMountService"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v35

    #@cb
    .line 1381
    .restart local v35    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v4

    #@cf
    if-eqz v4, :cond_3

    #@d1
    const/16 v27, 0x1

    #@d3
    .line 1382
    .local v27, "force":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v4

    #@d7
    if-eqz v4, :cond_4

    #@d9
    const/16 v47, 0x1

    #@db
    .line 1383
    .local v47, "removeEncrypt":Z
    :goto_4
    move-object/from16 v0, p0

    #@dd
    move-object/from16 v1, v35

    #@df
    move/from16 v2, v27

    #@e1
    move/from16 v3, v47

    #@e3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    #@e6
    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 1385
    const/4 v4, 0x1

    #@ea
    return v4

    #@eb
    .line 1381
    .end local v27    # "force":Z
    .end local v47    # "removeEncrypt":Z
    :cond_3
    const/16 v27, 0x0

    #@ed
    .restart local v27    # "force":Z
    goto :goto_3

    #@ee
    .line 1382
    :cond_4
    const/16 v47, 0x0

    #@f0
    .restart local v47    # "removeEncrypt":Z
    goto :goto_4

    #@f1
    .line 1388
    .end local v27    # "force":Z
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v47    # "removeEncrypt":Z
    :sswitch_8
    const-string/jumbo v4, "IMountService"

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fc
    move-result-object v35

    #@fd
    .line 1391
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, v35

    #@101
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    #@104
    move-result v50

    #@105
    .line 1392
    .local v50, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    .line 1393
    move-object/from16 v0, p3

    #@10a
    move/from16 v1, v50

    #@10c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10f
    .line 1394
    const/4 v4, 0x1

    #@110
    return v4

    #@111
    .line 1397
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_9
    const-string/jumbo v4, "IMountService"

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11c
    move-result-object v43

    #@11d
    .line 1400
    .local v43, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11f
    move-object/from16 v1, v43

    #@121
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    #@124
    move-result-object v44

    #@125
    .line 1401
    .local v44, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128
    .line 1402
    move-object/from16 v0, p3

    #@12a
    move-object/from16 v1, v44

    #@12c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@12f
    .line 1403
    const/4 v4, 0x1

    #@130
    return v4

    #@131
    .line 1406
    .end local v43    # "path":Ljava/lang/String;
    .end local v44    # "pids":[I
    :sswitch_a
    const-string/jumbo v4, "IMountService"

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v35

    #@13d
    .line 1409
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v35

    #@141
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    #@144
    move-result-object v55

    #@145
    .line 1410
    .local v55, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@148
    .line 1411
    move-object/from16 v0, p3

    #@14a
    move-object/from16 v1, v55

    #@14c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14f
    .line 1412
    const/4 v4, 0x1

    #@150
    return v4

    #@151
    .line 1415
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v55    # "state":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "IMountService"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159
    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15c
    move-result-object v5

    #@15d
    .line 1419
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@160
    move-result v6

    #@161
    .line 1421
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@164
    move-result-object v7

    #@165
    .line 1423
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@168
    move-result-object v8

    #@169
    .line 1425
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v9

    #@16d
    .line 1427
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v4

    #@171
    if-eqz v4, :cond_5

    #@173
    const/4 v10, 0x1

    #@174
    .local v10, "external":Z
    :goto_5
    move-object/from16 v4, p0

    #@176
    .line 1428
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    #@179
    move-result v54

    #@17a
    .line 1430
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 1431
    move-object/from16 v0, p3

    #@17f
    move/from16 v1, v54

    #@181
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@184
    .line 1432
    const/4 v4, 0x1

    #@185
    return v4

    #@186
    .line 1427
    .end local v10    # "external":Z
    .end local v54    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    #@187
    .restart local v10    # "external":Z
    goto :goto_5

    #@188
    .line 1435
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    .end local v10    # "external":Z
    :sswitch_c
    const-string/jumbo v4, "IMountService"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@193
    move-result-object v5

    #@194
    .line 1438
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    #@199
    move-result v54

    #@19a
    .line 1439
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 1440
    move-object/from16 v0, p3

    #@19f
    move/from16 v1, v54

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4
    .line 1441
    const/4 v4, 0x1

    #@1a5
    return v4

    #@1a6
    .line 1444
    .end local v5    # "id":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_d
    const-string/jumbo v4, "IMountService"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b1
    move-result-object v5

    #@1b2
    .line 1448
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v4

    #@1b6
    if-eqz v4, :cond_6

    #@1b8
    const/16 v27, 0x1

    #@1ba
    .line 1449
    .restart local v27    # "force":Z
    :goto_6
    move-object/from16 v0, p0

    #@1bc
    move/from16 v1, v27

    #@1be
    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    #@1c1
    move-result v54

    #@1c2
    .line 1450
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c5
    .line 1451
    move-object/from16 v0, p3

    #@1c7
    move/from16 v1, v54

    #@1c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1cc
    .line 1452
    const/4 v4, 0x1

    #@1cd
    return v4

    #@1ce
    .line 1448
    .end local v27    # "force":Z
    .end local v54    # "resultCode":I
    :cond_6
    const/16 v27, 0x0

    #@1d0
    .restart local v27    # "force":Z
    goto :goto_6

    #@1d1
    .line 1455
    .end local v5    # "id":Ljava/lang/String;
    .end local v27    # "force":Z
    :sswitch_e
    const-string/jumbo v4, "IMountService"

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v5

    #@1dd
    .line 1459
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e0
    move-result-object v8

    #@1e1
    .line 1461
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v9

    #@1e5
    .line 1463
    .restart local v9    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v4

    #@1e9
    if-eqz v4, :cond_7

    #@1eb
    const/16 v46, 0x1

    #@1ed
    .line 1464
    .local v46, "readOnly":Z
    :goto_7
    move-object/from16 v0, p0

    #@1ef
    move/from16 v1, v46

    #@1f1
    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    #@1f4
    move-result v54

    #@1f5
    .line 1465
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f8
    .line 1466
    move-object/from16 v0, p3

    #@1fa
    move/from16 v1, v54

    #@1fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ff
    .line 1467
    const/4 v4, 0x1

    #@200
    return v4

    #@201
    .line 1463
    .end local v46    # "readOnly":Z
    .end local v54    # "resultCode":I
    :cond_7
    const/16 v46, 0x0

    #@203
    .restart local v46    # "readOnly":Z
    goto :goto_7

    #@204
    .line 1470
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    .end local v46    # "readOnly":Z
    :sswitch_f
    const-string/jumbo v4, "IMountService"

    #@207
    move-object/from16 v0, p2

    #@209
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c
    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20f
    move-result-object v5

    #@210
    .line 1474
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v4

    #@214
    if-eqz v4, :cond_8

    #@216
    const/16 v27, 0x1

    #@218
    .line 1475
    .restart local v27    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v27

    #@21c
    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    #@21f
    move-result v54

    #@220
    .line 1476
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@223
    .line 1477
    move-object/from16 v0, p3

    #@225
    move/from16 v1, v54

    #@227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22a
    .line 1478
    const/4 v4, 0x1

    #@22b
    return v4

    #@22c
    .line 1474
    .end local v27    # "force":Z
    .end local v54    # "resultCode":I
    :cond_8
    const/16 v27, 0x0

    #@22e
    .restart local v27    # "force":Z
    goto :goto_8

    #@22f
    .line 1481
    .end local v5    # "id":Ljava/lang/String;
    .end local v27    # "force":Z
    :sswitch_10
    const-string/jumbo v4, "IMountService"

    #@232
    move-object/from16 v0, p2

    #@234
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@237
    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23a
    move-result-object v5

    #@23b
    .line 1484
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23d
    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    #@240
    move-result v56

    #@241
    .line 1485
    .local v56, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 1486
    if-eqz v56, :cond_9

    #@246
    const/4 v4, 0x1

    #@247
    :goto_9
    move-object/from16 v0, p3

    #@249
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24c
    .line 1487
    const/4 v4, 0x1

    #@24d
    return v4

    #@24e
    .line 1486
    :cond_9
    const/4 v4, 0x0

    #@24f
    goto :goto_9

    #@250
    .line 1490
    .end local v5    # "id":Ljava/lang/String;
    .end local v56    # "status":Z
    :sswitch_11
    const-string/jumbo v4, "IMountService"

    #@253
    move-object/from16 v0, p2

    #@255
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 1492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25b
    move-result-object v40

    #@25c
    .line 1494
    .local v40, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25f
    move-result-object v37

    #@260
    .line 1495
    .local v37, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@262
    move-object/from16 v1, v40

    #@264
    move-object/from16 v2, v37

    #@266
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    #@269
    move-result v54

    #@26a
    .line 1496
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26d
    .line 1497
    move-object/from16 v0, p3

    #@26f
    move/from16 v1, v54

    #@271
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@274
    .line 1498
    const/4 v4, 0x1

    #@275
    return v4

    #@276
    .line 1501
    .end local v37    # "newId":Ljava/lang/String;
    .end local v40    # "oldId":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_12
    const-string/jumbo v4, "IMountService"

    #@279
    move-object/from16 v0, p2

    #@27b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27e
    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@281
    move-result-object v5

    #@282
    .line 1504
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@284
    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    #@287
    move-result-object v43

    #@288
    .line 1505
    .restart local v43    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28b
    .line 1506
    move-object/from16 v0, p3

    #@28d
    move-object/from16 v1, v43

    #@28f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@292
    .line 1507
    const/4 v4, 0x1

    #@293
    return v4

    #@294
    .line 1510
    .end local v5    # "id":Ljava/lang/String;
    .end local v43    # "path":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "IMountService"

    #@297
    move-object/from16 v0, p2

    #@299
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29c
    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    #@29f
    move-result-object v30

    #@2a0
    .line 1512
    .local v30, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3
    .line 1513
    move-object/from16 v0, p3

    #@2a5
    move-object/from16 v1, v30

    #@2a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2aa
    .line 1514
    const/4 v4, 0x1

    #@2ab
    return v4

    #@2ac
    .line 1517
    .end local v30    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "IMountService"

    #@2af
    move-object/from16 v0, p2

    #@2b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b4
    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b7
    move-result-object v4

    #@2b8
    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    #@2bb
    move-result-object v39

    #@2bc
    .line 1521
    .local v39, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    #@2be
    move-object/from16 v1, v39

    #@2c0
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    #@2c3
    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c6
    .line 1523
    const/4 v4, 0x1

    #@2c7
    return v4

    #@2c8
    .line 1526
    .end local v39    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string/jumbo v4, "IMountService"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 1527
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    #@2d3
    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d6
    .line 1529
    const/4 v4, 0x1

    #@2d7
    return v4

    #@2d8
    .line 1532
    :sswitch_16
    const-string/jumbo v4, "IMountService"

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e0
    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e3
    move-result-object v12

    #@2e4
    .line 1534
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e7
    move-result-object v13

    #@2e8
    .line 1535
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2eb
    move-result-object v8

    #@2ec
    .line 1537
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ef
    move-result-object v4

    #@2f0
    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    #@2f3
    move-result-object v15

    #@2f4
    .line 1539
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v16

    #@2f8
    .local v16, "nonce":I
    move-object/from16 v11, p0

    #@2fa
    move-object v14, v8

    #@2fb
    .line 1540
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    #@2fe
    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 1542
    const/4 v4, 0x1

    #@302
    return v4

    #@303
    .line 1545
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string/jumbo v4, "IMountService"

    #@306
    move-object/from16 v0, p2

    #@308
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30b
    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30e
    move-result-object v26

    #@30f
    .line 1549
    .local v26, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@312
    move-result v4

    #@313
    if-eqz v4, :cond_a

    #@315
    const/16 v27, 0x1

    #@317
    .line 1551
    .restart local v27    # "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@31a
    move-result-object v4

    #@31b
    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    #@31e
    move-result-object v15

    #@31f
    .line 1553
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v16

    #@323
    .line 1554
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v26

    #@327
    move/from16 v2, v27

    #@329
    move/from16 v3, v16

    #@32b
    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    #@32e
    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@331
    .line 1556
    const/4 v4, 0x1

    #@332
    return v4

    #@333
    .line 1549
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v27    # "force":Z
    :cond_a
    const/16 v27, 0x0

    #@335
    .restart local v27    # "force":Z
    goto :goto_a

    #@336
    .line 1559
    .end local v26    # "filename":Ljava/lang/String;
    .end local v27    # "force":Z
    :sswitch_18
    const-string/jumbo v4, "IMountService"

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33e
    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@341
    move-result-object v26

    #@342
    .line 1562
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@344
    move-object/from16 v1, v26

    #@346
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    #@349
    move-result v56

    #@34a
    .line 1563
    .restart local v56    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34d
    .line 1564
    if-eqz v56, :cond_b

    #@34f
    const/4 v4, 0x1

    #@350
    :goto_b
    move-object/from16 v0, p3

    #@352
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@355
    .line 1565
    const/4 v4, 0x1

    #@356
    return v4

    #@357
    .line 1564
    :cond_b
    const/4 v4, 0x0

    #@358
    goto :goto_b

    #@359
    .line 1568
    .end local v26    # "filename":Ljava/lang/String;
    .end local v56    # "status":Z
    :sswitch_19
    const-string/jumbo v4, "IMountService"

    #@35c
    move-object/from16 v0, p2

    #@35e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@361
    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@364
    move-result-object v26

    #@365
    .line 1571
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@367
    move-object/from16 v1, v26

    #@369
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    #@36c
    move-result-object v36

    #@36d
    .line 1572
    .local v36, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@370
    .line 1573
    move-object/from16 v0, p3

    #@372
    move-object/from16 v1, v36

    #@374
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@377
    .line 1574
    const/4 v4, 0x1

    #@378
    return v4

    #@379
    .line 1577
    .end local v26    # "filename":Ljava/lang/String;
    .end local v36    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "IMountService"

    #@37c
    move-object/from16 v0, p2

    #@37e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@381
    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    #@384
    move-result v23

    #@385
    .line 1579
    .local v23, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 1580
    if-eqz v23, :cond_c

    #@38a
    const/4 v4, 0x1

    #@38b
    :goto_c
    move-object/from16 v0, p3

    #@38d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@390
    .line 1581
    const/4 v4, 0x1

    #@391
    return v4

    #@392
    .line 1580
    :cond_c
    const/4 v4, 0x0

    #@393
    goto :goto_c

    #@394
    .line 1584
    .end local v23    # "emulated":Z
    :sswitch_1b
    const-string/jumbo v4, "IMountService"

    #@397
    move-object/from16 v0, p2

    #@399
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39c
    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39f
    move-result-object v42

    #@3a0
    .line 1586
    .local v42, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a2
    move-object/from16 v1, v42

    #@3a4
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    #@3a7
    move-result v50

    #@3a8
    .line 1587
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ab
    .line 1588
    move-object/from16 v0, p3

    #@3ad
    move/from16 v1, v50

    #@3af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b2
    .line 1589
    const/4 v4, 0x1

    #@3b3
    return v4

    #@3b4
    .line 1592
    .end local v42    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_1c
    const-string/jumbo v4, "IMountService"

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bc
    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bf
    move-result v57

    #@3c0
    .line 1594
    .local v57, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c3
    move-result-object v42

    #@3c4
    .line 1595
    .restart local v42    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c6
    move/from16 v1, v57

    #@3c8
    move-object/from16 v2, v42

    #@3ca
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    #@3cd
    move-result v50

    #@3ce
    .line 1596
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d1
    .line 1597
    move-object/from16 v0, p3

    #@3d3
    move/from16 v1, v50

    #@3d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d8
    .line 1598
    const/4 v4, 0x1

    #@3d9
    return v4

    #@3da
    .line 1601
    .end local v42    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    .end local v57    # "type":I
    :sswitch_1d
    const-string/jumbo v4, "IMountService"

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e2
    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e5
    move-result v57

    #@3e6
    .line 1603
    .restart local v57    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e9
    move-result-object v42

    #@3ea
    .line 1604
    .restart local v42    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ec
    move/from16 v1, v57

    #@3ee
    move-object/from16 v2, v42

    #@3f0
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    #@3f3
    move-result v50

    #@3f4
    .line 1605
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f7
    .line 1606
    move-object/from16 v0, p3

    #@3f9
    move/from16 v1, v50

    #@3fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3fe
    .line 1607
    const/4 v4, 0x1

    #@3ff
    return v4

    #@400
    .line 1610
    .end local v42    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    .end local v57    # "type":I
    :sswitch_1e
    const-string/jumbo v4, "IMountService"

    #@403
    move-object/from16 v0, p2

    #@405
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@408
    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40b
    move-result v58

    #@40c
    .line 1612
    .local v58, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40f
    move-result-object v41

    #@410
    .line 1613
    .local v41, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@413
    move-result v17

    #@414
    .line 1614
    .local v17, "_flags":I
    move-object/from16 v0, p0

    #@416
    move/from16 v1, v58

    #@418
    move-object/from16 v2, v41

    #@41a
    move/from16 v3, v17

    #@41c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    #@41f
    move-result-object v53

    #@420
    .line 1615
    .local v53, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@423
    .line 1616
    const/4 v4, 0x1

    #@424
    move-object/from16 v0, p3

    #@426
    move-object/from16 v1, v53

    #@428
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@42b
    .line 1617
    const/4 v4, 0x1

    #@42c
    return v4

    #@42d
    .line 1620
    .end local v17    # "_flags":I
    .end local v41    # "packageName":Ljava/lang/String;
    .end local v53    # "result":[Landroid/os/storage/StorageVolume;
    .end local v58    # "uid":I
    :sswitch_1f
    const-string/jumbo v4, "IMountService"

    #@430
    move-object/from16 v0, p2

    #@432
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@435
    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@438
    move-result-object v5

    #@439
    .line 1623
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43b
    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    #@43e
    move-result-object v43

    #@43f
    .line 1624
    .restart local v43    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@442
    .line 1625
    move-object/from16 v0, p3

    #@444
    move-object/from16 v1, v43

    #@446
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@449
    .line 1626
    const/4 v4, 0x1

    #@44a
    return v4

    #@44b
    .line 1629
    .end local v5    # "id":Ljava/lang/String;
    .end local v43    # "path":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "IMountService"

    #@44e
    move-object/from16 v0, p2

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@453
    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    #@456
    move-result v50

    #@457
    .line 1631
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45a
    .line 1632
    move-object/from16 v0, p3

    #@45c
    move/from16 v1, v50

    #@45e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@461
    .line 1633
    const/4 v4, 0x1

    #@462
    return v4

    #@463
    .line 1636
    .end local v50    # "result":I
    :sswitch_21
    const-string/jumbo v4, "IMountService"

    #@466
    move-object/from16 v0, p2

    #@468
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46b
    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46e
    move-result-object v5

    #@46f
    .line 1640
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@472
    move-result v29

    #@473
    .line 1642
    .local v29, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@476
    move-result-object v26

    #@477
    .line 1643
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@479
    move/from16 v1, v29

    #@47b
    move-object/from16 v2, v26

    #@47d
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    #@480
    move-result v54

    #@481
    .line 1644
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@484
    .line 1645
    move-object/from16 v0, p3

    #@486
    move/from16 v1, v54

    #@488
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48b
    .line 1646
    const/4 v4, 0x1

    #@48c
    return v4

    #@48d
    .line 1649
    .end local v5    # "id":Ljava/lang/String;
    .end local v26    # "filename":Ljava/lang/String;
    .end local v29    # "gid":I
    .end local v54    # "resultCode":I
    :sswitch_22
    const-string/jumbo v4, "IMountService"

    #@490
    move-object/from16 v0, p2

    #@492
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@495
    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@498
    move-result-object v19

    #@499
    .line 1651
    .local v19, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49c
    move-result-object v43

    #@49d
    .line 1652
    .restart local v43    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@49f
    move-object/from16 v1, v19

    #@4a1
    move-object/from16 v2, v43

    #@4a3
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    #@4a6
    move-result v50

    #@4a7
    .line 1653
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4aa
    .line 1654
    move-object/from16 v0, p3

    #@4ac
    move/from16 v1, v50

    #@4ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b1
    .line 1655
    const/4 v4, 0x1

    #@4b2
    return v4

    #@4b3
    .line 1658
    .end local v19    # "callingPkg":Ljava/lang/String;
    .end local v43    # "path":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_23
    const-string/jumbo v4, "IMountService"

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 1659
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    #@4be
    move-result v50

    #@4bf
    .line 1660
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c2
    .line 1661
    move-object/from16 v0, p3

    #@4c4
    move/from16 v1, v50

    #@4c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c9
    .line 1662
    const/4 v4, 0x1

    #@4ca
    return v4

    #@4cb
    .line 1665
    .end local v50    # "result":I
    :sswitch_24
    const-string/jumbo v4, "IMountService"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 1666
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    #@4d6
    move-result-object v51

    #@4d7
    .line 1667
    .local v51, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4da
    .line 1668
    move-object/from16 v0, p3

    #@4dc
    move-object/from16 v1, v51

    #@4de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4e1
    .line 1669
    const/4 v4, 0x1

    #@4e2
    return v4

    #@4e3
    .line 1672
    .end local v51    # "result":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v4, "IMountService"

    #@4e6
    move-object/from16 v0, p2

    #@4e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4eb
    .line 1673
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    #@4ee
    .line 1674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f1
    .line 1675
    const/4 v4, 0x1

    #@4f2
    return v4

    #@4f3
    .line 1678
    :sswitch_26
    const-string/jumbo v4, "IMountService"

    #@4f6
    move-object/from16 v0, p2

    #@4f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fb
    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4fe
    move-result-object v25

    #@4ff
    .line 1680
    .local v25, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@502
    move-result-object v20

    #@503
    .line 1681
    .local v20, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    #@505
    move-object/from16 v1, v25

    #@507
    move-object/from16 v2, v20

    #@509
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    #@50c
    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50f
    .line 1683
    const/4 v4, 0x1

    #@510
    return v4

    #@511
    .line 1686
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v4, "IMountService"

    #@514
    move-object/from16 v0, p2

    #@516
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@519
    .line 1687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51c
    move-result-object v25

    #@51d
    .line 1688
    .restart local v25    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    #@51f
    move-object/from16 v1, v25

    #@521
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    #@524
    move-result-object v20

    #@525
    .line 1689
    .restart local v20    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@528
    .line 1690
    move-object/from16 v0, p3

    #@52a
    move-object/from16 v1, v20

    #@52c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52f
    .line 1691
    const/4 v4, 0x1

    #@530
    return v4

    #@531
    .line 1694
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "IMountService"

    #@534
    move-object/from16 v0, p2

    #@536
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@539
    .line 1696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53c
    move-result-object v5

    #@53d
    .line 1698
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@540
    move-result v6

    #@541
    .line 1700
    .restart local v6    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@544
    move-result-object v8

    #@545
    .line 1701
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@547
    invoke-virtual {v0, v5, v6, v8}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    #@54a
    move-result v54

    #@54b
    .line 1702
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54e
    .line 1703
    move-object/from16 v0, p3

    #@550
    move/from16 v1, v54

    #@552
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@555
    .line 1704
    const/4 v4, 0x1

    #@556
    return v4

    #@557
    .line 1707
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_29
    const-string/jumbo v4, "IMountService"

    #@55a
    move-object/from16 v0, p2

    #@55c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55f
    .line 1708
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    #@562
    move-result-wide v32

    #@563
    .line 1709
    .local v32, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@566
    .line 1710
    move-object/from16 v0, p3

    #@568
    move-wide/from16 v1, v32

    #@56a
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@56d
    .line 1711
    const/4 v4, 0x1

    #@56e
    return v4

    #@56f
    .line 1714
    .end local v32    # "lastMaintenance":J
    :sswitch_2a
    const-string/jumbo v4, "IMountService"

    #@572
    move-object/from16 v0, p2

    #@574
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@577
    .line 1715
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    #@57a
    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57d
    .line 1717
    const/4 v4, 0x1

    #@57e
    return v4

    #@57f
    .line 1720
    :sswitch_2b
    const-string/jumbo v4, "IMountService"

    #@582
    move-object/from16 v0, p2

    #@584
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@587
    .line 1721
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    #@58a
    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58d
    .line 1723
    const/4 v4, 0x1

    #@58e
    return v4

    #@58f
    .line 1726
    :sswitch_2c
    const-string/jumbo v4, "IMountService"

    #@592
    move-object/from16 v0, p2

    #@594
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@597
    .line 1727
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    #@59a
    move-result-object v22

    #@59b
    .line 1728
    .local v22, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59e
    .line 1729
    const/4 v4, 0x1

    #@59f
    move-object/from16 v0, p3

    #@5a1
    move-object/from16 v1, v22

    #@5a3
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5a6
    .line 1730
    const/4 v4, 0x1

    #@5a7
    return v4

    #@5a8
    .line 1733
    .end local v22    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2d
    const-string/jumbo v4, "IMountService"

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b0
    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b3
    move-result v17

    #@5b4
    .line 1735
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    #@5b6
    move/from16 v1, v17

    #@5b8
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@5bb
    move-result-object v61

    #@5bc
    .line 1736
    .local v61, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bf
    .line 1737
    const/4 v4, 0x1

    #@5c0
    move-object/from16 v0, p3

    #@5c2
    move-object/from16 v1, v61

    #@5c4
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5c7
    .line 1738
    const/4 v4, 0x1

    #@5c8
    return v4

    #@5c9
    .line 1741
    .end local v17    # "_flags":I
    .end local v61    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2e
    const-string/jumbo v4, "IMountService"

    #@5cc
    move-object/from16 v0, p2

    #@5ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d1
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d4
    move-result v17

    #@5d5
    .line 1743
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    #@5d7
    move/from16 v1, v17

    #@5d9
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    #@5dc
    move-result-object v62

    #@5dd
    .line 1744
    .local v62, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e0
    .line 1745
    const/4 v4, 0x1

    #@5e1
    move-object/from16 v0, p3

    #@5e3
    move-object/from16 v1, v62

    #@5e5
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5e8
    .line 1746
    const/4 v4, 0x1

    #@5e9
    return v4

    #@5ea
    .line 1749
    .end local v17    # "_flags":I
    .end local v62    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_2f
    const-string/jumbo v4, "IMountService"

    #@5ed
    move-object/from16 v0, p2

    #@5ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f2
    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f5
    move-result-object v59

    #@5f6
    .line 1751
    .local v59, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5f8
    move-object/from16 v1, v59

    #@5fa
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    #@5fd
    .line 1752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@600
    .line 1753
    const/4 v4, 0x1

    #@601
    return v4

    #@602
    .line 1756
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v4, "IMountService"

    #@605
    move-object/from16 v0, p2

    #@607
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60a
    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60d
    move-result-object v59

    #@60e
    .line 1758
    .restart local v59    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@610
    move-object/from16 v1, v59

    #@612
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    #@615
    .line 1759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@618
    .line 1760
    const/4 v4, 0x1

    #@619
    return v4

    #@61a
    .line 1763
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "IMountService"

    #@61d
    move-object/from16 v0, p2

    #@61f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@622
    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@625
    move-result-object v59

    #@626
    .line 1765
    .restart local v59    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@628
    move-object/from16 v1, v59

    #@62a
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    #@62d
    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@630
    .line 1767
    const/4 v4, 0x1

    #@631
    return v4

    #@632
    .line 1770
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v4, "IMountService"

    #@635
    move-object/from16 v0, p2

    #@637
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63a
    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63d
    move-result-object v59

    #@63e
    .line 1772
    .restart local v59    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@640
    move-object/from16 v1, v59

    #@642
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    #@645
    move-result-wide v48

    #@646
    .line 1773
    .local v48, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@649
    .line 1774
    move-object/from16 v0, p3

    #@64b
    move-wide/from16 v1, v48

    #@64d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@650
    .line 1775
    const/4 v4, 0x1

    #@651
    return v4

    #@652
    .line 1778
    .end local v48    # "res":J
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v4, "IMountService"

    #@655
    move-object/from16 v0, p2

    #@657
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65a
    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65d
    move-result-object v21

    #@65e
    .line 1780
    .local v21, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@660
    move-object/from16 v1, v21

    #@662
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    #@665
    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@668
    .line 1782
    const/4 v4, 0x1

    #@669
    return v4

    #@66a
    .line 1785
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v4, "IMountService"

    #@66d
    move-object/from16 v0, p2

    #@66f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@672
    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@675
    move-result-object v21

    #@676
    .line 1787
    .restart local v21    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@678
    move-object/from16 v1, v21

    #@67a
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    #@67d
    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@680
    .line 1789
    const/4 v4, 0x1

    #@681
    return v4

    #@682
    .line 1792
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v4, "IMountService"

    #@685
    move-object/from16 v0, p2

    #@687
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68a
    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@68d
    move-result-object v21

    #@68e
    .line 1794
    .restart local v21    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@691
    move-result v45

    #@692
    .line 1795
    .local v45, "ratio":I
    move-object/from16 v0, p0

    #@694
    move-object/from16 v1, v21

    #@696
    move/from16 v2, v45

    #@698
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    #@69b
    .line 1796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69e
    .line 1797
    const/4 v4, 0x1

    #@69f
    return v4

    #@6a0
    .line 1800
    .end local v21    # "diskId":Ljava/lang/String;
    .end local v45    # "ratio":I
    :sswitch_36
    const-string/jumbo v4, "IMountService"

    #@6a3
    move-object/from16 v0, p2

    #@6a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a8
    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ab
    move-result-object v59

    #@6ac
    .line 1802
    .restart local v59    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6af
    move-result-object v38

    #@6b0
    .line 1803
    .local v38, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b2
    move-object/from16 v1, v59

    #@6b4
    move-object/from16 v2, v38

    #@6b6
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    #@6b9
    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bc
    .line 1805
    const/4 v4, 0x1

    #@6bd
    return v4

    #@6be
    .line 1808
    .end local v38    # "nickname":Ljava/lang/String;
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v4, "IMountService"

    #@6c1
    move-object/from16 v0, p2

    #@6c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c6
    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c9
    move-result-object v59

    #@6ca
    .line 1810
    .restart local v59    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6cd
    move-result v17

    #@6ce
    .line 1811
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d1
    move-result v18

    #@6d2
    .line 1812
    .local v18, "_mask":I
    move-object/from16 v0, p0

    #@6d4
    move-object/from16 v1, v59

    #@6d6
    move/from16 v2, v17

    #@6d8
    move/from16 v3, v18

    #@6da
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    #@6dd
    .line 1813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e0
    .line 1814
    const/4 v4, 0x1

    #@6e1
    return v4

    #@6e2
    .line 1817
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    .end local v59    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v4, "IMountService"

    #@6e5
    move-object/from16 v0, p2

    #@6e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ea
    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ed
    move-result-object v28

    #@6ee
    .line 1819
    .local v28, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6f0
    move-object/from16 v1, v28

    #@6f2
    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    #@6f5
    .line 1820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f8
    .line 1821
    const/4 v4, 0x1

    #@6f9
    return v4

    #@6fa
    .line 1824
    .end local v28    # "fsUuid":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "IMountService"

    #@6fd
    move-object/from16 v0, p2

    #@6ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@702
    .line 1825
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    #@705
    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@708
    .line 1827
    const/4 v4, 0x1

    #@709
    return v4

    #@70a
    .line 1830
    :sswitch_3a
    const-string/jumbo v4, "IMountService"

    #@70d
    move-object/from16 v0, p2

    #@70f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@712
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@715
    move-result v17

    #@716
    .line 1832
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@719
    move-result v18

    #@71a
    .line 1833
    .restart local v18    # "_mask":I
    move-object/from16 v0, p0

    #@71c
    move/from16 v1, v17

    #@71e
    move/from16 v2, v18

    #@720
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    #@723
    .line 1834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@726
    .line 1835
    const/4 v4, 0x1

    #@727
    return v4

    #@728
    .line 1838
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    :sswitch_3b
    const-string/jumbo v4, "IMountService"

    #@72b
    move-object/from16 v0, p2

    #@72d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@730
    .line 1839
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    #@733
    move-result-object v60

    #@734
    .line 1840
    .local v60, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@737
    .line 1841
    move-object/from16 v0, p3

    #@739
    move-object/from16 v1, v60

    #@73b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@73e
    .line 1842
    const/4 v4, 0x1

    #@73f
    return v4

    #@740
    .line 1845
    .end local v60    # "volumeUuid":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v4, "IMountService"

    #@743
    move-object/from16 v0, p2

    #@745
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@748
    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74b
    move-result-object v60

    #@74c
    .line 1848
    .restart local v60    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@74f
    move-result-object v4

    #@750
    .line 1847
    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@753
    move-result-object v31

    #@754
    .line 1849
    .local v31, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@756
    move-object/from16 v1, v60

    #@758
    move-object/from16 v2, v31

    #@75a
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    #@75d
    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@760
    .line 1851
    const/4 v4, 0x1

    #@761
    return v4

    #@762
    .line 1325
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
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3b
        0x3b -> :sswitch_3c
        0x3c -> :sswitch_32
        0x3d -> :sswitch_3a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
