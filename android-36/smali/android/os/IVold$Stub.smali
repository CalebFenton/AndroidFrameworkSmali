.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final blacklist TRANSACTION_abortChanges:I = 0x38

.field static final blacklist TRANSACTION_abortFuse:I = 0x2

.field static final greylist-max-o TRANSACTION_abortIdleMaint:I = 0x1e

.field static final blacklist TRANSACTION_addAppIds:I = 0xa

.field static final blacklist TRANSACTION_addSandboxIds:I = 0xb

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x12

.field static final blacklist TRANSACTION_bindMount:I = 0x4a

.field static final blacklist TRANSACTION_commitChanges:I = 0x39

.field static final greylist-max-o TRANSACTION_createObb:I = 0x1a

.field static final blacklist TRANSACTION_createStubVolume:I = 0x43

.field static final blacklist TRANSACTION_createUserStorageKeys:I = 0x2a

.field static final blacklist TRANSACTION_destroyDsuMetadataKey:I = 0x4b

.field static final greylist-max-o TRANSACTION_destroyObb:I = 0x1b

.field static final blacklist TRANSACTION_destroySandboxForApp:I = 0x33

.field static final blacklist TRANSACTION_destroyStubVolume:I = 0x44

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x31

.field static final blacklist TRANSACTION_destroyUserStorageKeys:I = 0x2b

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x42

.field static final greylist-max-o TRANSACTION_encryptFstab:I = 0x28

.field static final blacklist TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final greylist-max-o TRANSACTION_fbeEnable:I = 0x25

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x18

.field static final greylist-max-o TRANSACTION_forgetPartition:I = 0xe

.field static final greylist-max-o TRANSACTION_format:I = 0x11

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x1c

.field static final blacklist TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final blacklist TRANSACTION_getStorageRemainingLifetime:I = 0x4d

.field static final blacklist TRANSACTION_getStorageSize:I = 0x4c

.field static final blacklist TRANSACTION_getUnlockedUsers:I = 0x2d

.field static final blacklist TRANSACTION_getWriteAmount:I = 0x22

.field static final blacklist TRANSACTION_getWriteBoosterBufferAvailablePercent:I = 0x4f

.field static final blacklist TRANSACTION_getWriteBoosterBufferSize:I = 0x4e

.field static final blacklist TRANSACTION_getWriteBoosterLifeTimeEstimate:I = 0x52

.field static final blacklist TRANSACTION_incFsEnabled:I = 0x46

.field static final greylist-max-o TRANSACTION_initUser0:I = 0x26

.field static final blacklist TRANSACTION_isCheckpointing:I = 0x37

.field static final blacklist TRANSACTION_lockCeStorage:I = 0x2f

.field static final blacklist TRANSACTION_markBootAttempt:I = 0x3d

.field static final greylist-max-o TRANSACTION_monitor:I = 0x3

.field static final greylist-max-o TRANSACTION_mount:I = 0xf

.field static final greylist-max-o TRANSACTION_mountAppFuse:I = 0x23

.field static final greylist-max-o TRANSACTION_mountFstab:I = 0x27

.field static final blacklist TRANSACTION_mountIncFs:I = 0x47

.field static final greylist-max-o TRANSACTION_moveStorage:I = 0x13

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x35

.field static final blacklist TRANSACTION_needsRollback:I = 0x36

.field static final greylist-max-o TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onUserAdded:I = 0x6

.field static final greylist-max-o TRANSACTION_onUserRemoved:I = 0x7

.field static final greylist-max-o TRANSACTION_onUserStarted:I = 0x8

.field static final greylist-max-o TRANSACTION_onUserStopped:I = 0x9

.field static final blacklist TRANSACTION_openAppFuseFile:I = 0x45

.field static final greylist-max-o TRANSACTION_partition:I = 0xd

.field static final blacklist TRANSACTION_prepareCheckpoint:I = 0x3a

.field static final blacklist TRANSACTION_prepareSandboxForApp:I = 0x32

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x30

.field static final blacklist TRANSACTION_refreshLatestWrite:I = 0x21

.field static final blacklist TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final greylist-max-o TRANSACTION_remountUid:I = 0x14

.field static final greylist-max-o TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_resetCheckpoint:I = 0x41

.field static final blacklist TRANSACTION_restoreCheckpoint:I = 0x3b

.field static final blacklist TRANSACTION_restoreCheckpointPart:I = 0x3c

.field static final greylist-max-o TRANSACTION_runIdleMaint:I = 0x1d

