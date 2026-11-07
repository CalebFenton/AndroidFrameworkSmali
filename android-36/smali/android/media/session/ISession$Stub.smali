.class public abstract Landroid/media/session/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession"

.field static final blacklist TRANSACTION_destroySession:I = 0x8

.field static final blacklist TRANSACTION_getBinderForSetQueue:I = 0xc

.field static final greylist-max-o TRANSACTION_getController:I = 0x2

.field static final blacklist TRANSACTION_resetQueue:I = 0xb

.field static final greylist-max-o TRANSACTION_sendEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_setActive:I = 0x4

.field static final greylist-max-o TRANSACTION_setCurrentVolume:I = 0x12

.field static final greylist-max-o TRANSACTION_setExtras:I = 0xe

.field static final greylist-max-o TRANSACTION_setFlags:I = 0x3

.field static final greylist-max-o TRANSACTION_setLaunchPendingIntent:I = 0x7

.field static final blacklist TRANSACTION_setMediaButtonBroadcastReceiver:I = 0x6

.field static final greylist-max-o TRANSACTION_setMediaButtonReceiver:I = 0x5

.field static final greylist-max-o TRANSACTION_setMetadata:I = 0x9

.field static final greylist-max-o TRANSACTION_setPlaybackState:I = 0xa

.field static final greylist-max-o TRANSACTION_setPlaybackToLocal:I = 0x10

.field static final greylist-max-o TRANSACTION_setPlaybackToRemote:I = 0x11

.field static final greylist-max-o TRANSACTION_setQueueTitle:I = 0xd

.field static final greylist-max-o TRANSACTION_setRatingType:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.media.session.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_4
    const-string v0, "android.media.session.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISession;

    if-eqz v1, :cond_14

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISession;

    return-object v1

    .line 104
    :cond_14
    new-instance v1, Landroid/media/session/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_3c

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 185
    :pswitch_5
    const-string v0, "setCurrentVolume"

    return-object v0

    .line 181
    :pswitch_8
    const-string v0, "setPlaybackToRemote"

    return-object v0

    .line 177
    :pswitch_b
    const-string v0, "setPlaybackToLocal"

    return-object v0

    .line 173
    :pswitch_e
    const-string v0, "setRatingType"

    return-object v0

    .line 169
    :pswitch_11
    const-string v0, "setExtras"

    return-object v0

    .line 165
    :pswitch_14
    const-string v0, "setQueueTitle"

    return-object v0

    .line 161
    :pswitch_17
    const-string v0, "getBinderForSetQueue"

    return-object v0

    .line 157
    :pswitch_1a
    const-string v0, "resetQueue"

    return-object v0

    .line 153
    :pswitch_1d
    const-string v0, "setPlaybackState"

    return-object v0

    .line 149
    :pswitch_20
    const-string v0, "setMetadata"

    return-object v0

    .line 145
    :pswitch_23
    const-string v0, "destroySession"

    return-object v0

    .line 141
    :pswitch_26
    const-string v0, "setLaunchPendingIntent"

    return-object v0

    .line 137
    :pswitch_29
    const-string v0, "setMediaButtonBroadcastReceiver"

    return-object v0

    .line 133
    :pswitch_2c
    const-string v0, "setMediaButtonReceiver"

    return-object v0

    .line 129
    :pswitch_2f
    const-string v0, "setActive"

    return-object v0

    .line 125
    :pswitch_32
    const-string v0, "setFlags"

    return-object v0

    .line 121
    :pswitch_35
    const-string v0, "getController"

    return-object v0

    .line 117
    :pswitch_38
    const-string v0, "sendEvent"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
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

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 703
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 196
    invoke-static {p1}, Landroid/media/session/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 200
    const-string v0, "android.media.session.ISession"

    .line 201
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 202
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 205
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    return v1

    .line 208
    :cond_16
    packed-switch p1, :pswitch_data_14a

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 366
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_149

    .line 353
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(IILjava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_149

    .line 344
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_44
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 345
    .local v2, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto/16 :goto_149

    .line 335
    .end local v2    # "_arg0":Landroid/media/AudioAttributes;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_149

    .line 326
    .end local v2    # "_arg0":I
    :pswitch_66
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 327
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_149

    .line 317
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_79
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 318
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_149

    .line 309
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_8c
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->getBinderForSetQueue()Landroid/os/IBinder;

    move-result-object v2

    .line 310
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 312
    goto/16 :goto_149

    .line 303
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_98
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->resetQueue()V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_149

    .line 295
    :pswitch_a0
    sget-object v2, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/PlaybackState;

    .line 296
    .local v2, "_arg0":Landroid/media/session/PlaybackState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_149

    .line 282
    .end local v2    # "_arg0":Landroid/media/session/PlaybackState;
    :pswitch_b3
    sget-object v2, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    .line 284
    .local v2, "_arg0":Landroid/media/MediaMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 286
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_149

    .line 275
    .end local v2    # "_arg0":Landroid/media/MediaMetadata;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_ce
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->destroySession()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_149

    .line 267
    :pswitch_d6
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 268
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_149

    .line 258
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_e8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 259
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto :goto_149

    .line 249
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_fa
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 250
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_149

    .line 240
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 241
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_149

    .line 231
    .end local v2    # "_arg0":Z
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_149

    .line 223
    .end local v2    # "_arg0":I
    :pswitch_128
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    move-result-object v2

    .line 224
    .local v2, "_result":Landroid/media/session/ISessionController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 226
    goto :goto_149

    .line 213
    .end local v2    # "_result":Landroid/media/session/ISessionController;
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 216
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    nop

    .line 377
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_149
    return v1

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_133
        :pswitch_128
        :pswitch_11a
        :pswitch_10c
        :pswitch_fa
        :pswitch_e8
        :pswitch_d6
        :pswitch_ce
        :pswitch_b3
        :pswitch_a0
        :pswitch_98
        :pswitch_8c
        :pswitch_79
        :pswitch_66
        :pswitch_57
        :pswitch_44
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
