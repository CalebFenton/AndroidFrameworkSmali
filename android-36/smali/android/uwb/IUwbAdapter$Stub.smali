.class public abstract Landroid/uwb/IUwbAdapter$Stub;
.super Landroid/os/Binder;
.source "IUwbAdapter.java"

# interfaces
.implements Landroid/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addControlee:I = 0xe

.field static final blacklist TRANSACTION_addServiceProfile:I = 0x1c

.field static final blacklist TRANSACTION_closeRanging:I = 0xd

.field static final blacklist TRANSACTION_getAdapterState:I = 0x15

.field static final blacklist TRANSACTION_getAdfCertificateAndInfo:I = 0x20

.field static final blacklist TRANSACTION_getAdfProvisioningAuthorities:I = 0x1f

.field static final blacklist TRANSACTION_getAllServiceProfiles:I = 0x1e

.field static final blacklist TRANSACTION_getChipIds:I = 0x1a

.field static final blacklist TRANSACTION_getChipInfos:I = 0x19

.field static final blacklist TRANSACTION_getDefaultChipId:I = 0x1b

.field static final blacklist TRANSACTION_getSpecificationInfo:I = 0x8

.field static final blacklist TRANSACTION_getTimestampResolutionNanos:I = 0x7

.field static final blacklist TRANSACTION_getUwbActivityEnergyInfoAsync:I = 0x28

.field static final blacklist TRANSACTION_isHwEnableRequested:I = 0x18

.field static final blacklist TRANSACTION_isHwIdleTurnOffEnabled:I = 0x16

.field static final blacklist TRANSACTION_openRanging:I = 0x9

.field static final blacklist TRANSACTION_pause:I = 0x10

.field static final blacklist TRANSACTION_provisionProfileAdfByScript:I = 0x21

.field static final blacklist TRANSACTION_queryMaxDataSizeBytes:I = 0x29

.field static final blacklist TRANSACTION_queryUwbsTimestampMicros:I = 0x2a

.field static final blacklist TRANSACTION_reconfigureRanging:I = 0xb

.field static final blacklist TRANSACTION_registerAdapterStateCallbacks:I = 0x1

.field static final blacklist TRANSACTION_registerOemExtensionCallback:I = 0x5

.field static final blacklist TRANSACTION_registerVendorExtensionCallback:I = 0x2

.field static final blacklist TRANSACTION_removeControlee:I = 0xf

.field static final blacklist TRANSACTION_removeProfileAdf:I = 0x22

.field static final blacklist TRANSACTION_removeServiceProfile:I = 0x1d

.field static final blacklist TRANSACTION_requestHwEnabled:I = 0x17

.field static final blacklist TRANSACTION_resume:I = 0x11

.field static final blacklist TRANSACTION_sendData:I = 0x12

.field static final blacklist TRANSACTION_sendVendorUciMessage:I = 0x24

.field static final blacklist TRANSACTION_setDataTransferPhaseConfig:I = 0x13

.field static final blacklist TRANSACTION_setEnabled:I = 0x14

.field static final blacklist TRANSACTION_setHybridSessionControleeConfiguration:I = 0x26

.field static final blacklist TRANSACTION_setHybridSessionControllerConfiguration:I = 0x25

.field static final blacklist TRANSACTION_startRanging:I = 0xa

.field static final blacklist TRANSACTION_stopRanging:I = 0xc

.field static final blacklist TRANSACTION_unregisterAdapterStateCallbacks:I = 0x4

.field static final blacklist TRANSACTION_unregisterOemExtensionCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterVendorExtensionCallback:I = 0x3

.field static final blacklist TRANSACTION_updatePose:I = 0x23

