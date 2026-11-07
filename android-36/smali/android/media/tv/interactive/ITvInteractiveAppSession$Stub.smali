.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSession.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x4

.field static final blacklist TRANSACTION_createMediaView:I = 0x30

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0x5

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x2b

.field static final blacklist TRANSACTION_notifyAdBufferConsumed:I = 0x2e

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x2d

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x2c

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x24

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x25

.field static final blacklist TRANSACTION_notifyError:I = 0x13

.field static final blacklist TRANSACTION_notifyRecordingConnectionFailed:I = 0x18

.field static final blacklist TRANSACTION_notifyRecordingDisconnected:I = 0x19

.field static final blacklist TRANSACTION_notifyRecordingError:I = 0x1b

.field static final blacklist TRANSACTION_notifyRecordingScheduled:I = 0x1c

.field static final blacklist TRANSACTION_notifyRecordingStarted:I = 0x27

.field static final blacklist TRANSACTION_notifyRecordingStopped:I = 0x28

.field static final blacklist TRANSACTION_notifyRecordingTuned:I = 0x1a

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x26

.field static final blacklist TRANSACTION_notifyTimeShiftCurrentPositionChanged:I = 0x17

.field static final blacklist TRANSACTION_notifyTimeShiftPlaybackParams:I = 0x14

.field static final blacklist TRANSACTION_notifyTimeShiftStartPositionChanged:I = 0x16

.field static final blacklist TRANSACTION_notifyTimeShiftStatusChanged:I = 0x15

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x1f

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x20

.field static final blacklist TRANSACTION_notifyTuned:I = 0x1e

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x29

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x21

.field static final blacklist TRANSACTION_notifyVideoFreezeUpdated:I = 0x23

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x22

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x31

.field static final blacklist TRANSACTION_release:I = 0x1d

.field static final blacklist TRANSACTION_removeMediaView:I = 0x32

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x3

.field static final blacklist TRANSACTION_sendAvailableSpeeds:I = 0xe

.field static final blacklist TRANSACTION_sendCertificate:I = 0x10

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0x9

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xc

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0x7

.field static final blacklist TRANSACTION_sendSelectedTrackInfo:I = 0x2f

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xf

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0xa

.field static final blacklist TRANSACTION_sendTimeShiftMode:I = 0xd

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xb

.field static final blacklist TRANSACTION_sendTvRecordingInfo:I = 0x11

.field static final blacklist TRANSACTION_sendTvRecordingInfoList:I = 0x12

