.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppManager.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x9

.field static final blacklist TRANSACTION_createMediaView:I = 0x36

.field static final blacklist TRANSACTION_createSession:I = 0x22

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0xa

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x31

.field static final blacklist TRANSACTION_getAppLinkInfoList:I = 0x2

.field static final blacklist TRANSACTION_getTvInteractiveAppServiceList:I = 0x1

.field static final blacklist TRANSACTION_notifyAdBufferConsumed:I = 0x34

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x33

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x32

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x2a

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x2b

.field static final blacklist TRANSACTION_notifyError:I = 0x18

.field static final blacklist TRANSACTION_notifyRecordingConnectionFailed:I = 0x1d

.field static final blacklist TRANSACTION_notifyRecordingDisconnected:I = 0x1e

.field static final blacklist TRANSACTION_notifyRecordingError:I = 0x20

.field static final blacklist TRANSACTION_notifyRecordingScheduled:I = 0x21

.field static final blacklist TRANSACTION_notifyRecordingStarted:I = 0x2d

.field static final blacklist TRANSACTION_notifyRecordingStopped:I = 0x2e

.field static final blacklist TRANSACTION_notifyRecordingTuned:I = 0x1f

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x2c

.field static final blacklist TRANSACTION_notifyTimeShiftCurrentPositionChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyTimeShiftPlaybackParams:I = 0x19

.field static final blacklist TRANSACTION_notifyTimeShiftStartPositionChanged:I = 0x1b

.field static final blacklist TRANSACTION_notifyTimeShiftStatusChanged:I = 0x1a

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x25

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x26

.field static final blacklist TRANSACTION_notifyTuned:I = 0x24

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x2f

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x27

.field static final blacklist TRANSACTION_notifyVideoFreezeUpdated:I = 0x29

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x28

.field static final blacklist TRANSACTION_registerAppLinkInfo:I = 0x3

.field static final blacklist TRANSACTION_registerCallback:I = 0x39

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x37

.field static final blacklist TRANSACTION_releaseSession:I = 0x23

.field static final blacklist TRANSACTION_removeMediaView:I = 0x38

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x8

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x5

.field static final blacklist TRANSACTION_sendAvailableSpeeds:I = 0x13

.field static final blacklist TRANSACTION_sendCertificate:I = 0x15

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0xe

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0xd

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0x11

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_sendSelectedTrackInfo:I = 0x35

.field static final blacklist TRANSACTION_sendSigningResult:I = 0x14

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0xf

.field static final blacklist TRANSACTION_sendTimeShiftMode:I = 0x12

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0x10

.field static final blacklist TRANSACTION_sendTvRecordingInfo:I = 0x16

.field static final blacklist TRANSACTION_sendTvRecordingInfoList:I = 0x17

.field static final blacklist TRANSACTION_setSurface:I = 0x30

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0xb

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x6

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x7

