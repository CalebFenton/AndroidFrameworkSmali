.class public abstract Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioModemResponse.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_enableModemResponse:I = 0x2

.field static final blacklist TRANSACTION_getBasebandVersionResponse:I = 0x3

.field static final blacklist TRANSACTION_getDeviceIdentityResponse:I = 0x4

.field static final blacklist TRANSACTION_getHardwareConfigResponse:I = 0x5

.field static final blacklist TRANSACTION_getImeiResponse:I = 0x11

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfoResponse:I = 0x6

.field static final blacklist TRANSACTION_getModemStackStatusResponse:I = 0x7

.field static final blacklist TRANSACTION_getRadioCapabilityResponse:I = 0x8

.field static final blacklist TRANSACTION_nvReadItemResponse:I = 0x9

.field static final blacklist TRANSACTION_nvResetConfigResponse:I = 0xa

.field static final blacklist TRANSACTION_nvWriteCdmaPrlResponse:I = 0xb

.field static final blacklist TRANSACTION_nvWriteItemResponse:I = 0xc

.field static final blacklist TRANSACTION_requestShutdownResponse:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceStateResponse:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapabilityResponse:I = 0xf

.field static final blacklist TRANSACTION_setRadioPowerResponse:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 324
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 325
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->markVintfStability()V

    .line 326
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 334
    if-nez p0, :cond_4

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 338
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemResponse;

    if-eqz v1, :cond_14

    .line 339
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModemResponse;

    return-object v1

    .line 341
    :cond_14
    new-instance v1, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 345
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 350
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 351
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v2

    .line 357
    :cond_16
    if-ne p1, v1, :cond_23

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return v2

    .line 362
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    return v2

    .line 367
    :cond_33
    packed-switch p1, :pswitch_data_19a

    .line 531
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 522
    :pswitch_3c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 524
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/modem/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/ImeiInfo;

    .line 525
    .local v3, "_arg1":Landroid/hardware/radio/modem/ImeiInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getImeiResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ImeiInfo;)V

    .line 527
    move-object v3, p0

    goto/16 :goto_198

    .line 514
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/ImeiInfo;
    :pswitch_55
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 515
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 517
    move-object v3, p0

    goto/16 :goto_198

    .line 504
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_66
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 506
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    .line 507
    .local v3, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 509
    move-object v3, p0

    goto/16 :goto_198

    .line 496
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_7f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 497
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 499
    move-object v3, p0

    goto/16 :goto_198

    .line 488
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_90
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 489
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 491
    move-object v3, p0

    goto/16 :goto_198

    .line 480
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 481
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 483
    move-object v3, p0

    goto/16 :goto_198

    .line 472
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_b2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 473
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 475
    move-object v3, p0

    goto/16 :goto_198

    .line 464
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 465
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 467
    move-object v3, p0

    goto/16 :goto_198

    .line 454
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 456
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 459
    move-object v3, p0

    goto/16 :goto_198

    .line 444
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e9
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 446
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    .line 447
    .local v3, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 449
    move-object v3, p0

    goto/16 :goto_198

    .line 434
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_102
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 436
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 437
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 439
    move-object v3, p0

    goto/16 :goto_198

    .line 424
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_117
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 426
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/modem/ActivityStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/ActivityStatsInfo;

    .line 427
    .local v3, "_arg1":Landroid/hardware/radio/modem/ActivityStatsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V

    .line 429
    move-object v3, p0

    goto :goto_198

    .line 414
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/ActivityStatsInfo;
    :pswitch_12f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 416
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/modem/HardwareConfig;

    .line 417
    .local v3, "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V

    .line 419
    move-object v3, p0

    goto :goto_198

    .line 398
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    :pswitch_147
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/radio/RadioResponseInfo;

    .line 400
    .local v4, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    goto :goto_198

    .line 388
    .end local v4    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    :pswitch_168
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 390
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 393
    goto :goto_198

    .line 380
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_17c
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 381
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 383
    goto :goto_198

    .line 372
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_18c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->acknowledgeRequest(I)V

    .line 375
    nop

    .line 534
    .end local v1    # "_arg0":I
    :goto_198
    return v2

    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_18c
        :pswitch_17c
        :pswitch_168
        :pswitch_147
        :pswitch_12f
        :pswitch_117
        :pswitch_102
        :pswitch_e9
        :pswitch_d4
        :pswitch_c3
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
        :pswitch_7f
        :pswitch_66
        :pswitch_55
        :pswitch_3c
    .end packed-switch
.end method
