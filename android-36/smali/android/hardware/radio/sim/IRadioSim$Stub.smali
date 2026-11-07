.class public abstract Landroid/hardware/radio/sim/IRadioSim$Stub;
.super Landroid/os/Binder;
.source "IRadioSim.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_areUiccApplicationsEnabled:I = 0x1

.field static final blacklist TRANSACTION_changeIccPin2ForApp:I = 0x2

.field static final blacklist TRANSACTION_changeIccPinForApp:I = 0x3

.field static final blacklist TRANSACTION_enableUiccApplications:I = 0x4

.field static final blacklist TRANSACTION_getAllowedCarriers:I = 0x5

.field static final blacklist TRANSACTION_getCdmaSubscription:I = 0x6

.field static final blacklist TRANSACTION_getCdmaSubscriptionSource:I = 0x7

.field static final blacklist TRANSACTION_getFacilityLockForApp:I = 0x8

.field static final blacklist TRANSACTION_getIccCardStatus:I = 0x9

.field static final blacklist TRANSACTION_getImsiForApp:I = 0xa

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSimPhonebookCapacity:I = 0xb

.field static final blacklist TRANSACTION_getSimPhonebookRecords:I = 0xc

.field static final blacklist TRANSACTION_iccCloseLogicalChannel:I = 0xd

.field static final blacklist TRANSACTION_iccCloseLogicalChannelWithSessionInfo:I = 0x25

.field static final blacklist TRANSACTION_iccIoForApp:I = 0xe

.field static final blacklist TRANSACTION_iccOpenLogicalChannel:I = 0xf

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannel:I = 0x10

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannel:I = 0x11

.field static final blacklist TRANSACTION_reportStkServiceIsRunning:I = 0x12

.field static final blacklist TRANSACTION_requestIccSimAuthentication:I = 0x13

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x14

.field static final blacklist TRANSACTION_sendEnvelope:I = 0x15

.field static final blacklist TRANSACTION_sendEnvelopeWithStatus:I = 0x16

.field static final blacklist TRANSACTION_sendTerminalResponseToSim:I = 0x17

.field static final blacklist TRANSACTION_setAllowedCarriers:I = 0x18

.field static final blacklist TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x19

.field static final blacklist TRANSACTION_setCdmaSubscriptionSource:I = 0x1a

.field static final blacklist TRANSACTION_setFacilityLockForApp:I = 0x1b

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x1c

.field static final blacklist TRANSACTION_setSimCardPower:I = 0x1d

.field static final blacklist TRANSACTION_setUiccSubscription:I = 0x1e

.field static final blacklist TRANSACTION_supplyIccPin2ForApp:I = 0x1f

.field static final blacklist TRANSACTION_supplyIccPinForApp:I = 0x20

.field static final blacklist TRANSACTION_supplyIccPuk2ForApp:I = 0x21

.field static final blacklist TRANSACTION_supplyIccPukForApp:I = 0x22

.field static final blacklist TRANSACTION_supplySimDepersonalization:I = 0x23

