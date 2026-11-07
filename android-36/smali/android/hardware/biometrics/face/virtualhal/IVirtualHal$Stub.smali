.class public abstract Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFaceHal:I = 0x17

.field static final blacklist TRANSACTION_resetConfigurations:I = 0x14

.field static final blacklist TRANSACTION_setAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_setEnrollmentHit:I = 0x2

.field static final blacklist TRANSACTION_setEnrollments:I = 0x1

.field static final blacklist TRANSACTION_setLockout:I = 0xe

.field static final blacklist TRANSACTION_setLockoutEnable:I = 0xf

.field static final blacklist TRANSACTION_setLockoutPermanentThreshold:I = 0x13

.field static final blacklist TRANSACTION_setLockoutTimedDuration:I = 0x12

.field static final blacklist TRANSACTION_setLockoutTimedEnable:I = 0x10

.field static final blacklist TRANSACTION_setLockoutTimedThreshold:I = 0x11

.field static final blacklist TRANSACTION_setNextEnrollment:I = 0x3

.field static final blacklist TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final blacklist TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final blacklist TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final blacklist TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final blacklist TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final blacklist TRANSACTION_setOperationDetectInteractionFails:I = 0xd

.field static final blacklist TRANSACTION_setOperationDetectInteractionLatency:I = 0xc

.field static final blacklist TRANSACTION_setOperationEnrollLatency:I = 0xb

.field static final blacklist TRANSACTION_setSensorStrength:I = 0x16

