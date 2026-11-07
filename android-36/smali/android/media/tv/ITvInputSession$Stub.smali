.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyAdBufferReady:I = 0x20

.field static final blacklist TRANSACTION_notifyTvAdSessionData:I = 0x24

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x21

.field static final blacklist TRANSACTION_pauseRecording:I = 0x1b

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0xd

.field static final greylist-max-o TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0xe

.field static final blacklist TRANSACTION_requestAd:I = 0x1f

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x1d

.field static final blacklist TRANSACTION_resumePlayback:I = 0x17

.field static final blacklist TRANSACTION_resumeRecording:I = 0x1c

.field static final blacklist TRANSACTION_selectAudioPresentation:I = 0x8

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x9

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_setMain:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x3

.field static final blacklist TRANSACTION_setTvMessageEnabled:I = 0x22

.field static final blacklist TRANSACTION_setVideoFrozen:I = 0x23

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x5

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x19

.field static final blacklist TRANSACTION_stopPlayback:I = 0x18

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x1a

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x11

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x10

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x12

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x13

.field static final blacklist TRANSACTION_timeShiftSetMode:I = 0x15

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x14

.field static final greylist-max-o TRANSACTION_tune:I = 0x6

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_4
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_14

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSession;

    return-object v1

    .line 161
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_72

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 314
    :pswitch_5
    const-string v0, "notifyTvAdSessionData"

    return-object v0

    .line 310
    :pswitch_8
    const-string v0, "setVideoFrozen"

    return-object v0

    .line 306
    :pswitch_b
    const-string v0, "setTvMessageEnabled"

    return-object v0

    .line 302
    :pswitch_e
    const-string v0, "notifyTvMessage"

    return-object v0

    .line 298
    :pswitch_11
    const-string v0, "notifyAdBufferReady"

    return-object v0

    .line 294
    :pswitch_14
    const-string v0, "requestAd"

    return-object v0

    .line 290
    :pswitch_17
    const-string v0, "removeBroadcastInfo"

    return-object v0

    .line 286
    :pswitch_1a
    const-string v0, "requestBroadcastInfo"

    return-object v0

    .line 282
    :pswitch_1d
    const-string v0, "resumeRecording"

    return-object v0

    .line 278
    :pswitch_20
    const-string v0, "pauseRecording"

    return-object v0

    .line 274
    :pswitch_23
    const-string v0, "stopRecording"

    return-object v0

    .line 270
    :pswitch_26
    const-string v0, "startRecording"

    return-object v0

    .line 266
    :pswitch_29
    const-string v0, "stopPlayback"

    return-object v0

    .line 262
    :pswitch_2c
    const-string v0, "resumePlayback"

    return-object v0

    .line 258
    :pswitch_2f
    const-string v0, "timeShiftEnablePositionTracking"

    return-object v0

    .line 254
    :pswitch_32
    const-string v0, "timeShiftSetMode"

    return-object v0

    .line 250
    :pswitch_35
    const-string v0, "timeShiftSetPlaybackParams"

    return-object v0

    .line 246
    :pswitch_38
    const-string v0, "timeShiftSeekTo"

    return-object v0

    .line 242
    :pswitch_3b
    const-string v0, "timeShiftResume"

    return-object v0

    .line 238
    :pswitch_3e
    const-string v0, "timeShiftPause"

    return-object v0

    .line 234
    :pswitch_41
    const-string v0, "timeShiftPlay"

    return-object v0

    .line 230
    :pswitch_44
    const-string v0, "unblockContent"

    return-object v0

    .line 226
    :pswitch_47
    const-string v0, "removeOverlayView"

    return-object v0

    .line 222
    :pswitch_4a
    const-string v0, "relayoutOverlayView"

    return-object v0

    .line 218
    :pswitch_4d
    const-string v0, "createOverlayView"

    return-object v0

    .line 214
    :pswitch_50
    const-string v0, "appPrivateCommand"

    return-object v0

    .line 210
    :pswitch_53
    const-string v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    .line 206
    :pswitch_56
    const-string v0, "selectTrack"

    return-object v0

    .line 202
    :pswitch_59
    const-string v0, "selectAudioPresentation"

    return-object v0

    .line 198
    :pswitch_5c
    const-string v0, "setCaptionEnabled"

    return-object v0

    .line 194
    :pswitch_5f
    const-string v0, "tune"

    return-object v0

    .line 190
    :pswitch_62
    const-string v0, "setVolume"

    return-object v0

    .line 186
    :pswitch_65
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 182
    :pswitch_68
    const-string v0, "setSurface"

    return-object v0

    .line 178
    :pswitch_6b
    const-string v0, "setMain"

    return-object v0

    .line 174
    :pswitch_6e
    const-string v0, "release"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x1
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1139
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 325
    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    const-string v0, "android.media.tv.ITvInputSession"

    .line 330
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 331
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 334
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    return v1

    .line 337
    :cond_16
    packed-switch p1, :pswitch_data_20c

    .line 633
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 624
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 627
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 629
    goto/16 :goto_20b

    .line 616
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 617
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVideoFrozen(Z)V

    .line 619
    goto/16 :goto_20b

    .line 606
    .end local v2    # "_arg0":Z
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 608
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 609
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->setTvMessageEnabled(IZ)V

    .line 611
    goto/16 :goto_20b

    .line 596
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 599
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 601
    goto/16 :goto_20b

    .line 588
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_62
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 589
    .local v2, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 591
    goto/16 :goto_20b

    .line 580
    .end local v2    # "_arg0":Landroid/media/tv/AdBuffer;
    :pswitch_72
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    .line 581
    .local v2, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestAd(Landroid/media/tv/AdRequest;)V

    .line 583
    goto/16 :goto_20b

    .line 572
    .end local v2    # "_arg0":Landroid/media/tv/AdRequest;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 573
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->removeBroadcastInfo(I)V

    .line 575
    goto/16 :goto_20b

    .line 564
    .end local v2    # "_arg0":I
    :pswitch_8e
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    .line 565
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 567
    goto/16 :goto_20b

    .line 556
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    :pswitch_9e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 557
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->resumeRecording(Landroid/os/Bundle;)V

    .line 559
    goto/16 :goto_20b

    .line 548
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_ae
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 549
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->pauseRecording(Landroid/os/Bundle;)V

    .line 551
    goto/16 :goto_20b

    .line 542
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_be
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    .line 543
    goto/16 :goto_20b

    .line 533
    :pswitch_c3
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 535
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 536
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 538
    goto/16 :goto_20b

    .line 525
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 526
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->stopPlayback(I)V

    .line 528
    goto/16 :goto_20b

    .line 519
    .end local v2    # "_arg0":I
    :pswitch_e7
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->resumePlayback()V

    .line 520
    goto/16 :goto_20b

    .line 512
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 513
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    .line 515
    goto/16 :goto_20b

    .line 504
    .end local v2    # "_arg0":Z
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetMode(I)V

    .line 507
    goto/16 :goto_20b

    .line 496
    .end local v2    # "_arg0":I
    :pswitch_104
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 497
    .local v2, "_arg0":Landroid/media/PlaybackParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 499
    goto/16 :goto_20b

    .line 488
    .end local v2    # "_arg0":Landroid/media/PlaybackParams;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 489
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    .line 491
    goto/16 :goto_20b

    .line 482
    .end local v2    # "_arg0":J
    :pswitch_120
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    .line 483
    goto/16 :goto_20b

    .line 477
    :pswitch_125
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    .line 478
    goto/16 :goto_20b

    .line 470
    :pswitch_12a
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 471
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    .line 473
    goto/16 :goto_20b

    .line 462
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    .line 465
    goto/16 :goto_20b

    .line 456
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_146
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    .line 457
    goto/16 :goto_20b

    .line 449
    :pswitch_14b
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 450
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 452
    goto/16 :goto_20b

    .line 439
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 441
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 442
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 444
    goto/16 :goto_20b

    .line 429
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 432
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    goto/16 :goto_20b

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 422
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setInteractiveAppNotificationEnabled(Z)V

    .line 424
    goto/16 :goto_20b

    .line 411
    .end local v2    # "_arg0":Z
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    .line 416
    goto :goto_20b

    .line 401
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 404
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectAudioPresentation(II)V

    .line 406
    goto :goto_20b

    .line 393
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 394
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    .line 396
    goto :goto_20b

    .line 383
    .end local v2    # "_arg0":Z
    :pswitch_1b8
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 385
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 386
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 388
    goto :goto_20b

    .line 375
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 376
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    .line 378
    goto :goto_20b

    .line 363
    .end local v2    # "_arg0":F
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 368
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    .line 370
    goto :goto_20b

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1ed
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 356
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 358
    goto :goto_20b

    .line 347
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 348
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    .line 350
    goto :goto_20b

    .line 341
    .end local v2    # "_arg0":Z
    :pswitch_207
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    .line 342
    nop

    .line 636
    :goto_20b
    return v1

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_207
        :pswitch_1fc
        :pswitch_1ed
        :pswitch_1da
        :pswitch_1cf
        :pswitch_1b8
        :pswitch_1ad
        :pswitch_19e
        :pswitch_18f
        :pswitch_183
        :pswitch_16f
        :pswitch_15b
        :pswitch_14b
        :pswitch_146
        :pswitch_13a
        :pswitch_12a
        :pswitch_125
        :pswitch_120
        :pswitch_114
        :pswitch_104
        :pswitch_f8
        :pswitch_ec
        :pswitch_e7
        :pswitch_db
        :pswitch_c3
        :pswitch_be
        :pswitch_ae
        :pswitch_9e
        :pswitch_8e
        :pswitch_82
        :pswitch_72
        :pswitch_62
        :pswitch_4e
        :pswitch_3e
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
