.class public abstract Landroid/app/IActivityClientController$Stub;
.super Landroid/os/Binder;
.source "IActivityClientController.java"

# interfaces
.implements Landroid/app/IActivityClientController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityClientController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activityDestroyed:I = 0x7

.field static final blacklist TRANSACTION_activityIdle:I = 0x1

.field static final blacklist TRANSACTION_activityLocalRelaunch:I = 0x8

.field static final blacklist TRANSACTION_activityPaused:I = 0x5

.field static final blacklist TRANSACTION_activityRefreshed:I = 0x3

.field static final blacklist TRANSACTION_activityRelaunched:I = 0x9

.field static final blacklist TRANSACTION_activityResumed:I = 0x2

.field static final blacklist TRANSACTION_activityStopped:I = 0x6

.field static final blacklist TRANSACTION_activityTopResumedStateLost:I = 0x4

.field static final blacklist TRANSACTION_checkActivityCallerContentUriPermission:I = 0x1f

.field static final blacklist TRANSACTION_clearOverrideActivityTransition:I = 0x39

.field static final blacklist TRANSACTION_convertFromTranslucent:I = 0x22

.field static final blacklist TRANSACTION_convertToTranslucent:I = 0x23

.field static final blacklist TRANSACTION_dismissKeyguard:I = 0x3e

.field static final blacklist TRANSACTION_enableTaskLocaleOverride:I = 0x43

.field static final blacklist TRANSACTION_enterPictureInPictureMode:I = 0x26

.field static final blacklist TRANSACTION_finishActivity:I = 0xf

.field static final blacklist TRANSACTION_finishActivityAffinity:I = 0x10

.field static final blacklist TRANSACTION_finishSubActivity:I = 0x11

.field static final blacklist TRANSACTION_getActivityCallerPackage:I = 0x1e

.field static final blacklist TRANSACTION_getActivityCallerUid:I = 0x1c

.field static final blacklist TRANSACTION_getActivityTokenBelow:I = 0x18

.field static final blacklist TRANSACTION_getCallingActivity:I = 0x19

.field static final blacklist TRANSACTION_getCallingPackage:I = 0x1a

.field static final blacklist TRANSACTION_getDisplayId:I = 0x15

.field static final blacklist TRANSACTION_getLaunchedFromPackage:I = 0x1d

.field static final blacklist TRANSACTION_getLaunchedFromUid:I = 0x1b

.field static final blacklist TRANSACTION_getRequestedOrientation:I = 0x21

.field static final blacklist TRANSACTION_getTaskConfiguration:I = 0x17

.field static final blacklist TRANSACTION_getTaskForActivity:I = 0x16

.field static final blacklist TRANSACTION_invalidateHomeTaskSnapshot:I = 0x3d

.field static final blacklist TRANSACTION_isImmersive:I = 0x24

.field static final blacklist TRANSACTION_isRequestedToLaunchInTaskFragment:I = 0x44

.field static final blacklist TRANSACTION_isRootVoiceInteraction:I = 0x30

.field static final blacklist TRANSACTION_isTopOfTask:I = 0x13

.field static final blacklist TRANSACTION_moveActivityTaskToBack:I = 0xb

.field static final blacklist TRANSACTION_navigateUpTo:I = 0xd

.field static final blacklist TRANSACTION_onBackPressed:I = 0x41

.field static final blacklist TRANSACTION_overrideActivityTransition:I = 0x38

.field static final blacklist TRANSACTION_overridePendingTransition:I = 0x3a

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x3f

.field static final blacklist TRANSACTION_releaseActivityInstance:I = 0xe

.field static final blacklist TRANSACTION_reportActivityFullyDrawn:I = 0x37

.field static final blacklist TRANSACTION_reportSizeConfigurations:I = 0xa

.field static final blacklist TRANSACTION_requestMultiwindowFullscreen:I = 0x2a

.field static final blacklist TRANSACTION_setActivityRecordInputSinkEnabled:I = 0x45

.field static final blacklist TRANSACTION_setAllowCrossUidActivitySwitchFromBelow:I = 0x36

.field static final blacklist TRANSACTION_setForceSendResultForMediaProjection:I = 0x12

.field static final blacklist TRANSACTION_setImmersive:I = 0x25

.field static final blacklist TRANSACTION_setInheritShowWhenLocked:I = 0x34

.field static final blacklist TRANSACTION_setPictureInPictureParams:I = 0x27

.field static final blacklist TRANSACTION_setRecentsScreenshotEnabled:I = 0x3c

