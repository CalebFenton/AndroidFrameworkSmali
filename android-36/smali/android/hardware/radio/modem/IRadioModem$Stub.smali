.class public abstract Landroid/hardware/radio/modem/IRadioModem$Stub;
.super Landroid/os/Binder;
.source "IRadioModem.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableModem:I = 0x1

.field static final blacklist TRANSACTION_getBasebandVersion:I = 0x2

.field static final blacklist TRANSACTION_getDeviceIdentity:I = 0x3

.field static final blacklist TRANSACTION_getHardwareConfig:I = 0x4

.field static final blacklist TRANSACTION_getImei:I = 0x12

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfo:I = 0x5

.field static final blacklist TRANSACTION_getModemStackStatus:I = 0x6

.field static final blacklist TRANSACTION_getRadioCapability:I = 0x7

.field static final blacklist TRANSACTION_nvReadItem:I = 0x8

.field static final blacklist TRANSACTION_nvResetConfig:I = 0x9

.field static final blacklist TRANSACTION_nvWriteCdmaPrl:I = 0xa

.field static final blacklist TRANSACTION_nvWriteItem:I = 0xb

.field static final blacklist TRANSACTION_requestShutdown:I = 0xc

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceState:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapability:I = 0xf

.field static final blacklist TRANSACTION_setRadioPower:I = 0x10

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 312
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 313
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->markVintfStability()V

    .line 314
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 322
    if-nez p0, :cond_4

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 326
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModem;

    if-eqz v1, :cond_14

    .line 327
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModem;

    return-object v1

    .line 329
    :cond_14
    new-instance v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 333
    return-object p0
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

    .line 337
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 338
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 339
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 342
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    return v2

    .line 345
    :cond_16
    if-ne p1, v1, :cond_23

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    return v2

    .line 350
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    return v2

    .line 355
    :cond_33
    packed-switch p1, :pswitch_data_144

    .line 524
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 517
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getImei(I)V

    .line 520
    goto/16 :goto_143

    .line 507
    .end local v1    # "_arg0":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;

    move-result-object v1

    .line 509
    .local v1, "_arg0":Landroid/hardware/radio/modem/IRadioModemResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;

    move-result-object v3

    .line 510
    .local v3, "_arg1":Landroid/hardware/radio/modem/IRadioModemIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 512
    goto/16 :goto_143

    .line 493
    .end local v1    # "_arg0":Landroid/hardware/radio/modem/IRadioModemResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/IRadioModemIndication;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 497
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 499
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 500
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioPower(IZZZ)V

    .line 502
    goto/16 :goto_143

    .line 483
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    .line 486
    .local v3, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V

    .line 488
    goto/16 :goto_143

    .line 471
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 476
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/modem/IRadioModem$Stub;->sendDeviceState(IIZ)V

    .line 478
    goto/16 :goto_143

    .line 465
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_9f
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->responseAcknowledgement()V

    .line 466
    goto/16 :goto_143

    .line 458
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->requestShutdown(I)V

    .line 461
    goto/16 :goto_143

    .line 448
    .end local v1    # "_arg0":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/NvWriteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/NvWriteItem;

    .line 451
    .local v3, "_arg1":Landroid/hardware/radio/modem/NvWriteItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V

    .line 453
    goto/16 :goto_143

    .line 438
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/NvWriteItem;
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 441
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteCdmaPrl(I[B)V

    .line 443
    goto/16 :goto_143

    .line 428
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 430
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvResetConfig(II)V

    .line 433
    goto :goto_143

    .line 418
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 421
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvReadItem(II)V

    .line 423
    goto :goto_143

    .line 410
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getRadioCapability(I)V

    .line 413
    goto :goto_143

    .line 402
    .end local v1    # "_arg0":I
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemStackStatus(I)V

    .line 405
    goto :goto_143

    .line 394
    .end local v1    # "_arg0":I
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemActivityInfo(I)V

    .line 397
    goto :goto_143

    .line 386
    .end local v1    # "_arg0":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getHardwareConfig(I)V

    .line 389
    goto :goto_143

    .line 378
    .end local v1    # "_arg0":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getDeviceIdentity(I)V

    .line 381
    goto :goto_143

    .line 370
    .end local v1    # "_arg0":I
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getBasebandVersion(I)V

    .line 373
    goto :goto_143

    .line 360
    .end local v1    # "_arg0":I
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 363
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->enableModem(IZ)V

    .line 365
    nop

    .line 527
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :goto_143
    return v2

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_134
        :pswitch_129
        :pswitch_11e
        :pswitch_113
        :pswitch_108
        :pswitch_fd
        :pswitch_f2
        :pswitch_e3
        :pswitch_d4
        :pswitch_c4
        :pswitch_b0
        :pswitch_a4
        :pswitch_9f
        :pswitch_8b
        :pswitch_77
        :pswitch_5f
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
