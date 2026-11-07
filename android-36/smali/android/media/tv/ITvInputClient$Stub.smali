.class public abstract Landroid/media/tv/ITvInputClient$Stub;
.super Landroid/os/Binder;
.source "ITvInputClient.java"

# interfaces
.implements Landroid/media/tv/ITvInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputClient"

.field static final blacklist TRANSACTION_onAdBufferConsumed:I = 0x1d

.field static final blacklist TRANSACTION_onAdResponse:I = 0x1c

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0x12

.field static final blacklist TRANSACTION_onAudioPresentationSelected:I = 0x6

.field static final blacklist TRANSACTION_onAudioPresentationsChanged:I = 0x5

.field static final blacklist TRANSACTION_onAvailableSpeeds:I = 0x16

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x1b

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x4

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0xc

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xd

.field static final blacklist TRANSACTION_onCueingMessageAvailability:I = 0x14

.field static final greylist-max-o TRANSACTION_onError:I = 0x1a

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xe

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x19

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x13

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0x11

.field static final blacklist TRANSACTION_onTimeShiftMode:I = 0x15

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0x10

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x8

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x18

.field static final blacklist TRANSACTION_onTvInputSessionData:I = 0x1e

.field static final blacklist TRANSACTION_onTvMessage:I = 0x17

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x9