.field static final blacklist TRANSACTION_setRequestedOrientation:I = 0x20

.field static final blacklist TRANSACTION_setShouldDockBigOverlays:I = 0x28

.field static final blacklist TRANSACTION_setShowWhenLocked:I = 0x33

.field static final blacklist TRANSACTION_setTaskDescription:I = 0x2e

.field static final blacklist TRANSACTION_setTurnScreenOn:I = 0x35

.field static final blacklist TRANSACTION_setVrMode:I = 0x3b

.field static final blacklist TRANSACTION_shouldUpRecreateTask:I = 0xc

.field static final blacklist TRANSACTION_showAssistFromActivity:I = 0x2f

.field static final blacklist TRANSACTION_showLockTaskEscapeMessage:I = 0x2d

.field static final blacklist TRANSACTION_splashScreenAttached:I = 0x42

.field static final blacklist TRANSACTION_startLocalVoiceInteraction:I = 0x31

.field static final blacklist TRANSACTION_startLockTaskModeByToken:I = 0x2b

.field static final blacklist TRANSACTION_stopLocalVoiceInteraction:I = 0x32

.field static final blacklist TRANSACTION_stopLockTaskModeByToken:I = 0x2c

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x29

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x40

.field static final blacklist TRANSACTION_willActivityBeVisible:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 320
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 321
    const-string v0, "android.app.IActivityClientController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityClientController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 329
    if-nez p0, :cond_4

    .line 330
    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_4
    const-string v0, "android.app.IActivityClientController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 333
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityClientController;

    if-eqz v1, :cond_14

    .line 334
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityClientController;

    return-object v1

    .line 336
    :cond_14
    new-instance v1, Landroid/app/IActivityClientController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityClientController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 345
    packed-switch p0, :pswitch_data_fe

    .line 625
    const/4 v0, 0x0

    return-object v0

    .line 621
    :pswitch_5
    const-string/jumbo v0, "setActivityRecordInputSinkEnabled"

    return-object v0

    .line 617
    :pswitch_9
    const-string/jumbo v0, "isRequestedToLaunchInTaskFragment"

    return-object v0

    .line 613
    :pswitch_d
    const-string v0, "enableTaskLocaleOverride"

    return-object v0

    .line 609
    :pswitch_10
    const-string/jumbo v0, "splashScreenAttached"

    return-object v0

    .line 605
    :pswitch_14
    const-string/jumbo v0, "onBackPressed"

    return-object v0

    .line 601
    :pswitch_18
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    .line 597
    :pswitch_1c
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    .line 593
    :pswitch_20
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 589
    :pswitch_23
    const-string/jumbo v0, "invalidateHomeTaskSnapshot"

    return-object v0

    .line 585
    :pswitch_27
    const-string/jumbo v0, "setRecentsScreenshotEnabled"

    return-object v0

    .line 581
    :pswitch_2b
    const-string/jumbo v0, "setVrMode"

    return-object v0

    .line 577
    :pswitch_2f
    const-string/jumbo v0, "overridePendingTransition"

    return-object v0

    .line 573
    :pswitch_33
    const-string v0, "clearOverrideActivityTransition"

    return-object v0

    .line 569
    :pswitch_36
    const-string/jumbo v0, "overrideActivityTransition"

    return-object v0

    .line 565
    :pswitch_3a
    const-string/jumbo v0, "reportActivityFullyDrawn"

    return-object v0

    .line 561
    :pswitch_3e
    const-string/jumbo v0, "setAllowCrossUidActivitySwitchFromBelow"

    return-object v0

    .line 557
    :pswitch_42
    const-string/jumbo v0, "setTurnScreenOn"

    return-object v0

    .line 553
    :pswitch_46
    const-string/jumbo v0, "setInheritShowWhenLocked"

    return-object v0

    .line 549
    :pswitch_4a
    const-string/jumbo v0, "setShowWhenLocked"

    return-object v0

    .line 545
    :pswitch_4e
    const-string/jumbo v0, "stopLocalVoiceInteraction"

    return-object v0

    .line 541
    :pswitch_52
    const-string/jumbo v0, "startLocalVoiceInteraction"

    return-object v0

    .line 537
    :pswitch_56
    const-string/jumbo v0, "isRootVoiceInteraction"

    return-object v0

    .line 533
    :pswitch_5a
    const-string/jumbo v0, "showAssistFromActivity"

    return-object v0

    .line 529
    :pswitch_5e
    const-string/jumbo v0, "setTaskDescription"

    return-object v0

    .line 525
    :pswitch_62
    const-string/jumbo v0, "showLockTaskEscapeMessage"

    return-object v0

    .line 521
    :pswitch_66
    const-string/jumbo v0, "stopLockTaskModeByToken"

    return-object v0

    .line 517
    :pswitch_6a
    const-string/jumbo v0, "startLockTaskModeByToken"

    return-object v0

    .line 513
    :pswitch_6e
    const-string/jumbo v0, "requestMultiwindowFullscreen"

    return-object v0

    .line 509
    :pswitch_72
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    .line 505
    :pswitch_76
    const-string/jumbo v0, "setShouldDockBigOverlays"

    return-object v0

    .line 501
    :pswitch_7a
    const-string/jumbo v0, "setPictureInPictureParams"

    return-object v0

    .line 497
    :pswitch_7e
    const-string v0, "enterPictureInPictureMode"

    return-object v0

    .line 493
    :pswitch_81
    const-string/jumbo v0, "setImmersive"

    return-object v0

    .line 489
    :pswitch_85
    const-string/jumbo v0, "isImmersive"

    return-object v0

    .line 485
    :pswitch_89
    const-string v0, "convertToTranslucent"

    return-object v0

    .line 481
    :pswitch_8c
    const-string v0, "convertFromTranslucent"

    return-object v0

    .line 477
    :pswitch_8f
    const-string v0, "getRequestedOrientation"

    return-object v0

    .line 473
    :pswitch_92
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 469
    :pswitch_96
    const-string v0, "checkActivityCallerContentUriPermission"

    return-object v0

    .line 465
    :pswitch_99
    const-string v0, "getActivityCallerPackage"

    return-object v0

    .line 461
    :pswitch_9c
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 457
    :pswitch_9f
    const-string v0, "getActivityCallerUid"

    return-object v0

    .line 453
    :pswitch_a2
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 449
    :pswitch_a5
    const-string v0, "getCallingPackage"

    return-object v0

    .line 445
    :pswitch_a8
    const-string v0, "getCallingActivity"

    return-object v0

    .line 441
    :pswitch_ab
    const-string v0, "getActivityTokenBelow"

    return-object v0

    .line 437
    :pswitch_ae
    const-string/jumbo v0, "getTaskConfiguration"

    return-object v0

    .line 433
    :pswitch_b2
    const-string/jumbo v0, "getTaskForActivity"

    return-object v0

    .line 429
    :pswitch_b6
    const-string v0, "getDisplayId"

    return-object v0

    .line 425
    :pswitch_b9
    const-string/jumbo v0, "willActivityBeVisible"

    return-object v0

    .line 421
    :pswitch_bd
    const-string/jumbo v0, "isTopOfTask"

    return-object v0

    .line 417
    :pswitch_c1
    const-string/jumbo v0, "setForceSendResultForMediaProjection"

    return-object v0

    .line 413
    :pswitch_c5
    const-string v0, "finishSubActivity"

    return-object v0

    .line 409
    :pswitch_c8
    const-string v0, "finishActivityAffinity"

    return-object v0

    .line 405
    :pswitch_cb
    const-string v0, "finishActivity"

    return-object v0

    .line 401
    :pswitch_ce
    const-string/jumbo v0, "releaseActivityInstance"

    return-object v0

    .line 397
    :pswitch_d2
    const-string/jumbo v0, "navigateUpTo"

    return-object v0

    .line 393
    :pswitch_d6
    const-string/jumbo v0, "shouldUpRecreateTask"

    return-object v0

    .line 389
    :pswitch_da
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 385
    :pswitch_de
    const-string/jumbo v0, "reportSizeConfigurations"

    return-object v0

    .line 381
    :pswitch_e2
    const-string v0, "activityRelaunched"

    return-object v0

    .line 377
    :pswitch_e5
    const-string v0, "activityLocalRelaunch"

    return-object v0

    .line 373
    :pswitch_e8
    const-string v0, "activityDestroyed"

    return-object v0

    .line 369
    :pswitch_eb
    const-string v0, "activityStopped"

    return-object v0

    .line 365
    :pswitch_ee
    const-string v0, "activityPaused"

    return-object v0

    .line 361
    :pswitch_f1
    const-string v0, "activityTopResumedStateLost"

    return-object v0

    .line 357
    :pswitch_f4
    const-string v0, "activityRefreshed"

    return-object v0

    .line 353
    :pswitch_f7
    const-string v0, "activityResumed"

    return-object v0

    .line 349
    :pswitch_fa
    const-string v0, "activityIdle"

    return-object v0

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_de
        :pswitch_da
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 340
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2664
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 632
    invoke-static {p1}, Landroid/app/IActivityClientController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    const-string v6, "android.app.IActivityClientController"

    .line 637
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 638
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 641
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    return v7

    .line 644
    :cond_16
    packed-switch p1, :pswitch_data_592

    .line 1391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1382
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1384
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1385
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V

    .line 1387
    goto/16 :goto_590

    .line 1370
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1372
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1373
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v3

    .line 1375
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1377
    goto/16 :goto_590

    .line 1361
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1362
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->enableTaskLocaleOverride(Landroid/os/IBinder;)V

    .line 1364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    goto/16 :goto_590

    .line 1353
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1354
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->splashScreenAttached(Landroid/os/IBinder;)V

    .line 1356
    goto/16 :goto_590

    .line 1343
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1345
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v2

    .line 1346
    .local v2, "_arg1":Landroid/app/IRequestFinishCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 1348
    goto/16 :goto_590

    .line 1334
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/IRequestFinishCallback;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1335
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    goto/16 :goto_590

    .line 1323
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1325
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition;

    .line 1326
    .local v2, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 1328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    goto/16 :goto_590

    .line 1310
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1312
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 1314
    .local v2, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1315
    .local v3, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_590

    .line 1301
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1302
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_590

    .line 1291
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1293
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1294
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 1296
    goto/16 :goto_590

    .line 1277
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1279
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1281
    .restart local v2    # "_arg1":Z
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1282
    .local v3, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v4

    .line 1284
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    goto/16 :goto_590

    .line 1260
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_result":I
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1262
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1266
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1268
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1269
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    goto/16 :goto_590

    .line 1250
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1252
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1253
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V

    .line 1255
    goto/16 :goto_590

    .line 1234
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1236
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1238
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1240
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1242
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1243
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V

    .line 1245
    goto/16 :goto_590

    .line 1224
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1226
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1227
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 1229
    goto/16 :goto_590

    .line 1214
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1216
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1217
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V

    .line 1219
    goto/16 :goto_590

    .line 1203
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1205
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1206
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    goto/16 :goto_590

    .line 1193
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1195
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1196
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1198
    goto/16 :goto_590

    .line 1183
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1185
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1186
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1188
    goto/16 :goto_590

    .line 1174
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1175
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    goto/16 :goto_590

    .line 1163
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1165
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1166
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    goto/16 :goto_590

    .line 1153
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1154
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v2

    .line 1156
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_590

    .line 1141
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1143
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1144
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v3

    .line 1146
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1148
    goto/16 :goto_590

    .line 1130
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1132
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    .line 1133
    .local v2, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    goto/16 :goto_590

    .line 1122
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1123
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 1125
    goto/16 :goto_590

    .line 1113
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1114
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    goto/16 :goto_590

    .line 1104
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1105
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    goto/16 :goto_590

    .line 1092
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_22c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1094
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1096
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1097
    .local v3, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    .line 1099
    goto/16 :goto_590

    .line 1083
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IRemoteCallback;
    :pswitch_244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1084
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    goto/16 :goto_590

    .line 1073
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1075
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1076
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 1078
    goto/16 :goto_590

    .line 1062
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1064
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PictureInPictureParams;

    .line 1065
    .local v2, "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto/16 :goto_590

    .line 1050
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/PictureInPictureParams;
    :pswitch_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1052
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PictureInPictureParams;

    .line 1053
    .restart local v2    # "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v3

    .line 1055
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_590

    .line 1039
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v3    # "_result":Z
    :pswitch_295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1041
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1042
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_590

    .line 1029
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1030
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v2

    .line 1032
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_590

    .line 1017
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1019
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1020
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v3

    .line 1022
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1024
    goto/16 :goto_590

    .line 1007
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1008
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v2

    .line 1010
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1012
    goto/16 :goto_590

    .line 997
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_2e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 998
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v2

    .line 1000
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    goto/16 :goto_590

    .line 986
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_2fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 988
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_590

    .line 968
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_30f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 970
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 972
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 974
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 976
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 977
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I

    move-result v8

    .line 979
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    goto/16 :goto_590

    .line 956
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 958
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 959
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    goto/16 :goto_590

    .line 946
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_34e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 947
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    goto/16 :goto_590

    .line 934
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_361
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 936
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 937
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v3

    .line 939
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    goto/16 :goto_590

    .line 924
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 925
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    .line 927
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    goto/16 :goto_590

    .line 914
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_38b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 915
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    goto/16 :goto_590

    .line 904
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_39e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 905
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v2

    .line 907
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 909
    goto/16 :goto_590

    .line 894
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_3b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 895
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    .line 897
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 899
    goto/16 :goto_590

    .line 884
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_3c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 885
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 887
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 889
    goto/16 :goto_590

    .line 872
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :pswitch_3d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 874
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 875
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v3

    .line 877
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    goto/16 :goto_590

    .line 862
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_3ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 863
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v2

    .line 865
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    goto/16 :goto_590

    .line 852
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 853
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v2

    .line 855
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 857
    goto/16 :goto_590

    .line 842
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 843
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v2

    .line 845
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 847
    goto/16 :goto_590

    .line 833
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_427
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 834
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    goto/16 :goto_590

    .line 820
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_436
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_590

    .line 810
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_44d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 811
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v2

    .line 813
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    goto/16 :goto_590

    .line 794
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_460
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 796
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 800
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 801
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IActivityClientController$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v5

    .line 803
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 805
    goto/16 :goto_590

    .line 784
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 785
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v2

    .line 787
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 789
    goto/16 :goto_590

    .line 766
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_496
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 770
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 774
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 775
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v8

    .line 777
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 779
    goto/16 :goto_590

    .line 754
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :pswitch_4c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 756
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    .line 759
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 761
    goto/16 :goto_590

    .line 742
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 744
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 745
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v3

    .line 747
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    goto/16 :goto_590

    .line 732
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 734
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SizeConfigurationBuckets;

    .line 735
    .local v2, "_arg1":Landroid/window/SizeConfigurationBuckets;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 737
    goto/16 :goto_590

    .line 724
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/window/SizeConfigurationBuckets;
    :pswitch_504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 725
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 727
    goto/16 :goto_590

    .line 716
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_510
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 717
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 719
    goto/16 :goto_590

    .line 708
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_51c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 711
    goto :goto_590

    .line 694
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_527
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 696
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 698
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 700
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 701
    .local v4, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IActivityClientController$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 703
    goto :goto_590

    .line 685
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_54a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 686
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto :goto_590

    .line 678
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_558
    invoke-virtual {p0}, Landroid/app/IActivityClientController$Stub;->activityTopResumedStateLost()V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto :goto_590

    .line 671
    :pswitch_55f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 672
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityRefreshed(Landroid/os/IBinder;)V

    .line 674
    goto :goto_590

    .line 661
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_56a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 663
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 664
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->activityResumed(Landroid/os/IBinder;Z)V

    .line 666
    goto :goto_590

    .line 649
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_579
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 651
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 653
    .local v2, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 654
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 656
    nop

    .line 1394
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/res/Configuration;
    .end local v3    # "_arg2":Z
    :goto_590
    return v7

    nop

    :pswitch_data_592
    .packed-switch 0x1
        :pswitch_579
        :pswitch_56a
        :pswitch_55f
        :pswitch_558
        :pswitch_54a
        :pswitch_527
        :pswitch_51c
        :pswitch_510
        :pswitch_504
        :pswitch_4f0
        :pswitch_4d9
        :pswitch_4c2
        :pswitch_496
        :pswitch_483
        :pswitch_460
        :pswitch_44d
        :pswitch_436
        :pswitch_427
        :pswitch_414
        :pswitch_401
        :pswitch_3ee
        :pswitch_3d7
        :pswitch_3c4
        :pswitch_3b1
        :pswitch_39e
        :pswitch_38b
        :pswitch_378
        :pswitch_361
        :pswitch_34e
        :pswitch_337
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2bb
        :pswitch_2a8
        :pswitch_295
        :pswitch_27a
        :pswitch_263
        :pswitch_253
        :pswitch_244
        :pswitch_22c
        :pswitch_21d
        :pswitch_20e
        :pswitch_202
        :pswitch_1eb
        :pswitch_1d0
        :pswitch_1bd
        :pswitch_1a6
        :pswitch_197
        :pswitch_187
        :pswitch_177
        :pswitch_164
        :pswitch_154
        :pswitch_144
        :pswitch_127
        :pswitch_117
        :pswitch_f7
        :pswitch_d8
        :pswitch_c8
        :pswitch_b9
        :pswitch_9a
        :pswitch_83
        :pswitch_74
        :pswitch_60
        :pswitch_54
        :pswitch_45
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
