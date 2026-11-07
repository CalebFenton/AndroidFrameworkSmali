.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final greylist-max-o TRANSACTION_adjustVolume:I = 0xb

.field static final greylist-max-o TRANSACTION_fastForward:I = 0x1a

.field static final greylist-max-o TRANSACTION_getExtras:I = 0x24

.field static final greylist-max-o TRANSACTION_getFlags:I = 0x9

.field static final greylist-max-o TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final greylist-max-o TRANSACTION_getMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_getPackageName:I = 0x5

.field static final greylist-max-o TRANSACTION_getPlaybackState:I = 0x21

.field static final greylist-max-o TRANSACTION_getQueue:I = 0x22

.field static final greylist-max-o TRANSACTION_getQueueTitle:I = 0x23

.field static final greylist-max-o TRANSACTION_getRatingType:I = 0x25

.field static final blacklist TRANSACTION_getSessionInfo:I = 0x7

.field static final greylist-max-o TRANSACTION_getTag:I = 0x6

.field static final greylist-max-o TRANSACTION_getVolumeAttributes:I = 0xa

.field static final greylist-max-o TRANSACTION_next:I = 0x18

.field static final greylist-max-o TRANSACTION_pause:I = 0x16

.field static final greylist-max-o TRANSACTION_play:I = 0x11

.field static final greylist-max-o TRANSACTION_playFromMediaId:I = 0x12

.field static final greylist-max-o TRANSACTION_playFromSearch:I = 0x13

.field static final greylist-max-o TRANSACTION_playFromUri:I = 0x14

.field static final greylist-max-o TRANSACTION_prepare:I = 0xd

.field static final greylist-max-o TRANSACTION_prepareFromMediaId:I = 0xe

.field static final greylist-max-o TRANSACTION_prepareFromSearch:I = 0xf

.field static final greylist-max-o TRANSACTION_prepareFromUri:I = 0x10

.field static final greylist-max-o TRANSACTION_previous:I = 0x19

.field static final greylist-max-o TRANSACTION_rate:I = 0x1d

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final greylist-max-o TRANSACTION_rewind:I = 0x1b

.field static final greylist-max-o TRANSACTION_seekTo:I = 0x1c

.field static final greylist-max-o TRANSACTION_sendCommand:I = 0x1

.field static final greylist-max-o TRANSACTION_sendCustomAction:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendMediaButton:I = 0x2

.field static final blacklist TRANSACTION_setPlaybackSpeed:I = 0x1e

.field static final greylist-max-o TRANSACTION_setVolumeTo:I = 0xc

.field static final greylist-max-o TRANSACTION_skipToQueueItem:I = 0x15

