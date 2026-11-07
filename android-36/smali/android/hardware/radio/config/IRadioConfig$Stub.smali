.class public abstract Landroid/hardware/radio/config/IRadioConfig$Stub;
.super Landroid/os/Binder;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHalDeviceCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNumOfLiveModems:I = 0x2

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x3

.field static final blacklist TRANSACTION_getSimSlotsStatus:I = 0x4

.field static final blacklist TRANSACTION_getSimTypeInfo:I = 0xa

.field static final blacklist TRANSACTION_getSimultaneousCallingSupport:I = 0x9

.field static final blacklist TRANSACTION_setNumOfLiveModems:I = 0x5

.field static final blacklist TRANSACTION_setPreferredDataModem:I = 0x6

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x7

.field static final blacklist TRANSACTION_setSimSlotsMapping:I = 0x8

.field static final blacklist TRANSACTION_setSimType:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 268
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 269
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->markVintfStability()V

    .line 270
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 278
    if-nez p0, :cond_4

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_4
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 282
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/config/IRadioConfig;

    if-eqz v1, :cond_14

    .line 283
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/config/IRadioConfig;

    return-object v1

    .line 285
    :cond_14
    new-instance v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 289
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

    .line 293
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 294
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 295
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 298
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    return v2

    .line 301
    :cond_16
    if-ne p1, v1, :cond_23

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    return v2

    .line 306
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    return v2

    .line 311
    :cond_33
    packed-switch p1, :pswitch_data_d8

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 404
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 407
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setSimType(I[I)V

    .line 409
    goto/16 :goto_d7

    .line 396
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimTypeInfo(I)V

    .line 399
    goto/16 :goto_d7

    .line 388
    .end local v1    # "_arg0":I
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimultaneousCallingSupport(I)V

    .line 391
    goto/16 :goto_d7

    .line 378
    .end local v1    # "_arg0":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/config/SlotPortMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/config/SlotPortMapping;

    .line 381
    .local v3, "_arg1":[Landroid/hardware/radio/config/SlotPortMapping;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setSimSlotsMapping(I[Landroid/hardware/radio/config/SlotPortMapping;)V

    .line 383
    goto :goto_d7

    .line 368
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/config/SlotPortMapping;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigResponse;

    move-result-object v1

    .line 370
    .local v1, "_arg0":Landroid/hardware/radio/config/IRadioConfigResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigIndication;

    move-result-object v3

    .line 371
    .local v3, "_arg1":Landroid/hardware/radio/config/IRadioConfigIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setResponseFunctions(Landroid/hardware/radio/config/IRadioConfigResponse;Landroid/hardware/radio/config/IRadioConfigIndication;)V

    .line 373
    goto :goto_d7

    .line 358
    .end local v1    # "_arg0":Landroid/hardware/radio/config/IRadioConfigResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/config/IRadioConfigIndication;
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 361
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setPreferredDataModem(IB)V

    .line 363
    goto :goto_d7

    .line 348
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 351
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setNumOfLiveModems(IB)V

    .line 353
    goto :goto_d7

    .line 340
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimSlotsStatus(I)V

    .line 343
    goto :goto_d7

    .line 332
    .end local v1    # "_arg0":I
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getPhoneCapability(I)V

    .line 335
    goto :goto_d7

    .line 324
    .end local v1    # "_arg0":I
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 325
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getNumOfLiveModems(I)V

    .line 327
    goto :goto_d7

    .line 316
    .end local v1    # "_arg0":I
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getHalDeviceCapabilities(I)V

    .line 319
    nop

    .line 416
    .end local v1    # "_arg0":I
    :goto_d7
    return v2

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_c1
        :pswitch_b6
        :pswitch_ab
        :pswitch_9c
        :pswitch_8d
        :pswitch_76
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
