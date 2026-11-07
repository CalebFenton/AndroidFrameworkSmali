.class public abstract Landroid/hardware/radio/ims/IRadioImsResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioImsResponse.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendAnbrQueryResponse:I = 0x6

.field static final blacklist TRANSACTION_setSrvccCallInfoResponse:I = 0x1

.field static final blacklist TRANSACTION_startImsTrafficResponse:I = 0x3

.field static final blacklist TRANSACTION_stopImsTrafficResponse:I = 0x4

.field static final blacklist TRANSACTION_triggerEpsFallbackResponse:I = 0x5

.field static final blacklist TRANSACTION_updateImsCallStatusResponse:I = 0x7

.field static final blacklist TRANSACTION_updateImsRegistrationInfoResponse:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 178
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->markVintfStability()V

    .line 179
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 187
    if-nez p0, :cond_4

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 191
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioImsResponse;

    if-eqz v1, :cond_14

    .line 192
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ims/IRadioImsResponse;

    return-object v1

    .line 194
    :cond_14
    new-instance v1, Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 198
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 203
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 204
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 207
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v2

    .line 210
    :cond_16
    if-ne p1, v1, :cond_23

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return v2

    .line 215
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v2

    .line 220
    :cond_33
    packed-switch p1, :pswitch_data_ae

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 275
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 276
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->updateImsCallStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 278
    goto :goto_ac

    .line 267
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 268
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->sendAnbrQueryResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 270
    goto :goto_ac

    .line 259
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_59
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 260
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->triggerEpsFallbackResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 262
    goto :goto_ac

    .line 251
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_68
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 252
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->stopImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 254
    goto :goto_ac

    .line 241
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_77
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 243
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/ims/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ims/ConnectionFailureInfo;

    .line 244
    .local v3, "_arg1":Landroid/hardware/radio/ims/ConnectionFailureInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->startImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/ims/ConnectionFailureInfo;)V

    .line 246
    goto :goto_ac

    .line 233
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/ims/ConnectionFailureInfo;
    :pswitch_8e
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 234
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->updateImsRegistrationInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 236
    goto :goto_ac

    .line 225
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_9d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 226
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->setSrvccCallInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 228
    nop

    .line 285
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :goto_ac
    return v2

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_8e
        :pswitch_77
        :pswitch_68
        :pswitch_59
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
