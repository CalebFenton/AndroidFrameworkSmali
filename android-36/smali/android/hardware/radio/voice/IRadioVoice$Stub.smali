.class public abstract Landroid/hardware/radio/voice/IRadioVoice$Stub;
.super Landroid/os/Binder;
.source "IRadioVoice.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCall:I = 0x1

.field static final blacklist TRANSACTION_cancelPendingUssd:I = 0x2

.field static final blacklist TRANSACTION_conference:I = 0x3

.field static final blacklist TRANSACTION_dial:I = 0x4

.field static final blacklist TRANSACTION_emergencyDial:I = 0x5

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x6

.field static final blacklist TRANSACTION_explicitCallTransfer:I = 0x7

.field static final blacklist TRANSACTION_getCallForwardStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallWaiting:I = 0x9

.field static final blacklist TRANSACTION_getClip:I = 0xa

.field static final blacklist TRANSACTION_getClir:I = 0xb

.field static final blacklist TRANSACTION_getCurrentCalls:I = 0xc

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCause:I = 0xd

.field static final blacklist TRANSACTION_getMute:I = 0xe

.field static final blacklist TRANSACTION_getPreferredVoicePrivacy:I = 0xf

.field static final blacklist TRANSACTION_getTtyMode:I = 0x10

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSim:I = 0x11

.field static final blacklist TRANSACTION_hangup:I = 0x12

.field static final blacklist TRANSACTION_hangupForegroundResumeBackground:I = 0x13

.field static final blacklist TRANSACTION_hangupWaitingOrBackground:I = 0x14

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x15

.field static final blacklist TRANSACTION_rejectCall:I = 0x16

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmf:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCode:I = 0x19

.field static final blacklist TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendUssd:I = 0x1b

.field static final blacklist TRANSACTION_separateConnection:I = 0x1c

.field static final blacklist TRANSACTION_setCallForward:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaiting:I = 0x1e

.field static final blacklist TRANSACTION_setClir:I = 0x1f

.field static final blacklist TRANSACTION_setMute:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacy:I = 0x21

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x22

.field static final blacklist TRANSACTION_setTtyMode:I = 0x23

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x24

.field static final blacklist TRANSACTION_startDtmf:I = 0x25