.field static final blacklist TRANSACTION_setSurface:I = 0x2a

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0x6

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x1

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 182
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 190
    if-nez p0, :cond_4

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 194
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_14

    .line 195
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object v1

    .line 197
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 206
    packed-switch p0, :pswitch_data_ca

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 406
    :pswitch_5
    const-string/jumbo v0, "removeMediaView"

    return-object v0

    .line 402
    :pswitch_9
    const-string/jumbo v0, "relayoutMediaView"

    return-object v0

    .line 398
    :pswitch_d
    const-string v0, "createMediaView"

    return-object v0

    .line 394
    :pswitch_10
    const-string/jumbo v0, "sendSelectedTrackInfo"

    return-object v0

    .line 390
    :pswitch_14
    const-string/jumbo v0, "notifyAdBufferConsumed"

    return-object v0

    .line 386
    :pswitch_18
    const-string/jumbo v0, "notifyAdResponse"

    return-object v0

    .line 382
    :pswitch_1c
    const-string/jumbo v0, "notifyBroadcastInfoResponse"

    return-object v0

    .line 378
    :pswitch_20
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 374
    :pswitch_23
    const-string/jumbo v0, "setSurface"

    return-object v0

    .line 370
    :pswitch_27
    const-string/jumbo v0, "notifyTvMessage"

    return-object v0

    .line 366
    :pswitch_2b
    const-string/jumbo v0, "notifyRecordingStopped"

    return-object v0

    .line 362
    :pswitch_2f
    const-string/jumbo v0, "notifyRecordingStarted"

    return-object v0

    .line 358
    :pswitch_33
    const-string/jumbo v0, "notifySignalStrength"

    return-object v0

    .line 354
    :pswitch_37
    const-string/jumbo v0, "notifyContentBlocked"

    return-object v0

    .line 350
    :pswitch_3b
    const-string/jumbo v0, "notifyContentAllowed"

    return-object v0

    .line 346
    :pswitch_3f
    const-string/jumbo v0, "notifyVideoFreezeUpdated"

    return-object v0

    .line 342
    :pswitch_43
    const-string/jumbo v0, "notifyVideoUnavailable"

    return-object v0

    .line 338
    :pswitch_47
    const-string/jumbo v0, "notifyVideoAvailable"

    return-object v0

    .line 334
    :pswitch_4b
    const-string/jumbo v0, "notifyTracksChanged"

    return-object v0

    .line 330
    :pswitch_4f
    const-string/jumbo v0, "notifyTrackSelected"

    return-object v0

    .line 326
    :pswitch_53
    const-string/jumbo v0, "notifyTuned"

    return-object v0

    .line 322
    :pswitch_57
    const-string/jumbo v0, "release"

    return-object v0

    .line 318
    :pswitch_5b
    const-string/jumbo v0, "notifyRecordingScheduled"

    return-object v0

    .line 314
    :pswitch_5f
    const-string/jumbo v0, "notifyRecordingError"

    return-object v0

    .line 310
    :pswitch_63
    const-string/jumbo v0, "notifyRecordingTuned"

    return-object v0

    .line 306
    :pswitch_67
    const-string/jumbo v0, "notifyRecordingDisconnected"

    return-object v0

    .line 302
    :pswitch_6b
    const-string/jumbo v0, "notifyRecordingConnectionFailed"

    return-object v0

    .line 298
    :pswitch_6f
    const-string/jumbo v0, "notifyTimeShiftCurrentPositionChanged"

    return-object v0

    .line 294
    :pswitch_73
    const-string/jumbo v0, "notifyTimeShiftStartPositionChanged"

    return-object v0

    .line 290
    :pswitch_77
    const-string/jumbo v0, "notifyTimeShiftStatusChanged"

    return-object v0

    .line 286
    :pswitch_7b
    const-string/jumbo v0, "notifyTimeShiftPlaybackParams"

    return-object v0

    .line 282
    :pswitch_7f
    const-string/jumbo v0, "notifyError"

    return-object v0

    .line 278
    :pswitch_83
    const-string/jumbo v0, "sendTvRecordingInfoList"

    return-object v0

    .line 274
    :pswitch_87
    const-string/jumbo v0, "sendTvRecordingInfo"

    return-object v0

    .line 270
    :pswitch_8b
    const-string/jumbo v0, "sendCertificate"

    return-object v0

    .line 266
    :pswitch_8f
    const-string/jumbo v0, "sendSigningResult"

    return-object v0

    .line 262
    :pswitch_93
    const-string/jumbo v0, "sendAvailableSpeeds"

    return-object v0

    .line 258
    :pswitch_97
    const-string/jumbo v0, "sendTimeShiftMode"

    return-object v0

    .line 254
    :pswitch_9b
    const-string/jumbo v0, "sendCurrentTvInputId"

    return-object v0

    .line 250
    :pswitch_9f
    const-string/jumbo v0, "sendTrackInfoList"

    return-object v0

    .line 246
    :pswitch_a3
    const-string/jumbo v0, "sendStreamVolume"

    return-object v0

    .line 242
    :pswitch_a7
    const-string/jumbo v0, "sendCurrentChannelLcn"

    return-object v0

    .line 238
    :pswitch_ab
    const-string/jumbo v0, "sendCurrentChannelUri"

    return-object v0

    .line 234
    :pswitch_af
    const-string/jumbo v0, "sendCurrentVideoBounds"

    return-object v0

    .line 230
    :pswitch_b3
    const-string/jumbo v0, "setTeletextAppEnabled"

    return-object v0

    .line 226
    :pswitch_b7
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    .line 222
    :pswitch_ba
    const-string v0, "createBiInteractiveApp"

    return-object v0

    .line 218
    :pswitch_bd
    const-string/jumbo v0, "resetInteractiveApp"

    return-object v0

    .line 214
    :pswitch_c1
    const-string/jumbo v0, "stopInteractiveApp"

    return-object v0

    .line 210
    :pswitch_c5
    const-string/jumbo v0, "startInteractiveApp"

    return-object v0

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
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

    .line 201
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1536
    const/16 v0, 0x31

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 417
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 421
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    .line 422
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 423
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 426
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    return v1

    .line 429
    :cond_16
    packed-switch p1, :pswitch_data_2d4

    .line 850
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 845
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->removeMediaView()V

    .line 846
    goto/16 :goto_2d3

    .line 838
    :pswitch_23
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 839
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 841
    goto/16 :goto_2d3

    .line 828
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 830
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 831
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 833
    goto/16 :goto_2d3

    .line 820
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_47
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 821
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSelectedTrackInfo(Ljava/util/List;)V

    .line 823
    goto/16 :goto_2d3

    .line 812
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_55
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 813
    .local v2, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 815
    goto/16 :goto_2d3

    .line 804
    .end local v2    # "_arg0":Landroid/media/tv/AdBuffer;
    :pswitch_65
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 805
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    .line 807
    goto/16 :goto_2d3

    .line 796
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    :pswitch_75
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 797
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 799
    goto/16 :goto_2d3

    .line 784
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 786
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 788
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->dispatchSurfaceChanged(III)V

    .line 791
    goto/16 :goto_2d3

    .line 776
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_99
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 777
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 779
    goto/16 :goto_2d3

    .line 766
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 768
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 769
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 771
    goto/16 :goto_2d3

    .line 758
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingStopped(Ljava/lang/String;)V

    .line 761
    goto/16 :goto_2d3

    .line 748
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 750
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    goto/16 :goto_2d3

    .line 740
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifySignalStrength(I)V

    .line 743
    goto/16 :goto_2d3

    .line 732
    .end local v2    # "_arg0":I
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentBlocked(Ljava/lang/String;)V

    .line 735
    goto/16 :goto_2d3

    .line 726
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f1
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentAllowed()V

    .line 727
    goto/16 :goto_2d3

    .line 719
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 720
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoFreezeUpdated(Z)V

    .line 722
    goto/16 :goto_2d3

    .line 711
    .end local v2    # "_arg0":Z
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoUnavailable(I)V

    .line 714
    goto/16 :goto_2d3

    .line 705
    .end local v2    # "_arg0":I
    :pswitch_10e
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoAvailable()V

    .line 706
    goto/16 :goto_2d3

    .line 698
    :pswitch_113
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 699
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTracksChanged(Ljava/util/List;)V

    .line 701
    goto/16 :goto_2d3

    .line 688
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 690
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTrackSelected(ILjava/lang/String;)V

    .line 693
    goto/16 :goto_2d3

    .line 680
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_131
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 681
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTuned(Landroid/net/Uri;)V

    .line 683
    goto/16 :goto_2d3

    .line 674
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_141
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->release()V

    .line 675
    goto/16 :goto_2d3

    .line 665
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 668
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    goto/16 :goto_2d3

    .line 655
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 657
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingError(Ljava/lang/String;I)V

    .line 660
    goto/16 :goto_2d3

    .line 645
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 647
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 648
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 650
    goto/16 :goto_2d3

    .line 635
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    goto/16 :goto_2d3

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 627
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 628
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    goto/16 :goto_2d3

    .line 615
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 618
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 620
    goto/16 :goto_2d3

    .line 605
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 608
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 610
    goto/16 :goto_2d3

    .line 595
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 597
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 600
    goto/16 :goto_2d3

    .line 587
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1ca
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 588
    .local v2, "_arg0":Landroid/media/PlaybackParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 590
    goto/16 :goto_2d3

    .line 577
    .end local v2    # "_arg0":Landroid/media/PlaybackParams;
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 580
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    goto/16 :goto_2d3

    .line 569
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1ee
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 570
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTvRecordingInfoList(Ljava/util/List;)V

    .line 572
    goto/16 :goto_2d3

    .line 561
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    :pswitch_1fc
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 562
    .local v2, "_arg0":Landroid/media/tv/TvRecordingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    .line 564
    goto/16 :goto_2d3

    .line 549
    .end local v2    # "_arg0":Landroid/media/tv/TvRecordingInfo;
    :pswitch_20c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 553
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 554
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 556
    goto/16 :goto_2d3

    .line 539
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 542
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    .line 544
    goto/16 :goto_2d3

    .line 531
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_234
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 532
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendAvailableSpeeds([F)V

    .line 534
    goto/16 :goto_2d3

    .line 523
    .end local v2    # "_arg0":[F
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTimeShiftMode(I)V

    .line 526
    goto/16 :goto_2d3

    .line 515
    .end local v2    # "_arg0":I
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 518
    goto/16 :goto_2d3

    .line 507
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_258
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 508
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    .line 510
    goto/16 :goto_2d3

    .line 499
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 500
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendStreamVolume(F)V

    .line 502
    goto :goto_2d3

    .line 491
    .end local v2    # "_arg0":F
    :pswitch_271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 492
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelLcn(I)V

    .line 494
    goto :goto_2d3

    .line 483
    .end local v2    # "_arg0":I
    :pswitch_27c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 484
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 486
    goto :goto_2d3

    .line 475
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_28b
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 476
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 478
    goto :goto_2d3

    .line 467
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_29a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 468
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setTeletextAppEnabled(Z)V

    .line 470
    goto :goto_2d3

    .line 459
    .end local v2    # "_arg0":Z
    :pswitch_2a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 462
    goto :goto_2d3

    .line 449
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b0
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 451
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 452
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 454
    goto :goto_2d3

    .line 443
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_2c7
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->resetInteractiveApp()V

    .line 444
    goto :goto_2d3

    .line 438
    :pswitch_2cb
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->stopInteractiveApp()V

    .line 439
    goto :goto_2d3

    .line 433
    :pswitch_2cf
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->startInteractiveApp()V

    .line 434
    nop

    .line 853
    :goto_2d3
    return v1

    :pswitch_data_2d4
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_2cb
        :pswitch_2c7
        :pswitch_2b0
        :pswitch_2a5
        :pswitch_29a
        :pswitch_28b
        :pswitch_27c
        :pswitch_271
        :pswitch_266
        :pswitch_258
        :pswitch_24c
        :pswitch_240
        :pswitch_234
        :pswitch_224
        :pswitch_20c
        :pswitch_1fc
        :pswitch_1ee
        :pswitch_1da
        :pswitch_1ca
        :pswitch_1ba
        :pswitch_1aa
        :pswitch_19a
        :pswitch_18a
        :pswitch_17a
        :pswitch_166
        :pswitch_156
        :pswitch_146
        :pswitch_141
        :pswitch_131
        :pswitch_121
        :pswitch_113
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_c9
        :pswitch_bd
        :pswitch_a9
        :pswitch_99
        :pswitch_85
        :pswitch_75
        :pswitch_65
        :pswitch_55
        :pswitch_47
        :pswitch_33
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
