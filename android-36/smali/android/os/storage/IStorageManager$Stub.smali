.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "IStorageManager.java"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final blacklist TRANSACTION_abortChanges:I = 0x58

.field static final greylist-max-o TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final greylist-max-o TRANSACTION_allocateBytes:I = 0x4f

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x3c

.field static final blacklist TRANSACTION_commitChanges:I = 0x54

.field static final blacklist TRANSACTION_createUserStorageKeys:I = 0x3e

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x44

.field static final blacklist TRANSACTION_destroyUserStorageKeys:I = 0x3f

.field static final blacklist TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x5a

.field static final greylist-max-o TRANSACTION_forgetAllVolumes:I = 0x39

.field static final greylist-max-o TRANSACTION_forgetVolume:I = 0x38

.field static final greylist-max-o TRANSACTION_format:I = 0x32

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x49

.field static final greylist-max-o TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final greylist-max-o TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final blacklist TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final greylist-max-o TRANSACTION_getDisks:I = 0x2d

.field static final blacklist TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final blacklist TRANSACTION_getInternalStorageBlockDeviceSize:I = 0x63

.field static final blacklist TRANSACTION_getInternalStorageRemainingLifetime:I = 0x64

.field static final blacklist TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final greylist-max-o TRANSACTION_getMountedObbPath:I = 0x19

.field static final greylist-max-o TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final greylist-max-o TRANSACTION_getVolumeList:I = 0x1e

.field static final greylist-max-o TRANSACTION_getVolumeRecords:I = 0x2f

.field static final greylist-max-o TRANSACTION_getVolumes:I = 0x2e

.field static final blacklist TRANSACTION_isAppIoBlocked:I = 0x60

.field static final blacklist TRANSACTION_isCeStorageUnlocked:I = 0x42

.field static final greylist-max-o TRANSACTION_isObbMounted:I = 0x18

.field static final greylist-max-o TRANSACTION_lastMaintenance:I = 0x2a

.field static final blacklist TRANSACTION_lockCeStorage:I = 0x41

.field static final greylist-max-o TRANSACTION_mkdirs:I = 0x23

.field static final greylist-max-o TRANSACTION_mount:I = 0x30

.field static final greylist-max-o TRANSACTION_mountObb:I = 0x16

.field static final greylist-max-o TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x57

.field static final blacklist TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final blacklist TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final greylist-max-o TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final greylist-max-o TRANSACTION_partitionMixed:I = 0x35

.field static final greylist-max-o TRANSACTION_partitionPrivate:I = 0x34

.field static final greylist-max-o TRANSACTION_partitionPublic:I = 0x33

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x43

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_runIdleMaintenance:I = 0x50

.field static final greylist-max-o TRANSACTION_runMaintenance:I = 0x2b

.field static final blacklist TRANSACTION_setCeStorageProtection:I = 0x47

.field static final blacklist TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final greylist-max-o TRANSACTION_setDebugFlags:I = 0x3d

.field static final greylist-max-o TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final greylist-max-o TRANSACTION_setVolumeNickname:I = 0x36

.field static final greylist-max-o TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x14

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x56

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x55

.field static final blacklist TRANSACTION_unlockCeStorage:I = 0x40

.field static final greylist-max-o TRANSACTION_unmount:I = 0x31

