.class public abstract Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_areUiccApplicationsEnabledResponse:I = 0x2

.field static final blacklist TRANSACTION_changeIccPin2ForAppResponse:I = 0x3

.field static final blacklist TRANSACTION_changeIccPinForAppResponse:I = 0x4

.field static final blacklist TRANSACTION_enableUiccApplicationsResponse:I = 0x5

.field static final blacklist TRANSACTION_getAllowedCarriersResponse:I = 0x6

.field static final blacklist TRANSACTION_getCdmaSubscriptionResponse:I = 0x7

.field static final blacklist TRANSACTION_getCdmaSubscriptionSourceResponse:I = 0x8

.field static final blacklist TRANSACTION_getFacilityLockForAppResponse:I = 0x9

.field static final blacklist TRANSACTION_getIccCardStatusResponse:I = 0xa

.field static final blacklist TRANSACTION_getImsiForAppResponse:I = 0xb

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSimPhonebookCapacityResponse:I = 0xc

.field static final blacklist TRANSACTION_getSimPhonebookRecordsResponse:I = 0xd

.field static final blacklist TRANSACTION_iccCloseLogicalChannelResponse:I = 0xe

.field static final blacklist TRANSACTION_iccCloseLogicalChannelWithSessionInfoResponse:I = 0x24

.field static final blacklist TRANSACTION_iccIoForAppResponse:I = 0xf

.field static final blacklist TRANSACTION_iccOpenLogicalChannelResponse:I = 0x10

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelResponse:I = 0x11

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelResponse:I = 0x12

.field static final blacklist TRANSACTION_reportStkServiceIsRunningResponse:I = 0x13

.field static final blacklist TRANSACTION_requestIccSimAuthenticationResponse:I = 0x14

.field static final blacklist TRANSACTION_sendEnvelopeResponse:I = 0x15

.field static final blacklist TRANSACTION_sendEnvelopeWithStatusResponse:I = 0x16

.field static final blacklist TRANSACTION_sendTerminalResponseToSimResponse:I = 0x17

.field static final blacklist TRANSACTION_setAllowedCarriersResponse:I = 0x18

.field static final blacklist TRANSACTION_setCarrierInfoForImsiEncryptionResponse:I = 0x19

.field static final blacklist TRANSACTION_setCdmaSubscriptionSourceResponse:I = 0x1a

.field static final blacklist TRANSACTION_setFacilityLockForAppResponse:I = 0x1b

.field static final blacklist TRANSACTION_setSimCardPowerResponse:I = 0x1c

.field static final blacklist TRANSACTION_setUiccSubscriptionResponse:I = 0x1d

.field static final blacklist TRANSACTION_supplyIccPin2ForAppResponse:I = 0x1e

.field static final blacklist TRANSACTION_supplyIccPinForAppResponse:I = 0x1f

.field static final blacklist TRANSACTION_supplyIccPuk2ForAppResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyIccPukForAppResponse:I = 0x21

.field static final blacklist TRANSACTION_supplySimDepersonalizationResponse:I = 0x22