.field static final blacklist TRANSACTION_updateSimPhonebookRecords:I = 0x24


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 640
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 641
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->markVintfStability()V

    .line 642
    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 650
    if-nez p0, :cond_4

    .line 651
    const/4 v0, 0x0

    return-object v0

    .line 653
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 654
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSim;

    if-eqz v1, :cond_14

    .line 655
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/sim/IRadioSim;

    return-object v1

    .line 657
    :cond_14
    new-instance v1, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 661
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

    .line 665
    sget-object v7, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 666
    .local v7, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    if-gt p1, v1, :cond_d

    .line 667
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 670
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    return v8

    .line 673
    :cond_16
    if-ne p1, v1, :cond_23

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    return v8

    .line 678
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    return v8

    .line 683
    :cond_33
    packed-switch p1, :pswitch_data_2dc

    .line 1080
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1071
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1073
    .local v1, "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SessionInfo;

    .line 1074
    .local v2, "_arg1":Landroid/hardware/radio/sim/SessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccCloseLogicalChannelWithSessionInfo(ILandroid/hardware/radio/sim/SessionInfo;)V

    .line 1076
    goto/16 :goto_2da

    .line 1061
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/SessionInfo;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1063
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/PhonebookRecordInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    .line 1064
    .local v2, "_arg1":Landroid/hardware/radio/sim/PhonebookRecordInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V

    .line 1066
    goto/16 :goto_2da

    .line 1049
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/PhonebookRecordInfo;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    .line 1056
    goto/16 :goto_2da

    .line 1035
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    goto/16 :goto_2da

    .line 1021
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1023
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    goto/16 :goto_2da

    .line 1009
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1011
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1014
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 1016
    goto/16 :goto_2da

    .line 997
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 999
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    goto/16 :goto_2da

    .line 987
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/SelectUiccSub;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SelectUiccSub;

    .line 990
    .local v2, "_arg1":Landroid/hardware/radio/sim/SelectUiccSub;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setUiccSubscription(ILandroid/hardware/radio/sim/SelectUiccSub;)V

    .line 992
    goto/16 :goto_2da

    .line 977
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/SelectUiccSub;
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setSimCardPower(II)V

    .line 982
    goto/16 :goto_2da

    .line 967
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;

    move-result-object v1

    .line 969
    .local v1, "_arg0":Landroid/hardware/radio/sim/IRadioSimResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimIndication;

    move-result-object v2

    .line 970
    .local v2, "_arg1":Landroid/hardware/radio/sim/IRadioSimIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    .line 972
    goto/16 :goto_2da

    .line 949
    .end local v1    # "_arg0":Landroid/hardware/radio/sim/IRadioSimResponse;
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/IRadioSimIndication;
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 951
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 955
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 957
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 959
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 960
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 962
    goto/16 :goto_2da

    .line 939
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 941
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 942
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCdmaSubscriptionSource(II)V

    .line 944
    goto/16 :goto_2da

    .line 929
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 931
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    .line 932
    .local v2, "_arg1":Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V

    .line 934
    goto/16 :goto_2da

    .line 917
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/CarrierRestrictions;

    .line 921
    .local v2, "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 922
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 924
    goto/16 :goto_2da

    .line 907
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local v3    # "_arg2":I
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 912
    goto/16 :goto_2da

    .line 897
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 900
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 902
    goto/16 :goto_2da

    .line 887
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 890
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 892
    goto/16 :goto_2da

    .line 881
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_198
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->responseAcknowledgement()V

    .line 882
    goto/16 :goto_2da

    .line 868
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 872
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 875
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 877
    goto/16 :goto_2da

    .line 860
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->reportStkServiceIsRunning(I)V

    .line 863
    goto/16 :goto_2da

    .line 850
    .end local v1    # "_arg0":I
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 852
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SimApdu;

    .line 853
    .local v2, "_arg1":Landroid/hardware/radio/sim/SimApdu;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    .line 855
    goto/16 :goto_2da

    .line 840
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/SimApdu;
    :pswitch_1d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 842
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SimApdu;

    .line 843
    .restart local v2    # "_arg1":Landroid/hardware/radio/sim/SimApdu;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    .line 845
    goto/16 :goto_2da

    .line 828
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/SimApdu;
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 835
    goto/16 :goto_2da

    .line 818
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 820
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/sim/IccIo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/IccIo;

    .line 821
    .local v2, "_arg1":Landroid/hardware/radio/sim/IccIo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V

    .line 823
    goto/16 :goto_2da

    .line 808
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/sim/IccIo;
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 810
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccCloseLogicalChannel(II)V

    .line 813
    goto/16 :goto_2da

    .line 800
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 801
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookRecords(I)V

    .line 803
    goto/16 :goto_2da

    .line 792
    .end local v1    # "_arg0":I
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookCapacity(I)V

    .line 795
    goto/16 :goto_2da

    .line 782
    .end local v1    # "_arg0":I
    :pswitch_239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 787
    goto/16 :goto_2da

    .line 774
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getIccCardStatus(I)V

    .line 777
    goto/16 :goto_2da

    .line 758
    .end local v1    # "_arg0":I
    :pswitch_255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 760
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 762
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 766
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 769
    goto :goto_2da

    .line 750
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 751
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscriptionSource(I)V

    .line 753
    goto :goto_2da

    .line 742
    .end local v1    # "_arg0":I
    :pswitch_27c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscription(I)V

    .line 745
    goto :goto_2da

    .line 734
    .end local v1    # "_arg0":I
    :pswitch_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getAllowedCarriers(I)V

    .line 737
    goto :goto_2da

    .line 724
    .end local v1    # "_arg0":I
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 726
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 727
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->enableUiccApplications(IZ)V

    .line 729
    goto :goto_2da

    .line 710
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 716
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    goto :goto_2da

    .line 696
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 698
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 700
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 703
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    goto :goto_2da

    .line 688
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->areUiccApplicationsEnabled(I)V

    .line 691
    nop

    .line 1083
    .end local v1    # "_arg0":I
    :goto_2da
    return v8

    nop

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_2b8
        :pswitch_2a1
        :pswitch_292
        :pswitch_287
        :pswitch_27c
        :pswitch_271
        :pswitch_255
        :pswitch_249
        :pswitch_239
        :pswitch_22d
        :pswitch_221
        :pswitch_211
        :pswitch_1fd
        :pswitch_1e9
        :pswitch_1d5
        :pswitch_1c1
        :pswitch_1b5
        :pswitch_19d
        :pswitch_198
        :pswitch_188
        :pswitch_178
        :pswitch_168
        :pswitch_150
        :pswitch_13c
        :pswitch_12c
        :pswitch_10b
        :pswitch_f3
        :pswitch_e3
        :pswitch_cf
        :pswitch_bb
        :pswitch_a7
        :pswitch_8f
        :pswitch_77
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