.field static final greylist-max-o TRANSACTION_unmountObb:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    nop

    .line 297
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/storage/IStorageManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 298
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 286
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 287
    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 288
    if-eqz p1, :cond_d

    .line 291
    iput-object p1, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 292
    return-void

    .line 289
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_4
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 309
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_14

    .line 310
    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageManager;

    return-object v1

    .line 312
    :cond_14
    new-instance v1, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 321
    packed-switch p0, :pswitch_data_e0

    .line 569
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 565
    :pswitch_5
    const-string v0, "getInternalStorageRemainingLifetime"

    return-object v0

    .line 561
    :pswitch_8
    const-string v0, "getInternalStorageBlockDeviceSize"

    return-object v0

    .line 557
    :pswitch_b
    const-string v0, "getCloudMediaProvider"

    return-object v0

    .line 553
    :pswitch_e
    const-string/jumbo v0, "setCloudMediaProvider"

    return-object v0

    .line 549
    :pswitch_12
    const-string/jumbo v0, "isAppIoBlocked"

    return-object v0

    .line 545
    :pswitch_16
    const-string v0, "getExternalStorageMountMode"

    return-object v0

    .line 541
    :pswitch_19
    const-string/jumbo v0, "notifyAppIoResumed"

    return-object v0

    .line 537
    :pswitch_1d
    const-string/jumbo v0, "notifyAppIoBlocked"

    return-object v0

    .line 533
    :pswitch_21
    const-string v0, "getManageSpaceActivityIntent"

    return-object v0

    .line 529
    :pswitch_24
    const-string v0, "disableAppDataIsolation"

    return-object v0

    .line 525
    :pswitch_27
    const-string v0, "fixupAppDir"

    return-object v0

    .line 521
    :pswitch_2a
    const-string v0, "abortChanges"

    return-object v0

    .line 517
    :pswitch_2d
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 513
    :pswitch_31
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 509
    :pswitch_35
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 505
    :pswitch_39
    const-string v0, "commitChanges"

    return-object v0

    .line 501
    :pswitch_3c
    const-string v0, "abortIdleMaintenance"

    return-object v0

    .line 497
    :pswitch_3f
    const-string/jumbo v0, "runIdleMaintenance"

    return-object v0

    .line 493
    :pswitch_43
    const-string v0, "allocateBytes"

    return-object v0

    .line 489
    :pswitch_46
    const-string v0, "getAllocatableBytes"

    return-object v0

    .line 485
    :pswitch_49
    const-string v0, "getCacheSizeBytes"

    return-object v0

    .line 481
    :pswitch_4c
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    .line 477
    :pswitch_4f
    const-string/jumbo v0, "openProxyFileDescriptor"

    return-object v0

    .line 473
    :pswitch_53
    const-string/jumbo v0, "mountProxyFileDescriptorBridge"

    return-object v0

    .line 469
    :pswitch_57
    const-string v0, "fstrim"

    return-object v0

    .line 465
    :pswitch_5a
    const-string/jumbo v0, "setCeStorageProtection"

    return-object v0

    .line 461
    :pswitch_5e
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 457
    :pswitch_61
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 453
    :pswitch_65
    const-string/jumbo v0, "isCeStorageUnlocked"

    return-object v0

    .line 449
    :pswitch_69
    const-string/jumbo v0, "lockCeStorage"

    return-object v0

    .line 445
    :pswitch_6d
    const-string/jumbo v0, "unlockCeStorage"

    return-object v0

    .line 441
    :pswitch_71
    const-string v0, "destroyUserStorageKeys"

    return-object v0

    .line 437
    :pswitch_74
    const-string v0, "createUserStorageKeys"

    return-object v0

    .line 433
    :pswitch_77
    const-string/jumbo v0, "setDebugFlags"

    return-object v0

    .line 429
    :pswitch_7b
    const-string v0, "benchmark"

    return-object v0

    .line 425
    :pswitch_7e
    const-string/jumbo v0, "setPrimaryStorageUuid"

    return-object v0

    .line 421
    :pswitch_82
    const-string v0, "getPrimaryStorageUuid"

    return-object v0

    .line 417
    :pswitch_85
    const-string v0, "forgetAllVolumes"

    return-object v0

    .line 413
    :pswitch_88
    const-string v0, "forgetVolume"

    return-object v0

    .line 409
    :pswitch_8b
    const-string/jumbo v0, "setVolumeUserFlags"

    return-object v0

    .line 405
    :pswitch_8f
    const-string/jumbo v0, "setVolumeNickname"

    return-object v0

    .line 401
    :pswitch_93
    const-string/jumbo v0, "partitionMixed"

    return-object v0

    .line 397
    :pswitch_97
    const-string/jumbo v0, "partitionPrivate"

    return-object v0

    .line 393
    :pswitch_9b
    const-string/jumbo v0, "partitionPublic"

    return-object v0

    .line 389
    :pswitch_9f
    const-string v0, "format"

    return-object v0

    .line 385
    :pswitch_a2
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 381
    :pswitch_a6
    const-string/jumbo v0, "mount"

    return-object v0

    .line 377
    :pswitch_aa
    const-string/jumbo v0, "getVolumeRecords"

    return-object v0

    .line 373
    :pswitch_ae
    const-string/jumbo v0, "getVolumes"

    return-object v0

    .line 369
    :pswitch_b2
    const-string v0, "getDisks"

    return-object v0

    .line 365
    :pswitch_b5
    const-string/jumbo v0, "runMaintenance"

    return-object v0

    .line 361
    :pswitch_b9
    const-string/jumbo v0, "lastMaintenance"

    return-object v0

    .line 357
    :pswitch_bd
    const-string/jumbo v0, "mkdirs"

    return-object v0

    .line 353
    :pswitch_c1
    const-string/jumbo v0, "getVolumeList"

    return-object v0

    .line 349
    :pswitch_c5
    const-string v0, "getMountedObbPath"

    return-object v0

    .line 345
    :pswitch_c8
    const-string/jumbo v0, "isObbMounted"

    return-object v0

    .line 341
    :pswitch_cc
    const-string/jumbo v0, "unmountObb"

    return-object v0

    .line 337
    :pswitch_d0
    const-string/jumbo v0, "mountObb"

    return-object v0

    .line 333
    :pswitch_d4
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 329
    :pswitch_d8
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 325
    :pswitch_dc
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_d8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d4
        :pswitch_3
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_bd
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b9
        :pswitch_b5
        :pswitch_3
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5e
        :pswitch_3
        :pswitch_3
        :pswitch_5a
        :pswitch_3
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_3
        :pswitch_3
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_3
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 316
    return-object p0
