.class public abstract Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkIndication.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_barringInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_cdmaPrlChanged:I = 0x2

.field static final blacklist TRANSACTION_cellInfoList:I = 0x3

.field static final blacklist TRANSACTION_cellularIdentifierDisclosed:I = 0x10

.field static final blacklist TRANSACTION_currentLinkCapacityEstimate:I = 0x4

.field static final blacklist TRANSACTION_currentPhysicalChannelConfigs:I = 0x5

.field static final blacklist TRANSACTION_currentSignalStrength:I = 0x6

.field static final blacklist TRANSACTION_emergencyNetworkScanResult:I = 0xf

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_imsNetworkStateChanged:I = 0x7

.field static final blacklist TRANSACTION_networkScanResult:I = 0x8

.field static final blacklist TRANSACTION_networkStateChanged:I = 0x9

.field static final blacklist TRANSACTION_nitzTimeReceived:I = 0xa

.field static final blacklist TRANSACTION_registrationFailed:I = 0xb

.field static final blacklist TRANSACTION_restrictedStateChanged:I = 0xc

.field static final blacklist TRANSACTION_securityAlgorithmsUpdated:I = 0x11

.field static final blacklist TRANSACTION_suppSvcNotify:I = 0xd

.field static final blacklist TRANSACTION_voiceRadioTechChanged:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 341
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 342
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->markVintfStability()V

    .line 343
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 351
    if-nez p0, :cond_4

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 355
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkIndication;

    if-eqz v1, :cond_14

    .line 356
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetworkIndication;

    return-object v1

    .line 358
    :cond_14
    new-instance v1, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 362
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

    .line 366
    sget-object v7, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 367
    .local v7, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    if-gt p1, v1, :cond_d

    .line 368
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 371
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    return v8

    .line 374
    :cond_16
    if-ne p1, v1, :cond_23

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    return v8

    .line 379
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    return v8

    .line 384
    :cond_33
    packed-switch p1, :pswitch_data_18c

    .line 568
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 559
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 561
    .local v1, "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;

    .line 562
    .local v2, "_arg1":Landroid/hardware/radio/network/SecurityAlgorithmUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->securityAlgorithmsUpdated(ILandroid/hardware/radio/network/SecurityAlgorithmUpdate;)V

    .line 564
    goto/16 :goto_18b

    .line 549
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/SecurityAlgorithmUpdate;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/CellularIdentifierDisclosure;

    .line 552
    .local v2, "_arg1":Landroid/hardware/radio/network/CellularIdentifierDisclosure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cellularIdentifierDisclosed(ILandroid/hardware/radio/network/CellularIdentifierDisclosure;)V

    .line 554
    goto/16 :goto_18b

    .line 539
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/CellularIdentifierDisclosure;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/EmergencyRegResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/EmergencyRegResult;

    .line 542
    .local v2, "_arg1":Landroid/hardware/radio/network/EmergencyRegResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V

    .line 544
    goto/16 :goto_18b

    .line 529
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/EmergencyRegResult;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->voiceRadioTechChanged(II)V

    .line 534
    goto/16 :goto_18b

    .line 519
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/SuppSvcNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/SuppSvcNotification;

    .line 522
    .local v2, "_arg1":Landroid/hardware/radio/network/SuppSvcNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V

    .line 524
    goto/16 :goto_18b

    .line 509
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/SuppSvcNotification;
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->restrictedStateChanged(II)V

    .line 514
    goto/16 :goto_18b

    .line 491
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/CellIdentity;

    .line 495
    .local v2, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 499
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 501
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 502
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V

    .line 504
    goto/16 :goto_18b

    .line 477
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 483
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 484
    .local v5, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->nitzTimeReceived(ILjava/lang/String;JJ)V

    .line 486
    goto/16 :goto_18b

    .line 469
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 470
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkStateChanged(I)V

    .line 472
    goto/16 :goto_18b

    .line 459
    .end local v1    # "_arg0":I
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/NetworkScanResult;

    .line 462
    .local v2, "_arg1":Landroid/hardware/radio/network/NetworkScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V

    .line 464
    goto/16 :goto_18b

    .line 451
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/NetworkScanResult;
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->imsNetworkStateChanged(I)V

    .line 454
    goto/16 :goto_18b

    .line 441
    .end local v1    # "_arg0":I
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/SignalStrength;

    .line 444
    .local v2, "_arg1":Landroid/hardware/radio/network/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V

    .line 446
    goto :goto_18b

    .line 431
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/SignalStrength;
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/PhysicalChannelConfig;

    .line 434
    .local v2, "_arg1":[Landroid/hardware/radio/network/PhysicalChannelConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V

    .line 436
    goto :goto_18b

    .line 421
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/hardware/radio/network/PhysicalChannelConfig;
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/LinkCapacityEstimate;

    .line 424
    .local v2, "_arg1":Landroid/hardware/radio/network/LinkCapacityEstimate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V

    .line 426
    goto :goto_18b

    .line 411
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/LinkCapacityEstimate;
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/CellInfo;

    .line 414
    .local v2, "_arg1":[Landroid/hardware/radio/network/CellInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V

    .line 416
    goto :goto_18b

    .line 401
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/hardware/radio/network/CellInfo;
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cdmaPrlChanged(II)V

    .line 406
    goto :goto_18b

    .line 389
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/CellIdentity;

    .line 393
    .local v2, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    sget-object v3, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/BarringInfo;

    .line 394
    .local v3, "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 396
    nop

    .line 571
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v3    # "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    :goto_18b
    return v8

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_170
        :pswitch_161
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_115
        :pswitch_109
        :pswitch_f5
        :pswitch_e9
        :pswitch_d0
        :pswitch_ab
        :pswitch_9b
        :pswitch_87
        :pswitch_77
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
