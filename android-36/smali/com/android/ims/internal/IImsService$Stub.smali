.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final greylist-max-o TRANSACTION_addRegistrationListener:I = 0x6

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final greylist-max-o TRANSACTION_createCallProfile:I = 0x7

.field static final greylist-max-o TRANSACTION_createCallSession:I = 0x8

.field static final greylist-max-o TRANSACTION_getConfigInterface:I = 0xb

.field static final greylist-max-o TRANSACTION_getEcbmInterface:I = 0xe

.field static final greylist-max-o TRANSACTION_getMultiEndpointInterface:I = 0x10

.field static final greylist-max-o TRANSACTION_getPendingCallSession:I = 0x9

.field static final greylist-max-o TRANSACTION_getUtInterface:I = 0xa

.field static final greylist-max-o TRANSACTION_isConnected:I = 0x3

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final greylist-max-o TRANSACTION_open:I = 0x1

.field static final greylist-max-o TRANSACTION_setRegistrationListener:I = 0x5

.field static final greylist-max-o TRANSACTION_setUiTTYMode:I = 0xf

.field static final greylist-max-o TRANSACTION_turnOffIms:I = 0xd

.field static final greylist-max-o TRANSACTION_turnOnIms:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "com.android.ims.internal.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_4
    const-string v0, "com.android.ims.internal.IImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_14

    .line 111
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsService;

    return-object v1

    .line 113
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 122
    packed-switch p0, :pswitch_data_3a

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 186
    :pswitch_5
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 182
    :pswitch_8
    const-string/jumbo v0, "setUiTTYMode"

    return-object v0

    .line 178
    :pswitch_c
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 174
    :pswitch_f
    const-string/jumbo v0, "turnOffIms"

    return-object v0

    .line 170
    :pswitch_13
    const-string/jumbo v0, "turnOnIms"

    return-object v0

    .line 166
    :pswitch_17
    const-string v0, "getConfigInterface"

    return-object v0

    .line 162
    :pswitch_1a
    const-string v0, "getUtInterface"

    return-object v0

    .line 158
    :pswitch_1d
    const-string v0, "getPendingCallSession"

    return-object v0

    .line 154
    :pswitch_20
    const-string v0, "createCallSession"

    return-object v0

    .line 150
    :pswitch_23
    const-string v0, "createCallProfile"

    return-object v0

    .line 146
    :pswitch_26
    const-string v0, "addRegistrationListener"

    return-object v0

    .line 142
    :pswitch_29
    const-string/jumbo v0, "setRegistrationListener"

    return-object v0

    .line 138
    :pswitch_2d
    const-string v0, "isOpened"

    return-object v0

    .line 134
    :pswitch_30
    const-string v0, "isConnected"

    return-object v0

    .line 130
    :pswitch_33
    const-string v0, "close"

    return-object v0

    .line 126
    :pswitch_36
    const-string v0, "open"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
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

    .line 736
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 197
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const-string v0, "com.android.ims.internal.IImsService"

    .line 202
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 203
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 206
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    return v1

    .line 209
    :cond_16
    packed-switch p1, :pswitch_data_18a

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 388
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v3

    .line 391
    .local v3, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 393
    goto/16 :goto_189

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 380
    .local v4, "_arg2":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    goto/16 :goto_189

    .line 365
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v3

    .line 368
    .local v3, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 370
    goto/16 :goto_189

    .line 356
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_189

    .line 347
    .end local v2    # "_arg0":I
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_189

    .line 337
    .end local v2    # "_arg0":I
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v3

    .line 340
    .local v3, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    goto/16 :goto_189

    .line 327
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsConfig;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v3

    .line 330
    .local v3, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 332
    goto/16 :goto_189

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 320
    .local v4, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 322
    goto/16 :goto_189

    .line 301
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 305
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v4

    .line 306
    .local v4, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    .line 308
    .local v5, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 310
    goto/16 :goto_189

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v5    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 294
    .local v5, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    goto/16 :goto_189

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v4

    .line 279
    .local v4, "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsService$Stub;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_189

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 266
    .local v3, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_189

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    move-result v3

    .line 256
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto :goto_189

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    move-result v5

    .line 246
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto :goto_189

    .line 230
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_189

    .line 214
    .end local v2    # "_arg0":I
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 220
    .local v4, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v5

    .line 221
    .local v5, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v6

    .line 223
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    nop

    .line 400
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    .end local v5    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v6    # "_result":I
    :goto_189
    return v1

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_163
        :pswitch_155
        :pswitch_13b
        :pswitch_129
        :pswitch_113
        :pswitch_f8
        :pswitch_dd
        :pswitch_ba
        :pswitch_a3
        :pswitch_90
        :pswitch_7d
        :pswitch_6e
        :pswitch_5f
        :pswitch_4c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