.field static final blacklist TRANSACTION_unregisterAppLinkInfo:I = 0x4

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3a


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 207
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 215
    if-nez p0, :cond_4

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 219
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppManager;

    if-eqz v1, :cond_14

    .line 220
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object v1

    .line 222
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 231
    packed-switch p0, :pswitch_data_e8

    .line 467
    const/4 v0, 0x0

    return-object v0

    .line 463
    :pswitch_5
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 459
    :pswitch_9
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 455
    :pswitch_d
    const-string/jumbo v0, "removeMediaView"

    return-object v0

    .line 451
    :pswitch_11
    const-string/jumbo v0, "relayoutMediaView"

    return-object v0

    .line 447
    :pswitch_15
    const-string v0, "createMediaView"

    return-object v0

    .line 443
    :pswitch_18
    const-string/jumbo v0, "sendSelectedTrackInfo"

    return-object v0

    .line 439
    :pswitch_1c
    const-string/jumbo v0, "notifyAdBufferConsumed"

    return-object v0

    .line 435
    :pswitch_20
    const-string/jumbo v0, "notifyAdResponse"

    return-object v0

    .line 431
    :pswitch_24
    const-string/jumbo v0, "notifyBroadcastInfoResponse"

    return-object v0

    .line 427
    :pswitch_28
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 423
    :pswitch_2b
    const-string/jumbo v0, "setSurface"

    return-object v0

    .line 419
    :pswitch_2f
    const-string/jumbo v0, "notifyTvMessage"

    return-object v0

    .line 415
    :pswitch_33
    const-string/jumbo v0, "notifyRecordingStopped"

    return-object v0

    .line 411
    :pswitch_37
    const-string/jumbo v0, "notifyRecordingStarted"

    return-object v0

    .line 407
    :pswitch_3b
    const-string/jumbo v0, "notifySignalStrength"

    return-object v0

    .line 403
    :pswitch_3f
    const-string/jumbo v0, "notifyContentBlocked"

    return-object v0

    .line 399
    :pswitch_43
    const-string/jumbo v0, "notifyContentAllowed"

    return-object v0

    .line 395
    :pswitch_47
    const-string/jumbo v0, "notifyVideoFreezeUpdated"

    return-object v0

    .line 391
    :pswitch_4b
    const-string/jumbo v0, "notifyVideoUnavailable"

    return-object v0

    .line 387
    :pswitch_4f
    const-string/jumbo v0, "notifyVideoAvailable"

    return-object v0

    .line 383
    :pswitch_53
    const-string/jumbo v0, "notifyTracksChanged"

    return-object v0

    .line 379
    :pswitch_57
    const-string/jumbo v0, "notifyTrackSelected"

    return-object v0

    .line 375
    :pswitch_5b
    const-string/jumbo v0, "notifyTuned"

    return-object v0

    .line 371
    :pswitch_5f
    const-string/jumbo v0, "releaseSession"

    return-object v0

    .line 367
    :pswitch_63
    const-string v0, "createSession"

    return-object v0

    .line 363
    :pswitch_66
    const-string/jumbo v0, "notifyRecordingScheduled"

    return-object v0

    .line 359
    :pswitch_6a
    const-string/jumbo v0, "notifyRecordingError"

    return-object v0

    .line 355
    :pswitch_6e
    const-string/jumbo v0, "notifyRecordingTuned"

    return-object v0

    .line 351
    :pswitch_72
    const-string/jumbo v0, "notifyRecordingDisconnected"

    return-object v0

    .line 347
    :pswitch_76
    const-string/jumbo v0, "notifyRecordingConnectionFailed"

    return-object v0

    .line 343
    :pswitch_7a
    const-string/jumbo v0, "notifyTimeShiftCurrentPositionChanged"

    return-object v0

    .line 339
    :pswitch_7e
    const-string/jumbo v0, "notifyTimeShiftStartPositionChanged"

    return-object v0

    .line 335
    :pswitch_82
    const-string/jumbo v0, "notifyTimeShiftStatusChanged"

    return-object v0

    .line 331
    :pswitch_86
    const-string/jumbo v0, "notifyTimeShiftPlaybackParams"

    return-object v0

    .line 327
    :pswitch_8a
    const-string/jumbo v0, "notifyError"

    return-object v0

    .line 323
    :pswitch_8e
    const-string/jumbo v0, "sendTvRecordingInfoList"

    return-object v0

    .line 319
    :pswitch_92
    const-string/jumbo v0, "sendTvRecordingInfo"

    return-object v0

    .line 315
    :pswitch_96
    const-string/jumbo v0, "sendCertificate"

    return-object v0

    .line 311
    :pswitch_9a
    const-string/jumbo v0, "sendSigningResult"

    return-object v0

    .line 307
    :pswitch_9e
    const-string/jumbo v0, "sendAvailableSpeeds"

    return-object v0

    .line 303
    :pswitch_a2
    const-string/jumbo v0, "sendTimeShiftMode"

    return-object v0

    .line 299
    :pswitch_a6
    const-string/jumbo v0, "sendCurrentTvInputId"

    return-object v0

    .line 295
    :pswitch_aa
    const-string/jumbo v0, "sendTrackInfoList"

    return-object v0

    .line 291
    :pswitch_ae
    const-string/jumbo v0, "sendStreamVolume"

    return-object v0

    .line 287
    :pswitch_b2
    const-string/jumbo v0, "sendCurrentChannelLcn"

    return-object v0

    .line 283
    :pswitch_b6
    const-string/jumbo v0, "sendCurrentChannelUri"

    return-object v0

    .line 279
    :pswitch_ba
    const-string/jumbo v0, "sendCurrentVideoBounds"

    return-object v0

    .line 275
    :pswitch_be
    const-string/jumbo v0, "setTeletextAppEnabled"

    return-object v0

    .line 271
    :pswitch_c2
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    .line 267
    :pswitch_c5
    const-string v0, "createBiInteractiveApp"

    return-object v0

    .line 263
    :pswitch_c8
    const-string/jumbo v0, "resetInteractiveApp"

    return-object v0

    .line 259
    :pswitch_cc
    const-string/jumbo v0, "stopInteractiveApp"

    return-object v0

    .line 255
    :pswitch_d0
    const-string/jumbo v0, "startInteractiveApp"

    return-object v0

    .line 251
    :pswitch_d4
    const-string/jumbo v0, "sendAppLinkCommand"

    return-object v0

    .line 247
    :pswitch_d8
    const-string/jumbo v0, "unregisterAppLinkInfo"

    return-object v0

    .line 243
    :pswitch_dc
    const-string/jumbo v0, "registerAppLinkInfo"

    return-object v0

    .line 239
    :pswitch_e0
    const-string v0, "getAppLinkInfoList"

    return-object v0

    .line 235
    :pswitch_e3
    const-string/jumbo v0, "getTvInteractiveAppServiceList"

    return-object v0

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
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
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 226
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2344
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 474
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 478
    const-string v6, "android.media.tv.interactive.ITvInteractiveAppManager"

    .line 479
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 480
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 483
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    return v7

    .line 486
    :cond_16
    packed-switch p1, :pswitch_data_5e0

    .line 1262
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1252
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    move-result-object v1

    .line 1254
    .local v1, "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1255
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    goto/16 :goto_5df

    .line 1241
    .end local v1    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    move-result-object v1

    .line 1243
    .restart local v1    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1244
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_5df

    .line 1230
    .end local v1    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .end local v2    # "_arg1":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1232
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1233
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->removeMediaView(Landroid/os/IBinder;I)V

    .line 1235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    goto/16 :goto_5df

    .line 1217
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1219
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1221
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1222
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    goto/16 :goto_5df

    .line 1202
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1204
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1206
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1208
    .local v3, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1209
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_5df

    .line 1189
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1191
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1193
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1194
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendSelectedTrackInfo(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_5df

    .line 1176
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v3    # "_arg2":I
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1178
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    .line 1180
    .local v2, "_arg1":Landroid/media/tv/AdBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1181
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyAdBufferConsumed(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    goto/16 :goto_5df

    .line 1163
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/AdBuffer;
    .end local v3    # "_arg2":I
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1165
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 1167
    .local v2, "_arg1":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1168
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_5df

    .line 1150
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/AdResponse;
    .end local v3    # "_arg2":I
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1152
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 1154
    .local v2, "_arg1":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1155
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    goto/16 :goto_5df

    .line 1133
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/BroadcastInfoResponse;
    .end local v3    # "_arg2":I
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1135
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1137
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1139
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1141
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1142
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_5df

    .line 1120
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1122
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1124
    .local v2, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1125
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_5df

    .line 1105
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/view/Surface;
    .end local v3    # "_arg2":I
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1107
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1109
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1111
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1112
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    goto/16 :goto_5df

    .line 1092
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1094
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1097
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingStopped(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_5df

    .line 1077
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1079
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1084
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingStarted(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    goto/16 :goto_5df

    .line 1064
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1066
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1068
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1069
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifySignalStrength(Landroid/os/IBinder;II)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_5df

    .line 1051
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1053
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1056
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_5df

    .line 1040
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1042
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1043
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyContentAllowed(Landroid/os/IBinder;I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_5df

    .line 1027
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1029
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1031
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoFreezeUpdated(Landroid/os/IBinder;ZI)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_5df

    .line 1014
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1016
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1018
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1019
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoUnavailable(Landroid/os/IBinder;II)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_5df

    .line 1003
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1005
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1006
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoAvailable(Landroid/os/IBinder;I)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_5df

    .line 990
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 992
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 994
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 995
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 996
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    goto/16 :goto_5df

    .line 975
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v3    # "_arg2":I
    :pswitch_22a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 977
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 979
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 982
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_5df

    .line 962
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 964
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 966
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 967
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_5df

    .line 951
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 953
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 954
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_5df

    .line 934
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_273
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    .line 936
    .local v1, "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 940
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 943
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    goto/16 :goto_5df

    .line 919
    .end local v1    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 921
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 923
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 926
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingScheduled(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_5df

    .line 904
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_2b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 906
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 911
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingError(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_5df

    .line 889
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 891
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 895
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 896
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingTuned(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_5df

    .line 874
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    :pswitch_2ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 876
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 881
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingDisconnected(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_5df

    .line 859
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 861
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 865
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 866
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingConnectionFailed(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_5df

    .line 844
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_322
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 846
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 848
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 850
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 851
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftCurrentPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_5df

    .line 829
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    :pswitch_33e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 831
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 833
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 835
    .restart local v3    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftStartPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_5df

    .line 814
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 816
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 818
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 820
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 821
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftStatusChanged(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_5df

    .line 801
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 803
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 805
    .local v2, "_arg1":Landroid/media/PlaybackParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 806
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    goto/16 :goto_5df

    .line 786
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/PlaybackParams;
    .end local v3    # "_arg2":I
    :pswitch_390
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 788
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 792
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 793
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_5df

    .line 773
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_3af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 775
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 777
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTvRecordingInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    goto/16 :goto_5df

    .line 760
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    .end local v3    # "_arg2":I
    :pswitch_3c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 762
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 764
    .local v2, "_arg1":Landroid/media/tv/TvRecordingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 765
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTvRecordingInfo(Landroid/os/IBinder;Landroid/media/tv/TvRecordingInfo;I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_5df

    .line 743
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/tv/TvRecordingInfo;
    .end local v3    # "_arg2":I
    :pswitch_3e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 745
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 751
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 752
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCertificate(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    goto/16 :goto_5df

    .line 728
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":I
    :pswitch_407
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 730
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 734
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 735
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_5df

    .line 715
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    :pswitch_422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 717
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 719
    .local v2, "_arg1":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendAvailableSpeeds(Landroid/os/IBinder;[FI)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    goto/16 :goto_5df

    .line 702
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[F
    .end local v3    # "_arg2":I
    :pswitch_439
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 704
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTimeShiftMode(Landroid/os/IBinder;II)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_5df

    .line 689
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 691
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 694
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_5df

    .line 676
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_467
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 678
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 680
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 681
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    goto/16 :goto_5df

    .line 663
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v3    # "_arg2":I
    :pswitch_480
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 665
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 667
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendStreamVolume(Landroid/os/IBinder;FI)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_5df

    .line 650
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":I
    :pswitch_497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 652
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentChannelLcn(Landroid/os/IBinder;II)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_5df

    .line 637
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 639
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 641
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 642
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_5df

    .line 624
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :pswitch_4c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 626
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 628
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_5df

    .line 611
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_4e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 613
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 615
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->setTeletextAppEnabled(Landroid/os/IBinder;ZI)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_5df

    .line 598
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_4fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 600
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_5df

    .line 583
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_512
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 585
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 587
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 589
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_5df

    .line 572
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_535
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 574
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->resetInteractiveApp(Landroid/os/IBinder;I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_5df

    .line 561
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_548
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 563
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->stopInteractiveApp(Landroid/os/IBinder;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_5df

    .line 550
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 552
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->startInteractiveApp(Landroid/os/IBinder;I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto :goto_5df

    .line 537
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_56d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 541
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto :goto_5df

    .line 524
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_587
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 528
    .local v2, "_arg1":Landroid/media/tv/interactive/AppLinkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto :goto_5df

    .line 511
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/media/tv/interactive/AppLinkInfo;
    .end local v3    # "_arg2":I
    :pswitch_5a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 515
    .restart local v2    # "_arg1":Landroid/media/tv/interactive/AppLinkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 516
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto :goto_5df

    .line 501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/media/tv/interactive/AppLinkInfo;
    .end local v3    # "_arg2":I
    :pswitch_5bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getAppLinkInfoList(I)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/AppLinkInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 506
    goto :goto_5df

    .line 491
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/AppLinkInfo;>;"
    :pswitch_5cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 494
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 496
    nop

    .line 1265
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;>;"
    :goto_5df
    return v7

    :pswitch_data_5e0
    .packed-switch 0x1
        :pswitch_5cd
        :pswitch_5bb
        :pswitch_5a1
        :pswitch_587
        :pswitch_56d
        :pswitch_55b
        :pswitch_548
        :pswitch_535
        :pswitch_512
        :pswitch_4fb
        :pswitch_4e4
        :pswitch_4c9
        :pswitch_4ae
        :pswitch_497
        :pswitch_480
        :pswitch_467
        :pswitch_450
        :pswitch_439
        :pswitch_422
        :pswitch_407
        :pswitch_3e3
        :pswitch_3c8
        :pswitch_3af
        :pswitch_390
        :pswitch_375
        :pswitch_35a
        :pswitch_33e
        :pswitch_322
        :pswitch_307
        :pswitch_2ec
        :pswitch_2cd
        :pswitch_2b2
        :pswitch_297
        :pswitch_273
        :pswitch_260
        :pswitch_245
        :pswitch_22a
        :pswitch_211
        :pswitch_1fe
        :pswitch_1e7
        :pswitch_1d0
        :pswitch_1bd
        :pswitch_1a6
        :pswitch_18f
        :pswitch_174
        :pswitch_15d
        :pswitch_13e
        :pswitch_123
        :pswitch_103
        :pswitch_e8
        :pswitch_cd
        :pswitch_b2
        :pswitch_99
        :pswitch_7a
        :pswitch_5f
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
