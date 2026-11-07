.class public abstract Landroid/media/tv/ad/ITvAdManager$Stub;
.super Landroid/os/Binder;
.source "ITvAdManager.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createMediaView:I = 0x13

.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x9

.field static final blacklist TRANSACTION_getTvAdServiceList:I = 0x1

.field static final blacklist TRANSACTION_notifyError:I = 0xf

.field static final blacklist TRANSACTION_notifyTvInputSessionData:I = 0x16

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x10

.field static final blacklist TRANSACTION_registerCallback:I = 0x11

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x14

.field static final blacklist TRANSACTION_releaseSession:I = 0x4

.field static final blacklist TRANSACTION_removeMediaView:I = 0x15

.field static final blacklist TRANSACTION_resetAdService:I = 0x7

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x2

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0xb

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xd

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0xa

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xe

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xc

.field static final blacklist TRANSACTION_setSurface:I = 0x8

.field static final blacklist TRANSACTION_startAdService:I = 0x5

.field static final blacklist TRANSACTION_stopAdService:I = 0x6

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.media.tv.ad.ITvAdManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdManager;

    if-eqz v1, :cond_14

    .line 111
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdManager;

    return-object v1

    .line 113
    :cond_14
    new-instance v1, Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 122
    packed-switch p0, :pswitch_data_48

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 210
    :pswitch_5
    const-string v0, "notifyTvInputSessionData"

    return-object v0

    .line 206
    :pswitch_8
    const-string v0, "removeMediaView"

    return-object v0

    .line 202
    :pswitch_b
    const-string v0, "relayoutMediaView"

    return-object v0

    .line 198
    :pswitch_e
    const-string v0, "createMediaView"

    return-object v0

    .line 194
    :pswitch_11
    const-string v0, "unregisterCallback"

    return-object v0

    .line 190
    :pswitch_14
    const-string v0, "registerCallback"

    return-object v0

    .line 186
    :pswitch_17
    const-string v0, "notifyTvMessage"

    return-object v0

    .line 182
    :pswitch_1a
    const-string v0, "notifyError"

    return-object v0

    .line 178
    :pswitch_1d
    const-string v0, "sendSigningResult"

    return-object v0

    .line 174
    :pswitch_20
    const-string v0, "sendCurrentTvInputId"

    return-object v0

    .line 170
    :pswitch_23
    const-string v0, "sendTrackInfoList"

    return-object v0

    .line 166
    :pswitch_26
    const-string v0, "sendCurrentChannelUri"

    return-object v0

    .line 162
    :pswitch_29
    const-string v0, "sendCurrentVideoBounds"

    return-object v0

    .line 158
    :pswitch_2c
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 154
    :pswitch_2f
    const-string v0, "setSurface"

    return-object v0

    .line 150
    :pswitch_32
    const-string v0, "resetAdService"

    return-object v0

    .line 146
    :pswitch_35
    const-string v0, "stopAdService"

    return-object v0

    .line 142
    :pswitch_38
    const-string v0, "startAdService"

    return-object v0

    .line 138
    :pswitch_3b
    const-string v0, "releaseSession"

    return-object v0

    .line 134
    :pswitch_3e
    const-string v0, "createSession"

    return-object v0

    .line 130
    :pswitch_41
    const-string v0, "sendAppLinkCommand"

    return-object v0

    .line 126
    :pswitch_44
    const-string v0, "getTvAdServiceList"

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
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

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 947
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 221
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 225
    const-string v6, "android.media.tv.ad.ITvAdManager"

    .line 226
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 227
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 230
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v7

    .line 233
    :cond_16
    packed-switch p1, :pswitch_data_24c

    .line 524
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 510
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 516
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 517
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_24b

    .line 499
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 501
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->removeMediaView(Landroid/os/IBinder;I)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_24b

    .line 486
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 488
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 490
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 491
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_24b

    .line 471
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 473
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 475
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 477
    .local v3, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 478
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_24b

    .line 460
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":I
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManagerCallback;

    move-result-object v1

    .line 462
    .local v1, "_arg0":Landroid/media/tv/ad/ITvAdManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 463
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->unregisterCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_24b

    .line 449
    .end local v1    # "_arg0":Landroid/media/tv/ad/ITvAdManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManagerCallback;

    move-result-object v1

    .line 451
    .restart local v1    # "_arg0":Landroid/media/tv/ad/ITvAdManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_24b

    .line 434
    .end local v1    # "_arg0":Landroid/media/tv/ad/ITvAdManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 436
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 440
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 441
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_24b

    .line 419
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 421
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 425
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 426
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_24b

    .line 404
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 406
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 410
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 411
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_24b

    .line 391
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 393
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_24b

    .line 378
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 380
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_24b

    .line 365
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v3    # "_arg2":I
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 367
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 369
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_24b

    .line 352
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 354
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 356
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_24b

    .line 335
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 337
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_24b

    .line 322
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 326
    .local v2, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_24b

    .line 311
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/view/Surface;
    .end local v3    # "_arg2":I
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 313
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->resetAdService(Landroid/os/IBinder;I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_24b

    .line 300
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 302
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->stopAdService(Landroid/os/IBinder;I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_24b

    .line 289
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 291
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->startAdService(Landroid/os/IBinder;I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_24b

    .line 278
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 280
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto :goto_24b

    .line 261
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    .line 263
    .local v1, "_arg0":Landroid/media/tv/ad/ITvAdClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_24b

    .line 248
    .end local v1    # "_arg0":Landroid/media/tv/ad/ITvAdClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_21f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 252
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_24b

    .line 238
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdManager$Stub;->getTvAdServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/ad/TvAdServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 243
    nop

    .line 527
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/ad/TvAdServiceInfo;>;"
    :goto_24b
    return v7

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_239
        :pswitch_21f
        :pswitch_1fc
        :pswitch_1ea
        :pswitch_1d8
        :pswitch_1c5
        :pswitch_1b2
        :pswitch_197
        :pswitch_177
        :pswitch_15c
        :pswitch_141
        :pswitch_128
        :pswitch_111
        :pswitch_f6
        :pswitch_d7
        :pswitch_b8
        :pswitch_a1
        :pswitch_8a
        :pswitch_6b
        :pswitch_50
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
