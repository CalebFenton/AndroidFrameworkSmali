.class public abstract Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFingerprintHal:I = 0x20

.field static final blacklist TRANSACTION_resetConfigurations:I = 0x16

.field static final blacklist TRANSACTION_setAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_setControlIllumination:I = 0x1f

.field static final blacklist TRANSACTION_setDetectInteraction:I = 0x1d

.field static final blacklist TRANSACTION_setDisplayTouch:I = 0x1e

.field static final blacklist TRANSACTION_setEnrollmentHit:I = 0x2

.field static final blacklist TRANSACTION_setEnrollments:I = 0x1

.field static final blacklist TRANSACTION_setLockout:I = 0x11

.field static final blacklist TRANSACTION_setLockoutEnable:I = 0x12

.field static final blacklist TRANSACTION_setLockoutPermanentThreshold:I = 0x15

.field static final blacklist TRANSACTION_setLockoutTimedDuration:I = 0x14

.field static final blacklist TRANSACTION_setLockoutTimedThreshold:I = 0x13

.field static final blacklist TRANSACTION_setMaxEnrollmentPerUser:I = 0x1a

.field static final blacklist TRANSACTION_setNavigationGesture:I = 0x1c

.field static final blacklist TRANSACTION_setNextEnrollment:I = 0x3

.field static final blacklist TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final blacklist TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final blacklist TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final blacklist TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final blacklist TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final blacklist TRANSACTION_setOperationDetectInteractionAcquired:I = 0x10

.field static final blacklist TRANSACTION_setOperationDetectInteractionDuration:I = 0xf

.field static final blacklist TRANSACTION_setOperationDetectInteractionError:I = 0xe

.field static final blacklist TRANSACTION_setOperationDetectInteractionLatency:I = 0xd

.field static final blacklist TRANSACTION_setOperationEnrollError:I = 0xb

.field static final blacklist TRANSACTION_setOperationEnrollLatency:I = 0xc

.field static final blacklist TRANSACTION_setSensorId:I = 0x18

.field static final blacklist TRANSACTION_setSensorLocation:I = 0x1b

.field static final blacklist TRANSACTION_setSensorStrength:I = 0x19

