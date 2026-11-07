.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppClient.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdBufferReady:I = 0x9

.field static final blacklist TRANSACTION_onAdRequest:I = 0x20

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x7

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x4

.field static final blacklist TRANSACTION_onCommandRequest:I = 0xa

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x5

.field static final blacklist TRANSACTION_onRequestAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onRequestCertificate:I = 0x1f

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xf

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xe

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x13

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0xd

.field static final blacklist TRANSACTION_onRequestScheduleRecording:I = 0x18

.field static final blacklist TRANSACTION_onRequestScheduleRecording2:I = 0x19

.field static final blacklist TRANSACTION_onRequestSelectedTrackInfo:I = 0x12

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x1d

.field static final blacklist TRANSACTION_onRequestSigning2:I = 0x1e

.field static final blacklist TRANSACTION_onRequestStartRecording:I = 0x16

.field static final blacklist TRANSACTION_onRequestStopRecording:I = 0x17

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0x10

.field static final blacklist TRANSACTION_onRequestTimeShiftMode:I = 0x14

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x11

.field static final blacklist TRANSACTION_onRequestTvRecordingInfo:I = 0x1b

.field static final blacklist TRANSACTION_onRequestTvRecordingInfoList:I = 0x1c

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onSetTvRecordingInfo:I = 0x1a

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onTimeShiftCommandRequest:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v1, :cond_14

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object v1

    .line 143
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_86

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 280
    :pswitch_5
    const-string/jumbo v0, "onAdRequest"

    return-object v0

    .line 276
    :pswitch_9
    const-string/jumbo v0, "onRequestCertificate"

    return-object v0

    .line 272
    :pswitch_d
    const-string/jumbo v0, "onRequestSigning2"

    return-object v0

    .line 268
    :pswitch_11
    const-string/jumbo v0, "onRequestSigning"

    return-object v0

    .line 264
    :pswitch_15
    const-string/jumbo v0, "onRequestTvRecordingInfoList"

    return-object v0

    .line 260
    :pswitch_19
    const-string/jumbo v0, "onRequestTvRecordingInfo"

    return-object v0

    .line 256
    :pswitch_1d
    const-string/jumbo v0, "onSetTvRecordingInfo"

    return-object v0

    .line 252
    :pswitch_21
    const-string/jumbo v0, "onRequestScheduleRecording2"

    return-object v0

    .line 248
    :pswitch_25
    const-string/jumbo v0, "onRequestScheduleRecording"

    return-object v0

    .line 244
    :pswitch_29
    const-string/jumbo v0, "onRequestStopRecording"

    return-object v0

    .line 240
    :pswitch_2d
    const-string/jumbo v0, "onRequestStartRecording"

    return-object v0

    .line 236
    :pswitch_31
    const-string/jumbo v0, "onRequestAvailableSpeeds"

    return-object v0

    .line 232
    :pswitch_35
    const-string/jumbo v0, "onRequestTimeShiftMode"

    return-object v0

    .line 228
    :pswitch_39
    const-string/jumbo v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 224
    :pswitch_3d
    const-string/jumbo v0, "onRequestSelectedTrackInfo"

    return-object v0

    .line 220
    :pswitch_41
    const-string/jumbo v0, "onRequestTrackInfoList"

    return-object v0

    .line 216
    :pswitch_45
    const-string/jumbo v0, "onRequestStreamVolume"

    return-object v0

    .line 212
    :pswitch_49
    const-string/jumbo v0, "onRequestCurrentChannelLcn"

    return-object v0

    .line 208
    :pswitch_4d
    const-string/jumbo v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 204
    :pswitch_51
    const-string/jumbo v0, "onRequestCurrentVideoBounds"

    return-object v0

    .line 200
    :pswitch_55
    const-string/jumbo v0, "onSetVideoBounds"

    return-object v0

    .line 196
    :pswitch_59
    const-string/jumbo v0, "onTimeShiftCommandRequest"

    return-object v0

    .line 192
    :pswitch_5d
    const-string/jumbo v0, "onCommandRequest"

    return-object v0

    .line 188
    :pswitch_61
    const-string/jumbo v0, "onAdBufferReady"

    return-object v0

    .line 184
    :pswitch_65
    const-string/jumbo v0, "onTeletextAppStateChanged"

    return-object v0

    .line 180
    :pswitch_69
    const-string/jumbo v0, "onBiInteractiveAppCreated"

    return-object v0

    .line 176
    :pswitch_6d
    const-string/jumbo v0, "onSessionStateChanged"

    return-object v0

    .line 172
    :pswitch_71
    const-string/jumbo v0, "onRemoveBroadcastInfo"

    return-object v0

    .line 168
    :pswitch_75
    const-string/jumbo v0, "onBroadcastInfoRequest"

    return-object v0

    .line 164
    :pswitch_79
    const-string/jumbo v0, "onLayoutSurface"

    return-object v0

    .line 160
    :pswitch_7d
    const-string/jumbo v0, "onSessionReleased"

    return-object v0

    .line 156
    :pswitch_81
    const-string/jumbo v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_81
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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1156
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 291
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.media.tv.interactive.ITvInteractiveAppClient"

    .line 296
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_13

    const v1, 0xffffff

    if-gt v11, v1, :cond_13

    .line 297
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    :cond_13
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 300
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return v14

    .line 303
    :cond_1e
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_2b6

    .line 665
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 656
    :pswitch_28
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    .line 658
    .local v1, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdRequest(Landroid/media/tv/AdRequest;I)V

    .line 661
    goto/16 :goto_2b5

    .line 644
    .end local v1    # "_arg0":Landroid/media/tv/AdRequest;
    .end local v2    # "_arg1":I
    :pswitch_3c
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 648
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCertificate(Ljava/lang/String;II)V

    .line 651
    goto/16 :goto_2b5

    .line 626
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_50
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 634
    .local v4, "_arg3":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 636
    .local v5, "_arg4":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    .local v6, "_arg5":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V

    .line 639
    move-object/from16 v0, p0

    goto/16 :goto_2b5

    .line 610
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":I
    :pswitch_72
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 618
    .local v4, "_arg3":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 619
    .local v5, "_arg4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 621
    goto/16 :goto_2b5

    .line 600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    :pswitch_90
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfoList(II)V

    .line 605
    goto/16 :goto_2b5

    .line 590
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_a0
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;I)V

    .line 595
    goto/16 :goto_2b5

    .line 578
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_b0
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 582
    .local v2, "_arg1":Landroid/media/tv/TvRecordingInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V

    .line 585
    goto/16 :goto_2b5

    .line 556
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/media/tv/TvRecordingInfo;
    .end local v3    # "_arg2":I
    :pswitch_c8
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 562
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 564
    .local v4, "_arg3":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 566
    .local v6, "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 568
    .local v8, "_arg5":I
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 570
    .local v9, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 571
    .local v10, "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual/range {v0 .. v10}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V

    .line 573
    move-object/from16 v0, p0

    goto/16 :goto_2b5

    .line 538
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/Bundle;
    .end local v10    # "_arg7":I
    :pswitch_fa
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 542
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 544
    .restart local v3    # "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 546
    .local v4, "_arg3":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 548
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 549
    .local v6, "_arg5":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 551
    goto/16 :goto_2b5

    .line 528
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":I
    :pswitch_12b
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStopRecording(Ljava/lang/String;I)V

    .line 533
    goto/16 :goto_2b5

    .line 516
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_13b
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 520
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 523
    goto/16 :goto_2b5

    .line 508
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :pswitch_153
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestAvailableSpeeds(I)V

    .line 511
    goto/16 :goto_2b5

    .line 500
    .end local v1    # "_arg0":I
    :pswitch_15f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTimeShiftMode(I)V

    .line 503
    goto/16 :goto_2b5

    .line 492
    .end local v1    # "_arg0":I
    :pswitch_16b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 495
    goto/16 :goto_2b5

    .line 484
    .end local v1    # "_arg0":I
    :pswitch_177
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSelectedTrackInfo(I)V

    .line 487
    goto/16 :goto_2b5

    .line 476
    .end local v1    # "_arg0":I
    :pswitch_183
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTrackInfoList(I)V

    .line 479
    goto/16 :goto_2b5

    .line 468
    .end local v1    # "_arg0":I
    :pswitch_18f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStreamVolume(I)V

    .line 471
    goto/16 :goto_2b5

    .line 460
    .end local v1    # "_arg0":I
    :pswitch_19b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelLcn(I)V

    .line 463
    goto/16 :goto_2b5

    .line 452
    .end local v1    # "_arg0":I
    :pswitch_1a7
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 455
    goto/16 :goto_2b5

    .line 444
    .end local v1    # "_arg0":I
    :pswitch_1b3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentVideoBounds(I)V

    .line 447
    goto/16 :goto_2b5

    .line 434
    .end local v1    # "_arg0":I
    :pswitch_1bf
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 436
    .local v1, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetVideoBounds(Landroid/graphics/Rect;I)V

    .line 439
    goto/16 :goto_2b5

    .line 422
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":I
    :pswitch_1d3
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 426
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 429
    goto/16 :goto_2b5

    .line 410
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_1eb
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 414
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 417
    goto/16 :goto_2b5

    .line 400
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_203
    sget-object v1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdBuffer;

    .line 402
    .local v1, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V

    .line 405
    goto/16 :goto_2b5

    .line 390
    .end local v1    # "_arg0":Landroid/media/tv/AdBuffer;
    .end local v2    # "_arg1":I
    :pswitch_217
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTeletextAppStateChanged(II)V

    .line 395
    goto/16 :goto_2b5

    .line 378
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_227
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 380
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 385
    goto/16 :goto_2b5

    .line 366
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_23f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionStateChanged(III)V

    .line 373
    goto :goto_2b5

    .line 356
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_252
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRemoveBroadcastInfo(II)V

    .line 361
    goto :goto_2b5

    .line 346
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_261
    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    .line 348
    .local v1, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 351
    goto :goto_2b5

    .line 330
    .end local v1    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    .end local v2    # "_arg1":I
    :pswitch_274
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 336
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .local v4, "_arg3":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 339
    .local v5, "_arg4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onLayoutSurface(IIIII)V

    .line 341
    goto :goto_2b5

    .line 322
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_28f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionReleased(I)V

    .line 325
    goto :goto_2b5

    .line 308
    .end local v1    # "_arg0":I
    :pswitch_29a
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 312
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    .line 314
    .local v3, "_arg2":Landroid/view/InputChannel;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .restart local v4    # "_arg3":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 317
    nop

    .line 668
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/InputChannel;
    .end local v4    # "_arg3":I
    :goto_2b5
    return v14

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_29a
        :pswitch_28f
        :pswitch_274
        :pswitch_261
        :pswitch_252
        :pswitch_23f
        :pswitch_227
        :pswitch_217
        :pswitch_203
        :pswitch_1eb
        :pswitch_1d3
        :pswitch_1bf
        :pswitch_1b3
        :pswitch_1a7
        :pswitch_19b
        :pswitch_18f
        :pswitch_183
        :pswitch_177
        :pswitch_16b
        :pswitch_15f
        :pswitch_153
        :pswitch_13b
        :pswitch_12b
        :pswitch_fa
        :pswitch_c8
        :pswitch_b0
        :pswitch_a0
        :pswitch_90
        :pswitch_72
        :pswitch_50
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method