.field static final blacklist TRANSACTION_setType:I = 0x15


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 310
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 311
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 319
    if-nez p0, :cond_4

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_4
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 323
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    if-eqz v1, :cond_14

    .line 324
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    return-object v1

    .line 326
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 335
    packed-switch p0, :pswitch_data_60

    .line 431
    const/4 v0, 0x0

    return-object v0

    .line 427
    :pswitch_5
    const-string v0, "getFaceHal"

    return-object v0

    .line 423
    :pswitch_8
    const-string/jumbo v0, "setSensorStrength"

    return-object v0

    .line 419
    :pswitch_c
    const-string/jumbo v0, "setType"

    return-object v0

    .line 415
    :pswitch_10
    const-string/jumbo v0, "resetConfigurations"

    return-object v0

    .line 411
    :pswitch_14
    const-string/jumbo v0, "setLockoutPermanentThreshold"

    return-object v0

    .line 407
    :pswitch_18
    const-string/jumbo v0, "setLockoutTimedDuration"

    return-object v0

    .line 403
    :pswitch_1c
    const-string/jumbo v0, "setLockoutTimedThreshold"

    return-object v0

    .line 399
    :pswitch_20
    const-string/jumbo v0, "setLockoutTimedEnable"

    return-object v0

    .line 395
    :pswitch_24
    const-string/jumbo v0, "setLockoutEnable"

    return-object v0

    .line 391
    :pswitch_28
    const-string/jumbo v0, "setLockout"

    return-object v0

    .line 387
    :pswitch_2c
    const-string/jumbo v0, "setOperationDetectInteractionFails"

    return-object v0

    .line 383
    :pswitch_30
    const-string/jumbo v0, "setOperationDetectInteractionLatency"

    return-object v0

    .line 379
    :pswitch_34
    const-string/jumbo v0, "setOperationEnrollLatency"

    return-object v0

    .line 375
    :pswitch_38
    const-string/jumbo v0, "setOperationAuthenticateAcquired"

    return-object v0

    .line 371
    :pswitch_3c
    const-string/jumbo v0, "setOperationAuthenticateError"

    return-object v0

    .line 367
    :pswitch_40
    const-string/jumbo v0, "setOperationAuthenticateDuration"

    return-object v0

    .line 363
    :pswitch_44
    const-string/jumbo v0, "setOperationAuthenticateLatency"

    return-object v0

    .line 359
    :pswitch_48
    const-string/jumbo v0, "setOperationAuthenticateFails"

    return-object v0

    .line 355
    :pswitch_4c
    const-string/jumbo v0, "setChallenge"

    return-object v0

    .line 351
    :pswitch_50
    const-string/jumbo v0, "setAuthenticatorId"

    return-object v0

    .line 347
    :pswitch_54
    const-string/jumbo v0, "setNextEnrollment"

    return-object v0

    .line 343
    :pswitch_58
    const-string/jumbo v0, "setEnrollmentHit"

    return-object v0

    .line 339
    :pswitch_5c
    const-string/jumbo v0, "setEnrollments"

    return-object v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 330
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1262
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 438
    invoke-static {p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 442
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    .line 443
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 444
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 447
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    return v1

    .line 450
    :cond_16
    packed-switch p1, :pswitch_data_16e

    .line 656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 649
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->getFaceHal()Landroid/hardware/biometrics/face/IFace;

    move-result-object v2

    .line 650
    .local v2, "_result":Landroid/hardware/biometrics/face/IFace;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 652
    goto/16 :goto_16d

    .line 641
    .end local v2    # "_result":Landroid/hardware/biometrics/face/IFace;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 642
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setSensorStrength(B)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_16d

    .line 632
    .end local v2    # "_arg0":B
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 633
    .restart local v2    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setType(B)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_16d

    .line 625
    .end local v2    # "_arg0":B
    :pswitch_48
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->resetConfigurations()V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    goto/16 :goto_16d

    .line 617
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_16d

    .line 608
    .end local v2    # "_arg0":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 609
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_16d

    .line 599
    .end local v2    # "_arg0":I
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_16d

    .line 590
    .end local v2    # "_arg0":I
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 591
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedEnable(Z)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_16d

    .line 581
    .end local v2    # "_arg0":Z
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 582
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutEnable(Z)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_16d

    .line 572
    .end local v2    # "_arg0":Z
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 573
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockout(Z)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_16d

    .line 563
    .end local v2    # "_arg0":Z
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 564
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionFails(Z)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_16d

    .line 554
    .end local v2    # "_arg0":Z
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 555
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_16d

    .line 545
    .end local v2    # "_arg0":[I
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_16d

    .line 536
    .end local v2    # "_arg0":[I
    :pswitch_d7
    sget-object v2, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    .line 537
    .local v2, "_arg0":[Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_16d

    .line 527
    .end local v2    # "_arg0":[Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_16d

    .line 518
    .end local v2    # "_arg0":I
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 519
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto :goto_16d

    .line 509
    .end local v2    # "_arg0":I
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 510
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto :goto_16d

    .line 500
    .end local v2    # "_arg0":[I
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 501
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto :goto_16d

    .line 491
    .end local v2    # "_arg0":Z
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 492
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setChallenge(J)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto :goto_16d

    .line 482
    .end local v2    # "_arg0":J
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 483
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setAuthenticatorId(J)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto :goto_16d

    .line 473
    .end local v2    # "_arg0":J
    :pswitch_13f
    sget-object v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;

    .line 474
    .local v2, "_arg0":Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto :goto_16d

    .line 464
    .end local v2    # "_arg0":Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 465
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setEnrollmentHit(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto :goto_16d

    .line 455
    .end local v2    # "_arg0":I
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 456
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setEnrollments([I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    nop

    .line 659
    .end local v2    # "_arg0":[I
    :goto_16d
    return v1

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_151
        :pswitch_13f
        :pswitch_131
        :pswitch_123
        :pswitch_115
        :pswitch_107
        :pswitch_f9
        :pswitch_ea
        :pswitch_d7
        :pswitch_c8
        :pswitch_b9
        :pswitch_aa
        :pswitch_9b
        :pswitch_8c
        :pswitch_7d
        :pswitch_6e
        :pswitch_5f
        :pswitch_50
        :pswitch_48
        :pswitch_39
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
