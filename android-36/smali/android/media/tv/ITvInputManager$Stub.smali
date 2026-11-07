.class public abstract Landroid/media/tv/ITvInputManager$Stub;
.super Landroid/os/Binder;
.source "ITvInputManager.java"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManager"

.field static final greylist-max-o TRANSACTION_acquireTvInputHardware:I = 0x38

.field static final greylist-max-o TRANSACTION_addBlockedRating:I = 0xe

.field static final blacklist TRANSACTION_addHardwareDevice:I = 0x41

.field static final greylist-max-o TRANSACTION_captureFrame:I = 0x3b

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0x1f

.field static final greylist-max-o TRANSACTION_createSession:I = 0x10

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x17

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x5

.field static final greylist-max-o TRANSACTION_getAvailableTvStreamConfigList:I = 0x3a

.field static final greylist-max-o TRANSACTION_getBlockedRatings:I = 0xd

.field static final blacklist TRANSACTION_getClientPid:I = 0x12

.field static final blacklist TRANSACTION_getClientPriority:I = 0x13

.field static final blacklist TRANSACTION_getClientUserId:I = 0x14

.field static final blacklist TRANSACTION_getCurrentTunedInfos:I = 0x2a

.field static final greylist-max-o TRANSACTION_getDvbDeviceList:I = 0x3d

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x6

.field static final greylist-max-o TRANSACTION_getHardwareList:I = 0x37

.field static final greylist-max-o TRANSACTION_getTvContentRatingSystemList:I = 0x7

.field static final greylist-max-o TRANSACTION_getTvInputInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getTvInputList:I = 0x1

.field static final greylist-max-o TRANSACTION_getTvInputState:I = 0x4

.field static final greylist-max-o TRANSACTION_isParentalControlsEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_isRatingBlocked:I = 0xc

.field static final greylist-max-o TRANSACTION_isSingleSessionActive:I = 0x3c

.field static final blacklist TRANSACTION_notifyAdBufferReady:I = 0x34

.field static final blacklist TRANSACTION_notifyTvAdSessionData:I = 0x44

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x35

.field static final greylist-max-o TRANSACTION_openDvbDevice:I = 0x3e

.field static final blacklist TRANSACTION_pauseRecording:I = 0x2d

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x8

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0x20

.field static final greylist-max-o TRANSACTION_releaseSession:I = 0x11

.field static final greylist-max-o TRANSACTION_releaseTvInputHardware:I = 0x39

.field static final greylist-max-o TRANSACTION_removeBlockedRating:I = 0xf

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x32

.field static final blacklist TRANSACTION_removeHardwareDevice:I = 0x42

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0x21

.field static final blacklist TRANSACTION_requestAd:I = 0x33

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x31

.field static final greylist-max-o TRANSACTION_requestChannelBrowsable:I = 0x40

.field static final blacklist TRANSACTION_resumePlayback:I = 0x2f

.field static final blacklist TRANSACTION_resumeRecording:I = 0x2e

.field static final blacklist TRANSACTION_selectAudioPresentation:I = 0x1c

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x1b

.field static final greylist-max-o TRANSACTION_sendAppPrivateCommand:I = 0x1e

.field static final greylist-max-o TRANSACTION_sendTvInputNotifyIntent:I = 0x3f

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x1a

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0x1d

.field static final greylist-max-o TRANSACTION_setMainSession:I = 0x15

.field static final greylist-max-o TRANSACTION_setParentalControlsEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x16

.field static final blacklist TRANSACTION_setTvMessageEnabled:I = 0x36

.field static final blacklist TRANSACTION_setVideoFrozen:I = 0x43

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x18

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x2b

.field static final blacklist TRANSACTION_stopPlayback:I = 0x30

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x2c

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x29

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x24

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x23

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x25

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x26

.field static final blacklist TRANSACTION_timeShiftSetMode:I = 0x28

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x27