.field static final blacklist TRANSACTION_onVideoFreezeUpdated:I = 0xb

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_4
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputClient;

    if-eqz v1, :cond_14

    .line 138
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputClient;

    return-object v1

    .line 140
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 149
    packed-switch p0, :pswitch_data_60

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 269
    :pswitch_5
    const-string v0, "onTvInputSessionData"

    return-object v0

    .line 265
    :pswitch_8
    const-string v0, "onAdBufferConsumed"

    return-object v0

    .line 261
    :pswitch_b
    const-string v0, "onAdResponse"

    return-object v0

    .line 257
    :pswitch_e
    const-string v0, "onBroadcastInfoResponse"

    return-object v0

    .line 253
    :pswitch_11
    const-string v0, "onError"

    return-object v0

    .line 249
    :pswitch_14
    const-string v0, "onRecordingStopped"

    return-object v0

    .line 245
    :pswitch_17
    const-string v0, "onTuned"

    return-object v0

    .line 241
    :pswitch_1a
    const-string v0, "onTvMessage"

    return-object v0

    .line 237
    :pswitch_1d
    const-string v0, "onAvailableSpeeds"

    return-object v0

    .line 233
    :pswitch_20
    const-string v0, "onTimeShiftMode"

    return-object v0

    .line 229
    :pswitch_23
    const-string v0, "onCueingMessageAvailability"

    return-object v0

    .line 225
    :pswitch_26
    const-string v0, "onSignalStrength"

    return-object v0

    .line 221
    :pswitch_29
    const-string v0, "onAitInfoUpdated"

    return-object v0

    .line 217
    :pswitch_2c
    const-string v0, "onTimeShiftCurrentPositionChanged"

    return-object v0

    .line 213
    :pswitch_2f
    const-string v0, "onTimeShiftStartPositionChanged"

    return-object v0

    .line 209
    :pswitch_32
    const-string v0, "onTimeShiftStatusChanged"

    return-object v0

    .line 205
    :pswitch_35
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 201
    :pswitch_38
    const-string v0, "onContentBlocked"

    return-object v0

    .line 197
    :pswitch_3b
    const-string v0, "onContentAllowed"

    return-object v0

    .line 193
    :pswitch_3e
    const-string v0, "onVideoFreezeUpdated"

    return-object v0

    .line 189
    :pswitch_41
    const-string v0, "onVideoUnavailable"

    return-object v0

    .line 185
    :pswitch_44
    const-string v0, "onVideoAvailable"

    return-object v0

    .line 181
    :pswitch_47
    const-string v0, "onTrackSelected"

    return-object v0

    .line 177
    :pswitch_4a
    const-string v0, "onTracksChanged"

    return-object v0

    .line 173
    :pswitch_4d
    const-string v0, "onAudioPresentationSelected"

    return-object v0

    .line 169
    :pswitch_50
    const-string v0, "onAudioPresentationsChanged"

    return-object v0

    .line 165
    :pswitch_53
    const-string v0, "onChannelRetuned"

    return-object v0

    .line 161
    :pswitch_56
    const-string v0, "onSessionEvent"

    return-object v0

    .line 157
    :pswitch_59
    const-string v0, "onSessionReleased"

    return-object v0

    .line 153
    :pswitch_5c
    const-string v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
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

    .line 144
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1066
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 280
    invoke-static {p1}, Landroid/media/tv/ITvInputClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    const-string v0, "android.media.tv.ITvInputClient"

    .line 285
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 286
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 289
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    return v1

    .line 292
    :cond_16
    packed-switch p1, :pswitch_data_264

    .line 610
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 599
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 603
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 604
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 606
    move-object v4, p0

    goto/16 :goto_263

    .line 589
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":I
    :pswitch_38
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 591
    .local v2, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 592
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V

    .line 594
    move-object v4, p0

    goto/16 :goto_263

    .line 579
    .end local v2    # "_arg0":Landroid/media/tv/AdBuffer;
    .end local v3    # "_arg1":I
    :pswitch_4d
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 581
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onAdResponse(Landroid/media/tv/AdResponse;I)V

    .line 584
    move-object v4, p0

    goto/16 :goto_263

    .line 569
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    .end local v3    # "_arg1":I
    :pswitch_62
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 571
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 572
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V

    .line 574
    move-object v4, p0

    goto/16 :goto_263

    .line 559
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    .end local v3    # "_arg1":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onError(II)V

    .line 564
    move-object v4, p0

    goto/16 :goto_263

    .line 549
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_88
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 551
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 552
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onRecordingStopped(Landroid/net/Uri;I)V

    .line 554
    move-object v4, p0

    goto/16 :goto_263

    .line 539
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    :pswitch_9d
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 541
    .restart local v2    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onTuned(Landroid/net/Uri;I)V

    .line 544
    move-object v4, p0

    goto/16 :goto_263

    .line 527
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 529
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 531
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 532
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTvMessage(ILandroid/os/Bundle;I)V

    .line 534
    move-object v4, p0

    goto/16 :goto_263

    .line 517
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 519
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 520
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onAvailableSpeeds([FI)V

    .line 522
    move-object v4, p0

    goto/16 :goto_263

    .line 507
    .end local v2    # "_arg0":[F
    .end local v3    # "_arg1":I
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftMode(II)V

    .line 512
    move-object v4, p0

    goto/16 :goto_263

    .line 497
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 499
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onCueingMessageAvailability(ZI)V

    .line 502
    move-object v4, p0

    goto/16 :goto_263

    .line 487
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onSignalStrength(II)V

    .line 492
    move-object v4, p0

    goto/16 :goto_263

    .line 477
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_10f
    sget-object v2, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AitInfo;

    .line 479
    .local v2, "_arg0":Landroid/media/tv/AitInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 480
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V

    .line 482
    move-object v4, p0

    goto/16 :goto_263

    .line 467
    .end local v2    # "_arg0":Landroid/media/tv/AitInfo;
    .end local v3    # "_arg1":I
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 469
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 470
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftCurrentPositionChanged(JI)V

    .line 472
    move-object v4, p0

    goto/16 :goto_263

    .line 457
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 459
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 460
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStartPositionChanged(JI)V

    .line 462
    move-object v4, p0

    goto/16 :goto_263

    .line 447
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 449
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 450
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStatusChanged(II)V

    .line 452
    move-object v4, p0

    goto/16 :goto_263

    .line 431
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 433
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 435
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 437
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 439
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 440
    .local v9, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/media/tv/ITvInputClient$Stub;->onLayoutSurface(IIIII)V

    .line 442
    goto/16 :goto_263

    .line 421
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :pswitch_174
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onContentBlocked(Ljava/lang/String;I)V

    .line 426
    goto/16 :goto_263

    .line 413
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_185
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputClient$Stub;->onContentAllowed(I)V

    .line 416
    goto/16 :goto_263

    .line 403
    .end local v2    # "_arg0":I
    :pswitch_192
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 405
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onVideoFreezeUpdated(ZI)V

    .line 408
    goto/16 :goto_263

    .line 393
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_1a3
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onVideoUnavailable(II)V

    .line 398
    goto/16 :goto_263

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1b4
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputClient$Stub;->onVideoAvailable(I)V

    .line 388
    goto/16 :goto_263

    .line 373
    .end local v2    # "_arg0":I
    :pswitch_1c1
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 375
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 378
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3, v5}, Landroid/media/tv/ITvInputClient$Stub;->onTrackSelected(ILjava/lang/String;I)V

    .line 380
    goto/16 :goto_263

    .line 363
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_1d6
    move-object v4, p0

    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 365
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onTracksChanged(Ljava/util/List;I)V

    .line 368
    goto/16 :goto_263

    .line 351
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v3    # "_arg1":I
    :pswitch_1e9
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 356
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3, v5}, Landroid/media/tv/ITvInputClient$Stub;->onAudioPresentationSelected(III)V

    .line 358
    goto :goto_263

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_1fd
    move-object v4, p0

    sget-object v2, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 343
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 344
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onAudioPresentationsChanged(Ljava/util/List;I)V

    .line 346
    goto :goto_263

    .line 331
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    .end local v3    # "_arg1":I
    :pswitch_20f
    move-object v4, p0

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 333
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onChannelRetuned(Landroid/net/Uri;I)V

    .line 336
    goto :goto_263

    .line 319
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    :pswitch_223
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 323
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 324
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3, v5}, Landroid/media/tv/ITvInputClient$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 326
    goto :goto_263

    .line 311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_arg2":I
    :pswitch_23b
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputClient$Stub;->onSessionReleased(I)V

    .line 314
    goto :goto_263

    .line 297
    .end local v2    # "_arg0":I
    :pswitch_247
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 301
    .local v3, "_arg1":Landroid/os/IBinder;
    sget-object v5, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputChannel;

    .line 303
    .local v5, "_arg2":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 304
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/media/tv/ITvInputClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 306
    nop

    .line 613
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Landroid/view/InputChannel;
    .end local v6    # "_arg3":I
    :goto_263
    return v1

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_247
        :pswitch_23b
        :pswitch_223
        :pswitch_20f
        :pswitch_1fd
        :pswitch_1e9
        :pswitch_1d6
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_1a3
        :pswitch_192
        :pswitch_185
        :pswitch_174
        :pswitch_157
        :pswitch_146
        :pswitch_135
        :pswitch_124
        :pswitch_10f
        :pswitch_fe
        :pswitch_ed
        :pswitch_dc
        :pswitch_cb
        :pswitch_b2
        :pswitch_9d
        :pswitch_88
        :pswitch_77
        :pswitch_62
        :pswitch_4d
        :pswitch_38
        :pswitch_1f
    .end packed-switch
.end method
