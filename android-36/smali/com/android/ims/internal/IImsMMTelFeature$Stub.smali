.class public abstract Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMMTelFeature.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMMTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsMMTelFeature"

.field static final greylist-max-o TRANSACTION_addRegistrationListener:I = 0x6

.field static final greylist-max-o TRANSACTION_createCallProfile:I = 0x8

.field static final greylist-max-o TRANSACTION_createCallSession:I = 0x9

.field static final greylist-max-o TRANSACTION_endSession:I = 0x2

.field static final greylist-max-o TRANSACTION_getConfigInterface:I = 0xc

.field static final greylist-max-o TRANSACTION_getEcbmInterface:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeatureStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getMultiEndpointInterface:I = 0x11

.field static final greylist-max-o TRANSACTION_getPendingCallSession:I = 0xa

.field static final greylist-max-o TRANSACTION_getUtInterface:I = 0xb

.field static final greylist-max-o TRANSACTION_isConnected:I = 0x3

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final greylist-max-o TRANSACTION_removeRegistrationListener:I = 0x7

.field static final greylist-max-o TRANSACTION_setUiTTYMode:I = 0x10

.field static final greylist-max-o TRANSACTION_startSession:I = 0x1

.field static final greylist-max-o TRANSACTION_turnOffIms:I = 0xe

.field static final greylist-max-o TRANSACTION_turnOnIms:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_4

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_4
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsMMTelFeature;

    if-eqz v1, :cond_14

    .line 106
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v1

    .line 108
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 117
    packed-switch p0, :pswitch_data_3e

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 185
    :pswitch_5
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 181
    :pswitch_8
    const-string/jumbo v0, "setUiTTYMode"

    return-object v0

    .line 177
    :pswitch_c
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 173
    :pswitch_f
    const-string/jumbo v0, "turnOffIms"

    return-object v0

    .line 169
    :pswitch_13
    const-string/jumbo v0, "turnOnIms"

    return-object v0

    .line 165
    :pswitch_17
    const-string v0, "getConfigInterface"

    return-object v0

    .line 161
    :pswitch_1a
    const-string v0, "getUtInterface"

    return-object v0

    .line 157
    :pswitch_1d
    const-string v0, "getPendingCallSession"

    return-object v0

    .line 153
    :pswitch_20
    const-string v0, "createCallSession"

    return-object v0

    .line 149
    :pswitch_23
    const-string v0, "createCallProfile"

    return-object v0

    .line 145
    :pswitch_26
    const-string/jumbo v0, "removeRegistrationListener"

    return-object v0

    .line 141
    :pswitch_2a
    const-string v0, "addRegistrationListener"

    return-object v0

    .line 137
    :pswitch_2d
    const-string v0, "getFeatureStatus"

    return-object v0

    .line 133
    :pswitch_30
    const-string v0, "isOpened"

    return-object v0

    .line 129
    :pswitch_33
    const-string v0, "isConnected"

    return-object v0

    .line 125
    :pswitch_36
    const-string v0, "endSession"

    return-object v0

    .line 121
    :pswitch_39
    const-string/jumbo v0, "startSession"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
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

    .line 112
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 696
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 196
    invoke-static {p1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

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
    packed-switch p1, :pswitch_data_140

    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 359
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    .line 360
    .local v2, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 362
    goto/16 :goto_13e

    .line 349
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 352
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setUiTTYMode(ILandroid/os/Message;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_13e

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    .line 342
    .local v2, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 344
    goto/16 :goto_13e

    .line 335
    .end local v2    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOffIms()V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_13e

    .line 329
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOnIms()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_13e

    .line 322
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v2

    .line 323
    .local v2, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 325
    goto/16 :goto_13e

    .line 315
    .end local v2    # "_result":Lcom/android/ims/internal/IImsConfig;
    :pswitch_69
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 316
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 318
    goto/16 :goto_13e

    .line 304
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 309
    .local v4, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 311
    goto/16 :goto_13e

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 295
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 297
    .restart local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    goto/16 :goto_13e

    .line 278
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 285
    .local v5, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 287
    goto/16 :goto_13e

    .line 269
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 270
    .local v2, "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_13e

    .line 260
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 261
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto :goto_13e

    .line 252
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_e6
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getFeatureStatus()I

    move-result v2

    .line 253
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto :goto_13e

    .line 245
    .end local v2    # "_result":I
    :pswitch_f1
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isOpened()Z

    move-result v2

    .line 246
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto :goto_13e

    .line 234
    .end local v2    # "_result":Z
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isConnected(II)Z

    move-result v4

    .line 239
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    goto :goto_13e

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->endSession(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_13e

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_120
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 215
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 216
    .local v3, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v4

    .line 218
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    nop

    .line 369
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v4    # "_result":I
    :goto_13e
    return v1

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_120
        :pswitch_112
        :pswitch_fc
        :pswitch_f1
        :pswitch_e6
        :pswitch_d4
        :pswitch_c2
        :pswitch_a7
        :pswitch_8c
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_41
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
