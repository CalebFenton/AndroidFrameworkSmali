.class public abstract Lcom/android/internal/app/IAppOpsService$Stub;
.super Landroid/os/Binder;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsService"

.field static final blacklist TRANSACTION_addHistoricalOps:I = 0x18

.field static final greylist TRANSACTION_checkAudioOperation:I = 0x8

.field static final greylist TRANSACTION_checkOperation:I = 0x1

.field static final blacklist TRANSACTION_checkOperationForDevice:I = 0x37

.field static final blacklist TRANSACTION_checkOperationRaw:I = 0x30

.field static final blacklist TRANSACTION_checkOperationRawForDevice:I = 0x36

.field static final greylist TRANSACTION_checkPackage:I = 0xf

.field static final blacklist TRANSACTION_clearHistory:I = 0x1b

.field static final blacklist TRANSACTION_collectNoteOpCallsForValidation:I = 0x32

.field static final blacklist TRANSACTION_collectRuntimeAppOpAccessMessage:I = 0x10

.field static final blacklist TRANSACTION_extractAsyncOps:I = 0x2f

.field static final greylist TRANSACTION_finishOperation:I = 0x4

.field static final blacklist TRANSACTION_finishOperationForDevice:I = 0x3a

.field static final blacklist TRANSACTION_finishProxyOperation:I = 0xe

.field static final blacklist TRANSACTION_finishProxyOperationWithState:I = 0x35

.field static final blacklist TRANSACTION_getHistoricalOps:I = 0x14

.field static final blacklist TRANSACTION_getHistoricalOpsFromDiskRaw:I = 0x15

.field static final greylist TRANSACTION_getOpsForPackage:I = 0x13

.field static final greylist TRANSACTION_getPackagesForOps:I = 0x12

.field static final blacklist TRANSACTION_getPackagesForOpsForDevice:I = 0x3b

.field static final greylist-max-o TRANSACTION_getUidOps:I = 0x1d

.field static final greylist-max-o TRANSACTION_isOperationActive:I = 0x27

.field static final blacklist TRANSACTION_isProxying:I = 0x28

.field static final greylist TRANSACTION_noteOperation:I = 0x2

.field static final blacklist TRANSACTION_noteOperationForDevice:I = 0x38

.field static final blacklist TRANSACTION_noteOperationsInBatch:I = 0x3c

.field static final greylist TRANSACTION_noteProxyOperation:I = 0xc

.field static final blacklist TRANSACTION_noteProxyOperationWithState:I = 0x33

.field static final blacklist TRANSACTION_offsetHistory:I = 0x16

.field static final greylist-max-o TRANSACTION_permissionToOpCode:I = 0x7

.field static final blacklist TRANSACTION_rebootHistory:I = 0x1c

.field static final blacklist TRANSACTION_reloadNonHistoricalState:I = 0x31

.field static final greylist TRANSACTION_removeUser:I = 0x24

.field static final blacklist TRANSACTION_reportRuntimeAppOpAccessMessageAndGetConfig:I = 0x11

.field static final greylist TRANSACTION_resetAllModes:I = 0x20

.field static final blacklist TRANSACTION_resetHistoryParameters:I = 0x19

.field static final blacklist TRANSACTION_resetPackageOpsNoHistory:I = 0x1a

.field static final greylist TRANSACTION_setAudioRestriction:I = 0x21

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0xa

.field static final blacklist TRANSACTION_setHistoryParameters:I = 0x17

.field static final greylist TRANSACTION_setMode:I = 0x1f

.field static final greylist TRANSACTION_setUidMode:I = 0x1e

.field static final greylist TRANSACTION_setUserRestriction:I = 0x23

.field static final greylist TRANSACTION_setUserRestrictions:I = 0x22

.field static final blacklist TRANSACTION_shouldCollectNotes:I = 0x9

.field static final greylist TRANSACTION_startOperation:I = 0x3

.field static final blacklist TRANSACTION_startOperationForDevice:I = 0x39

.field static final blacklist TRANSACTION_startProxyOperation:I = 0xd

.field static final blacklist TRANSACTION_startProxyOperationWithState:I = 0x34

.field static final greylist-max-o TRANSACTION_startWatchingActive:I = 0x25

.field static final blacklist TRANSACTION_startWatchingAsyncNoted:I = 0x2d