.field static final blacklist TRANSACTION_updateRangingRoundsDtTag:I = 0x27


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 461
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 462
    const-string v0, "android.uwb.IUwbAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/uwb/IUwbAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 470
    if-nez p0, :cond_4

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 473
    :cond_4
    const-string v0, "android.uwb.IUwbAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 474
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/uwb/IUwbAdapter;

    if-eqz v1, :cond_14

    .line 475
    move-object v1, v0

    check-cast v1, Landroid/uwb/IUwbAdapter;

    return-object v1

    .line 477
    :cond_14
    new-instance v1, Landroid/uwb/IUwbAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/uwb/IUwbAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 486
    packed-switch p0, :pswitch_data_84

    .line 658
    const/4 v0, 0x0

    return-object v0

    .line 654
    :pswitch_5
    const-string v0, "queryUwbsTimestampMicros"

    return-object v0

    .line 650
    :pswitch_8
    const-string v0, "queryMaxDataSizeBytes"

    return-object v0

    .line 646
    :pswitch_b
    const-string v0, "getUwbActivityEnergyInfoAsync"

    return-object v0

    .line 642
    :pswitch_e
    const-string v0, "updateRangingRoundsDtTag"

    return-object v0

    .line 638
    :pswitch_11
    const-string v0, "setHybridSessionControleeConfiguration"

    return-object v0

    .line 634
    :pswitch_14
    const-string v0, "setHybridSessionControllerConfiguration"

    return-object v0

    .line 630
    :pswitch_17
    const-string v0, "sendVendorUciMessage"

    return-object v0

    .line 626
    :pswitch_1a
    const-string v0, "updatePose"

    return-object v0

    .line 622
    :pswitch_1d
    const-string v0, "removeProfileAdf"

    return-object v0

    .line 618
    :pswitch_20
    const-string v0, "provisionProfileAdfByScript"

    return-object v0

    .line 614
    :pswitch_23
    const-string v0, "getAdfCertificateAndInfo"

    return-object v0

    .line 610
    :pswitch_26
    const-string v0, "getAdfProvisioningAuthorities"

    return-object v0

    .line 606
    :pswitch_29
    const-string v0, "getAllServiceProfiles"

    return-object v0

    .line 602
    :pswitch_2c
    const-string v0, "removeServiceProfile"

    return-object v0

    .line 598
    :pswitch_2f
    const-string v0, "addServiceProfile"

    return-object v0

    .line 594
    :pswitch_32
    const-string v0, "getDefaultChipId"

    return-object v0

    .line 590
    :pswitch_35
    const-string v0, "getChipIds"

    return-object v0

    .line 586
    :pswitch_38
    const-string v0, "getChipInfos"

    return-object v0

    .line 582
    :pswitch_3b
    const-string v0, "isHwEnableRequested"

    return-object v0

    .line 578
    :pswitch_3e
    const-string v0, "requestHwEnabled"

    return-object v0

    .line 574
    :pswitch_41
    const-string v0, "isHwIdleTurnOffEnabled"

    return-object v0

    .line 570
    :pswitch_44
    const-string v0, "getAdapterState"

    return-object v0

    .line 566
    :pswitch_47
    const-string v0, "setEnabled"

    return-object v0

    .line 562
    :pswitch_4a
    const-string v0, "setDataTransferPhaseConfig"

    return-object v0

    .line 558
    :pswitch_4d
    const-string v0, "sendData"

    return-object v0

    .line 554
    :pswitch_50
    const-string v0, "resume"

    return-object v0

    .line 550
    :pswitch_53
    const-string v0, "pause"

    return-object v0

    .line 546
    :pswitch_56
    const-string v0, "removeControlee"

    return-object v0

    .line 542
    :pswitch_59
    const-string v0, "addControlee"

    return-object v0

    .line 538
    :pswitch_5c
    const-string v0, "closeRanging"

    return-object v0

    .line 534
    :pswitch_5f
    const-string v0, "stopRanging"

    return-object v0

    .line 530
    :pswitch_62
    const-string v0, "reconfigureRanging"

    return-object v0

    .line 526
    :pswitch_65
    const-string v0, "startRanging"

    return-object v0

    .line 522
    :pswitch_68
    const-string v0, "openRanging"

    return-object v0

    .line 518
    :pswitch_6b
    const-string v0, "getSpecificationInfo"

    return-object v0

    .line 514
    :pswitch_6e
    const-string v0, "getTimestampResolutionNanos"

    return-object v0

    .line 510
    :pswitch_71
    const-string v0, "unregisterOemExtensionCallback"

    return-object v0

    .line 506
    :pswitch_74
    const-string v0, "registerOemExtensionCallback"

    return-object v0

    .line 502
    :pswitch_77
    const-string v0, "unregisterAdapterStateCallbacks"

    return-object v0

    .line 498
    :pswitch_7a
    const-string v0, "unregisterVendorExtensionCallback"

    return-object v0

    .line 494
    :pswitch_7d
    const-string v0, "registerVendorExtensionCallback"

    return-object v0

    .line 490
    :pswitch_80
    const-string v0, "registerAdapterStateCallbacks"

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 481
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2155
    const/16 v0, 0x29

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 665
    invoke-static {p1}, Landroid/uwb/IUwbAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 669
    const-string v0, "android.uwb.IUwbAdapter"

    .line 670
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 671
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    return v1

    .line 677
    :cond_16
    packed-switch p1, :pswitch_data_3f0

    .line 1103
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1096
    :pswitch_1f
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->queryUwbsTimestampMicros()J

    move-result-wide v2

    .line 1097
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1099
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1087
    .end local v2    # "_result":J
    :pswitch_2c
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 1088
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->queryMaxDataSizeBytes(Landroid/uwb/SessionHandle;)I

    move-result v3

    .line 1090
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1078
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_result":I
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IOnUwbActivityEnergyInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IOnUwbActivityEnergyInfoListener;

    move-result-object v2

    .line 1079
    .local v2, "_arg0":Landroid/uwb/IOnUwbActivityEnergyInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->getUwbActivityEnergyInfoAsync(Landroid/uwb/IOnUwbActivityEnergyInfoListener;)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1067
    .end local v2    # "_arg0":Landroid/uwb/IOnUwbActivityEnergyInfoListener;
    :pswitch_58
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 1069
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1070
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->updateRangingRoundsDtTag(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1056
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_74
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 1058
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1059
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->setHybridSessionControleeConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1045
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_90
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 1047
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1048
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->setHybridSessionControllerConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1029
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1031
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1033
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1035
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1036
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbAdapter$Stub;->sendVendorUciMessage(III[B)I

    move-result v6

    .line 1038
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1018
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":I
    :pswitch_cc
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 1020
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1021
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->updatePose(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move-object v3, p0

    goto/16 :goto_3ef

    .line 1008
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_e8
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 1009
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->removeProfileAdf(Landroid/os/PersistableBundle;)I

    move-result v3

    .line 1011
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    move-object v3, p0

    goto/16 :goto_3ef

    .line 997
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":I
    :pswitch_100
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 999
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/uwb/IUwbAdfProvisionStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdfProvisionStateCallbacks;

    move-result-object v3

    .line 1000
    .local v3, "_arg1":Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    move-object v3, p0

    goto/16 :goto_3ef

    .line 987
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    :pswitch_11c
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 988
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 990
    .local v3, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 992
    move-object v3, p0

    goto/16 :goto_3ef

    .line 977
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":Landroid/os/PersistableBundle;
    :pswitch_134
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 978
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 980
    .restart local v3    # "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 982
    move-object v3, p0

    goto/16 :goto_3ef

    .line 969
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":Landroid/os/PersistableBundle;
    :pswitch_14c
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->getAllServiceProfiles()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 970
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 972
    move-object v3, p0

    goto/16 :goto_3ef

    .line 960
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_159
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 961
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->removeServiceProfile(Landroid/os/PersistableBundle;)I

    move-result v3

    .line 963
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    move-object v3, p0

    goto/16 :goto_3ef

    .line 950
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":I
    :pswitch_171
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 951
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 953
    .local v3, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 955
    move-object v3, p0

    goto/16 :goto_3ef

    .line 942
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":Landroid/os/PersistableBundle;
    :pswitch_189
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->getDefaultChipId()Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    move-object v3, p0

    goto/16 :goto_3ef

    .line 935
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_196
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->getChipIds()Ljava/util/List;

    move-result-object v2

    .line 936
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 938
    move-object v3, p0

    goto/16 :goto_3ef

    .line 928
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1a3
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->getChipInfos()Ljava/util/List;

    move-result-object v2

    .line 929
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-static {p3, v2, v1}, Landroid/uwb/IUwbAdapter$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 931
    move-object v3, p0

    goto/16 :goto_3ef

    .line 919
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :pswitch_1b0
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 920
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->isHwEnableRequested(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 922
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 924
    move-object v3, p0

    goto/16 :goto_3ef

    .line 906
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_1c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 908
    .local v2, "_arg0":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 910
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 911
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbAdapter$Stub;->requestHwEnabled(ZLandroid/content/AttributionSource;Landroid/os/IBinder;)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    move-object v3, p0

    goto/16 :goto_3ef

    .line 898
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_1e4
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->isHwIdleTurnOffEnabled()Z

    move-result v2

    .line 899
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 901
    move-object v3, p0

    goto/16 :goto_3ef

    .line 891
    .end local v2    # "_result":Z
    :pswitch_1f1
    invoke-virtual {p0}, Landroid/uwb/IUwbAdapter$Stub;->getAdapterState()I

    move-result v2

    .line 892
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    move-object v3, p0

    goto/16 :goto_3ef

    .line 883
    .end local v2    # "_result":I
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 884
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->setEnabled(Z)V

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    move-object v3, p0

    goto/16 :goto_3ef

    .line 872
    .end local v2    # "_arg0":Z
    :pswitch_20e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 874
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 875
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->setDataTransferPhaseConfig(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    move-object v3, p0

    goto/16 :goto_3ef

    .line 857
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_22a
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 859
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 861
    .local v3, "_arg1":Landroid/uwb/UwbAddress;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 863
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 864
    .restart local v5    # "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbAdapter$Stub;->sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object v3, p0

    goto/16 :goto_3ef

    .line 846
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    .end local v5    # "_arg3":[B
    :pswitch_252
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 848
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 849
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    move-object v3, p0

    goto/16 :goto_3ef

    .line 835
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_26e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 837
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 838
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object v3, p0

    goto/16 :goto_3ef

    .line 824
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_28a
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 826
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 827
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    move-object v3, p0

    goto/16 :goto_3ef

    .line 813
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_2a6
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 815
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 816
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    move-object v3, p0

    goto/16 :goto_3ef

    .line 804
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_2c2
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 805
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->closeRanging(Landroid/uwb/SessionHandle;)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    move-object v3, p0

    goto/16 :goto_3ef

    .line 795
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    :pswitch_2d6
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 796
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->stopRanging(Landroid/uwb/SessionHandle;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    move-object v3, p0

    goto/16 :goto_3ef

    .line 784
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    :pswitch_2ea
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 786
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 787
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object v3, p0

    goto/16 :goto_3ef

    .line 773
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_306
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 775
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 776
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    move-object v3, p0

    goto/16 :goto_3ef

    .line 756
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_322
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/AttributionSource;

    .line 758
    .local v4, "_arg0":Landroid/content/AttributionSource;
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/uwb/SessionHandle;

    .line 760
    .local v5, "_arg1":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbRangingCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbRangingCallbacks;

    move-result-object v6

    .line 762
    .local v6, "_arg2":Landroid/uwb/IUwbRangingCallbacks;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/PersistableBundle;

    .line 764
    .local v7, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/uwb/IUwbAdapter$Stub;->openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_3ef

    .line 746
    .end local v4    # "_arg0":Landroid/content/AttributionSource;
    .end local v5    # "_arg1":Landroid/uwb/SessionHandle;
    .end local v6    # "_arg2":Landroid/uwb/IUwbRangingCallbacks;
    .end local v7    # "_arg3":Landroid/os/PersistableBundle;
    .end local v8    # "_arg4":Ljava/lang/String;
    :pswitch_355
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 749
    .local v4, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 751
    goto/16 :goto_3ef

    .line 736
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/PersistableBundle;
    :pswitch_369
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->getTimestampResolutionNanos(Ljava/lang/String;)J

    move-result-wide v4

    .line 739
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 741
    goto/16 :goto_3ef

    .line 727
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_37d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbOemExtensionCallback;

    move-result-object v2

    .line 728
    .local v2, "_arg0":Landroid/uwb/IUwbOemExtensionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->unregisterOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto :goto_3ef

    .line 718
    .end local v2    # "_arg0":Landroid/uwb/IUwbOemExtensionCallback;
    :pswitch_390
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbOemExtensionCallback;

    move-result-object v2

    .line 719
    .restart local v2    # "_arg0":Landroid/uwb/IUwbOemExtensionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->registerOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    goto :goto_3ef

    .line 709
    .end local v2    # "_arg0":Landroid/uwb/IUwbOemExtensionCallback;
    :pswitch_3a3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbAdapterStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapterStateCallbacks;

    move-result-object v2

    .line 710
    .local v2, "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto :goto_3ef

    .line 700
    .end local v2    # "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    :pswitch_3b6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbVendorUciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbVendorUciCallback;

    move-result-object v2

    .line 701
    .local v2, "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->unregisterVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto :goto_3ef

    .line 691
    .end local v2    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    :pswitch_3c9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbVendorUciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbVendorUciCallback;

    move-result-object v2

    .line 692
    .restart local v2    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->registerVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto :goto_3ef

    .line 682
    .end local v2    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    :pswitch_3dc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/uwb/IUwbAdapterStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapterStateCallbacks;

    move-result-object v2

    .line 683
    .local v2, "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbAdapter$Stub;->registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    nop

    .line 1106
    .end local v2    # "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    :goto_3ef
    return v1

    :pswitch_data_3f0
    .packed-switch 0x1
        :pswitch_3dc
        :pswitch_3c9
        :pswitch_3b6
        :pswitch_3a3
        :pswitch_390
        :pswitch_37d
        :pswitch_369
        :pswitch_355
        :pswitch_322
        :pswitch_306
        :pswitch_2ea
        :pswitch_2d6
        :pswitch_2c2
        :pswitch_2a6
        :pswitch_28a
        :pswitch_26e
        :pswitch_252
        :pswitch_22a
        :pswitch_20e
        :pswitch_1fe
        :pswitch_1f1
        :pswitch_1e4
        :pswitch_1c8
        :pswitch_1b0
        :pswitch_1a3
        :pswitch_196
        :pswitch_189
        :pswitch_171
        :pswitch_159
        :pswitch_14c
        :pswitch_134
        :pswitch_11c
        :pswitch_100
        :pswitch_e8
        :pswitch_cc
        :pswitch_ac
        :pswitch_90
        :pswitch_74
        :pswitch_58
        :pswitch_44
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method
