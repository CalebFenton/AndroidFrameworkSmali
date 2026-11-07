.class public abstract Landroid/media/tv/ITvInputSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSessionCallback"

.field static final blacklist TRANSACTION_onAdBufferConsumed:I = 0x1b

.field static final blacklist TRANSACTION_onAdResponse:I = 0x1a

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0x11

.field static final blacklist TRANSACTION_onAudioPresentationSelected:I = 0x5

.field static final blacklist TRANSACTION_onAudioPresentationsChanged:I = 0x4

.field static final blacklist TRANSACTION_onAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x19

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x3

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0xb

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xc

.field static final blacklist TRANSACTION_onCueingMessageAvailability:I = 0x13

.field static final greylist-max-o TRANSACTION_onError:I = 0x18

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xd

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x17

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x12

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0x10

.field static final blacklist TRANSACTION_onTimeShiftMode:I = 0x14

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x7

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x16

.field static final blacklist TRANSACTION_onTvInputSessionData:I = 0x1d

.field static final blacklist TRANSACTION_onTvMessage:I = 0x1c

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x8

.field static final blacklist TRANSACTION_onVideoFreezeUpdated:I = 0xa

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 131
    if-nez p0, :cond_4

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_4
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputSessionCallback;

    if-eqz v1, :cond_14

    .line 136
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSessionCallback;

    return-object v1

    .line 138
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 147
    packed-switch p0, :pswitch_data_5c

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 263
    :pswitch_5
    const-string v0, "onTvInputSessionData"

    return-object v0

    .line 259
    :pswitch_8
    const-string v0, "onTvMessage"

    return-object v0

    .line 255
    :pswitch_b
    const-string v0, "onAdBufferConsumed"

    return-object v0

    .line 251
    :pswitch_e
    const-string v0, "onAdResponse"

    return-object v0

    .line 247
    :pswitch_11
    const-string v0, "onBroadcastInfoResponse"

    return-object v0

    .line 243
    :pswitch_14
    const-string v0, "onError"

    return-object v0

    .line 239
    :pswitch_17
    const-string v0, "onRecordingStopped"

    return-object v0

    .line 235
    :pswitch_1a
    const-string v0, "onTuned"

    return-object v0

    .line 231
    :pswitch_1d
    const-string v0, "onAvailableSpeeds"

    return-object v0

    .line 227
    :pswitch_20
    const-string v0, "onTimeShiftMode"

    return-object v0

    .line 223
    :pswitch_23
    const-string v0, "onCueingMessageAvailability"

    return-object v0

    .line 219
    :pswitch_26
    const-string v0, "onSignalStrength"

    return-object v0

    .line 215
    :pswitch_29
    const-string v0, "onAitInfoUpdated"

    return-object v0

    .line 211
    :pswitch_2c
    const-string v0, "onTimeShiftCurrentPositionChanged"

    return-object v0

    .line 207
    :pswitch_2f
    const-string v0, "onTimeShiftStartPositionChanged"

    return-object v0

    .line 203
    :pswitch_32
    const-string v0, "onTimeShiftStatusChanged"

    return-object v0

    .line 199
    :pswitch_35
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 195
    :pswitch_38
    const-string v0, "onContentBlocked"

    return-object v0

    .line 191
    :pswitch_3b
    const-string v0, "onContentAllowed"

    return-object v0

    .line 187
    :pswitch_3e
    const-string v0, "onVideoFreezeUpdated"

    return-object v0

    .line 183
    :pswitch_41
    const-string v0, "onVideoUnavailable"

    return-object v0

    .line 179
    :pswitch_44
    const-string v0, "onVideoAvailable"

    return-object v0

    .line 175
    :pswitch_47
    const-string v0, "onTrackSelected"

    return-object v0

    .line 171
    :pswitch_4a
    const-string v0, "onTracksChanged"

    return-object v0

    .line 167
    :pswitch_4d
    const-string v0, "onAudioPresentationSelected"

    return-object v0

    .line 163
    :pswitch_50
    const-string v0, "onAudioPresentationsChanged"

    return-object v0

    .line 159
    :pswitch_53
    const-string v0, "onChannelRetuned"

    return-object v0

    .line 155
    :pswitch_56
    const-string v0, "onSessionEvent"

    return-object v0

    .line 151
    :pswitch_59
    const-string v0, "onSessionCreated"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
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

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 948
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 274
    invoke-static {p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 278
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    .line 279
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 280
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 283
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v1

    .line 286
    :cond_16
    packed-switch p1, :pswitch_data_1ba

    .line 534
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 525
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 528
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    goto/16 :goto_1b8

    .line 515
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 518
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvMessage(ILandroid/os/Bundle;)V

    .line 520
    goto/16 :goto_1b8

    .line 507
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_46
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 508
    .local v2, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 510
    goto/16 :goto_1b8

    .line 499
    .end local v2    # "_arg0":Landroid/media/tv/AdBuffer;
    :pswitch_56
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 500
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 502
    goto/16 :goto_1b8

    .line 491
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    :pswitch_66
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 492
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 494
    goto/16 :goto_1b8

    .line 483
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onError(I)V

    .line 486
    goto/16 :goto_1b8

    .line 475
    .end local v2    # "_arg0":I
    :pswitch_82
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 476
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onRecordingStopped(Landroid/net/Uri;)V

    .line 478
    goto/16 :goto_1b8

    .line 467
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_92
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 468
    .restart local v2    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTuned(Landroid/net/Uri;)V

    .line 470
    goto/16 :goto_1b8

    .line 459
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 460
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAvailableSpeeds([F)V

    .line 462
    goto/16 :goto_1b8

    .line 451
    .end local v2    # "_arg0":[F
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftMode(I)V

    .line 454
    goto/16 :goto_1b8

    .line 443
    .end local v2    # "_arg0":I
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 444
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onCueingMessageAvailability(Z)V

    .line 446
    goto/16 :goto_1b8

    .line 435
    .end local v2    # "_arg0":Z
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSignalStrength(I)V

    .line 438
    goto/16 :goto_1b8

    .line 427
    .end local v2    # "_arg0":I
    :pswitch_d2
    sget-object v2, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AitInfo;

    .line 428
    .local v2, "_arg0":Landroid/media/tv/AitInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;)V

    .line 430
    goto/16 :goto_1b8

    .line 419
    .end local v2    # "_arg0":Landroid/media/tv/AitInfo;
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 420
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftCurrentPositionChanged(J)V

    .line 422
    goto/16 :goto_1b8

    .line 411
    .end local v2    # "_arg0":J
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 412
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStartPositionChanged(J)V

    .line 414
    goto/16 :goto_1b8

    .line 403
    .end local v2    # "_arg0":J
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStatusChanged(I)V

    .line 406
    goto/16 :goto_1b8

    .line 389
    .end local v2    # "_arg0":I
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 395
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 396
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 398
    goto/16 :goto_1b8

    .line 381
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentBlocked(Ljava/lang/String;)V

    .line 384
    goto/16 :goto_1b8

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12a
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentAllowed()V

    .line 376
    goto/16 :goto_1b8

    .line 368
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 369
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoFreezeUpdated(Z)V

    .line 371
    goto/16 :goto_1b8

    .line 360
    .end local v2    # "_arg0":Z
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoUnavailable(I)V

    .line 363
    goto/16 :goto_1b8

    .line 354
    .end local v2    # "_arg0":I
    :pswitch_147
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoAvailable()V

    .line 355
    goto :goto_1b8

    .line 345
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTrackSelected(ILjava/lang/String;)V

    .line 350
    goto :goto_1b8

    .line 337
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_15a
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 338
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTracksChanged(Ljava/util/List;)V

    .line 340
    goto :goto_1b8

    .line 327
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationSelected(II)V

    .line 332
    goto :goto_1b8

    .line 319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_176
    sget-object v2, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 320
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationsChanged(Ljava/util/List;)V

    .line 322
    goto :goto_1b8

    .line 311
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    :pswitch_183
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 312
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onChannelRetuned(Landroid/net/Uri;)V

    .line 314
    goto :goto_1b8

    .line 301
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 304
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    goto :goto_1b8

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Landroid/media/tv/ITvInputSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V

    .line 296
    nop

    .line 537
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputSession;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :goto_1b8
    return v1

    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_1a5
        :pswitch_192
        :pswitch_183
        :pswitch_176
        :pswitch_167
        :pswitch_15a
        :pswitch_14b
        :pswitch_147
        :pswitch_13b
        :pswitch_12f
        :pswitch_12a
        :pswitch_11e
        :pswitch_106
        :pswitch_fa
        :pswitch_ee
        :pswitch_e2
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_ae
        :pswitch_a2
        :pswitch_92
        :pswitch_82
        :pswitch_76
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
