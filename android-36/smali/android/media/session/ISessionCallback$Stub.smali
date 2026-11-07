.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final greylist-max-o TRANSACTION_onAdjustVolume:I = 0x17

.field static final greylist-max-o TRANSACTION_onCommand:I = 0x1

.field static final greylist-max-o TRANSACTION_onCustomAction:I = 0x16

.field static final greylist-max-o TRANSACTION_onFastForward:I = 0x11

.field static final greylist-max-o TRANSACTION_onMediaButton:I = 0x2

.field static final greylist-max-o TRANSACTION_onMediaButtonFromController:I = 0x3

.field static final greylist-max-o TRANSACTION_onNext:I = 0xf

.field static final greylist-max-o TRANSACTION_onPause:I = 0xd

.field static final greylist-max-o TRANSACTION_onPlay:I = 0x8

.field static final greylist-max-o TRANSACTION_onPlayFromMediaId:I = 0x9

.field static final greylist-max-o TRANSACTION_onPlayFromSearch:I = 0xa

.field static final greylist-max-o TRANSACTION_onPlayFromUri:I = 0xb

.field static final greylist-max-o TRANSACTION_onPrepare:I = 0x4

.field static final greylist-max-o TRANSACTION_onPrepareFromMediaId:I = 0x5

.field static final greylist-max-o TRANSACTION_onPrepareFromSearch:I = 0x6

.field static final greylist-max-o TRANSACTION_onPrepareFromUri:I = 0x7

.field static final greylist-max-o TRANSACTION_onPrevious:I = 0x10

.field static final greylist-max-o TRANSACTION_onRate:I = 0x14

.field static final greylist-max-o TRANSACTION_onRewind:I = 0x12

.field static final greylist-max-o TRANSACTION_onSeekTo:I = 0x13

.field static final blacklist TRANSACTION_onSetPlaybackSpeed:I = 0x15

.field static final greylist-max-o TRANSACTION_onSetVolumeTo:I = 0x18

.field static final greylist-max-o TRANSACTION_onSkipToTrack:I = 0xc