.end method

.method protected blacklist benchmark_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2383
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2384
    return-void
.end method

.method protected blacklist createUserStorageKeys_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2393
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2394
    return-void
.end method

.method protected blacklist destroyUserStorageKeys_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2398
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2399
    return-void
.end method

.method protected blacklist destroyUserStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2419
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2420
    return-void
.end method

.method protected blacklist forgetAllVolumes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2372
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2373
    return-void
.end method

.method protected blacklist forgetVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2367
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2368
    return-void
.end method

.method protected blacklist format_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2337
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2338
    return-void
.end method

.method protected blacklist fstrim_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2429
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2430
    return-void
.end method

.method protected blacklist getExternalStorageMountMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2457
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2466
    const/16 v0, 0x63

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 576
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist lockCeStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2408
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2409
    return-void
.end method

.method protected blacklist mount_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2328
    return-void
.end method

.method protected blacklist needsCheckpoint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2445
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2446
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    const-string v6, "android.os.storage.IStorageManager"

    .line 581
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 582
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 585
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    return v7

    .line 588
    :cond_16
    packed-switch p1, :pswitch_data_48a

    .line 1217
    :pswitch_19
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1210
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getInternalStorageRemainingLifetime()I

    move-result v1

    .line 1211
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    goto/16 :goto_488

    .line 1203
    .end local v1    # "_result":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getInternalStorageBlockDeviceSize()J

    move-result-wide v1

    .line 1204
    .local v1, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1206
    goto/16 :goto_488

    .line 1196
    .end local v1    # "_result":J
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1199
    goto/16 :goto_488

    .line 1188
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_488

    .line 1172
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1176
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1178
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1179
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v5

    .line 1181
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    goto/16 :goto_488

    .line 1160
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1162
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1163
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v3

    .line 1165
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    goto/16 :goto_488

    .line 1145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1151
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1152
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    goto/16 :goto_488

    .line 1130
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1134
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1136
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1137
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    goto/16 :goto_488

    .line 1118
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1121
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1123
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1125
    goto/16 :goto_488

    .line 1105
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1109
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1110
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    goto/16 :goto_488

    .line 1096
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_488

    .line 1085
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1088
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    goto/16 :goto_488

    .line 1077
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_10d
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v1

    .line 1078
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    goto/16 :goto_488

    .line 1069
    .end local v1    # "_result":Z
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_488

    .line 1061
    .end local v1    # "_arg0":I
    :pswitch_128
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v1

    .line 1062
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1064
    goto/16 :goto_488

    .line 1055
    .end local v1    # "_result":Z
    :pswitch_134
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    .line 1056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    goto/16 :goto_488

    .line 1049
    :pswitch_13c
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    goto/16 :goto_488

    .line 1043
    :pswitch_144
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_488

    .line 1029
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1033
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1035
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    goto/16 :goto_488

    .line 1015
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v4

    .line 1022
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1024
    goto/16 :goto_488

    .line 1003
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1006
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v3

    .line 1008
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1010
    goto/16 :goto_488

    .line 991
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 994
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3

    .line 996
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 998
    goto/16 :goto_488

    .line 977
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 981
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 982
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 984
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 986
    goto/16 :goto_488

    .line 969
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_1cc
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v1

    .line 970
    .local v1, "_result":Lcom/android/internal/os/AppFuseMount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 972
    goto/16 :goto_488

    .line 959
    .end local v1    # "_result":Lcom/android/internal/os/AppFuseMount;
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 962
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_488

    .line 948
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 951
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setCeStorageProtection(I[B)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_488

    .line 935
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 940
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_488

    .line 922
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 926
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 927
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage(Ljava/lang/String;II)V

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    goto/16 :goto_488

    .line 912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->isCeStorageUnlocked(I)Z

    move-result v2

    .line 915
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 917
    goto/16 :goto_488

    .line 903
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->lockCeStorage(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    goto/16 :goto_488

    .line 892
    .end local v1    # "_arg0":I
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 895
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->unlockCeStorage(I[B)V

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_488

    .line 883
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 884
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorageKeys(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    goto/16 :goto_488

    .line 872
    .end local v1    # "_arg0":I
    :pswitch_274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 875
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->createUserStorageKeys(IZ)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_488

    .line 861
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_488

    .line 850
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_29a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 853
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_488

    .line 839
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 841
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v2

    .line 842
    .local v2, "_arg1":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_488

    .line 831
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_2c8
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    goto/16 :goto_488

    .line 825
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2d4
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_488

    .line 817
    :pswitch_2dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto/16 :goto_488

    .line 804
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 806
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 808
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 809
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto/16 :goto_488

    .line 793
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 795
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_488

    .line 782
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto/16 :goto_488

    .line 773
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 774
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_488

    .line 764
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 765
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_488

    .line 755
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    goto/16 :goto_488

    .line 746
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_488

    .line 737
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_488

    .line 727
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v2

    .line 730
    .local v2, "_result":[Landroid/os/storage/VolumeRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 732
    goto/16 :goto_488

    .line 717
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/os/storage/VolumeRecord;
    :pswitch_386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 718
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 720
    .local v2, "_result":[Landroid/os/storage/VolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 722
    goto/16 :goto_488

    .line 709
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/os/storage/VolumeInfo;
    :pswitch_399
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 710
    .local v1, "_result":[Landroid/os/storage/DiskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 712
    goto/16 :goto_488

    .line 703
    .end local v1    # "_result":[Landroid/os/storage/DiskInfo;
    :pswitch_3a5
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_488

    .line 696
    :pswitch_3ad
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v1

    .line 697
    .local v1, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 699
    goto/16 :goto_488

    .line 686
    .end local v1    # "_result":J
    :pswitch_3b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_488

    .line 672
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 676
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 677
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 679
    .local v4, "_result":[Landroid/os/storage/StorageVolume;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 681
    goto/16 :goto_488

    .line 662
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[Landroid/os/storage/StorageVolume;
    :pswitch_3e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    goto/16 :goto_488

    .line 652
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v2

    .line 655
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 657
    goto/16 :goto_488

    .line 637
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_40d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 641
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v3

    .line 643
    .local v3, "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 644
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto :goto_488

    .line 620
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v4    # "_arg3":I
    :pswitch_42b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v3

    .line 626
    .restart local v3    # "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 628
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ObbInfo;

    .line 629
    .local v5, "_arg4":Landroid/content/res/ObbInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto :goto_488

    .line 611
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/res/ObbInfo;
    :pswitch_452
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v1

    .line 612
    .local v1, "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto :goto_488

    .line 602
    .end local v1    # "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    :pswitch_464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v1

    .line 603
    .local v1, "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto :goto_488

    .line 593
    .end local v1    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :pswitch_476
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v1

    .line 594
    .restart local v1    # "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    nop

    .line 1220
    .end local v1    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :goto_488
    return v7

    nop

    :pswitch_data_48a
    .packed-switch 0x1
        :pswitch_476
        :pswitch_464
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_452
        :pswitch_19
        :pswitch_42b
        :pswitch_40d
        :pswitch_3fa
        :pswitch_3e7
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3cc
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3b9
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3ad
        :pswitch_3a5
        :pswitch_19
        :pswitch_399
        :pswitch_386
        :pswitch_373
        :pswitch_364
        :pswitch_355
        :pswitch_346
        :pswitch_337
        :pswitch_328
        :pswitch_315
        :pswitch_302
        :pswitch_2eb
        :pswitch_2dc
        :pswitch_2d4
        :pswitch_2c8
        :pswitch_2b1
        :pswitch_29a
        :pswitch_287
        :pswitch_274
        :pswitch_265
        :pswitch_252
        :pswitch_243
        :pswitch_230
        :pswitch_219
        :pswitch_202
        :pswitch_19
        :pswitch_19
        :pswitch_1ef
        :pswitch_19
        :pswitch_1d8
        :pswitch_1cc
        :pswitch_1b1
        :pswitch_19a
        :pswitch_183
        :pswitch_168
        :pswitch_14c
        :pswitch_144
        :pswitch_13c
        :pswitch_19
        :pswitch_19
        :pswitch_134
        :pswitch_128
        :pswitch_119
        :pswitch_10d
        :pswitch_fa
        :pswitch_19
        :pswitch_eb
        :pswitch_d4
        :pswitch_bd
        :pswitch_a2
        :pswitch_87
        :pswitch_70
        :pswitch_51
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist partitionMixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2352
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2353
    return-void
.end method

.method protected blacklist partitionPrivate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2347
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2348
    return-void
.end method

.method protected blacklist partitionPublic_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2342
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2343
    return-void
.end method

.method protected blacklist prepareUserStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2414
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2415
    return-void
.end method

.method protected blacklist runMaintenance_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2319
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2320
    return-void
.end method

.method protected blacklist setCeStorageProtection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2424
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2425
    return-void
.end method

.method protected blacklist setDebugFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2388
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2389
    return-void
.end method

.method protected blacklist setPrimaryStorageUuid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2378
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2379
    return-void
.end method

.method protected blacklist setVolumeNickname_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2357
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2358
    return-void
.end method

.method protected blacklist setVolumeUserFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2362
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2363
    return-void
.end method

.method protected blacklist shutdown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2308
    return-void
.end method

.method protected blacklist unlockCeStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2403
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2404
    return-void
.end method

.method protected blacklist unmount_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2332
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2333
    return-void
.end method