.field static final greylist-max-o TRANSACTION_tune:I = 0x19

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0x22

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateTvInputInfo:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 265
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 266
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_4
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 278
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_14

    .line 279
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputManager;

    return-object v1

    .line 281
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 290
    packed-switch p0, :pswitch_data_d2

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 562
    :pswitch_5
    const-string v0, "notifyTvAdSessionData"

    return-object v0

    .line 558
    :pswitch_8
    const-string v0, "setVideoFrozen"

    return-object v0

    .line 554
    :pswitch_b
    const-string v0, "removeHardwareDevice"

    return-object v0

    .line 550
    :pswitch_e
    const-string v0, "addHardwareDevice"

    return-object v0

    .line 546
    :pswitch_11
    const-string v0, "requestChannelBrowsable"

    return-object v0

    .line 542
    :pswitch_14
    const-string v0, "sendTvInputNotifyIntent"

    return-object v0

    .line 538
    :pswitch_17
    const-string v0, "openDvbDevice"

    return-object v0

    .line 534
    :pswitch_1a
    const-string v0, "getDvbDeviceList"

    return-object v0

    .line 530
    :pswitch_1d
    const-string v0, "isSingleSessionActive"

    return-object v0

    .line 526
    :pswitch_20
    const-string v0, "captureFrame"

    return-object v0

    .line 522
    :pswitch_23
    const-string v0, "getAvailableTvStreamConfigList"

    return-object v0

    .line 518
    :pswitch_26
    const-string v0, "releaseTvInputHardware"

    return-object v0

    .line 514
    :pswitch_29
    const-string v0, "acquireTvInputHardware"

    return-object v0

    .line 510
    :pswitch_2c
    const-string v0, "getHardwareList"

    return-object v0

    .line 506
    :pswitch_2f
    const-string v0, "setTvMessageEnabled"

    return-object v0

    .line 502
    :pswitch_32
    const-string v0, "notifyTvMessage"

    return-object v0

    .line 498
    :pswitch_35
    const-string v0, "notifyAdBufferReady"

    return-object v0

    .line 494
    :pswitch_38
    const-string v0, "requestAd"

    return-object v0

    .line 490
    :pswitch_3b
    const-string v0, "removeBroadcastInfo"

    return-object v0

    .line 486
    :pswitch_3e
    const-string v0, "requestBroadcastInfo"

    return-object v0

    .line 482
    :pswitch_41
    const-string v0, "stopPlayback"

    return-object v0

    .line 478
    :pswitch_44
    const-string v0, "resumePlayback"

    return-object v0

    .line 474
    :pswitch_47
    const-string v0, "resumeRecording"

    return-object v0

    .line 470
    :pswitch_4a
    const-string v0, "pauseRecording"

    return-object v0

    .line 466
    :pswitch_4d
    const-string v0, "stopRecording"

    return-object v0

    .line 462
    :pswitch_50
    const-string v0, "startRecording"

    return-object v0

    .line 458
    :pswitch_53
    const-string v0, "getCurrentTunedInfos"

    return-object v0

    .line 454
    :pswitch_56
    const-string v0, "timeShiftEnablePositionTracking"

    return-object v0

    .line 450
    :pswitch_59
    const-string v0, "timeShiftSetMode"

    return-object v0

    .line 446
    :pswitch_5c
    const-string v0, "timeShiftSetPlaybackParams"

    return-object v0

    .line 442
    :pswitch_5f
    const-string v0, "timeShiftSeekTo"

    return-object v0

    .line 438
    :pswitch_62
    const-string v0, "timeShiftResume"

    return-object v0

    .line 434
    :pswitch_65
    const-string v0, "timeShiftPause"

    return-object v0

    .line 430
    :pswitch_68
    const-string v0, "timeShiftPlay"

    return-object v0

    .line 426
    :pswitch_6b
    const-string v0, "unblockContent"

    return-object v0

    .line 422
    :pswitch_6e
    const-string v0, "removeOverlayView"

    return-object v0

    .line 418
    :pswitch_71
    const-string v0, "relayoutOverlayView"

    return-object v0

    .line 414
    :pswitch_74
    const-string v0, "createOverlayView"

    return-object v0

    .line 410
    :pswitch_77
    const-string v0, "sendAppPrivateCommand"

    return-object v0

    .line 406
    :pswitch_7a
    const-string v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    .line 402
    :pswitch_7d
    const-string v0, "selectAudioPresentation"

    return-object v0

    .line 398
    :pswitch_80
    const-string v0, "selectTrack"

    return-object v0

    .line 394
    :pswitch_83
    const-string v0, "setCaptionEnabled"

    return-object v0

    .line 390
    :pswitch_86
    const-string v0, "tune"

    return-object v0

    .line 386
    :pswitch_89
    const-string v0, "setVolume"

    return-object v0

    .line 382
    :pswitch_8c
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 378
    :pswitch_8f
    const-string v0, "setSurface"

    return-object v0

    .line 374
    :pswitch_92
    const-string v0, "setMainSession"

    return-object v0

    .line 370
    :pswitch_95
    const-string v0, "getClientUserId"

    return-object v0

    .line 366
    :pswitch_98
    const-string v0, "getClientPriority"

    return-object v0

    .line 362
    :pswitch_9b
    const-string v0, "getClientPid"

    return-object v0

    .line 358
    :pswitch_9e
    const-string v0, "releaseSession"

    return-object v0

    .line 354
    :pswitch_a1
    const-string v0, "createSession"

    return-object v0

    .line 350
    :pswitch_a4
    const-string v0, "removeBlockedRating"

    return-object v0

    .line 346
    :pswitch_a7
    const-string v0, "addBlockedRating"

    return-object v0

    .line 342
    :pswitch_aa
    const-string v0, "getBlockedRatings"

    return-object v0

    .line 338
    :pswitch_ad
    const-string v0, "isRatingBlocked"

    return-object v0

    .line 334
    :pswitch_b0
    const-string v0, "setParentalControlsEnabled"

    return-object v0

    .line 330
    :pswitch_b3
    const-string v0, "isParentalControlsEnabled"

    return-object v0

    .line 326
    :pswitch_b6
    const-string v0, "unregisterCallback"

    return-object v0

    .line 322
    :pswitch_b9
    const-string v0, "registerCallback"

    return-object v0

    .line 318
    :pswitch_bc
    const-string v0, "getTvContentRatingSystemList"

    return-object v0

    .line 314
    :pswitch_bf
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 310
    :pswitch_c2
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 306
    :pswitch_c5
    const-string v0, "getTvInputState"

    return-object v0

    .line 302
    :pswitch_c8
    const-string v0, "updateTvInputInfo"

    return-object v0

    .line 298
    :pswitch_cb
    const-string v0, "getTvInputInfo"

    return-object v0

    .line 294
    :pswitch_ce
    const-string v0, "getTvInputList"

    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
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

    .line 285
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2722
    const/16 v0, 0x43

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 573
    invoke-static {p1}, Landroid/media/tv/ITvInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    move-object v7, p3

    const-string v8, "android.media.tv.ITvInputManager"

    .line 578
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 579
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 582
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    return v9

    .line 585
    :cond_17
    packed-switch p1, :pswitch_data_684

    .line 1431
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1417
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1419
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1421
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1423
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1424
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->notifyTvAdSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    goto/16 :goto_682

    .line 1404
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1406
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1408
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1409
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->setVideoFrozen(Landroid/os/IBinder;ZI)V

    .line 1411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    goto/16 :goto_682

    .line 1395
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1396
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->removeHardwareDevice(I)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    goto/16 :goto_682

    .line 1386
    .end local v1    # "_arg0":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1387
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->addHardwareDevice(I)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    goto/16 :goto_682

    .line 1375
    .end local v1    # "_arg0":I
    :pswitch_73
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1377
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1378
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->requestChannelBrowsable(Landroid/net/Uri;I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    goto/16 :goto_682

    .line 1364
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    :pswitch_8a
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1366
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1367
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    goto/16 :goto_682

    .line 1352
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    :pswitch_a1
    sget-object v1, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/DvbDeviceInfo;

    .line 1354
    .local v1, "_arg0":Landroid/media/tv/DvbDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1355
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1357
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1359
    goto/16 :goto_682

    .line 1344
    .end local v1    # "_arg0":Landroid/media/tv/DvbDeviceInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_bc
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub;->getDvbDeviceList()Ljava/util/List;

    move-result-object v1

    .line 1345
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1347
    goto/16 :goto_682

    .line 1335
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1336
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->isSingleSessionActive(I)Z

    move-result v2

    .line 1338
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1340
    goto/16 :goto_682

    .line 1319
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1323
    .local v2, "_arg1":Landroid/view/Surface;
    sget-object v3, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvStreamConfig;

    .line 1325
    .local v3, "_arg2":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1326
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v5

    .line 1328
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1330
    goto/16 :goto_682

    .line 1307
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/view/Surface;
    .end local v3    # "_arg2":Landroid/media/tv/TvStreamConfig;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1309
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1310
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1312
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1314
    goto/16 :goto_682

    .line 1294
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1296
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    .line 1298
    .local v2, "_arg1":Landroid/media/tv/ITvInputHardware;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1299
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    goto/16 :goto_682

    .line 1274
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/tv/ITvInputHardware;
    .end local v3    # "_arg2":I
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1276
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object v2

    .line 1278
    .local v2, "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    sget-object v3, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvInputInfo;

    .line 1280
    .local v3, "_arg2":Landroid/media/tv/TvInputInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1282
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1284
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1285
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/ITvInputManager$Stub;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v10

    .line 1287
    .local v10, "_result":Landroid/media/tv/ITvInputHardware;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1289
    goto/16 :goto_682

    .line 1266
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v3    # "_arg2":Landroid/media/tv/TvInputInfo;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v10    # "_result":Landroid/media/tv/ITvInputHardware;
    :pswitch_164
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub;->getHardwareList()Ljava/util/List;

    move-result-object v1

    .line 1267
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1269
    goto/16 :goto_682

    .line 1252
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1254
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1256
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1258
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1259
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->setTvMessageEnabled(Landroid/os/IBinder;IZI)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    goto/16 :goto_682

    .line 1237
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1239
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1241
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1243
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1244
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_682

    .line 1224
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1226
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 1228
    .local v2, "_arg1":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1229
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_682

    .line 1211
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/AdBuffer;
    .end local v3    # "_arg2":I
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1213
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    .line 1215
    .local v2, "_arg1":Landroid/media/tv/AdRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1216
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V

    .line 1218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_682

    .line 1198
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/AdRequest;
    .end local v3    # "_arg2":I
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1200
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1202
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1203
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->removeBroadcastInfo(Landroid/os/IBinder;II)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_682

    .line 1185
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1187
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    .line 1189
    .local v2, "_arg1":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1190
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_682

    .line 1172
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/BroadcastInfoRequest;
    .end local v3    # "_arg2":I
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1174
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1176
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1177
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->stopPlayback(Landroid/os/IBinder;II)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_682

    .line 1161
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1163
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->resumePlayback(Landroid/os/IBinder;I)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_682

    .line 1148
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_23c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1150
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1152
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1153
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_682

    .line 1135
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1137
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1139
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1140
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_682

    .line 1124
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1126
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1127
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->stopRecording(Landroid/os/IBinder;I)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_682

    .line 1109
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1111
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1113
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1115
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1116
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_682

    .line 1099
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1100
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object v2

    .line 1102
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1104
    goto/16 :goto_682

    .line 1086
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    :pswitch_2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1088
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1090
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1091
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_682

    .line 1073
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1075
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1077
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1078
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetMode(Landroid/os/IBinder;II)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_682

    .line 1060
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_2e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1062
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 1064
    .local v2, "_arg1":Landroid/media/PlaybackParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1065
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto/16 :goto_682

    .line 1047
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/PlaybackParams;
    .end local v3    # "_arg2":I
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1049
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1051
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1052
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_682

    .line 1036
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_31b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1038
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1039
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftResume(Landroid/os/IBinder;I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    goto/16 :goto_682

    .line 1025
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_32e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1027
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1028
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPause(Landroid/os/IBinder;I)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    goto/16 :goto_682

    .line 1012
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1014
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1016
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1017
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_682

    .line 999
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1001
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1004
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_682

    .line 988
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 990
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 991
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->removeOverlayView(Landroid/os/IBinder;I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_682

    .line 975
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_386
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 977
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 979
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 980
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_682

    .line 960
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_3a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 962
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 964
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 966
    .local v3, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 967
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_682

    .line 945
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":I
    :pswitch_3c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 947
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 951
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 952
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    goto/16 :goto_682

    .line 932
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_3df
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 934
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 936
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_682

    .line 917
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_3f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 919
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 923
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 924
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->selectAudioPresentation(Landroid/os/IBinder;III)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_682

    .line 902
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_411
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 904
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 906
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 909
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_682

    .line 889
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_42c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 891
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 893
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 894
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_682

    .line 874
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 876
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 878
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 880
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 881
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager$Stub;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_682

    .line 861
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_466
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 863
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 865
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 866
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->setVolume(Landroid/os/IBinder;FI)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_682

    .line 844
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":I
    :pswitch_47d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 846
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 848
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 852
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 853
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_682

    .line 831
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_49d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 833
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 835
    .local v2, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 836
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_682

    .line 820
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/view/Surface;
    .end local v3    # "_arg2":I
    :pswitch_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setMainSession(Landroid/os/IBinder;I)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_682

    .line 810
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_4cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getClientUserId(Ljava/lang/String;)I

    move-result v2

    .line 813
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_682

    .line 798
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_4de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 800
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getClientPriority(ILjava/lang/String;)I

    move-result v3

    .line 803
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    goto/16 :goto_682

    .line 788
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_4f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getClientPid(Ljava/lang/String;)I

    move-result v2

    .line 791
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    goto/16 :goto_682

    .line 777
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_508
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 779
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 780
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_682

    .line 758
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_51b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    .line 760
    .local v1, "_arg0":Landroid/media/tv/ITvInputClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 764
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 766
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 768
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 769
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/ITvInputManager$Stub;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    goto/16 :goto_682

    .line 747
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->removeBlockedRating(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_682

    .line 736
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_55a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->addBlockedRating(Ljava/lang/String;I)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_682

    .line 726
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_56d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 727
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v2

    .line 729
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 731
    goto/16 :goto_682

    .line 714
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v3

    .line 719
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 721
    goto/16 :goto_682

    .line 703
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_597
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 705
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setParentalControlsEnabled(ZI)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_682

    .line 693
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_5aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 694
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->isParentalControlsEnabled(I)Z

    move-result v2

    .line 696
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 698
    goto/16 :goto_682

    .line 682
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_5bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object v1

    .line 684
    .local v1, "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 685
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_682

    .line 671
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_5d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object v1

    .line 673
    .restart local v1    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_682

    .line 661
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_5eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 662
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v2

    .line 664
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 666
    goto/16 :goto_682

    .line 647
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    :pswitch_5fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v4

    .line 654
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 656
    goto :goto_682

    .line 635
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 638
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 640
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 642
    goto :goto_682

    .line 623
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_62e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 626
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputState(Ljava/lang/String;I)I

    move-result v3

    .line 628
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    goto :goto_682

    .line 612
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_644
    sget-object v1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    .line 614
    .local v1, "_arg0":Landroid/media/tv/TvInputInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 615
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto :goto_682

    .line 600
    .end local v1    # "_arg0":Landroid/media/tv/TvInputInfo;
    .end local v2    # "_arg1":I
    :pswitch_65a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 605
    .local v3, "_result":Landroid/media/tv/TvInputInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 607
    goto :goto_682

    .line 590
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/media/tv/TvInputInfo;
    :pswitch_670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 591
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputList(I)Ljava/util/List;

    move-result-object v2

    .line 593
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 595
    nop

    .line 1434
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :goto_682
    return v9

    nop

    :pswitch_data_684
    .packed-switch 0x1
        :pswitch_670
        :pswitch_65a
        :pswitch_644
        :pswitch_62e
        :pswitch_618
        :pswitch_5fe
        :pswitch_5eb
        :pswitch_5d4
        :pswitch_5bd
        :pswitch_5aa
        :pswitch_597
        :pswitch_580
        :pswitch_56d
        :pswitch_55a
        :pswitch_547
        :pswitch_51b
        :pswitch_508
        :pswitch_4f5
        :pswitch_4de
        :pswitch_4cb
        :pswitch_4b8
        :pswitch_49d
        :pswitch_47d
        :pswitch_466
        :pswitch_443
        :pswitch_42c
        :pswitch_411
        :pswitch_3f6
        :pswitch_3df
        :pswitch_3c0
        :pswitch_3a1
        :pswitch_386
        :pswitch_373
        :pswitch_35c
        :pswitch_341
        :pswitch_32e
        :pswitch_31b
        :pswitch_304
        :pswitch_2e9
        :pswitch_2d2
        :pswitch_2bb
        :pswitch_2a8
        :pswitch_285
        :pswitch_272
        :pswitch_257
        :pswitch_23c
        :pswitch_229
        :pswitch_212
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1c5
        :pswitch_1aa
        :pswitch_18b
        :pswitch_170
        :pswitch_164
        :pswitch_134
        :pswitch_119
        :pswitch_102
        :pswitch_db
        :pswitch_c8
        :pswitch_bc
        :pswitch_a1
        :pswitch_8a
        :pswitch_73
        :pswitch_64
        :pswitch_55
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