.field static final blacklist TRANSACTION_setCeStorageProtection:I = 0x2c

.field static final blacklist TRANSACTION_setGCUrgentPace:I = 0x20

.field static final blacklist TRANSACTION_setIncFsMountOptions:I = 0x49

.field static final greylist-max-o TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setStorageBindingSeed:I = 0x29

.field static final blacklist TRANSACTION_setWriteBoosterBufferFlush:I = 0x50

.field static final blacklist TRANSACTION_setWriteBoosterBufferOn:I = 0x51

.field static final blacklist TRANSACTION_setupAppDir:I = 0x17

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x5

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x34

.field static final blacklist TRANSACTION_supportsBlockCheckpoint:I = 0x3f

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x3e

.field static final blacklist TRANSACTION_supportsFileCheckpoint:I = 0x40

.field static final blacklist TRANSACTION_unlockCeStorage:I = 0x2e

.field static final greylist-max-o TRANSACTION_unmount:I = 0x10

.field static final greylist-max-o TRANSACTION_unmountAppFuse:I = 0x24

.field static final blacklist TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final blacklist TRANSACTION_unmountIncFs:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 300
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 301
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 309
    if-nez p0, :cond_4

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_4
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 313
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_14

    .line 314
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 316
    :cond_14
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 325
    packed-switch p0, :pswitch_data_134

    .line 657
    const/4 v0, 0x0

    return-object v0

    .line 653
    :pswitch_5
    const-string/jumbo v0, "getWriteBoosterLifeTimeEstimate"

    return-object v0

    .line 649
    :pswitch_9
    const-string/jumbo v0, "setWriteBoosterBufferOn"

    return-object v0

    .line 645
    :pswitch_d
    const-string/jumbo v0, "setWriteBoosterBufferFlush"

    return-object v0

    .line 641
    :pswitch_11
    const-string/jumbo v0, "getWriteBoosterBufferAvailablePercent"

    return-object v0

    .line 637
    :pswitch_15
    const-string/jumbo v0, "getWriteBoosterBufferSize"

    return-object v0

    .line 633
    :pswitch_19
    const-string/jumbo v0, "getStorageRemainingLifetime"

    return-object v0

    .line 629
    :pswitch_1d
    const-string/jumbo v0, "getStorageSize"

    return-object v0

    .line 625
    :pswitch_21
    const-string v0, "destroyDsuMetadataKey"

    return-object v0

    .line 621
    :pswitch_24
    const-string v0, "bindMount"

    return-object v0

    .line 617
    :pswitch_27
    const-string/jumbo v0, "setIncFsMountOptions"

    return-object v0

    .line 613
    :pswitch_2b
    const-string/jumbo v0, "unmountIncFs"

    return-object v0

    .line 609
    :pswitch_2f
    const-string/jumbo v0, "mountIncFs"

    return-object v0

    .line 605
    :pswitch_33
    const-string/jumbo v0, "incFsEnabled"

    return-object v0

    .line 601
    :pswitch_37
    const-string/jumbo v0, "openAppFuseFile"

    return-object v0

    .line 597
    :pswitch_3b
    const-string v0, "destroyStubVolume"

    return-object v0

    .line 593
    :pswitch_3e
    const-string v0, "createStubVolume"

    return-object v0

    .line 589
    :pswitch_41
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 585
    :pswitch_44
    const-string/jumbo v0, "resetCheckpoint"

    return-object v0

    .line 581
    :pswitch_48
    const-string/jumbo v0, "supportsFileCheckpoint"

    return-object v0

    .line 577
    :pswitch_4c
    const-string/jumbo v0, "supportsBlockCheckpoint"

    return-object v0

    .line 573
    :pswitch_50
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 569
    :pswitch_54
    const-string/jumbo v0, "markBootAttempt"

    return-object v0

    .line 565
    :pswitch_58
    const-string/jumbo v0, "restoreCheckpointPart"

    return-object v0

    .line 561
    :pswitch_5c
    const-string/jumbo v0, "restoreCheckpoint"

    return-object v0

    .line 557
    :pswitch_60
    const-string/jumbo v0, "prepareCheckpoint"

    return-object v0

    .line 553
    :pswitch_64
    const-string v0, "commitChanges"

    return-object v0

    .line 549
    :pswitch_67
    const-string v0, "abortChanges"

    return-object v0

    .line 545
    :pswitch_6a
    const-string/jumbo v0, "isCheckpointing"

    return-object v0

    .line 541
    :pswitch_6e
    const-string/jumbo v0, "needsRollback"

    return-object v0

    .line 537
    :pswitch_72
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 533
    :pswitch_76
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 529
    :pswitch_7a
    const-string v0, "destroySandboxForApp"

    return-object v0

    .line 525
    :pswitch_7d
    const-string/jumbo v0, "prepareSandboxForApp"

    return-object v0

    .line 521
    :pswitch_81
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 517
    :pswitch_84
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 513
    :pswitch_88
    const-string/jumbo v0, "lockCeStorage"

    return-object v0

    .line 509
    :pswitch_8c
    const-string/jumbo v0, "unlockCeStorage"

    return-object v0

    .line 505
    :pswitch_90
    const-string/jumbo v0, "getUnlockedUsers"

    return-object v0

    .line 501
    :pswitch_94
    const-string/jumbo v0, "setCeStorageProtection"

    return-object v0

    .line 497
    :pswitch_98
    const-string v0, "destroyUserStorageKeys"

    return-object v0

    .line 493
    :pswitch_9b
    const-string v0, "createUserStorageKeys"

    return-object v0

    .line 489
    :pswitch_9e
    const-string/jumbo v0, "setStorageBindingSeed"

    return-object v0

    .line 485
    :pswitch_a2
    const-string v0, "encryptFstab"

    return-object v0

    .line 481
    :pswitch_a5
    const-string/jumbo v0, "mountFstab"

    return-object v0

    .line 477
    :pswitch_a9
    const-string/jumbo v0, "initUser0"

    return-object v0

    .line 473
    :pswitch_ad
    const-string v0, "fbeEnable"

    return-object v0

    .line 469
    :pswitch_b0
    const-string/jumbo v0, "unmountAppFuse"

    return-object v0

    .line 465
    :pswitch_b4
    const-string/jumbo v0, "mountAppFuse"

    return-object v0

    .line 461
    :pswitch_b8
    const-string/jumbo v0, "getWriteAmount"

    return-object v0

    .line 457
    :pswitch_bc
    const-string/jumbo v0, "refreshLatestWrite"

    return-object v0

    .line 453
    :pswitch_c0
    const-string/jumbo v0, "setGCUrgentPace"

    return-object v0

    .line 449
    :pswitch_c4
    const-string/jumbo v0, "getStorageLifeTime"

    return-object v0

    .line 445
    :pswitch_c8
    const-string v0, "abortIdleMaint"

    return-object v0

    .line 441
    :pswitch_cb
    const-string/jumbo v0, "runIdleMaint"

    return-object v0

    .line 437
    :pswitch_cf
    const-string v0, "fstrim"

    return-object v0

    .line 433
    :pswitch_d2
    const-string v0, "destroyObb"

    return-object v0

    .line 429
    :pswitch_d5
    const-string v0, "createObb"

    return-object v0

    .line 425
    :pswitch_d8
    const-string v0, "ensureAppDirsCreated"

    return-object v0

    .line 421
    :pswitch_db
    const-string v0, "fixupAppDir"

    return-object v0

    .line 417
    :pswitch_de
    const-string/jumbo v0, "setupAppDir"

    return-object v0

    .line 413
    :pswitch_e2
    const-string/jumbo v0, "unmountAppStorageDirs"

    return-object v0

    .line 409
    :pswitch_e6
    const-string/jumbo v0, "remountAppStorageDirs"

    return-object v0

    .line 405
    :pswitch_ea
    const-string/jumbo v0, "remountUid"

    return-object v0

    .line 401
    :pswitch_ee
    const-string/jumbo v0, "moveStorage"

    return-object v0

    .line 397
    :pswitch_f2
    const-string v0, "benchmark"

    return-object v0

    .line 393
    :pswitch_f5
    const-string v0, "format"

    return-object v0

    .line 389
    :pswitch_f8
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 385
    :pswitch_fc
    const-string/jumbo v0, "mount"

    return-object v0

    .line 381
    :pswitch_100
    const-string v0, "forgetPartition"

    return-object v0

    .line 377
    :pswitch_103
    const-string/jumbo v0, "partition"

    return-object v0

    .line 373
    :pswitch_107
    const-string/jumbo v0, "onSecureKeyguardStateChanged"

    return-object v0

    .line 369
    :pswitch_10b
    const-string v0, "addSandboxIds"

    return-object v0

    .line 365
    :pswitch_10e
    const-string v0, "addAppIds"

    return-object v0

    .line 361
    :pswitch_111
    const-string/jumbo v0, "onUserStopped"

    return-object v0

    .line 357
    :pswitch_115
    const-string/jumbo v0, "onUserStarted"

    return-object v0

    .line 353
    :pswitch_119
    const-string/jumbo v0, "onUserRemoved"

    return-object v0

    .line 349
    :pswitch_11d
    const-string/jumbo v0, "onUserAdded"

    return-object v0

    .line 345
    :pswitch_121
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 341
    :pswitch_125
    const-string/jumbo v0, "reset"

    return-object v0

    .line 337
    :pswitch_129
    const-string/jumbo v0, "monitor"

    return-object v0

    .line 333
    :pswitch_12d
    const-string v0, "abortFuse"

    return-object v0

    .line 329
    :pswitch_130
    const-string/jumbo v0, "setListener"

    return-object v0

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12d
        :pswitch_129
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_119
        :pswitch_115
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e2
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cb
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a2
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 320
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3039
    const/16 v0, 0x51

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 664
    invoke-static {p1}, Landroid/os/IVold$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IVold"

    .line 669
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v1, 0xffffff

    if-gt v10, v1, :cond_13

    .line 670
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    :cond_13
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 673
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    return v14

    .line 676
    :cond_1c
    packed-switch v10, :pswitch_data_5c8

    .line 1503
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1496
    :pswitch_24
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterLifeTimeEstimate()I

    move-result v1

    .line 1497
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    goto/16 :goto_5c7

    .line 1487
    .end local v1    # "_result":I
    :pswitch_30
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1488
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setWriteBoosterBufferOn(Z)Z

    move-result v2

    .line 1490
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1492
    goto/16 :goto_5c7

    .line 1477
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_43
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1478
    .restart local v1    # "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setWriteBoosterBufferFlush(Z)Z

    move-result v2

    .line 1480
    .restart local v2    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1482
    goto/16 :goto_5c7

    .line 1469
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterBufferAvailablePercent()I

    move-result v1

    .line 1470
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    goto/16 :goto_5c7

    .line 1462
    .end local v1    # "_result":I
    :pswitch_62
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterBufferSize()I

    move-result v1

    .line 1463
    .restart local v1    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    goto/16 :goto_5c7

    .line 1455
    .end local v1    # "_result":I
    :pswitch_6e
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageRemainingLifetime()I

    move-result v1

    .line 1456
    .restart local v1    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    goto/16 :goto_5c7

    .line 1448
    .end local v1    # "_result":I
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageSize()J

    move-result-wide v1

    .line 1449
    .local v1, "_result":J
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1451
    goto/16 :goto_5c7

    .line 1440
    .end local v1    # "_result":J
    :pswitch_86
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    goto/16 :goto_5c7

    .line 1429
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_95
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    goto/16 :goto_5c7

    .line 1414
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a8
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1416
    .local v1, "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1418
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1420
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1421
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1423
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    goto/16 :goto_5c7

    .line 1405
    .end local v1    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_c7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->unmountIncFs(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_5c7

    .line 1389
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1393
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1395
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1396
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v5

    .line 1398
    .local v5, "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1400
    goto/16 :goto_5c7

    .line 1381
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_f5
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->incFsEnabled()Z

    move-result v1

    .line 1382
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1384
    goto/16 :goto_5c7

    .line 1366
    .end local v1    # "_result":Z
    :pswitch_101
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1368
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1370
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1372
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1373
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1375
    .local v5, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1377
    goto/16 :goto_5c7

    .line 1357
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/io/FileDescriptor;
    :pswitch_120
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    goto/16 :goto_5c7

    .line 1337
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_12f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1339
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1341
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1343
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1345
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1347
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1348
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1350
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1352
    goto/16 :goto_5c7

    .line 1330
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Ljava/lang/String;
    :pswitch_157
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->earlyBootEnded()V

    .line 1331
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    goto/16 :goto_5c7

    .line 1324
    :pswitch_15f
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->resetCheckpoint()V

    .line 1325
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    goto/16 :goto_5c7

    .line 1317
    :pswitch_167
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v1

    .line 1318
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1320
    goto/16 :goto_5c7

    .line 1310
    .end local v1    # "_result":Z
    :pswitch_173
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v1

    .line 1311
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1313
    goto/16 :goto_5c7

    .line 1303
    .end local v1    # "_result":Z
    :pswitch_17f
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v1

    .line 1304
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1306
    goto/16 :goto_5c7

    .line 1297
    .end local v1    # "_result":Z
    :pswitch_18b
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 1298
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_5c7

    .line 1287
    :pswitch_193
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1290
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1292
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    goto/16 :goto_5c7

    .line 1278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1a6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_5c7

    .line 1271
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1b5
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 1272
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    goto/16 :goto_5c7

    .line 1265
    :pswitch_1bd
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 1266
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    goto/16 :goto_5c7

    .line 1255
    :pswitch_1c5
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1258
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1260
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto/16 :goto_5c7

    .line 1247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_1d8
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->isCheckpointing()Z

    move-result v1

    .line 1248
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1250
    goto/16 :goto_5c7

    .line 1240
    .end local v1    # "_result":Z
    :pswitch_1e4
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v1

    .line 1241
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1243
    goto/16 :goto_5c7

    .line 1233
    .end local v1    # "_result":Z
    :pswitch_1f0
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v1

    .line 1234
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1236
    goto/16 :goto_5c7

    .line 1225
    .end local v1    # "_result":Z
    :pswitch_1fc
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 1228
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_5c7

    .line 1212
    .end local v1    # "_arg0":I
    :pswitch_20b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1217
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1219
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_5c7

    .line 1197
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_222
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1201
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1203
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1204
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1206
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    goto/16 :goto_5c7

    .line 1184
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_23d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1188
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1189
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1191
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_5c7

    .line 1171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_254
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1175
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1176
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;II)V

    .line 1178
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    goto/16 :goto_5c7

    .line 1162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_26b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1163
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->lockCeStorage(I)V

    .line 1165
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    goto/16 :goto_5c7

    .line 1151
    .end local v1    # "_arg0":I
    :pswitch_27a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1153
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1154
    .local v2, "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->unlockCeStorage(I[B)V

    .line 1156
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_5c7

    .line 1143
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_28d
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getUnlockedUsers()[I

    move-result-object v1

    .line 1144
    .local v1, "_result":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1146
    goto/16 :goto_5c7

    .line 1133
    .end local v1    # "_result":[I
    :pswitch_299
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1135
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1136
    .restart local v2    # "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->setCeStorageProtection(I[B)V

    .line 1138
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_5c7

    .line 1124
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_2ac
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyUserStorageKeys(I)V

    .line 1127
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_5c7

    .line 1113
    .end local v1    # "_arg0":I
    :pswitch_2bb
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1115
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1116
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->createUserStorageKeys(IZ)V

    .line 1118
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_5c7

    .line 1104
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_2ce
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1105
    .local v1, "_arg0":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setStorageBindingSeed([B)V

    .line 1107
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    goto/16 :goto_5c7

    .line 1081
    .end local v1    # "_arg0":[B
    :pswitch_2dd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1087
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1091
    .local v5, "_arg4":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1093
    .local v6, "_arg5":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v7

    .line 1095
    .local v7, "_arg6":[Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1096
    .local v8, "_arg7":J
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z[Ljava/lang/String;[ZJ)V

    .line 1098
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto/16 :goto_5c7

    .line 1066
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_arg6":[Z
    .end local v8    # "_arg7":J
    :pswitch_309
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1072
    .restart local v3    # "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1073
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_5c7

    .line 1059
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":[Ljava/lang/String;
    :pswitch_324
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 1060
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_5c7

    .line 1053
    :pswitch_32c
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 1054
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_5c7

    .line 1043
    :pswitch_334
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1046
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 1048
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto/16 :goto_5c7

    .line 1031
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_347
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1034
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 1036
    .local v3, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1038
    goto/16 :goto_5c7

    .line 1023
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/io/FileDescriptor;
    :pswitch_35e
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteAmount()I

    move-result v1

    .line 1024
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    goto/16 :goto_5c7

    .line 1017
    .end local v1    # "_result":I
    :pswitch_36a
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->refreshLatestWrite()V

    .line 1018
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    goto/16 :goto_5c7

    .line 997
    :pswitch_372
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 999
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1003
    .local v3, "_arg2":F
    invoke-virtual {v11}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 1005
    .local v4, "_arg3":F
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1007
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1009
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1010
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVold$Stub;->setGCUrgentPace(IIFFIII)V

    .line 1012
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_5c7

    .line 989
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_39a
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageLifeTime()I

    move-result v1

    .line 990
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    goto/16 :goto_5c7

    .line 981
    .end local v1    # "_result":I
    :pswitch_3a6
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 982
    .local v1, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 984
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_5c7

    .line 970
    .end local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_3b9
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 972
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 973
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 975
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_5c7

    .line 959
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_3d0
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 962
    .restart local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 964
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_5c7

    .line 950
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_3e7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_5c7

    .line 938
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3f6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    goto/16 :goto_5c7

    .line 927
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_40d
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 932
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_5c7

    .line 916
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_420
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 919
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->fixupAppDir(Ljava/lang/String;I)V

    .line 921
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_5c7

    .line 905
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_433
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 907
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->setupAppDir(Ljava/lang/String;I)V

    .line 910
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_5c7

    .line 892
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_446
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 899
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    goto/16 :goto_5c7

    .line 879
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_45d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 884
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 886
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    goto/16 :goto_5c7

    .line 868
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_474
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 873
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_5c7

    .line 855
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_487
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 860
    .local v3, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 862
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    goto/16 :goto_5c7

    .line 844
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_4a2
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 847
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 849
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_5c7

    .line 833
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_4b9
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_5c7

    .line 824
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_4cc
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_5c7

    .line 809
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4db
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v4

    .line 816
    .local v4, "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 818
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_5c7

    .line 798
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_4fa
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_5c7

    .line 785
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_50d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 790
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 792
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_5c7

    .line 776
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_524
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 777
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 779
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_5c7

    .line 765
    .end local v1    # "_arg0":Z
    :pswitch_533
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 767
    .local v1, "_arg0":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 770
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_5c7

    .line 754
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_546
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 757
    .local v2, "_arg1":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 759
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_5c7

    .line 745
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :pswitch_559
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 746
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 748
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto :goto_5c7

    .line 736
    .end local v1    # "_arg0":I
    :pswitch_567
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 739
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto :goto_5c7

    .line 727
    .end local v1    # "_arg0":I
    :pswitch_575
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 730
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto :goto_5c7

    .line 714
    .end local v1    # "_arg0":I
    :pswitch_583
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 718
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 719
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->onUserAdded(III)V

    .line 721
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    goto :goto_5c7

    .line 707
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_599
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 708
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto :goto_5c7

    .line 701
    :pswitch_5a0
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->reset()V

    .line 702
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto :goto_5c7

    .line 695
    :pswitch_5a7
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 696
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto :goto_5c7

    .line 689
    :pswitch_5ae
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->abortFuse()V

    .line 690
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto :goto_5c7

    .line 681
    :pswitch_5b5
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 682
    .local v1, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 684
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    nop

    .line 1506
    .end local v1    # "_arg0":Landroid/os/IVoldListener;
    :goto_5c7
    return v14

    :pswitch_data_5c8
    .packed-switch 0x1
        :pswitch_5b5
        :pswitch_5ae
        :pswitch_5a7
        :pswitch_5a0
        :pswitch_599
        :pswitch_583
        :pswitch_575
        :pswitch_567
        :pswitch_559
        :pswitch_546
        :pswitch_533
        :pswitch_524
        :pswitch_50d
        :pswitch_4fa
        :pswitch_4db
        :pswitch_4cc
        :pswitch_4b9
        :pswitch_4a2
        :pswitch_487
        :pswitch_474
        :pswitch_45d
        :pswitch_446
        :pswitch_433
        :pswitch_420
        :pswitch_40d
        :pswitch_3f6
        :pswitch_3e7
        :pswitch_3d0
        :pswitch_3b9
        :pswitch_3a6
        :pswitch_39a
        :pswitch_372
        :pswitch_36a
        :pswitch_35e
        :pswitch_347
        :pswitch_334
        :pswitch_32c
        :pswitch_324
        :pswitch_309
        :pswitch_2dd
        :pswitch_2ce
        :pswitch_2bb
        :pswitch_2ac
        :pswitch_299
        :pswitch_28d
        :pswitch_27a
        :pswitch_26b
        :pswitch_254
        :pswitch_23d
        :pswitch_222
        :pswitch_20b
        :pswitch_1fc
        :pswitch_1f0
        :pswitch_1e4
        :pswitch_1d8
        :pswitch_1c5
        :pswitch_1bd
        :pswitch_1b5
        :pswitch_1a6
        :pswitch_193
        :pswitch_18b
        :pswitch_17f
        :pswitch_173
        :pswitch_167
        :pswitch_15f
        :pswitch_157
        :pswitch_12f
        :pswitch_120
        :pswitch_101
        :pswitch_f5
        :pswitch_d6
        :pswitch_c7
        :pswitch_a8
        :pswitch_95
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_43
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