.field static final greylist-max-o TRANSACTION_stop:I = 0x17

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 156
    const-string v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 164
    if-nez p0, :cond_4

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_4
    const-string v0, "android.media.session.ISessionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 168
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_14

    .line 169
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionController;

    return-object v1

    .line 171
    :cond_14
    new-instance v1, Landroid/media/session/ISessionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 180
    packed-switch p0, :pswitch_data_74

    .line 332
    const/4 v0, 0x0

    return-object v0

    .line 328
    :pswitch_5
    const-string v0, "getRatingType"

    return-object v0

    .line 324
    :pswitch_8
    const-string v0, "getExtras"

    return-object v0

    .line 320
    :pswitch_b
    const-string v0, "getQueueTitle"

    return-object v0

    .line 316
    :pswitch_e
    const-string v0, "getQueue"

    return-object v0

    .line 312
    :pswitch_11
    const-string v0, "getPlaybackState"

    return-object v0

    .line 308
    :pswitch_14
    const-string v0, "getMetadata"

    return-object v0

    .line 304
    :pswitch_17
    const-string v0, "sendCustomAction"

    return-object v0

    .line 300
    :pswitch_1a
    const-string v0, "setPlaybackSpeed"

    return-object v0

    .line 296
    :pswitch_1d
    const-string v0, "rate"

    return-object v0

    .line 292
    :pswitch_20
    const-string v0, "seekTo"

    return-object v0

    .line 288
    :pswitch_23
    const-string v0, "rewind"

    return-object v0

    .line 284
    :pswitch_26
    const-string v0, "fastForward"

    return-object v0

    .line 280
    :pswitch_29
    const-string v0, "previous"

    return-object v0

    .line 276
    :pswitch_2c
    const-string v0, "next"

    return-object v0

    .line 272
    :pswitch_2f
    const-string v0, "stop"

    return-object v0

    .line 268
    :pswitch_32
    const-string v0, "pause"

    return-object v0

    .line 264
    :pswitch_35
    const-string v0, "skipToQueueItem"

    return-object v0

    .line 260
    :pswitch_38
    const-string v0, "playFromUri"

    return-object v0

    .line 256
    :pswitch_3b
    const-string v0, "playFromSearch"

    return-object v0

    .line 252
    :pswitch_3e
    const-string v0, "playFromMediaId"

    return-object v0

    .line 248
    :pswitch_41
    const-string v0, "play"

    return-object v0

    .line 244
    :pswitch_44
    const-string v0, "prepareFromUri"

    return-object v0

    .line 240
    :pswitch_47
    const-string v0, "prepareFromSearch"

    return-object v0

    .line 236
    :pswitch_4a
    const-string v0, "prepareFromMediaId"

    return-object v0

    .line 232
    :pswitch_4d
    const-string v0, "prepare"

    return-object v0

    .line 228
    :pswitch_50
    const-string v0, "setVolumeTo"

    return-object v0

    .line 224
    :pswitch_53
    const-string v0, "adjustVolume"

    return-object v0

    .line 220
    :pswitch_56
    const-string v0, "getVolumeAttributes"

    return-object v0

    .line 216
    :pswitch_59
    const-string v0, "getFlags"

    return-object v0

    .line 212
    :pswitch_5c
    const-string v0, "getLaunchPendingIntent"

    return-object v0

    .line 208
    :pswitch_5f
    const-string v0, "getSessionInfo"

    return-object v0

    .line 204
    :pswitch_62
    const-string v0, "getTag"

    return-object v0

    .line 200
    :pswitch_65
    const-string v0, "getPackageName"

    return-object v0

    .line 196
    :pswitch_68
    const-string v0, "unregisterCallback"

    return-object v0

    .line 192
    :pswitch_6b
    const-string v0, "registerCallback"

    return-object v0

    .line 188
    :pswitch_6e
    const-string v0, "sendMediaButton"

    return-object v0

    .line 184
    :pswitch_71
    const-string v0, "sendCommand"

    return-object v0

    :pswitch_data_74
    .packed-switch 0x1
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

    .line 175
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1404
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 339
    invoke-static {p1}, Landroid/media/session/ISessionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 343
    const-string v0, "android.media.session.ISessionController"

    .line 344
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 345
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 348
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    return v1

    .line 351
    :cond_16
    packed-switch p1, :pswitch_data_2e0

    .line 729
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 722
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v2

    .line 723
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    goto/16 :goto_2de

    .line 715
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 716
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 718
    goto/16 :goto_2de

    .line 702
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_36
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 703
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v2, :cond_47

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    invoke-static {v2, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_2de

    .line 709
    :cond_47
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    goto/16 :goto_2de

    .line 695
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :pswitch_4d
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 696
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 698
    goto/16 :goto_2de

    .line 688
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_59
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 689
    .local v2, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 691
    goto/16 :goto_2de

    .line 681
    .end local v2    # "_result":Landroid/media/session/PlaybackState;
    :pswitch_65
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    .line 682
    .local v2, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    goto/16 :goto_2de

    .line 669
    .end local v2    # "_result":Landroid/media/MediaMetadata;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 674
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_2de

    .line 658
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 661
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->setPlaybackSpeed(Ljava/lang/String;F)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_2de

    .line 647
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":F
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Rating;

    .line 650
    .local v3, "_arg1":Landroid/media/Rating;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->rate(Ljava/lang/String;Landroid/media/Rating;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_2de

    .line 636
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/Rating;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 639
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->seekTo(Ljava/lang/String;J)V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    goto/16 :goto_2de

    .line 627
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 628
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->rewind(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_2de

    .line 618
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 619
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->fastForward(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_2de

    .line 609
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->previous(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_2de

    .line 600
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->next(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto/16 :goto_2de

    .line 591
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->stop(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_2de

    .line 582
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->pause(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_2de

    .line 571
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 573
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 574
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(Ljava/lang/String;J)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_2de

    .line 558
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 562
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 563
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_2de

    .line 545
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 550
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_2de

    .line 532
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 537
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_2de

    .line 523
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->play(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_2de

    .line 510
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 514
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 515
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_2de

    .line 497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 502
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_2de

    .line 484
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 489
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_2de

    .line 475
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->prepare(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    goto/16 :goto_2de

    .line 460
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 467
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    goto/16 :goto_2de

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 451
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 452
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_2de

    .line 437
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_234
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    .line 438
    .local v2, "_result":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto/16 :goto_2de

    .line 430
    .end local v2    # "_result":Landroid/media/session/MediaController$PlaybackInfo;
    :pswitch_240
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v2

    .line 431
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    goto/16 :goto_2de

    .line 423
    .end local v2    # "_result":J
    :pswitch_24c
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 424
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 426
    goto/16 :goto_2de

    .line 416
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :pswitch_258
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 417
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    goto/16 :goto_2de

    .line 409
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_264
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    goto :goto_2de

    .line 402
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26f
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 403
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    goto :goto_2de

    .line 394
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    .line 395
    .local v2, "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto :goto_2de

    .line 383
    .end local v2    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    .line 386
    .local v3, "_arg1":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto :goto_2de

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/session/ISessionControllerCallback;
    :pswitch_2a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 374
    .local v3, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result v4

    .line 376
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 378
    goto :goto_2de

    .line 356
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :pswitch_2bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 362
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 363
    .local v5, "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    nop

    .line 732
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/os/ResultReceiver;
    :goto_2de
    return v1

    nop

    :pswitch_data_2e0
    .packed-switch 0x1
        :pswitch_2bc
        :pswitch_2a2
        :pswitch_28c
        :pswitch_27a
        :pswitch_26f
        :pswitch_264
        :pswitch_258
        :pswitch_24c
        :pswitch_240
        :pswitch_234
        :pswitch_219
        :pswitch_1fe
        :pswitch_1ef
        :pswitch_1d4
        :pswitch_1b9
        :pswitch_19a
        :pswitch_18b
        :pswitch_170
        :pswitch_155
        :pswitch_136
        :pswitch_123
        :pswitch_114
        :pswitch_105
        :pswitch_f6
        :pswitch_e7
        :pswitch_d8
        :pswitch_c9
        :pswitch_b6
        :pswitch_9f
        :pswitch_8c
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_4d
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