.field static final blacklist TRANSACTION_updateSimPhonebookRecordsResponse:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 733
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 734
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->markVintfStability()V

    .line 735
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 743
    if-nez p0, :cond_4

    .line 744
    const/4 v0, 0x0

    return-object v0

    .line 746
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 747
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSimResponse;

    if-eqz v1, :cond_14

    .line 748
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/sim/IRadioSimResponse;

    return-object v1

    .line 750
    :cond_14
    new-instance v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 754
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 759
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 760
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    return v2

    .line 766
    :cond_16
    if-ne p1, v1, :cond_23

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    return v2

    .line 771
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    return v2

    .line 776
    :cond_33
    packed-switch p1, :pswitch_data_334

    .line 1130
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1123
    :pswitch_3c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1124
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1126
    move-object v3, p0

    goto/16 :goto_333

    .line 1113
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1115
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1116
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1118
    move-object v3, p0

    goto/16 :goto_333

    .line 1101
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_62
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1103
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1105
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1106
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 1108
    move-object v3, p0

    goto/16 :goto_333

    .line 1091
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1093
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1094
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1096
    move-object v3, p0

    goto/16 :goto_333

    .line 1081
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_90
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1083
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1084
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1086
    move-object v3, p0

    goto/16 :goto_333

    .line 1071
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_a5
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1073
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1074
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1076
    move-object v3, p0

    goto/16 :goto_333

    .line 1061
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_ba
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1063
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1064
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1066
    move-object v3, p0

    goto/16 :goto_333

    .line 1053
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_cf
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1054
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1056
    move-object v3, p0

    goto/16 :goto_333

    .line 1045
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_e0
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1046
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1048
    move-object v3, p0

    goto/16 :goto_333

    .line 1035
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_f1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1037
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1038
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1040
    move-object v3, p0

    goto/16 :goto_333

    .line 1027
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_106
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1028
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1030
    move-object v3, p0

    goto/16 :goto_333

    .line 1019
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_117
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1020
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1022
    move-object v3, p0

    goto/16 :goto_333

    .line 1011
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_128
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1012
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1014
    move-object v3, p0

    goto/16 :goto_333

    .line 1003
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_139
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1004
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1006
    move-object v3, p0

    goto/16 :goto_333

    .line 993
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_14a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 995
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/IccIoResult;

    .line 996
    .local v3, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 998
    move-object v3, p0

    goto/16 :goto_333

    .line 983
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_163
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 985
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 986
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 988
    move-object v3, p0

    goto/16 :goto_333

    .line 973
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_178
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 975
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/IccIoResult;

    .line 976
    .local v3, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 978
    move-object v3, p0

    goto/16 :goto_333

    .line 965
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_191
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 966
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 968
    move-object v3, p0

    goto/16 :goto_333

    .line 955
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1a2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 957
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/IccIoResult;

    .line 958
    .restart local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 960
    move-object v3, p0

    goto/16 :goto_333

    .line 945
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_1bb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 947
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/IccIoResult;

    .line 948
    .restart local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 950
    move-object v3, p0

    goto/16 :goto_333

    .line 933
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_1d4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 935
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 938
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V

    .line 940
    move-object v3, p0

    goto/16 :goto_333

    .line 923
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_1ed
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 925
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/IccIoResult;

    .line 926
    .local v3, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 928
    move-object v3, p0

    goto/16 :goto_333

    .line 915
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_206
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 916
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 918
    move-object v3, p0

    goto/16 :goto_333

    .line 907
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_217
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 908
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 910
    move-object v3, p0

    goto/16 :goto_333

    .line 897
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_228
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 899
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/PhonebookCapacity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/PhonebookCapacity;

    .line 900
    .local v3, "_arg1":Landroid/hardware/radio/sim/PhonebookCapacity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V

    .line 902
    move-object v3, p0

    goto/16 :goto_333

    .line 887
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/PhonebookCapacity;
    :pswitch_241
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 889
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 892
    move-object v3, p0

    goto/16 :goto_333

    .line 877
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_256
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 879
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/sim/CardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/CardStatus;

    .line 880
    .local v3, "_arg1":Landroid/hardware/radio/sim/CardStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V

    .line 882
    move-object v3, p0

    goto/16 :goto_333

    .line 867
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/CardStatus;
    :pswitch_26f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 869
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 872
    move-object v3, p0

    goto/16 :goto_333

    .line 857
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_284
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 859
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 860
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 862
    move-object v3, p0

    goto/16 :goto_333

    .line 839
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_299
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/radio/RadioResponseInfo;

    .line 841
    .local v4, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 845
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 850
    .local v9, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    goto/16 :goto_333

    .line 827
    .end local v4    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    :pswitch_2bf
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 829
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v4, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/sim/CarrierRestrictions;

    .line 831
    .local v4, "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 832
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, v1, v4, v5}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 834
    goto :goto_333

    .line 819
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v4    # "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local v5    # "_arg2":I
    :pswitch_2db
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 820
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 822
    goto :goto_333

    .line 809
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2eb
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 811
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 812
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 814
    goto :goto_333

    .line 799
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v4    # "_arg1":I
    :pswitch_2ff
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 801
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 802
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 804
    goto :goto_333

    .line 789
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v4    # "_arg1":I
    :pswitch_313
    move-object v3, p0

    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 791
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 792
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 794
    goto :goto_333

    .line 781
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v4    # "_arg1":Z
    :pswitch_327
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 782
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->acknowledgeRequest(I)V

    .line 784
    nop

    .line 1133
    .end local v1    # "_arg0":I
    :goto_333
    return v2

    :pswitch_data_334
    .packed-switch 0x1
        :pswitch_327
        :pswitch_313
        :pswitch_2ff
        :pswitch_2eb
        :pswitch_2db
        :pswitch_2bf
        :pswitch_299
        :pswitch_284
        :pswitch_26f
        :pswitch_256
        :pswitch_241
        :pswitch_228
        :pswitch_217
        :pswitch_206
        :pswitch_1ed
        :pswitch_1d4
        :pswitch_1bb
        :pswitch_1a2
        :pswitch_191
        :pswitch_178
        :pswitch_163
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_106
        :pswitch_f1
        :pswitch_e0
        :pswitch_cf
        :pswitch_ba
        :pswitch_a5
        :pswitch_90
        :pswitch_7b
        :pswitch_62
        :pswitch_4d
        :pswitch_3c
    .end packed-switch
.end method