.field static final blacklist TRANSACTION_setType:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 350
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 351
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 359
    if-nez p0, :cond_4

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_4
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 363
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    if-eqz v1, :cond_14

    .line 364
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    return-object v1

    .line 366
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 375
    packed-switch p0, :pswitch_data_84

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 503
    :pswitch_5
    const-string v0, "getFingerprintHal"

    return-object v0

    .line 499
    :pswitch_8
    const-string/jumbo v0, "setControlIllumination"

    return-object v0

    .line 495
    :pswitch_c
    const-string/jumbo v0, "setDisplayTouch"

    return-object v0

    .line 491
    :pswitch_10
    const-string/jumbo v0, "setDetectInteraction"

    return-object v0

    .line 487
    :pswitch_14
    const-string/jumbo v0, "setNavigationGesture"

    return-object v0

    .line 483
    :pswitch_18
    const-string/jumbo v0, "setSensorLocation"

    return-object v0

    .line 479
    :pswitch_1c
    const-string/jumbo v0, "setMaxEnrollmentPerUser"

    return-object v0

    .line 475
    :pswitch_20
    const-string/jumbo v0, "setSensorStrength"

    return-object v0

    .line 471
    :pswitch_24
    const-string/jumbo v0, "setSensorId"

    return-object v0

    .line 467
    :pswitch_28
    const-string/jumbo v0, "setType"

    return-object v0

    .line 463
    :pswitch_2c
    const-string/jumbo v0, "resetConfigurations"

    return-object v0

    .line 459
    :pswitch_30
    const-string/jumbo v0, "setLockoutPermanentThreshold"

    return-object v0

    .line 455
    :pswitch_34
    const-string/jumbo v0, "setLockoutTimedDuration"

    return-object v0

    .line 451
    :pswitch_38
    const-string/jumbo v0, "setLockoutTimedThreshold"

    return-object v0

    .line 447
    :pswitch_3c
    const-string/jumbo v0, "setLockoutEnable"

    return-object v0

    .line 443
    :pswitch_40
    const-string/jumbo v0, "setLockout"

    return-object v0

    .line 439
    :pswitch_44
    const-string/jumbo v0, "setOperationDetectInteractionAcquired"

    return-object v0

    .line 435
    :pswitch_48
    const-string/jumbo v0, "setOperationDetectInteractionDuration"

    return-object v0

    .line 431
    :pswitch_4c
    const-string/jumbo v0, "setOperationDetectInteractionError"

    return-object v0

    .line 427
    :pswitch_50
    const-string/jumbo v0, "setOperationDetectInteractionLatency"

    return-object v0

    .line 423
    :pswitch_54
    const-string/jumbo v0, "setOperationEnrollLatency"

    return-object v0

    .line 419
    :pswitch_58
    const-string/jumbo v0, "setOperationEnrollError"

    return-object v0

    .line 415
    :pswitch_5c
    const-string/jumbo v0, "setOperationAuthenticateAcquired"

    return-object v0

    .line 411
    :pswitch_60
    const-string/jumbo v0, "setOperationAuthenticateError"

    return-object v0

    .line 407
    :pswitch_64
    const-string/jumbo v0, "setOperationAuthenticateDuration"

    return-object v0

    .line 403
    :pswitch_68
    const-string/jumbo v0, "setOperationAuthenticateLatency"

    return-object v0

    .line 399
    :pswitch_6c
    const-string/jumbo v0, "setOperationAuthenticateFails"

    return-object v0

    .line 395
    :pswitch_70
    const-string/jumbo v0, "setChallenge"

    return-object v0

    .line 391
    :pswitch_74
    const-string/jumbo v0, "setAuthenticatorId"

    return-object v0

    .line 387
    :pswitch_78
    const-string/jumbo v0, "setNextEnrollment"

    return-object v0

    .line 383
    :pswitch_7c
    const-string/jumbo v0, "setEnrollmentHit"

    return-object v0

    .line 379
    :pswitch_80
    const-string/jumbo v0, "setEnrollments"

    return-object v0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
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

    .line 370
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1576
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 514
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 518
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    .line 519
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 523
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    return v1

    .line 526
    :cond_16
    packed-switch p1, :pswitch_data_1fe

    .line 813
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 806
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getFingerprintHal()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v2

    .line 807
    .local v2, "_result":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 809
    goto/16 :goto_1fc

    .line 798
    .end local v2    # "_result":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 799
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setControlIllumination(Z)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_1fc

    .line 789
    .end local v2    # "_arg0":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 790
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDisplayTouch(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_1fc

    .line 780
    .end local v2    # "_arg0":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 781
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDetectInteraction(Z)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_1fc

    .line 771
    .end local v2    # "_arg0":Z
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 772
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNavigationGesture(Z)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_1fc

    .line 762
    .end local v2    # "_arg0":Z
    :pswitch_66
    sget-object v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 763
    .local v2, "_arg0":Landroid/hardware/biometrics/fingerprint/SensorLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorLocation(Landroid/hardware/biometrics/fingerprint/SensorLocation;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_1fc

    .line 753
    .end local v2    # "_arg0":Landroid/hardware/biometrics/fingerprint/SensorLocation;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setMaxEnrollmentPerUser(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_1fc

    .line 744
    .end local v2    # "_arg0":I
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 745
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorStrength(B)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_1fc

    .line 735
    .end local v2    # "_arg0":B
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorId(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_1fc

    .line 726
    .end local v2    # "_arg0":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 727
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setType(B)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_1fc

    .line 719
    .end local v2    # "_arg0":B
    :pswitch_b5
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->resetConfigurations()V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_1fc

    .line 711
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    goto/16 :goto_1fc

    .line 702
    .end local v2    # "_arg0":I
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 703
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_1fc

    .line 693
    .end local v2    # "_arg0":I
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_1fc

    .line 684
    .end local v2    # "_arg0":I
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 685
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutEnable(Z)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_1fc

    .line 675
    .end local v2    # "_arg0":Z
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 676
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockout(Z)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_1fc

    .line 666
    .end local v2    # "_arg0":Z
    :pswitch_108
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 667
    .local v2, "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_1fc

    .line 657
    .end local v2    # "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionDuration(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_1fc

    .line 648
    .end local v2    # "_arg0":I
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 649
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionError(I)V

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    goto/16 :goto_1fc

    .line 639
    .end local v2    # "_arg0":I
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 640
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_1fc

    .line 630
    .end local v2    # "_arg0":[I
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 631
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_1fc

    .line 621
    .end local v2    # "_arg0":[I
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollError(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_1fc

    .line 612
    .end local v2    # "_arg0":I
    :pswitch_166
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 613
    .local v2, "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto/16 :goto_1fc

    .line 603
    .end local v2    # "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_1fc

    .line 594
    .end local v2    # "_arg0":I
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto :goto_1fc

    .line 585
    .end local v2    # "_arg0":I
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 586
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto :goto_1fc

    .line 576
    .end local v2    # "_arg0":[I
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 577
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto :goto_1fc

    .line 567
    .end local v2    # "_arg0":Z
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 568
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setChallenge(J)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto :goto_1fc

    .line 558
    .end local v2    # "_arg0":J
    :pswitch_1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 559
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setAuthenticatorId(J)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto :goto_1fc

    .line 549
    .end local v2    # "_arg0":J
    :pswitch_1ce
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    .line 550
    .local v2, "_arg0":Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_1fc

    .line 540
    .end local v2    # "_arg0":Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollmentHit(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto :goto_1fc

    .line 531
    .end local v2    # "_arg0":I
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 532
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollments([I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    nop

    .line 816
    .end local v2    # "_arg0":[I
    :goto_1fc
    return v1

    nop

    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_1ee
        :pswitch_1e0
        :pswitch_1ce
        :pswitch_1c0
        :pswitch_1b2
        :pswitch_1a4
        :pswitch_196
        :pswitch_188
        :pswitch_179
        :pswitch_166
        :pswitch_157
        :pswitch_148
        :pswitch_139
        :pswitch_12a
        :pswitch_11b
        :pswitch_108
        :pswitch_f9
        :pswitch_ea
        :pswitch_db
        :pswitch_cc
        :pswitch_bd
        :pswitch_b5
        :pswitch_a6
        :pswitch_97
        :pswitch_88
        :pswitch_79
        :pswitch_66
        :pswitch_57
        :pswitch_48
        :pswitch_39
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