.field static final greylist-max-o TRANSACTION_onStop:I = 0xe


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "android.media.session.ISessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionCallback;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Landroid/media/session/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_4e

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 222
    :pswitch_5
    const-string v0, "onSetVolumeTo"

    return-object v0

    .line 218
    :pswitch_8
    const-string v0, "onAdjustVolume"

    return-object v0

    .line 214
    :pswitch_b
    const-string v0, "onCustomAction"

    return-object v0

    .line 210
    :pswitch_e
    const-string v0, "onSetPlaybackSpeed"

    return-object v0

    .line 206
    :pswitch_11
    const-string v0, "onRate"

    return-object v0

    .line 202
    :pswitch_14
    const-string v0, "onSeekTo"

    return-object v0

    .line 198
    :pswitch_17
    const-string v0, "onRewind"

    return-object v0

    .line 194
    :pswitch_1a
    const-string v0, "onFastForward"

    return-object v0

    .line 190
    :pswitch_1d
    const-string v0, "onPrevious"

    return-object v0

    .line 186
    :pswitch_20
    const-string v0, "onNext"

    return-object v0

    .line 182
    :pswitch_23
    const-string v0, "onStop"

    return-object v0

    .line 178
    :pswitch_26
    const-string v0, "onPause"

    return-object v0

    .line 174
    :pswitch_29
    const-string v0, "onSkipToTrack"

    return-object v0

    .line 170
    :pswitch_2c
    const-string v0, "onPlayFromUri"

    return-object v0

    .line 166
    :pswitch_2f
    const-string v0, "onPlayFromSearch"

    return-object v0

    .line 162
    :pswitch_32
    const-string v0, "onPlayFromMediaId"

    return-object v0

    .line 158
    :pswitch_35
    const-string v0, "onPlay"

    return-object v0

    .line 154
    :pswitch_38
    const-string v0, "onPrepareFromUri"

    return-object v0

    .line 150
    :pswitch_3b
    const-string v0, "onPrepareFromSearch"

    return-object v0

    .line 146
    :pswitch_3e
    const-string v0, "onPrepareFromMediaId"

    return-object v0

    .line 142
    :pswitch_41
    const-string v0, "onPrepare"

    return-object v0

    .line 138
    :pswitch_44
    const-string v0, "onMediaButtonFromController"

    return-object v0

    .line 134
    :pswitch_47
    const-string v0, "onMediaButton"

    return-object v0

    .line 130
    :pswitch_4a
    const-string v0, "onCommand"

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
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

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1006
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 233
    invoke-static {p1}, Landroid/media/session/ISessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 237
    const-string v7, "android.media.session.ISessionCallback"

    .line 238
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 239
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 242
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v8

    .line 245
    :cond_16
    packed-switch p1, :pswitch_data_2b6

    .line 591
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 578
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 582
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 584
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 585
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(Ljava/lang/String;III)V

    .line 587
    goto/16 :goto_2b5

    .line 564
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 570
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 571
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(Ljava/lang/String;III)V

    .line 573
    goto/16 :goto_2b5

    .line 548
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 557
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 559
    goto/16 :goto_2b5

    .line 534
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 540
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 541
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V

    .line 543
    goto/16 :goto_2b5

    .line 520
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":F
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 526
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Rating;

    .line 527
    .local v4, "_arg3":Landroid/media/Rating;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V

    .line 529
    goto/16 :goto_2b5

    .line 506
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/media/Rating;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 512
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 513
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(Ljava/lang/String;IIJ)V

    .line 515
    goto/16 :goto_2b5

    .line 494
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onRewind(Ljava/lang/String;II)V

    .line 501
    goto/16 :goto_2b5

    .line 482
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 487
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onFastForward(Ljava/lang/String;II)V

    .line 489
    goto/16 :goto_2b5

    .line 470
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPrevious(Ljava/lang/String;II)V

    .line 477
    goto/16 :goto_2b5

    .line 458
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onNext(Ljava/lang/String;II)V

    .line 465
    goto/16 :goto_2b5

    .line 446
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onStop(Ljava/lang/String;II)V

    .line 453
    goto/16 :goto_2b5

    .line 434
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPause(Ljava/lang/String;II)V

    .line 441
    goto/16 :goto_2b5

    .line 420
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 427
    .restart local v4    # "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(Ljava/lang/String;IIJ)V

    .line 429
    goto/16 :goto_2b5

    .line 404
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .restart local v3    # "_arg2":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 412
    .local v4, "_arg3":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 413
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 415
    goto/16 :goto_2b5

    .line 388
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 397
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 399
    goto/16 :goto_2b5

    .line 372
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 380
    .restart local v4    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 381
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 383
    goto/16 :goto_2b5

    .line 360
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPlay(Ljava/lang/String;II)V

    .line 367
    goto/16 :goto_2b5

    .line 344
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 352
    .local v4, "_arg3":Landroid/net/Uri;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 353
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 355
    goto/16 :goto_2b5

    .line 328
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 337
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 339
    goto/16 :goto_2b5

    .line 312
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .restart local v4    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 321
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 323
    goto/16 :goto_2b5

    .line 300
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPrepare(Ljava/lang/String;II)V

    .line 307
    goto :goto_2b5

    .line 286
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 293
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 295
    goto :goto_2b5

    .line 268
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/Intent;
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 276
    .restart local v4    # "_arg3":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 278
    .local v5, "_arg4":I
    sget-object v6, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    .line 279
    .local v6, "_arg5":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    .line 281
    goto :goto_2b5

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ResultReceiver;
    :pswitch_28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 260
    .local v5, "_arg4":Landroid/os/Bundle;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ResultReceiver;

    .line 261
    .restart local v6    # "_arg5":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 263
    nop

    .line 594
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/os/ResultReceiver;
    :goto_2b5
    return v8

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_28b
        :pswitch_263
        :pswitch_248
        :pswitch_235
        :pswitch_213
        :pswitch_1f1
        :pswitch_1cc
        :pswitch_1b8
        :pswitch_196
        :pswitch_174
        :pswitch_14d
        :pswitch_134
        :pswitch_120
        :pswitch_10c
        :pswitch_f8
        :pswitch_e4
        :pswitch_d0
        :pswitch_bc
        :pswitch_a3
        :pswitch_87
        :pswitch_6f
        :pswitch_4e
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
