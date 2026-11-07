.class public abstract Landroid/hardware/radio/config/IRadioConfigResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHalDeviceCapabilitiesResponse:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNumOfLiveModemsResponse:I = 0x2

.field static final blacklist TRANSACTION_getPhoneCapabilityResponse:I = 0x3

.field static final blacklist TRANSACTION_getSimSlotsStatusResponse:I = 0x4

.field static final blacklist TRANSACTION_getSimTypeInfoResponse:I = 0x9

.field static final blacklist TRANSACTION_getSimultaneousCallingSupportResponse:I = 0x8

.field static final blacklist TRANSACTION_setNumOfLiveModemsResponse:I = 0x5

.field static final blacklist TRANSACTION_setPreferredDataModemResponse:I = 0x6

.field static final blacklist TRANSACTION_setSimSlotsMappingResponse:I = 0x7

.field static final blacklist TRANSACTION_setSimTypeResponse:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->markVintfStability()V

    .line 219
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 227
    if-nez p0, :cond_4

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_4
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 231
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/config/IRadioConfigResponse;

    if-eqz v1, :cond_14

    .line 232
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/config/IRadioConfigResponse;

    return-object v1

    .line 234
    :cond_14
    new-instance v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 238
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

    .line 242
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 243
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 244
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 247
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v2

    .line 250
    :cond_16
    if-ne p1, v1, :cond_23

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return v2

    .line 255
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return v2

    .line 260
    :cond_33
    packed-switch p1, :pswitch_data_fa

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 349
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 350
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setSimTypeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 352
    goto/16 :goto_f8

    .line 339
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 341
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/config/SimTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/config/SimTypeInfo;

    .line 342
    .local v3, "_arg1":[Landroid/hardware/radio/config/SimTypeInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimTypeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimTypeInfo;)V

    .line 344
    goto/16 :goto_f8

    .line 329
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/config/SimTypeInfo;
    :pswitch_63
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 331
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 332
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimultaneousCallingSupportResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 334
    goto/16 :goto_f8

    .line 321
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_77
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 322
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setSimSlotsMappingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 324
    goto :goto_f8

    .line 313
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_86
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 314
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setPreferredDataModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 316
    goto :goto_f8

    .line 305
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_95
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 306
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 308
    goto :goto_f8

    .line 295
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 297
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/config/SimSlotStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 298
    .local v3, "_arg1":[Landroid/hardware/radio/config/SimSlotStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimSlotsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimSlotStatus;)V

    .line 300
    goto :goto_f8

    .line 285
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/config/SimSlotStatus;
    :pswitch_bb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 287
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/config/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/config/PhoneCapability;

    .line 288
    .local v3, "_arg1":Landroid/hardware/radio/config/PhoneCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getPhoneCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/config/PhoneCapability;)V

    .line 290
    goto :goto_f8

    .line 275
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/config/PhoneCapability;
    :pswitch_d2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 277
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 278
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;B)V

    .line 280
    goto :goto_f8

    .line 265
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":B
    :pswitch_e5
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 267
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 268
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 270
    nop

    .line 359
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :goto_f8
    return v2

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_d2
        :pswitch_bb
        :pswitch_a4
        :pswitch_95
        :pswitch_86
        :pswitch_77
        :pswitch_63
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