.field static final greylist TRANSACTION_startWatchingMode:I = 0x5

.field static final greylist-max-o TRANSACTION_startWatchingModeWithFlags:I = 0xb

.field static final blacklist TRANSACTION_startWatchingNoted:I = 0x2b

.field static final blacklist TRANSACTION_startWatchingStarted:I = 0x29

.field static final greylist-max-o TRANSACTION_stopWatchingActive:I = 0x26

.field static final blacklist TRANSACTION_stopWatchingAsyncNoted:I = 0x2e

.field static final greylist TRANSACTION_stopWatchingMode:I = 0x6

.field static final blacklist TRANSACTION_stopWatchingNoted:I = 0x2c

.field static final blacklist TRANSACTION_stopWatchingStarted:I = 0x2a


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    nop

    .line 257
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 258
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 246
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 247
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 248
    if-eqz p1, :cond_d

    .line 251
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 252
    return-void

    .line 249
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 265
    if-nez p0, :cond_4

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 269
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_14

    .line 270
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    return-object v1

    .line 272
    :cond_14
    new-instance v1, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 281
    packed-switch p0, :pswitch_data_d8

    .line 525
    const/4 v0, 0x0

    return-object v0

    .line 521
    :pswitch_5
    const-string v0, "noteOperationsInBatch"

    return-object v0

    .line 517
    :pswitch_8
    const-string v0, "getPackagesForOpsForDevice"

    return-object v0

    .line 513
    :pswitch_b
    const-string v0, "finishOperationForDevice"

    return-object v0

    .line 509
    :pswitch_e
    const-string/jumbo v0, "startOperationForDevice"

    return-object v0

    .line 505
    :pswitch_12
    const-string v0, "noteOperationForDevice"

    return-object v0

    .line 501
    :pswitch_15
    const-string v0, "checkOperationForDevice"

    return-object v0

    .line 497
    :pswitch_18
    const-string v0, "checkOperationRawForDevice"

    return-object v0

    .line 493
    :pswitch_1b
    const-string v0, "finishProxyOperationWithState"

    return-object v0

    .line 489
    :pswitch_1e
    const-string/jumbo v0, "startProxyOperationWithState"

    return-object v0

    .line 485
    :pswitch_22
    const-string v0, "noteProxyOperationWithState"

    return-object v0

    .line 481
    :pswitch_25
    const-string v0, "collectNoteOpCallsForValidation"

    return-object v0

    .line 477
    :pswitch_28
    const-string/jumbo v0, "reloadNonHistoricalState"

    return-object v0

    .line 473
    :pswitch_2c
    const-string v0, "checkOperationRaw"

    return-object v0

    .line 469
    :pswitch_2f
    const-string v0, "extractAsyncOps"

    return-object v0

    .line 465
    :pswitch_32
    const-string/jumbo v0, "stopWatchingAsyncNoted"

    return-object v0

    .line 461
    :pswitch_36
    const-string/jumbo v0, "startWatchingAsyncNoted"

    return-object v0

    .line 457
    :pswitch_3a
    const-string/jumbo v0, "stopWatchingNoted"

    return-object v0

    .line 453
    :pswitch_3e
    const-string/jumbo v0, "startWatchingNoted"

    return-object v0

    .line 449
    :pswitch_42
    const-string/jumbo v0, "stopWatchingStarted"

    return-object v0

    .line 445
    :pswitch_46
    const-string/jumbo v0, "startWatchingStarted"

    return-object v0

    .line 441
    :pswitch_4a
    const-string v0, "isProxying"

    return-object v0

    .line 437
    :pswitch_4d
    const-string v0, "isOperationActive"

    return-object v0

    .line 433
    :pswitch_50
    const-string/jumbo v0, "stopWatchingActive"

    return-object v0

    .line 429
    :pswitch_54
    const-string/jumbo v0, "startWatchingActive"

    return-object v0

    .line 425
    :pswitch_58
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 421
    :pswitch_5c
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 417
    :pswitch_60
    const-string/jumbo v0, "setUserRestrictions"

    return-object v0

    .line 413
    :pswitch_64
    const-string/jumbo v0, "setAudioRestriction"

    return-object v0

    .line 409
    :pswitch_68
    const-string/jumbo v0, "resetAllModes"

    return-object v0

    .line 405
    :pswitch_6c
    const-string/jumbo v0, "setMode"

    return-object v0

    .line 401
    :pswitch_70
    const-string/jumbo v0, "setUidMode"

    return-object v0

    .line 397
    :pswitch_74
    const-string v0, "getUidOps"

    return-object v0

    .line 393
    :pswitch_77
    const-string/jumbo v0, "rebootHistory"

    return-object v0

    .line 389
    :pswitch_7b
    const-string v0, "clearHistory"

    return-object v0

    .line 385
    :pswitch_7e
    const-string/jumbo v0, "resetPackageOpsNoHistory"

    return-object v0

    .line 381
    :pswitch_82
    const-string/jumbo v0, "resetHistoryParameters"

    return-object v0

    .line 377
    :pswitch_86
    const-string v0, "addHistoricalOps"

    return-object v0

    .line 373
    :pswitch_89
    const-string/jumbo v0, "setHistoryParameters"

    return-object v0

    .line 369
    :pswitch_8d
    const-string v0, "offsetHistory"

    return-object v0

    .line 365
    :pswitch_90
    const-string v0, "getHistoricalOpsFromDiskRaw"

    return-object v0

    .line 361
    :pswitch_93
    const-string v0, "getHistoricalOps"

    return-object v0

    .line 357
    :pswitch_96
    const-string v0, "getOpsForPackage"

    return-object v0

    .line 353
    :pswitch_99
    const-string v0, "getPackagesForOps"

    return-object v0

    .line 349
    :pswitch_9c
    const-string/jumbo v0, "reportRuntimeAppOpAccessMessageAndGetConfig"

    return-object v0

    .line 345
    :pswitch_a0
    const-string v0, "collectRuntimeAppOpAccessMessage"

    return-object v0

    .line 341
    :pswitch_a3
    const-string v0, "checkPackage"

    return-object v0

    .line 337
    :pswitch_a6
    const-string v0, "finishProxyOperation"

    return-object v0

    .line 333
    :pswitch_a9
    const-string/jumbo v0, "startProxyOperation"

    return-object v0

    .line 329
    :pswitch_ad
    const-string v0, "noteProxyOperation"

    return-object v0

    .line 325
    :pswitch_b0
    const-string/jumbo v0, "startWatchingModeWithFlags"

    return-object v0

    .line 321
    :pswitch_b4
    const-string/jumbo v0, "setCameraAudioRestriction"

    return-object v0

    .line 317
    :pswitch_b8
    const-string/jumbo v0, "shouldCollectNotes"

    return-object v0

    .line 313
    :pswitch_bc
    const-string v0, "checkAudioOperation"

    return-object v0

    .line 309
    :pswitch_bf
    const-string v0, "permissionToOpCode"

    return-object v0

    .line 305
    :pswitch_c2
    const-string/jumbo v0, "stopWatchingMode"

    return-object v0

    .line 301
    :pswitch_c6
    const-string/jumbo v0, "startWatchingMode"

    return-object v0

    .line 297
    :pswitch_ca
    const-string v0, "finishOperation"

    return-object v0

    .line 293
    :pswitch_cd
    const-string/jumbo v0, "startOperation"

    return-object v0

    .line 289
    :pswitch_d1
    const-string v0, "noteOperation"

    return-object v0

    .line 285
    :pswitch_d4
    const-string v0, "checkOperation"

    return-object v0

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_d1
        :pswitch_cd
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_89
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addHistoricalOps_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2605
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 276
    return-object p0
