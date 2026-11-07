.class public abstract Landroid/hardware/radio/ims/IRadioIms$Stub;
.super Landroid/os/Binder;
.source "IRadioIms.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendAnbrQuery:I = 0x7

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x6

.field static final blacklist TRANSACTION_setSrvccCallInfo:I = 0x1

.field static final blacklist TRANSACTION_startImsTraffic:I = 0x3

.field static final blacklist TRANSACTION_stopImsTraffic:I = 0x4

.field static final blacklist TRANSACTION_triggerEpsFallback:I = 0x5

.field static final blacklist TRANSACTION_updateImsCallStatus:I = 0x8

.field static final blacklist TRANSACTION_updateImsRegistrationInfo:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 189
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->markVintfStability()V

    .line 190
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioIms;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioIms;

    if-eqz v1, :cond_14

    .line 203
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ims/IRadioIms;

    return-object v1

    .line 205
    :cond_14
    new-instance v1, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 209
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 214
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    return v2

    .line 221
    :cond_16
    if-ne p1, v1, :cond_23

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v2

    .line 226
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    return v2

    .line 231
    :cond_33
    packed-switch p1, :pswitch_data_e8

    .line 325
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 316
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/ImsCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/ims/ImsCall;

    .line 319
    .local v3, "_arg1":[Landroid/hardware/radio/ims/ImsCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    .line 321
    move-object v4, p0

    goto/16 :goto_e6

    .line 302
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/ims/ImsCall;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/ims/IRadioIms$Stub;->sendAnbrQuery(IIII)V

    .line 311
    move-object v4, p0

    goto/16 :goto_e6

    .line 292
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsResponse;

    move-result-object v1

    .line 294
    .local v1, "_arg0":Landroid/hardware/radio/ims/IRadioImsResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsIndication;

    move-result-object v3

    .line 295
    .local v3, "_arg1":Landroid/hardware/radio/ims/IRadioImsIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setResponseFunctions(Landroid/hardware/radio/ims/IRadioImsResponse;Landroid/hardware/radio/ims/IRadioImsIndication;)V

    .line 297
    move-object v4, p0

    goto :goto_e6

    .line 282
    .end local v1    # "_arg0":Landroid/hardware/radio/ims/IRadioImsResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/ims/IRadioImsIndication;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->triggerEpsFallback(II)V

    .line 287
    move-object v4, p0

    goto :goto_e6

    .line 272
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->stopImsTraffic(II)V

    .line 277
    move-object v4, p0

    goto :goto_e6

    .line 256
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 258
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 260
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 262
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 264
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 265
    .local v9, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/radio/ims/IRadioIms$Stub;->startImsTraffic(IIIII)V

    .line 267
    goto :goto_e6

    .line 246
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :pswitch_be
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ims/ImsRegistration;

    .line 249
    .local v3, "_arg1":Landroid/hardware/radio/ims/ImsRegistration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    .line 251
    goto :goto_e6

    .line 236
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/ims/ImsRegistration;
    :pswitch_d2
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/SrvccCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/ims/SrvccCall;

    .line 239
    .local v3, "_arg1":[Landroid/hardware/radio/ims/SrvccCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    .line 241
    nop

    .line 328
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/ims/SrvccCall;
    :goto_e6
    return v2

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_be
        :pswitch_a2
        :pswitch_92
        :pswitch_82
        :pswitch_6a
        :pswitch_51
        :pswitch_3c
    .end packed-switch
.end method
