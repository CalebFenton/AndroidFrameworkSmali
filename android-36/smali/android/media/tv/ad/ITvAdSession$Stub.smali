.class public abstract Landroid/media/tv/ad/ITvAdSession$Stub;
.super Landroid/os/Binder;
.source "ITvAdSession.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createMediaView:I = 0xe

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x6

.field static final blacklist TRANSACTION_notifyError:I = 0xc

.field static final blacklist TRANSACTION_notifyTvInputSessionData:I = 0x11

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0xd

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0xf

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeMediaView:I = 0x10

.field static final blacklist TRANSACTION_resetAdService:I = 0x4

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xa

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0x7

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xb

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0x9

.field static final blacklist TRANSACTION_setSurface:I = 0x5

.field static final blacklist TRANSACTION_startAdService:I = 0x2

.field static final blacklist TRANSACTION_stopAdService:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdSession;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_38

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 174
    :pswitch_5
    const-string v0, "notifyTvInputSessionData"

    return-object v0

    .line 170
    :pswitch_8
    const-string v0, "removeMediaView"

    return-object v0

    .line 166
    :pswitch_b
    const-string v0, "relayoutMediaView"

    return-object v0

    .line 162
    :pswitch_e
    const-string v0, "createMediaView"

    return-object v0

    .line 158
    :pswitch_11
    const-string v0, "notifyTvMessage"

    return-object v0

    .line 154
    :pswitch_14
    const-string v0, "notifyError"

    return-object v0

    .line 150
    :pswitch_17
    const-string v0, "sendSigningResult"

    return-object v0

    .line 146
    :pswitch_1a
    const-string v0, "sendCurrentTvInputId"

    return-object v0

    .line 142
    :pswitch_1d
    const-string v0, "sendTrackInfoList"

    return-object v0

    .line 138
    :pswitch_20
    const-string v0, "sendCurrentChannelUri"

    return-object v0

    .line 134
    :pswitch_23
    const-string v0, "sendCurrentVideoBounds"

    return-object v0

    .line 130
    :pswitch_26
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 126
    :pswitch_29
    const-string v0, "setSurface"

    return-object v0

    .line 122
    :pswitch_2c
    const-string v0, "resetAdService"

    return-object v0

    .line 118
    :pswitch_2f
    const-string v0, "stopAdService"

    return-object v0

    .line 114
    :pswitch_32
    const-string v0, "startAdService"

    return-object v0

    .line 110
    :pswitch_35
    const-string v0, "release"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
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

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 583
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 185
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 189
    const-string v0, "android.media.tv.ad.ITvAdSession"

    .line 190
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 191
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return v1

    .line 197
    :cond_16
    packed-switch p1, :pswitch_data_fc

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 327
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 330
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    goto/16 :goto_fa

    .line 321
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->removeMediaView()V

    .line 322
    goto/16 :goto_fa

    .line 314
    :pswitch_37
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 315
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 317
    goto/16 :goto_fa

    .line 304
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 307
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 309
    goto/16 :goto_fa

    .line 294
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 297
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 299
    goto/16 :goto_fa

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 287
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 289
    goto/16 :goto_fa

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 277
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    .line 279
    goto :goto_fa

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 269
    goto :goto_fa

    .line 258
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9d
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    .line 261
    goto :goto_fa

    .line 250
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_aa
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 251
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 253
    goto :goto_fa

    .line 242
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_b9
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 243
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 245
    goto :goto_fa

    .line 230
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 235
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ad/ITvAdSession$Stub;->dispatchSurfaceChanged(III)V

    .line 237
    goto :goto_fa

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_db
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 223
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 225
    goto :goto_fa

    .line 216
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_ea
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->resetAdService()V

    .line 217
    goto :goto_fa

    .line 211
    :pswitch_ee
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->stopAdService()V

    .line 212
    goto :goto_fa

    .line 206
    :pswitch_f2
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->startAdService()V

    .line 207
    goto :goto_fa

    .line 201
    :pswitch_f6
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->release()V

    .line 202
    nop

    .line 339
    :goto_fa
    return v1

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_db
        :pswitch_c8
        :pswitch_b9
        :pswitch_aa
        :pswitch_9d
        :pswitch_92
        :pswitch_83
        :pswitch_6f
        :pswitch_5b
        :pswitch_47
        :pswitch_37
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