.field static final blacklist TRANSACTION_stopDtmf:I = 0x26

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActive:I = 0x27


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 622
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 623
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->markVintfStability()V

    .line 624
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 632
    if-nez p0, :cond_4

    .line 633
    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 636
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoice;

    if-eqz v1, :cond_14

    .line 637
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoice;

    return-object v1

    .line 639
    :cond_14
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 643
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 648
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 649
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 652
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    return v2

    .line 655
    :cond_16
    if-ne p1, v1, :cond_23

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    return v2

    .line 660
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    return v2

    .line 665
    :cond_33
    packed-switch p1, :pswitch_data_2b4

    .line 1034
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1027
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1028
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 1030
    move-object v3, p0

    goto/16 :goto_2b3

    .line 1019
    .end local v1    # "_arg0":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1020
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->stopDtmf(I)V

    .line 1022
    move-object v3, p0

    goto/16 :goto_2b3

    .line 1009
    .end local v1    # "_arg0":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1011
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->startDtmf(ILjava/lang/String;)V

    .line 1014
    move-object v3, p0

    goto/16 :goto_2b3

    .line 999
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1001
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1002
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setVoNrEnabled(IZ)V

    .line 1004
    move-object v3, p0

    goto/16 :goto_2b3

    .line 989
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 992
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setTtyMode(II)V

    .line 994
    move-object v3, p0

    goto/16 :goto_2b3

    .line 979
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;

    move-result-object v1

    .line 981
    .local v1, "_arg0":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;

    move-result-object v3

    .line 982
    .local v3, "_arg1":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 984
    move-object v3, p0

    goto/16 :goto_2b3

    .line 969
    .end local v1    # "_arg0":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 971
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 972
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 974
    move-object v3, p0

    goto/16 :goto_2b3

    .line 959
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 962
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setMute(IZ)V

    .line 964
    move-object v3, p0

    goto/16 :goto_2b3

    .line 949
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 951
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 952
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setClir(II)V

    .line 954
    move-object v3, p0

    goto/16 :goto_2b3

    .line 937
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 939
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 941
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallWaiting(IZI)V

    .line 944
    move-object v3, p0

    goto/16 :goto_2b3

    .line 927
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 929
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 930
    .local v3, "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 932
    move-object v3, p0

    goto/16 :goto_2b3

    .line 917
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 920
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->separateConnection(II)V

    .line 922
    move-object v3, p0

    goto/16 :goto_2b3

    .line 907
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 910
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendUssd(ILjava/lang/String;)V

    .line 912
    move-object v3, p0

    goto/16 :goto_2b3

    .line 897
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 900
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 902
    move-object v3, p0

    goto/16 :goto_2b3

    .line 887
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendCdmaFeatureCode(ILjava/lang/String;)V

    .line 892
    move-object v3, p0

    goto/16 :goto_2b3

    .line 873
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 875
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 877
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 879
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 880
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 882
    move-object v3, p0

    goto/16 :goto_2b3

    .line 867
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_15c
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->responseAcknowledgement()V

    .line 868
    move-object v3, p0

    goto/16 :goto_2b3

    .line 860
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->rejectCall(I)V

    .line 863
    move-object v3, p0

    goto/16 :goto_2b3

    .line 852
    .end local v1    # "_arg0":I
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->isVoNrEnabled(I)V

    .line 855
    move-object v3, p0

    goto/16 :goto_2b3

    .line 844
    .end local v1    # "_arg0":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupWaitingOrBackground(I)V

    .line 847
    move-object v3, p0

    goto/16 :goto_2b3

    .line 836
    .end local v1    # "_arg0":I
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 837
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupForegroundResumeBackground(I)V

    .line 839
    move-object v3, p0

    goto/16 :goto_2b3

    .line 826
    .end local v1    # "_arg0":I
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 829
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangup(II)V

    .line 831
    move-object v3, p0

    goto/16 :goto_2b3

    .line 816
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 819
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 821
    move-object v3, p0

    goto/16 :goto_2b3

    .line 808
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getTtyMode(I)V

    .line 811
    move-object v3, p0

    goto/16 :goto_2b3

    .line 800
    .end local v1    # "_arg0":I
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 801
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getPreferredVoicePrivacy(I)V

    .line 803
    move-object v3, p0

    goto/16 :goto_2b3

    .line 792
    .end local v1    # "_arg0":I
    :pswitch_1d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getMute(I)V

    .line 795
    move-object v3, p0

    goto/16 :goto_2b3

    .line 784
    .end local v1    # "_arg0":I
    :pswitch_1df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 785
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getLastCallFailCause(I)V

    .line 787
    move-object v3, p0

    goto/16 :goto_2b3

    .line 776
    .end local v1    # "_arg0":I
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 777
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCurrentCalls(I)V

    .line 779
    move-object v3, p0

    goto/16 :goto_2b3

    .line 768
    .end local v1    # "_arg0":I
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClir(I)V

    .line 771
    move-object v3, p0

    goto/16 :goto_2b3

    .line 760
    .end local v1    # "_arg0":I
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 761
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClip(I)V

    .line 763
    move-object v3, p0

    goto/16 :goto_2b3

    .line 750
    .end local v1    # "_arg0":I
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallWaiting(II)V

    .line 755
    move-object v3, p0

    goto/16 :goto_2b3

    .line 740
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 743
    .local v3, "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 745
    move-object v3, p0

    goto/16 :goto_2b3

    .line 732
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->explicitCallTransfer(I)V

    .line 735
    move-object v3, p0

    goto/16 :goto_2b3

    .line 724
    .end local v1    # "_arg0":I
    :pswitch_246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->exitEmergencyCallbackMode(I)V

    .line 727
    move-object v3, p0

    goto :goto_2b3

    .line 704
    .end local v1    # "_arg0":I
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 706
    .local v4, "_arg0":I
    sget-object v1, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/radio/voice/Dial;

    .line 708
    .local v5, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 710
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 714
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 716
    .local v9, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 717
    .local v10, "_arg6":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    .line 719
    goto :goto_2b3

    .line 694
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/hardware/radio/voice/Dial;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":[Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Z
    .end local v10    # "_arg6":Z
    :pswitch_27b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 696
    .restart local v1    # "_arg0":I
    sget-object v4, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/voice/Dial;

    .line 697
    .local v4, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->dial(ILandroid/hardware/radio/voice/Dial;)V

    .line 699
    goto :goto_2b3

    .line 686
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/radio/voice/Dial;
    :pswitch_28f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 687
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->conference(I)V

    .line 689
    goto :goto_2b3

    .line 678
    .end local v1    # "_arg0":I
    :pswitch_29b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 679
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->cancelPendingUssd(I)V

    .line 681
    goto :goto_2b3

    .line 670
    .end local v1    # "_arg0":I
    :pswitch_2a7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 671
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->acceptCall(I)V

    .line 673
    nop

    .line 1037
    .end local v1    # "_arg0":I
    :goto_2b3
    return v2

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_2a7
        :pswitch_29b
        :pswitch_28f
        :pswitch_27b
        :pswitch_252
        :pswitch_246
        :pswitch_239
        :pswitch_224
        :pswitch_213
        :pswitch_206
        :pswitch_1f9
        :pswitch_1ec
        :pswitch_1df
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1a7
        :pswitch_196
        :pswitch_189
        :pswitch_17c
        :pswitch_16f
        :pswitch_162
        :pswitch_15c
        :pswitch_143
        :pswitch_132
        :pswitch_121
        :pswitch_110
        :pswitch_ff
        :pswitch_ea
        :pswitch_d5
        :pswitch_c4
        :pswitch_b3
        :pswitch_a2
        :pswitch_89
        :pswitch_78
        :pswitch_67
        :pswitch_56
        :pswitch_49
        :pswitch_3c
    .end packed-switch
.end method