.end method

.method protected blacklist clearHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2619
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2620
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2661
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 532
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist offsetHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2594
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2595
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v7, "com.android.internal.app.IAppOpsService"

    .line 537
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt v13, v8, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 538
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 541
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    return v8

    .line 544
    :cond_1e
    packed-switch v13, :pswitch_data_77a

    .line 1415
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1407
    :pswitch_26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1408
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 1409
    .local v2, "_arg0":Ljava/util/Map;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v0, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperationsInBatch(Ljava/util/Map;)V

    .line 1411
    move-object/from16 v16, v7

    goto/16 :goto_776

    .line 1395
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg0":Ljava/util/Map;
    :pswitch_3c
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1397
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1400
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1402
    move-object/from16 v16, v7

    goto/16 :goto_776

    .line 1376
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_55
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1378
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1380
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1382
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1384
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1386
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1387
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 1389
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    move-object/from16 v0, p0

    move-object/from16 v16, v7

    goto/16 :goto_776

    .line 1344
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_7c
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1346
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1348
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1350
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1352
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1354
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1356
    .restart local v6    # "_arg5":I
    move-object v0, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1358
    .local v7, "_arg6":Z
    move v9, v8

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1360
    .local v8, "_arg7":Z
    move v10, v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1362
    .local v9, "_arg8":Ljava/lang/String;
    move v11, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1364
    .local v10, "_arg9":Z
    move v12, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1366
    .local v11, "_arg10":I
    move/from16 v16, v12

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1367
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "descriptor":Ljava/lang/String;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v13

    .line 1369
    .local v13, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    const/4 v0, 0x1

    invoke-virtual {v15, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1371
    move-object/from16 v0, p0

    goto/16 :goto_776

    .line 1320
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Ljava/lang/String;
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":I
    .end local v13    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_c9
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1322
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1324
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1326
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1328
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1330
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1332
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1334
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1335
    .restart local v8    # "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v9

    .line 1337
    .local v9, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v11, 0x1

    invoke-virtual {v15, v9, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1339
    goto/16 :goto_776

    .line 1302
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v8    # "_arg7":Z
    .end local v9    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_fd
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1304
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1306
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1308
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1310
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1311
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1313
    .local v6, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    goto/16 :goto_776

    .line 1284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_124
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1286
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1290
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1292
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1293
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1295
    .restart local v6    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    goto/16 :goto_776

    .line 1269
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_14b
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1271
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1273
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 1275
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1276
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V

    .line 1278
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    goto/16 :goto_776

    .line 1239
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_16c
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1241
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1243
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 1245
    .restart local v3    # "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1247
    .restart local v4    # "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1249
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1253
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1255
    .restart local v8    # "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1257
    .local v9, "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1259
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1260
    .restart local v11    # "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v12

    .line 1262
    .local v12, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v0, 0x1

    invoke-virtual {v15, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1264
    move-object/from16 v0, p0

    goto/16 :goto_776

    .line 1219
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_1b0
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1221
    .local v1, "_arg0":I
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 1223
    .local v2, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1225
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1227
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1229
    .restart local v5    # "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1230
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v7

    .line 1232
    .local v7, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    const/4 v11, 0x1

    invoke-virtual {v15, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1234
    goto/16 :goto_776

    .line 1204
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_1e1
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1208
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1211
    .local v4, "_arg3":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1213
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    goto/16 :goto_776

    .line 1197
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_200
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->reloadNonHistoricalState()V

    .line 1198
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    goto/16 :goto_776

    .line 1182
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_20a
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1184
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1186
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1191
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    goto/16 :goto_776

    .line 1172
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_22b
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1175
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    const/4 v11, 0x1

    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1177
    goto/16 :goto_776

    .line 1161
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_241
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v2

    .line 1164
    .local v2, "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1166
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_776

    .line 1150
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_25a
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v2

    .line 1153
    .restart local v2    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1155
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_776

    .line 1141
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_273
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v1

    .line 1142
    .local v1, "_arg0":Lcom/android/internal/app/IAppOpsNotedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1144
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_776

    .line 1130
    .end local v1    # "_arg0":Lcom/android/internal/app/IAppOpsNotedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_288
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1132
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v2

    .line 1133
    .local v2, "_arg1":Lcom/android/internal/app/IAppOpsNotedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1135
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    goto/16 :goto_776

    .line 1121
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Lcom/android/internal/app/IAppOpsNotedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_2a1
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v1

    .line 1122
    .local v1, "_arg0":Lcom/android/internal/app/IAppOpsStartedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1124
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    goto/16 :goto_776

    .line 1110
    .end local v1    # "_arg0":Lcom/android/internal/app/IAppOpsStartedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_2b6
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1112
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v2

    .line 1113
    .local v2, "_arg1":Lcom/android/internal/app/IAppOpsStartedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1115
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    goto/16 :goto_776

    .line 1092
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Lcom/android/internal/app/IAppOpsStartedCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_2cf
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1094
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1100
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1101
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 1103
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1105
    goto/16 :goto_776

    .line 1078
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_2f4
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1082
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->isOperationActive(IILjava/lang/String;)Z

    move-result v4

    .line 1085
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1087
    goto/16 :goto_776

    .line 1069
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_311
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v1

    .line 1070
    .local v1, "_arg0":Lcom/android/internal/app/IAppOpsActiveCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1072
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_776

    .line 1058
    .end local v1    # "_arg0":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_326
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1060
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v2

    .line 1061
    .local v2, "_arg1":Lcom/android/internal/app/IAppOpsActiveCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1063
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_776

    .line 1049
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_33f
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1050
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    .line 1052
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    goto/16 :goto_776

    .line 1032
    .end local v1    # "_arg0":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_350
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1034
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1036
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1038
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1040
    .local v4, "_arg3":I
    sget-object v5, Landroid/os/PackageTagsList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PackageTagsList;

    .line 1041
    .local v5, "_arg4":Landroid/os/PackageTagsList;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 1043
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_776

    .line 1019
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/PackageTagsList;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_375
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1021
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1023
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1024
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V

    .line 1026
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_776

    .line 1002
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_392
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1006
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1010
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1011
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(IIII[Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    goto/16 :goto_776

    .line 991
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_3b3
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    .line 996
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    goto/16 :goto_776

    .line 976
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_3c8
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 978
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 983
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    .line 985
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_776

    .line 963
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_3e5
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 965
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 967
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 968
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    .line 970
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_776

    .line 951
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_3fe
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 953
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 954
    .local v2, "_arg1":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->getUidOps(I[I)Ljava/util/List;

    move-result-object v3

    .line 956
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v11, 0x1

    invoke-virtual {v15, v3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 958
    goto/16 :goto_776

    .line 942
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_418
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 943
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory(J)V

    .line 945
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    goto/16 :goto_776

    .line 935
    .end local v1    # "_arg0":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_429
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory()V

    .line 936
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_776

    .line 927
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_433
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    goto/16 :goto_776

    .line 920
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_444
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters()V

    .line 921
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_776

    .line 912
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_44e
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/app/AppOpsManager$HistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 913
    .local v1, "_arg0":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 915
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    goto/16 :goto_776

    .line 899
    .end local v1    # "_arg0":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_463
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 901
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 903
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 904
    .local v4, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters(IJI)V

    .line 906
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    goto/16 :goto_776

    .line 890
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_47c
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 891
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory(J)V

    .line 893
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_776

    .line 863
    .end local v1    # "_arg0":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_48d
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 871
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 873
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 875
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 877
    .local v7, "_arg6":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 879
    .local v9, "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 881
    .local v11, "_arg8":I
    sget-object v12, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/RemoteCallback;

    .line 882
    .local v12, "_arg9":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 884
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v0, p0

    goto/16 :goto_776

    .line 836
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":Landroid/os/RemoteCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_4c8
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 838
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 840
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 844
    .restart local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 846
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 848
    .restart local v6    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 850
    .local v7, "_arg6":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 852
    .restart local v9    # "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 854
    .restart local v11    # "_arg8":I
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/RemoteCallback;

    .line 855
    .restart local v12    # "_arg9":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 857
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto/16 :goto_776

    .line 822
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":Landroid/os/RemoteCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_504
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 826
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 827
    .local v3, "_arg2":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v4

    .line 829
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v11, 0x1

    invoke-virtual {v15, v4, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 831
    goto/16 :goto_776

    .line 812
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_522
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 813
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 815
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    const/4 v11, 0x1

    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 817
    goto/16 :goto_776

    .line 798
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_538
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/SyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SyncNotedAppOp;

    .line 802
    .local v2, "_arg1":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v4

    .line 805
    .local v4, "_result":Lcom/android/internal/app/MessageSamplingConfig;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    const/4 v11, 0x1

    invoke-virtual {v15, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 807
    goto/16 :goto_776

    .line 790
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/SyncNotedAppOp;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/internal/app/MessageSamplingConfig;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_55a
    move-object/from16 v16, v7

    move v11, v8

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v1

    .line 791
    .local v1, "_result":Landroid/app/RuntimeAppOpAccessMessage;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 793
    goto/16 :goto_776

    .line 779
    .end local v1    # "_result":Landroid/app/RuntimeAppOpAccessMessage;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_569
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 781
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    move-result v3

    .line 784
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    goto/16 :goto_776

    .line 764
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_582
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 766
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 768
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 770
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 771
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 773
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_776

    .line 734
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_arg3":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_5a3
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 736
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 740
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 742
    .restart local v4    # "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 744
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 748
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 750
    .restart local v8    # "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 752
    .local v9, "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 754
    .restart local v10    # "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 755
    .local v11, "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v12

    .line 757
    .local v12, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v0, 0x1

    invoke-virtual {v15, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 759
    move-object/from16 v0, p0

    goto/16 :goto_776

    .line 714
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5e7
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .local v1, "_arg0":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/AttributionSource;

    .line 718
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 720
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 722
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 724
    .restart local v5    # "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 725
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v7

    .line 727
    .local v7, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v11, 0x1

    invoke-virtual {v15, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 729
    goto/16 :goto_776

    .line 699
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_618
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 705
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v4

    .line 706
    .local v4, "_arg3":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 708
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_776

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/app/IAppOpsCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_639
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 691
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->setCameraAudioRestriction(I)V

    .line 693
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_776

    .line 680
    .end local v1    # "_arg0":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_64a
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->shouldCollectNotes(I)Z

    move-result v2

    .line 683
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 685
    goto/16 :goto_776

    .line 664
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_65f
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v5

    .line 673
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    goto/16 :goto_776

    .line 654
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_680
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 657
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    goto/16 :goto_776

    .line 645
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_695
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v1

    .line 646
    .local v1, "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 648
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_776

    .line 632
    .end local v1    # "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_6aa
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 634
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v3

    .line 637
    .local v3, "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 639
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_776

    .line 615
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_6c7
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 617
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 621
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 623
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, p0

    goto/16 :goto_776

    .line 585
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_6ea
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 587
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 591
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 593
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 595
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 597
    .restart local v6    # "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 599
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 601
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 603
    .local v9, "_arg8":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 605
    .restart local v10    # "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 606
    .restart local v11    # "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v12

    .line 608
    .restart local v12    # "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v0, 0x1

    invoke-virtual {v15, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 610
    move-object/from16 v0, p0

    goto :goto_776

    .line 563
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_72b
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 571
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 573
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 576
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v8

    .line 578
    .local v8, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    const/4 v11, 0x1

    invoke-virtual {v15, v8, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 580
    goto :goto_776

    .line 549
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_75a
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    move-result v4

    .line 556
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    nop

    .line 1418
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :goto_776
    const/16 v17, 0x1

    return v17

    nop

    :pswitch_data_77a
    .packed-switch 0x1
        :pswitch_75a
        :pswitch_72b
        :pswitch_6ea
        :pswitch_6c7
        :pswitch_6aa
        :pswitch_695
        :pswitch_680
        :pswitch_65f
        :pswitch_64a
        :pswitch_639
        :pswitch_618
        :pswitch_5e7
        :pswitch_5a3
        :pswitch_582
        :pswitch_569
        :pswitch_55a
        :pswitch_538
        :pswitch_522
        :pswitch_504
        :pswitch_4c8
        :pswitch_48d
        :pswitch_47c
        :pswitch_463
        :pswitch_44e
        :pswitch_444
        :pswitch_433
        :pswitch_429
        :pswitch_418
        :pswitch_3fe
        :pswitch_3e5
        :pswitch_3c8
        :pswitch_3b3
        :pswitch_392
        :pswitch_375
        :pswitch_350
        :pswitch_33f
        :pswitch_326
        :pswitch_311
        :pswitch_2f4
        :pswitch_2cf
        :pswitch_2b6
        :pswitch_2a1
        :pswitch_288
        :pswitch_273
        :pswitch_25a
        :pswitch_241
        :pswitch_22b
        :pswitch_20a
        :pswitch_200
        :pswitch_1e1
        :pswitch_1b0
        :pswitch_16c
        :pswitch_14b
        :pswitch_124
        :pswitch_fd
        :pswitch_c9
        :pswitch_7c
        :pswitch_55
        :pswitch_3c
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist rebootHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2624
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2625
    return-void
.end method

.method protected blacklist resetHistoryParameters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2609
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2610
    return-void
.end method

.method protected blacklist resetPackageOpsNoHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2614
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2615
    return-void
.end method

.method protected blacklist setHistoryParameters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2599
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2600
    return-void
.end method
