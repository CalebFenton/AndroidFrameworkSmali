.class public abstract Landroid/hardware/radio/messaging/IRadioMessaging$Stub;
.super Landroid/os/Binder;
.source "IRadioMessaging.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeIncomingGsmSmsWithPdu:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeLastIncomingCdmaSms:I = 0x2

.field static final blacklist TRANSACTION_acknowledgeLastIncomingGsmSms:I = 0x3

.field static final blacklist TRANSACTION_deleteSmsOnRuim:I = 0x4

.field static final blacklist TRANSACTION_deleteSmsOnSim:I = 0x5

.field static final blacklist TRANSACTION_getCdmaBroadcastConfig:I = 0x6

.field static final blacklist TRANSACTION_getGsmBroadcastConfig:I = 0x7

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSmscAddress:I = 0x8

.field static final blacklist TRANSACTION_reportSmsMemoryStatus:I = 0x9

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0xa

.field static final blacklist TRANSACTION_sendCdmaSms:I = 0xb

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMore:I = 0xc

.field static final blacklist TRANSACTION_sendImsSms:I = 0xd

.field static final blacklist TRANSACTION_sendSms:I = 0xe

.field static final blacklist TRANSACTION_sendSmsExpectMore:I = 0xf

.field static final blacklist TRANSACTION_setCdmaBroadcastActivation:I = 0x10

.field static final blacklist TRANSACTION_setCdmaBroadcastConfig:I = 0x11

.field static final blacklist TRANSACTION_setGsmBroadcastActivation:I = 0x12

.field static final blacklist TRANSACTION_setGsmBroadcastConfig:I = 0x13

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x14

.field static final blacklist TRANSACTION_setSmscAddress:I = 0x15

.field static final blacklist TRANSACTION_writeSmsToRuim:I = 0x16

.field static final blacklist TRANSACTION_writeSmsToSim:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 382
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 383
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->markVintfStability()V

    .line 384
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessaging;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 392
    if-nez p0, :cond_4

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_4
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 396
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessaging;

    if-eqz v1, :cond_14

    .line 397
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessaging;

    return-object v1

    .line 399
    :cond_14
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 403
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 408
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 409
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 412
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    return v2

    .line 415
    :cond_16
    if-ne p1, v1, :cond_23

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return v2

    .line 420
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    return v2

    .line 425
    :cond_33
    packed-switch p1, :pswitch_data_1c6

    .line 652
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 643
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/SmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SmsWriteArgs;

    .line 646
    .local v3, "_arg1":Landroid/hardware/radio/messaging/SmsWriteArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V

    .line 648
    goto/16 :goto_1c4

    .line 633
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SmsWriteArgs;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 635
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;

    .line 636
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToRuim(ILandroid/hardware/radio/messaging/CdmaSmsWriteArgs;)V

    .line 638
    goto/16 :goto_1c4

    .line 623
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 628
    goto/16 :goto_1c4

    .line 613
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    move-result-object v1

    .line 615
    .local v1, "_arg0":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    move-result-object v3

    .line 616
    .local v3, "_arg1":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V

    .line 618
    goto/16 :goto_1c4

    .line 603
    .end local v1    # "_arg0":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 606
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    .line 608
    goto/16 :goto_1c4

    .line 593
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 596
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastActivation(IZ)V

    .line 598
    goto/16 :goto_1c4

    .line 583
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 585
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;

    .line 586
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastConfig(I[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V

    .line 588
    goto/16 :goto_1c4

    .line 573
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 575
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 576
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 578
    goto/16 :goto_1c4

    .line 563
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 566
    .local v3, "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 568
    goto/16 :goto_1c4

    .line 553
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 555
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 556
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 558
    goto/16 :goto_1c4

    .line 543
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/ImsSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/ImsSmsMessage;

    .line 546
    .local v3, "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V

    .line 548
    goto/16 :goto_1c4

    .line 533
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 536
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 538
    goto/16 :goto_1c4

    .line 523
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 526
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 528
    goto/16 :goto_1c4

    .line 517
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_137
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->responseAcknowledgement()V

    .line 518
    goto/16 :goto_1c4

    .line 508
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 511
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->reportSmsMemoryStatus(IZ)V

    .line 513
    goto/16 :goto_1c4

    .line 500
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getSmscAddress(I)V

    .line 503
    goto :goto_1c4

    .line 492
    .end local v1    # "_arg0":I
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getGsmBroadcastConfig(I)V

    .line 495
    goto :goto_1c4

    .line 484
    .end local v1    # "_arg0":I
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getCdmaBroadcastConfig(I)V

    .line 487
    goto :goto_1c4

    .line 474
    .end local v1    # "_arg0":I
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 477
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnSim(II)V

    .line 479
    goto :goto_1c4

    .line 464
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 467
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnRuim(II)V

    .line 469
    goto :goto_1c4

    .line 452
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 456
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 457
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 459
    goto :goto_1c4

    .line 442
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 444
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsAck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsAck;

    .line 445
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsAck;)V

    .line 447
    goto :goto_1c4

    .line 430
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 434
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 437
    nop

    .line 655
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_1c4
    return v2

    nop

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1b1
        :pswitch_19e
        :pswitch_18b
        :pswitch_17c
        :pswitch_16d
        :pswitch_162
        :pswitch_157
        :pswitch_14c
        :pswitch_13c
        :pswitch_137
        :pswitch_123
        :pswitch_10f
        :pswitch_fb
        :pswitch_e7
        :pswitch_d3
        :pswitch_c3
        :pswitch_af
        :pswitch_9f
        :pswitch_8b
        :pswitch_73
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
