.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSessionCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdBufferReady:I = 0x8

.field static final blacklist TRANSACTION_onAdRequest:I = 0x1f

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x6

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x3

.field static final blacklist TRANSACTION_onCommandRequest:I = 0x9

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x2

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x4

.field static final blacklist TRANSACTION_onRequestAvailableSpeeds:I = 0x13

.field static final blacklist TRANSACTION_onRequestCertificate:I = 0x1e

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xe

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xd

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x11

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_onRequestScheduleRecording:I = 0x17

.field static final blacklist TRANSACTION_onRequestScheduleRecording2:I = 0x18

.field static final blacklist TRANSACTION_onRequestSelectedTrackInfo:I = 0x14

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x1c

.field static final blacklist TRANSACTION_onRequestSigning2:I = 0x1d

.field static final blacklist TRANSACTION_onRequestStartRecording:I = 0x15

.field static final blacklist TRANSACTION_onRequestStopRecording:I = 0x16

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0xf

.field static final blacklist TRANSACTION_onRequestTimeShiftMode:I = 0x12

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x10

.field static final blacklist TRANSACTION_onRequestTvRecordingInfo:I = 0x1a

.field static final blacklist TRANSACTION_onRequestTvRecordingInfoList:I = 0x1b

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onSetTvRecordingInfo:I = 0x19

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xb

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onTimeShiftCommandRequest:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v1, :cond_14

    .line 138
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object v1

    .line 140
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 149
    packed-switch p0, :pswitch_data_82

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 273
    :pswitch_5
    const-string/jumbo v0, "onAdRequest"

    return-object v0

    .line 269
    :pswitch_9
    const-string/jumbo v0, "onRequestCertificate"

    return-object v0

    .line 265
    :pswitch_d
    const-string/jumbo v0, "onRequestSigning2"

    return-object v0

    .line 261
    :pswitch_11
    const-string/jumbo v0, "onRequestSigning"

    return-object v0

    .line 257
    :pswitch_15
    const-string/jumbo v0, "onRequestTvRecordingInfoList"

    return-object v0

    .line 253
    :pswitch_19
    const-string/jumbo v0, "onRequestTvRecordingInfo"

    return-object v0

    .line 249
    :pswitch_1d
    const-string/jumbo v0, "onSetTvRecordingInfo"

    return-object v0

    .line 245
    :pswitch_21
    const-string/jumbo v0, "onRequestScheduleRecording2"

    return-object v0

    .line 241
    :pswitch_25
    const-string/jumbo v0, "onRequestScheduleRecording"

    return-object v0

    .line 237
    :pswitch_29
    const-string/jumbo v0, "onRequestStopRecording"

    return-object v0

    .line 233
    :pswitch_2d
    const-string/jumbo v0, "onRequestStartRecording"

    return-object v0

    .line 229
    :pswitch_31
    const-string/jumbo v0, "onRequestSelectedTrackInfo"

    return-object v0

    .line 225
    :pswitch_35
    const-string/jumbo v0, "onRequestAvailableSpeeds"

    return-object v0

    .line 221
    :pswitch_39
    const-string/jumbo v0, "onRequestTimeShiftMode"

    return-object v0

    .line 217
    :pswitch_3d
    const-string/jumbo v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 213
    :pswitch_41
    const-string/jumbo v0, "onRequestTrackInfoList"

    return-object v0

    .line 209
    :pswitch_45
    const-string/jumbo v0, "onRequestStreamVolume"

    return-object v0

    .line 205
    :pswitch_49
    const-string/jumbo v0, "onRequestCurrentChannelLcn"

    return-object v0

    .line 201
    :pswitch_4d
    const-string/jumbo v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 197
    :pswitch_51
    const-string/jumbo v0, "onRequestCurrentVideoBounds"

    return-object v0

    .line 193
    :pswitch_55
    const-string/jumbo v0, "onSetVideoBounds"

    return-object v0

    .line 189
    :pswitch_59
    const-string/jumbo v0, "onTimeShiftCommandRequest"

    return-object v0

    .line 185
    :pswitch_5d
    const-string/jumbo v0, "onCommandRequest"

    return-object v0

    .line 181
    :pswitch_61
    const-string/jumbo v0, "onAdBufferReady"

    return-object v0

    .line 177
    :pswitch_65
    const-string/jumbo v0, "onTeletextAppStateChanged"

    return-object v0

    .line 173
    :pswitch_69
    const-string/jumbo v0, "onBiInteractiveAppCreated"

    return-object v0

    .line 169
    :pswitch_6d
    const-string/jumbo v0, "onSessionStateChanged"

    return-object v0

    .line 165
    :pswitch_71
    const-string/jumbo v0, "onRemoveBroadcastInfo"

    return-object v0

    .line 161
    :pswitch_75
    const-string/jumbo v0, "onBroadcastInfoRequest"

    return-object v0

    .line 157
    :pswitch_79
    const-string/jumbo v0, "onLayoutSurface"

    return-object v0

    .line 153
    :pswitch_7d
    const-string/jumbo v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
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

    .line 1020
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 284
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    .line 289
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_11

    const v1, 0xffffff

    if-gt v10, v1, :cond_11

    .line 290
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    :cond_11
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 293
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return v13

    .line 296
    :cond_1c
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_202

    .line 575
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 568
    :pswitch_26
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    .line 569
    .local v1, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onAdRequest(Landroid/media/tv/AdRequest;)V

    .line 571
    goto/16 :goto_201

    .line 558
    .end local v1    # "_arg0":Landroid/media/tv/AdRequest;
    :pswitch_36
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCertificate(Ljava/lang/String;I)V

    .line 563
    goto/16 :goto_201

    .line 542
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_46
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 551
    .local v5, "_arg4":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 553
    goto/16 :goto_201

    .line 528
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    :pswitch_63
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 535
    .local v4, "_arg3":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 537
    goto/16 :goto_201

    .line 520
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    :pswitch_7b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTvRecordingInfoList(I)V

    .line 523
    goto/16 :goto_201

    .line 512
    .end local v1    # "_arg0":I
    :pswitch_87
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;)V

    .line 515
    goto/16 :goto_201

    .line 502
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_93
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 505
    .local v2, "_arg1":Landroid/media/tv/TvRecordingInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    .line 507
    goto/16 :goto_201

    .line 482
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/media/tv/TvRecordingInfo;
    :pswitch_a7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 488
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 490
    .local v4, "_arg3":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 492
    .local v6, "_arg4":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 494
    .local v8, "_arg5":I
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 495
    .local v9, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 497
    goto/16 :goto_201

    .line 466
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/Bundle;
    :pswitch_d4
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 472
    .restart local v3    # "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 474
    .local v4, "_arg3":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 475
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 477
    goto/16 :goto_201

    .line 458
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_100
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStopRecording(Ljava/lang/String;)V

    .line 461
    goto/16 :goto_201

    .line 448
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 451
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    goto/16 :goto_201

    .line 442
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    :pswitch_120
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSelectedTrackInfo()V

    .line 443
    goto/16 :goto_201

    .line 437
    :pswitch_125
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestAvailableSpeeds()V

    .line 438
    goto/16 :goto_201

    .line 432
    :pswitch_12a
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTimeShiftMode()V

    .line 433
    goto/16 :goto_201

    .line 427
    :pswitch_12f
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentTvInputId()V

    .line 428
    goto/16 :goto_201

    .line 422
    :pswitch_134
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTrackInfoList()V

    .line 423
    goto/16 :goto_201

    .line 417
    :pswitch_139
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStreamVolume()V

    .line 418
    goto/16 :goto_201

    .line 412
    :pswitch_13e
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelLcn()V

    .line 413
    goto/16 :goto_201

    .line 407
    :pswitch_143
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelUri()V

    .line 408
    goto/16 :goto_201

    .line 402
    :pswitch_148
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentVideoBounds()V

    .line 403
    goto/16 :goto_201

    .line 395
    :pswitch_14d
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 396
    .local v1, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSetVideoBounds(Landroid/graphics/Rect;)V

    .line 398
    goto/16 :goto_201

    .line 385
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :pswitch_15d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 388
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 390
    goto/16 :goto_201

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_171
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 378
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 380
    goto/16 :goto_201

    .line 367
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_185
    sget-object v1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdBuffer;

    .line 368
    .local v1, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 370
    goto :goto_201

    .line 359
    .end local v1    # "_arg0":Landroid/media/tv/AdBuffer;
    :pswitch_194
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onTeletextAppStateChanged(I)V

    .line 362
    goto :goto_201

    .line 349
    .end local v1    # "_arg0":I
    :pswitch_19f
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 351
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 354
    goto :goto_201

    .line 339
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1b2
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionStateChanged(II)V

    .line 344
    goto :goto_201

    .line 331
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1c1
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRemoveBroadcastInfo(I)V

    .line 334
    goto :goto_201

    .line 323
    .end local v1    # "_arg0":I
    :pswitch_1cc
    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    .line 324
    .local v1, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 326
    goto :goto_201

    .line 309
    .end local v1    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    :pswitch_1db
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 318
    goto :goto_201

    .line 301
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1f2
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    .line 302
    .local v1, "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    .line 304
    nop

    .line 578
    .end local v1    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    :goto_201
    return v13

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1cc
        :pswitch_1c1
        :pswitch_1b2
        :pswitch_19f
        :pswitch_194
        :pswitch_185
        :pswitch_171
        :pswitch_15d
        :pswitch_14d
        :pswitch_148
        :pswitch_143
        :pswitch_13e
        :pswitch_139
        :pswitch_134
        :pswitch_12f
        :pswitch_12a
        :pswitch_125
        :pswitch_120
        :pswitch_10c
        :pswitch_100
        :pswitch_d4
        :pswitch_a7
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_63
        :pswitch_46
        :pswitch_36
        :pswitch_26
    .end packed-switch
.end method
