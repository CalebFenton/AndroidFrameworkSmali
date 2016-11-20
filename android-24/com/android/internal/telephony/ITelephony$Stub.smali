.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x6e

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x5e

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x5f

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x26

.field static final TRANSACTION_disableLocationUpdates:I = 0x23

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x24

.field static final TRANSACTION_enableDataConnectivity:I = 0x25

.field static final TRANSACTION_enableLocationUpdates:I = 0x21

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x22

.field static final TRANSACTION_enableVideoCalling:I = 0x6c

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x7a

.field static final TRANSACTION_getActivePhoneType:I = 0x2e

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x2f

.field static final TRANSACTION_getAllCellInfo:I = 0x43

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x50

.field static final TRANSACTION_getCallState:I = 0x2a

.field static final TRANSACTION_getCallStateForSlot:I = 0x2b

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x60

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x5d

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x30

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x31

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x32

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x33

.field static final TRANSACTION_getCdmaEriText:I = 0x34

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaMdn:I = 0x5b

.field static final TRANSACTION_getCdmaMin:I = 0x5c

.field static final TRANSACTION_getCellLocation:I = 0x28

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x54

.field static final TRANSACTION_getDataActivity:I = 0x2c

.field static final TRANSACTION_getDataEnabled:I = 0x58

.field static final TRANSACTION_getDataNetworkType:I = 0x3c

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3d

.field static final TRANSACTION_getDataState:I = 0x2d

.field static final TRANSACTION_getDefaultSim:I = 0x45

.field static final TRANSACTION_getDeviceId:I = 0x76

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x78

.field static final TRANSACTION_getImeiForSlot:I = 0x77

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x63

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x62

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x7b

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x41

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x42

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x64

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x29

.field static final TRANSACTION_getNetworkType:I = 0x3a

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3b

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x80

.field static final TRANSACTION_getPcscfAddress:I = 0x59

.field static final TRANSACTION_getPreferredNetworkType:I = 0x51

.field static final TRANSACTION_getRadioAccessFamily:I = 0x6b

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0x7d

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x79

.field static final TRANSACTION_getTetherApnRequired:I = 0x52

.field static final TRANSACTION_getVoiceMessageCount:I = 0x38

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x39

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3e

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0x7e

.field static final TRANSACTION_handlePinMmi:I = 0x18

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x19

.field static final TRANSACTION_hasIccCard:I = 0x3f

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x40

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x47

.field static final TRANSACTION_iccExchangeSimIO:I = 0x4a

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x46

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x49

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x48

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x67

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x27

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x71

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x72

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isTtyModeSupported:I = 0x70

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x6d

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x75

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0x7f

.field static final TRANSACTION_isVolteAvailable:I = 0x74

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x73

.field static final TRANSACTION_isWorldPhone:I = 0x6f

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x68

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x36

.field static final TRANSACTION_nvReadItem:I = 0x4c

.field static final TRANSACTION_nvResetConfig:I = 0x4f

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x4e

.field static final TRANSACTION_nvWriteItem:I = 0x4d

.field static final TRANSACTION_requestModemActivityInfo:I = 0x7c

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x4b

.field static final TRANSACTION_setCellInfoListRate:I = 0x44

.field static final TRANSACTION_setDataEnabled:I = 0x57

.field static final TRANSACTION_setImsRegistrationState:I = 0x5a

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x61

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x53

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x55

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x65

.field static final TRANSACTION_setPreferredNetworkType:I = 0x56

.field static final TRANSACTION_setRadio:I = 0x1c

.field static final TRANSACTION_setRadioCapability:I = 0x6a

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1d

.field static final TRANSACTION_setRadioPower:I = 0x1e

.field static final TRANSACTION_setRoamingOverride:I = 0x66

.field static final TRANSACTION_setVoiceMailNumber:I = 0x37

.field static final TRANSACTION_shutdownMobileRadios:I = 0x69

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x10

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x11

.field static final TRANSACTION_supplyPinReportResult:I = 0x14

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPuk:I = 0x12

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x13

.field static final TRANSACTION_supplyPukReportResult:I = 0x16

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x17

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1a

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1b

.field static final TRANSACTION_updateServiceLocation:I = 0x1f

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1447
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v24

    #@1e
    .line 57
    .local v24, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v24

    #@22
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    #@25
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 59
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 63
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v24

    #@36
    .line 67
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v29

    #@3a
    .line 68
    .local v29, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v24

    #@3e
    move-object/from16 v2, v29

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 70
    const/4 v3, 0x1

    #@47
    return v3

    #@48
    .line 74
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    #@53
    move-result v45

    #@54
    .line 76
    .local v45, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 77
    if-eqz v45, :cond_0

    #@59
    const/4 v3, 0x1

    #@5a
    :goto_0
    move-object/from16 v0, p3

    #@5c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 78
    const/4 v3, 0x1

    #@60
    return v3

    #@61
    .line 77
    :cond_0
    const/4 v3, 0x0

    #@62
    goto :goto_0

    #@63
    .line 82
    .end local v45    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v4

    #@6f
    .line 85
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    #@74
    move-result v45

    #@75
    .line 86
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    .line 87
    if-eqz v45, :cond_1

    #@7a
    const/4 v3, 0x1

    #@7b
    :goto_1
    move-object/from16 v0, p3

    #@7d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 88
    const/4 v3, 0x1

    #@81
    return v3

    #@82
    .line 87
    :cond_1
    const/4 v3, 0x0

    #@83
    goto :goto_1

    #@84
    .line 92
    .end local v4    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    #@8f
    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 95
    const/4 v3, 0x1

    #@93
    return v3

    #@94
    .line 99
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v4

    #@a0
    .line 102
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    #@a5
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 104
    const/4 v3, 0x1

    #@a9
    return v3

    #@aa
    .line 108
    .end local v4    # "_arg0":I
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    #@b5
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 111
    const/4 v3, 0x1

    #@b9
    return v3

    #@ba
    .line 115
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v24

    #@c6
    .line 118
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v24

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    #@cd
    move-result v45

    #@ce
    .line 119
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 120
    if-eqz v45, :cond_2

    #@d3
    const/4 v3, 0x1

    #@d4
    :goto_2
    move-object/from16 v0, p3

    #@d6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    .line 121
    const/4 v3, 0x1

    #@da
    return v3

    #@db
    .line 120
    :cond_2
    const/4 v3, 0x0

    #@dc
    goto :goto_2

    #@dd
    .line 125
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v4

    #@e9
    .line 129
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v29

    #@ed
    .line 130
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v29

    #@f1
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    #@f4
    move-result v45

    #@f5
    .line 131
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 132
    if-eqz v45, :cond_3

    #@fa
    const/4 v3, 0x1

    #@fb
    :goto_3
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 133
    const/4 v3, 0x1

    #@101
    return v3

    #@102
    .line 132
    :cond_3
    const/4 v3, 0x0

    #@103
    goto :goto_3

    #@104
    .line 137
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v4

    #@110
    .line 141
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v29

    #@114
    .line 142
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v29

    #@118
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    #@11b
    move-result v45

    #@11c
    .line 143
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11f
    .line 144
    if-eqz v45, :cond_4

    #@121
    const/4 v3, 0x1

    #@122
    :goto_4
    move-object/from16 v0, p3

    #@124
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 145
    const/4 v3, 0x1

    #@128
    return v3

    #@129
    .line 144
    :cond_4
    const/4 v3, 0x0

    #@12a
    goto :goto_4

    #@12b
    .line 149
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@136
    move-result-object v24

    #@137
    .line 152
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v24

    #@13b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    #@13e
    move-result v45

    #@13f
    .line 153
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@142
    .line 154
    if-eqz v45, :cond_5

    #@144
    const/4 v3, 0x1

    #@145
    :goto_5
    move-object/from16 v0, p3

    #@147
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 155
    const/4 v3, 0x1

    #@14b
    return v3

    #@14c
    .line 154
    :cond_5
    const/4 v3, 0x0

    #@14d
    goto :goto_5

    #@14e
    .line 159
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159
    move-result-object v24

    #@15a
    .line 162
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v24

    #@15e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    #@161
    move-result v45

    #@162
    .line 163
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 164
    if-eqz v45, :cond_6

    #@167
    const/4 v3, 0x1

    #@168
    :goto_6
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 165
    const/4 v3, 0x1

    #@16e
    return v3

    #@16f
    .line 164
    :cond_6
    const/4 v3, 0x0

    #@170
    goto :goto_6

    #@171
    .line 169
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v4

    #@17d
    .line 173
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@180
    move-result-object v29

    #@181
    .line 174
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v29

    #@185
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    #@188
    move-result v45

    #@189
    .line 175
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 176
    if-eqz v45, :cond_7

    #@18e
    const/4 v3, 0x1

    #@18f
    :goto_7
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 177
    const/4 v3, 0x1

    #@195
    return v3

    #@196
    .line 176
    :cond_7
    const/4 v3, 0x0

    #@197
    goto :goto_7

    #@198
    .line 181
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3
    move-result-object v24

    #@1a4
    .line 184
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, v24

    #@1a8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    #@1ab
    move-result v45

    #@1ac
    .line 185
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af
    .line 186
    if-eqz v45, :cond_8

    #@1b1
    const/4 v3, 0x1

    #@1b2
    :goto_8
    move-object/from16 v0, p3

    #@1b4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b7
    .line 187
    const/4 v3, 0x1

    #@1b8
    return v3

    #@1b9
    .line 186
    :cond_8
    const/4 v3, 0x0

    #@1ba
    goto :goto_8

    #@1bb
    .line 191
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v4

    #@1c7
    .line 195
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ca
    move-result-object v29

    #@1cb
    .line 196
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cd
    move-object/from16 v1, v29

    #@1cf
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    #@1d2
    move-result v45

    #@1d3
    .line 197
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 198
    if-eqz v45, :cond_9

    #@1d8
    const/4 v3, 0x1

    #@1d9
    :goto_9
    move-object/from16 v0, p3

    #@1db
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 199
    const/4 v3, 0x1

    #@1df
    return v3

    #@1e0
    .line 198
    :cond_9
    const/4 v3, 0x0

    #@1e1
    goto :goto_9

    #@1e2
    .line 203
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v24

    #@1ee
    .line 206
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f0
    move-object/from16 v1, v24

    #@1f2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    #@1f5
    move-result v45

    #@1f6
    .line 207
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 208
    if-eqz v45, :cond_a

    #@1fb
    const/4 v3, 0x1

    #@1fc
    :goto_a
    move-object/from16 v0, p3

    #@1fe
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@201
    .line 209
    const/4 v3, 0x1

    #@202
    return v3

    #@203
    .line 208
    :cond_a
    const/4 v3, 0x0

    #@204
    goto :goto_a

    #@205
    .line 213
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20d
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v4

    #@211
    .line 217
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@214
    move-result-object v29

    #@215
    .line 218
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v29

    #@219
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    #@21c
    move-result v45

    #@21d
    .line 219
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    .line 220
    if-eqz v45, :cond_b

    #@222
    const/4 v3, 0x1

    #@223
    :goto_b
    move-object/from16 v0, p3

    #@225
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@228
    .line 221
    const/4 v3, 0x1

    #@229
    return v3

    #@22a
    .line 220
    :cond_b
    const/4 v3, 0x0

    #@22b
    goto :goto_b

    #@22c
    .line 225
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@22f
    move-object/from16 v0, p2

    #@231
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@234
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@237
    move-result-object v24

    #@238
    .line 229
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23b
    move-result-object v29

    #@23c
    .line 230
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23e
    move-object/from16 v1, v24

    #@240
    move-object/from16 v2, v29

    #@242
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    #@245
    move-result v45

    #@246
    .line 231
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 232
    if-eqz v45, :cond_c

    #@24b
    const/4 v3, 0x1

    #@24c
    :goto_c
    move-object/from16 v0, p3

    #@24e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@251
    .line 233
    const/4 v3, 0x1

    #@252
    return v3

    #@253
    .line 232
    :cond_c
    const/4 v3, 0x0

    #@254
    goto :goto_c

    #@255
    .line 237
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@258
    move-object/from16 v0, p2

    #@25a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25d
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@260
    move-result v4

    #@261
    .line 241
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@264
    move-result-object v29

    #@265
    .line 243
    .restart local v29    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@268
    move-result-object v33

    #@269
    .line 244
    .local v33, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26b
    move-object/from16 v1, v29

    #@26d
    move-object/from16 v2, v33

    #@26f
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@272
    move-result v45

    #@273
    .line 245
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@276
    .line 246
    if-eqz v45, :cond_d

    #@278
    const/4 v3, 0x1

    #@279
    :goto_d
    move-object/from16 v0, p3

    #@27b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@27e
    .line 247
    const/4 v3, 0x1

    #@27f
    return v3

    #@280
    .line 246
    :cond_d
    const/4 v3, 0x0

    #@281
    goto :goto_d

    #@282
    .line 251
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a
    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28d
    move-result-object v24

    #@28e
    .line 254
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@290
    move-object/from16 v1, v24

    #@292
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    #@295
    move-result-object v47

    #@296
    .line 255
    .local v47, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@299
    .line 256
    move-object/from16 v0, p3

    #@29b
    move-object/from16 v1, v47

    #@29d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2a0
    .line 257
    const/4 v3, 0x1

    #@2a1
    return v3

    #@2a2
    .line 261
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v4

    #@2ae
    .line 265
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b1
    move-result-object v29

    #@2b2
    .line 266
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b4
    move-object/from16 v1, v29

    #@2b6
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    #@2b9
    move-result-object v47

    #@2ba
    .line 267
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd
    .line 268
    move-object/from16 v0, p3

    #@2bf
    move-object/from16 v1, v47

    #@2c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2c4
    .line 269
    const/4 v3, 0x1

    #@2c5
    return v3

    #@2c6
    .line 273
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v24

    #@2d2
    .line 277
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d5
    move-result-object v29

    #@2d6
    .line 278
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d8
    move-object/from16 v1, v24

    #@2da
    move-object/from16 v2, v29

    #@2dc
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    #@2df
    move-result-object v47

    #@2e0
    .line 279
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e3
    .line 280
    move-object/from16 v0, p3

    #@2e5
    move-object/from16 v1, v47

    #@2e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2ea
    .line 281
    const/4 v3, 0x1

    #@2eb
    return v3

    #@2ec
    .line 285
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@2ef
    move-object/from16 v0, p2

    #@2f1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f4
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v4

    #@2f8
    .line 289
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fb
    move-result-object v29

    #@2fc
    .line 291
    .restart local v29    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v33

    #@300
    .line 292
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v29

    #@304
    move-object/from16 v2, v33

    #@306
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    #@309
    move-result-object v47

    #@30a
    .line 293
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30d
    .line 294
    move-object/from16 v0, p3

    #@30f
    move-object/from16 v1, v47

    #@311
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@314
    .line 295
    const/4 v3, 0x1

    #@315
    return v3

    #@316
    .line 299
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@319
    move-object/from16 v0, p2

    #@31b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31e
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@321
    move-result-object v24

    #@322
    .line 302
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v24

    #@326
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    #@329
    move-result v45

    #@32a
    .line 303
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32d
    .line 304
    if-eqz v45, :cond_e

    #@32f
    const/4 v3, 0x1

    #@330
    :goto_e
    move-object/from16 v0, p3

    #@332
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@335
    .line 305
    const/4 v3, 0x1

    #@336
    return v3

    #@337
    .line 304
    :cond_e
    const/4 v3, 0x0

    #@338
    goto :goto_e

    #@339
    .line 309
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_19
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@33c
    move-object/from16 v0, p2

    #@33e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@341
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@344
    move-result v4

    #@345
    .line 313
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@348
    move-result-object v29

    #@349
    .line 314
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v29

    #@34d
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    #@350
    move-result v45

    #@351
    .line 315
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@354
    .line 316
    if-eqz v45, :cond_f

    #@356
    const/4 v3, 0x1

    #@357
    :goto_f
    move-object/from16 v0, p3

    #@359
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@35c
    .line 317
    const/4 v3, 0x1

    #@35d
    return v3

    #@35e
    .line 316
    :cond_f
    const/4 v3, 0x0

    #@35f
    goto :goto_f

    #@360
    .line 321
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_1a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    #@36b
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36e
    .line 324
    const/4 v3, 0x1

    #@36f
    return v3

    #@370
    .line 328
    :sswitch_1b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@378
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37b
    move-result v4

    #@37c
    .line 331
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@37e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    #@381
    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@384
    .line 333
    const/4 v3, 0x1

    #@385
    return v3

    #@386
    .line 337
    .end local v4    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@389
    move-object/from16 v0, p2

    #@38b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38e
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@391
    move-result v3

    #@392
    if-eqz v3, :cond_10

    #@394
    const/16 v25, 0x1

    #@396
    .line 340
    .local v25, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    #@398
    move/from16 v1, v25

    #@39a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    #@39d
    move-result v45

    #@39e
    .line 341
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 342
    if-eqz v45, :cond_11

    #@3a3
    const/4 v3, 0x1

    #@3a4
    :goto_11
    move-object/from16 v0, p3

    #@3a6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a9
    .line 343
    const/4 v3, 0x1

    #@3aa
    return v3

    #@3ab
    .line 339
    .end local v25    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_10
    const/16 v25, 0x0

    #@3ad
    goto :goto_10

    #@3ae
    .line 342
    .restart local v25    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_11
    const/4 v3, 0x0

    #@3af
    goto :goto_11

    #@3b0
    .line 347
    .end local v25    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@3b3
    move-object/from16 v0, p2

    #@3b5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b8
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bb
    move-result v4

    #@3bc
    .line 351
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bf
    move-result v3

    #@3c0
    if-eqz v3, :cond_12

    #@3c2
    const/16 v30, 0x1

    #@3c4
    .line 352
    .local v30, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@3c6
    move/from16 v1, v30

    #@3c8
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    #@3cb
    move-result v45

    #@3cc
    .line 353
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cf
    .line 354
    if-eqz v45, :cond_13

    #@3d1
    const/4 v3, 0x1

    #@3d2
    :goto_13
    move-object/from16 v0, p3

    #@3d4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3d7
    .line 355
    const/4 v3, 0x1

    #@3d8
    return v3

    #@3d9
    .line 351
    .end local v30    # "_arg1":Z
    .end local v45    # "_result":Z
    :cond_12
    const/16 v30, 0x0

    #@3db
    goto :goto_12

    #@3dc
    .line 354
    .restart local v30    # "_arg1":Z
    .restart local v45    # "_result":Z
    :cond_13
    const/4 v3, 0x0

    #@3dd
    goto :goto_13

    #@3de
    .line 359
    .end local v4    # "_arg0":I
    .end local v30    # "_arg1":Z
    .end local v45    # "_result":Z
    :sswitch_1e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e6
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e9
    move-result v3

    #@3ea
    if-eqz v3, :cond_14

    #@3ec
    const/16 v25, 0x1

    #@3ee
    .line 362
    .restart local v25    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    #@3f0
    move/from16 v1, v25

    #@3f2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    #@3f5
    move-result v45

    #@3f6
    .line 363
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f9
    .line 364
    if-eqz v45, :cond_15

    #@3fb
    const/4 v3, 0x1

    #@3fc
    :goto_15
    move-object/from16 v0, p3

    #@3fe
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@401
    .line 365
    const/4 v3, 0x1

    #@402
    return v3

    #@403
    .line 361
    .end local v25    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_14
    const/16 v25, 0x0

    #@405
    goto :goto_14

    #@406
    .line 364
    .restart local v25    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    #@407
    goto :goto_15

    #@408
    .line 369
    .end local v25    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@40b
    move-object/from16 v0, p2

    #@40d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@410
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    #@413
    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@416
    .line 372
    const/4 v3, 0x1

    #@417
    return v3

    #@418
    .line 376
    :sswitch_20
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@41b
    move-object/from16 v0, p2

    #@41d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@420
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@423
    move-result v4

    #@424
    .line 379
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@426
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    #@429
    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42c
    .line 381
    const/4 v3, 0x1

    #@42d
    return v3

    #@42e
    .line 385
    .end local v4    # "_arg0":I
    :sswitch_21
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@431
    move-object/from16 v0, p2

    #@433
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@436
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    #@439
    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 388
    const/4 v3, 0x1

    #@43d
    return v3

    #@43e
    .line 392
    :sswitch_22
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@441
    move-object/from16 v0, p2

    #@443
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@446
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@449
    move-result v4

    #@44a
    .line 395
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@44c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    #@44f
    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@452
    .line 397
    const/4 v3, 0x1

    #@453
    return v3

    #@454
    .line 401
    .end local v4    # "_arg0":I
    :sswitch_23
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45c
    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    #@45f
    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@462
    .line 404
    const/4 v3, 0x1

    #@463
    return v3

    #@464
    .line 408
    :sswitch_24
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@467
    move-object/from16 v0, p2

    #@469
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46c
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46f
    move-result v4

    #@470
    .line 411
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@472
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    #@475
    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@478
    .line 413
    const/4 v3, 0x1

    #@479
    return v3

    #@47a
    .line 417
    .end local v4    # "_arg0":I
    :sswitch_25
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@482
    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    #@485
    move-result v45

    #@486
    .line 419
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@489
    .line 420
    if-eqz v45, :cond_16

    #@48b
    const/4 v3, 0x1

    #@48c
    :goto_16
    move-object/from16 v0, p3

    #@48e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@491
    .line 421
    const/4 v3, 0x1

    #@492
    return v3

    #@493
    .line 420
    :cond_16
    const/4 v3, 0x0

    #@494
    goto :goto_16

    #@495
    .line 425
    .end local v45    # "_result":Z
    :sswitch_26
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@498
    move-object/from16 v0, p2

    #@49a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49d
    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    #@4a0
    move-result v45

    #@4a1
    .line 427
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a4
    .line 428
    if-eqz v45, :cond_17

    #@4a6
    const/4 v3, 0x1

    #@4a7
    :goto_17
    move-object/from16 v0, p3

    #@4a9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4ac
    .line 429
    const/4 v3, 0x1

    #@4ad
    return v3

    #@4ae
    .line 428
    :cond_17
    const/4 v3, 0x0

    #@4af
    goto :goto_17

    #@4b0
    .line 433
    .end local v45    # "_result":Z
    :sswitch_27
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@4b3
    move-object/from16 v0, p2

    #@4b5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b8
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    #@4bb
    move-result v45

    #@4bc
    .line 435
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bf
    .line 436
    if-eqz v45, :cond_18

    #@4c1
    const/4 v3, 0x1

    #@4c2
    :goto_18
    move-object/from16 v0, p3

    #@4c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4c7
    .line 437
    const/4 v3, 0x1

    #@4c8
    return v3

    #@4c9
    .line 436
    :cond_18
    const/4 v3, 0x0

    #@4ca
    goto :goto_18

    #@4cb
    .line 441
    .end local v45    # "_result":Z
    :sswitch_28
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d6
    move-result-object v24

    #@4d7
    .line 444
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d9
    move-object/from16 v1, v24

    #@4db
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    #@4de
    move-result-object v37

    #@4df
    .line 445
    .local v37, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e2
    .line 446
    if-eqz v37, :cond_19

    #@4e4
    .line 447
    const/4 v3, 0x1

    #@4e5
    move-object/from16 v0, p3

    #@4e7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4ea
    .line 448
    const/4 v3, 0x1

    #@4eb
    move-object/from16 v0, v37

    #@4ed
    move-object/from16 v1, p3

    #@4ef
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@4f2
    .line 453
    :goto_19
    const/4 v3, 0x1

    #@4f3
    return v3

    #@4f4
    .line 451
    :cond_19
    const/4 v3, 0x0

    #@4f5
    move-object/from16 v0, p3

    #@4f7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4fa
    goto :goto_19

    #@4fb
    .line 457
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v37    # "_result":Landroid/os/Bundle;
    :sswitch_29
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@4fe
    move-object/from16 v0, p2

    #@500
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@503
    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@506
    move-result-object v24

    #@507
    .line 460
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@509
    move-object/from16 v1, v24

    #@50b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@50e
    move-result-object v43

    #@50f
    .line 461
    .local v43, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@512
    .line 462
    move-object/from16 v0, p3

    #@514
    move-object/from16 v1, v43

    #@516
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@519
    .line 463
    const/4 v3, 0x1

    #@51a
    return v3

    #@51b
    .line 467
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@51e
    move-object/from16 v0, p2

    #@520
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@523
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    #@526
    move-result v35

    #@527
    .line 469
    .local v35, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52a
    .line 470
    move-object/from16 v0, p3

    #@52c
    move/from16 v1, v35

    #@52e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@531
    .line 471
    const/4 v3, 0x1

    #@532
    return v3

    #@533
    .line 475
    .end local v35    # "_result":I
    :sswitch_2b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@536
    move-object/from16 v0, p2

    #@538
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53b
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53e
    move-result v4

    #@53f
    .line 478
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@541
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSlot(I)I

    #@544
    move-result v35

    #@545
    .line 479
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@548
    .line 480
    move-object/from16 v0, p3

    #@54a
    move/from16 v1, v35

    #@54c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54f
    .line 481
    const/4 v3, 0x1

    #@550
    return v3

    #@551
    .line 485
    .end local v4    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_2c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@554
    move-object/from16 v0, p2

    #@556
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@559
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    #@55c
    move-result v35

    #@55d
    .line 487
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@560
    .line 488
    move-object/from16 v0, p3

    #@562
    move/from16 v1, v35

    #@564
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@567
    .line 489
    const/4 v3, 0x1

    #@568
    return v3

    #@569
    .line 493
    .end local v35    # "_result":I
    :sswitch_2d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@56c
    move-object/from16 v0, p2

    #@56e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@571
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    #@574
    move-result v35

    #@575
    .line 495
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@578
    .line 496
    move-object/from16 v0, p3

    #@57a
    move/from16 v1, v35

    #@57c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57f
    .line 497
    const/4 v3, 0x1

    #@580
    return v3

    #@581
    .line 501
    .end local v35    # "_result":I
    :sswitch_2e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@584
    move-object/from16 v0, p2

    #@586
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@589
    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    #@58c
    move-result v35

    #@58d
    .line 503
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 504
    move-object/from16 v0, p3

    #@592
    move/from16 v1, v35

    #@594
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@597
    .line 505
    const/4 v3, 0x1

    #@598
    return v3

    #@599
    .line 509
    .end local v35    # "_result":I
    :sswitch_2f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@59c
    move-object/from16 v0, p2

    #@59e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a1
    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a4
    move-result v4

    #@5a5
    .line 512
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@5a7
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    #@5aa
    move-result v35

    #@5ab
    .line 513
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ae
    .line 514
    move-object/from16 v0, p3

    #@5b0
    move/from16 v1, v35

    #@5b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b5
    .line 515
    const/4 v3, 0x1

    #@5b6
    return v3

    #@5b7
    .line 519
    .end local v4    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_30
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bf
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c2
    move-result-object v24

    #@5c3
    .line 522
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c5
    move-object/from16 v1, v24

    #@5c7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    #@5ca
    move-result v35

    #@5cb
    .line 523
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ce
    .line 524
    move-object/from16 v0, p3

    #@5d0
    move/from16 v1, v35

    #@5d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d5
    .line 525
    const/4 v3, 0x1

    #@5d6
    return v3

    #@5d7
    .line 529
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_31
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@5da
    move-object/from16 v0, p2

    #@5dc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5df
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e2
    move-result v4

    #@5e3
    .line 533
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e6
    move-result-object v29

    #@5e7
    .line 534
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5e9
    move-object/from16 v1, v29

    #@5eb
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    #@5ee
    move-result v35

    #@5ef
    .line 535
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f2
    .line 536
    move-object/from16 v0, p3

    #@5f4
    move/from16 v1, v35

    #@5f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f9
    .line 537
    const/4 v3, 0x1

    #@5fa
    return v3

    #@5fb
    .line 541
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_32
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@603
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@606
    move-result-object v24

    #@607
    .line 544
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@609
    move-object/from16 v1, v24

    #@60b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    #@60e
    move-result v35

    #@60f
    .line 545
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@612
    .line 546
    move-object/from16 v0, p3

    #@614
    move/from16 v1, v35

    #@616
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@619
    .line 547
    const/4 v3, 0x1

    #@61a
    return v3

    #@61b
    .line 551
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_33
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@61e
    move-object/from16 v0, p2

    #@620
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@623
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@626
    move-result v4

    #@627
    .line 555
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62a
    move-result-object v29

    #@62b
    .line 556
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62d
    move-object/from16 v1, v29

    #@62f
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    #@632
    move-result v35

    #@633
    .line 557
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@636
    .line 558
    move-object/from16 v0, p3

    #@638
    move/from16 v1, v35

    #@63a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63d
    .line 559
    const/4 v3, 0x1

    #@63e
    return v3

    #@63f
    .line 563
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_34
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@642
    move-object/from16 v0, p2

    #@644
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@647
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64a
    move-result-object v24

    #@64b
    .line 566
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@64d
    move-object/from16 v1, v24

    #@64f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    #@652
    move-result-object v41

    #@653
    .line 567
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@656
    .line 568
    move-object/from16 v0, p3

    #@658
    move-object/from16 v1, v41

    #@65a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@65d
    .line 569
    const/4 v3, 0x1

    #@65e
    return v3

    #@65f
    .line 573
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@662
    move-object/from16 v0, p2

    #@664
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@667
    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66a
    move-result v4

    #@66b
    .line 577
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66e
    move-result-object v29

    #@66f
    .line 578
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@671
    move-object/from16 v1, v29

    #@673
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@676
    move-result-object v41

    #@677
    .line 579
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67a
    .line 580
    move-object/from16 v0, p3

    #@67c
    move-object/from16 v1, v41

    #@67e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@681
    .line 581
    const/4 v3, 0x1

    #@682
    return v3

    #@683
    .line 585
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@686
    move-object/from16 v0, p2

    #@688
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68b
    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    #@68e
    move-result v45

    #@68f
    .line 587
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@692
    .line 588
    if-eqz v45, :cond_1a

    #@694
    const/4 v3, 0x1

    #@695
    :goto_1a
    move-object/from16 v0, p3

    #@697
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@69a
    .line 589
    const/4 v3, 0x1

    #@69b
    return v3

    #@69c
    .line 588
    :cond_1a
    const/4 v3, 0x0

    #@69d
    goto :goto_1a

    #@69e
    .line 593
    .end local v45    # "_result":Z
    :sswitch_37
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@6a1
    move-object/from16 v0, p2

    #@6a3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a6
    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a9
    move-result v4

    #@6aa
    .line 597
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ad
    move-result-object v29

    #@6ae
    .line 599
    .restart local v29    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b1
    move-result-object v33

    #@6b2
    .line 600
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b4
    move-object/from16 v1, v29

    #@6b6
    move-object/from16 v2, v33

    #@6b8
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@6bb
    move-result v45

    #@6bc
    .line 601
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bf
    .line 602
    if-eqz v45, :cond_1b

    #@6c1
    const/4 v3, 0x1

    #@6c2
    :goto_1b
    move-object/from16 v0, p3

    #@6c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6c7
    .line 603
    const/4 v3, 0x1

    #@6c8
    return v3

    #@6c9
    .line 602
    :cond_1b
    const/4 v3, 0x0

    #@6ca
    goto :goto_1b

    #@6cb
    .line 607
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_38
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@6ce
    move-object/from16 v0, p2

    #@6d0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d3
    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    #@6d6
    move-result v35

    #@6d7
    .line 609
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6da
    .line 610
    move-object/from16 v0, p3

    #@6dc
    move/from16 v1, v35

    #@6de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e1
    .line 611
    const/4 v3, 0x1

    #@6e2
    return v3

    #@6e3
    .line 615
    .end local v35    # "_result":I
    :sswitch_39
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@6e6
    move-object/from16 v0, p2

    #@6e8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6eb
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ee
    move-result v4

    #@6ef
    .line 618
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@6f1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    #@6f4
    move-result v35

    #@6f5
    .line 619
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f8
    .line 620
    move-object/from16 v0, p3

    #@6fa
    move/from16 v1, v35

    #@6fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6ff
    .line 621
    const/4 v3, 0x1

    #@700
    return v3

    #@701
    .line 625
    .end local v4    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_3a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@704
    move-object/from16 v0, p2

    #@706
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@709
    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    #@70c
    move-result v35

    #@70d
    .line 627
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@710
    .line 628
    move-object/from16 v0, p3

    #@712
    move/from16 v1, v35

    #@714
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@717
    .line 629
    const/4 v3, 0x1

    #@718
    return v3

    #@719
    .line 633
    .end local v35    # "_result":I
    :sswitch_3b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@71c
    move-object/from16 v0, p2

    #@71e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@721
    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@724
    move-result v4

    #@725
    .line 637
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@728
    move-result-object v29

    #@729
    .line 638
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@72b
    move-object/from16 v1, v29

    #@72d
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@730
    move-result v35

    #@731
    .line 639
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@734
    .line 640
    move-object/from16 v0, p3

    #@736
    move/from16 v1, v35

    #@738
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@73b
    .line 641
    const/4 v3, 0x1

    #@73c
    return v3

    #@73d
    .line 645
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_3c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@740
    move-object/from16 v0, p2

    #@742
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@745
    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@748
    move-result-object v24

    #@749
    .line 648
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@74b
    move-object/from16 v1, v24

    #@74d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    #@750
    move-result v35

    #@751
    .line 649
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@754
    .line 650
    move-object/from16 v0, p3

    #@756
    move/from16 v1, v35

    #@758
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@75b
    .line 651
    const/4 v3, 0x1

    #@75c
    return v3

    #@75d
    .line 655
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_3d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@760
    move-object/from16 v0, p2

    #@762
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@765
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@768
    move-result v4

    #@769
    .line 659
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76c
    move-result-object v29

    #@76d
    .line 660
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@76f
    move-object/from16 v1, v29

    #@771
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@774
    move-result v35

    #@775
    .line 661
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@778
    .line 662
    move-object/from16 v0, p3

    #@77a
    move/from16 v1, v35

    #@77c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@77f
    .line 663
    const/4 v3, 0x1

    #@780
    return v3

    #@781
    .line 667
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_3e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@784
    move-object/from16 v0, p2

    #@786
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@789
    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78c
    move-result v4

    #@78d
    .line 671
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@790
    move-result-object v29

    #@791
    .line 672
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@793
    move-object/from16 v1, v29

    #@795
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@798
    move-result v35

    #@799
    .line 673
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79c
    .line 674
    move-object/from16 v0, p3

    #@79e
    move/from16 v1, v35

    #@7a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a3
    .line 675
    const/4 v3, 0x1

    #@7a4
    return v3

    #@7a5
    .line 679
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_3f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@7a8
    move-object/from16 v0, p2

    #@7aa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ad
    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    #@7b0
    move-result v45

    #@7b1
    .line 681
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b4
    .line 682
    if-eqz v45, :cond_1c

    #@7b6
    const/4 v3, 0x1

    #@7b7
    :goto_1c
    move-object/from16 v0, p3

    #@7b9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7bc
    .line 683
    const/4 v3, 0x1

    #@7bd
    return v3

    #@7be
    .line 682
    :cond_1c
    const/4 v3, 0x0

    #@7bf
    goto :goto_1c

    #@7c0
    .line 687
    .end local v45    # "_result":Z
    :sswitch_40
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@7c3
    move-object/from16 v0, p2

    #@7c5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c8
    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cb
    move-result v4

    #@7cc
    .line 690
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@7ce
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    #@7d1
    move-result v45

    #@7d2
    .line 691
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d5
    .line 692
    if-eqz v45, :cond_1d

    #@7d7
    const/4 v3, 0x1

    #@7d8
    :goto_1d
    move-object/from16 v0, p3

    #@7da
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7dd
    .line 693
    const/4 v3, 0x1

    #@7de
    return v3

    #@7df
    .line 692
    :cond_1d
    const/4 v3, 0x0

    #@7e0
    goto :goto_1d

    #@7e1
    .line 697
    .end local v4    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_41
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@7e4
    move-object/from16 v0, p2

    #@7e6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e9
    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7ec
    move-result-object v24

    #@7ed
    .line 700
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7ef
    move-object/from16 v1, v24

    #@7f1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    #@7f4
    move-result v35

    #@7f5
    .line 701
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f8
    .line 702
    move-object/from16 v0, p3

    #@7fa
    move/from16 v1, v35

    #@7fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7ff
    .line 703
    const/4 v3, 0x1

    #@800
    return v3

    #@801
    .line 707
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_42
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@804
    move-object/from16 v0, p2

    #@806
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@809
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@80c
    move-result v4

    #@80d
    .line 711
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@810
    move-result-object v29

    #@811
    .line 712
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@813
    move-object/from16 v1, v29

    #@815
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    #@818
    move-result v35

    #@819
    .line 713
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81c
    .line 714
    move-object/from16 v0, p3

    #@81e
    move/from16 v1, v35

    #@820
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@823
    .line 715
    const/4 v3, 0x1

    #@824
    return v3

    #@825
    .line 719
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_43
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@828
    move-object/from16 v0, p2

    #@82a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82d
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@830
    move-result-object v24

    #@831
    .line 722
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@833
    move-object/from16 v1, v24

    #@835
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@838
    move-result-object v42

    #@839
    .line 723
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@83c
    .line 724
    move-object/from16 v0, p3

    #@83e
    move-object/from16 v1, v42

    #@840
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@843
    .line 725
    const/4 v3, 0x1

    #@844
    return v3

    #@845
    .line 729
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_44
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@848
    move-object/from16 v0, p2

    #@84a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84d
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@850
    move-result v4

    #@851
    .line 732
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@853
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    #@856
    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@859
    .line 734
    const/4 v3, 0x1

    #@85a
    return v3

    #@85b
    .line 738
    .end local v4    # "_arg0":I
    :sswitch_45
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@85e
    move-object/from16 v0, p2

    #@860
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@863
    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    #@866
    move-result v35

    #@867
    .line 740
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86a
    .line 741
    move-object/from16 v0, p3

    #@86c
    move/from16 v1, v35

    #@86e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@871
    .line 742
    const/4 v3, 0x1

    #@872
    return v3

    #@873
    .line 746
    .end local v35    # "_result":I
    :sswitch_46
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@876
    move-object/from16 v0, p2

    #@878
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87b
    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87e
    move-result v4

    #@87f
    .line 750
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@882
    move-result-object v29

    #@883
    .line 751
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@885
    move-object/from16 v1, v29

    #@887
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    #@88a
    move-result-object v38

    #@88b
    .line 752
    .local v38, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88e
    .line 753
    if-eqz v38, :cond_1e

    #@890
    .line 754
    const/4 v3, 0x1

    #@891
    move-object/from16 v0, p3

    #@893
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@896
    .line 755
    const/4 v3, 0x1

    #@897
    move-object/from16 v0, v38

    #@899
    move-object/from16 v1, p3

    #@89b
    invoke-virtual {v0, v1, v3}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@89e
    .line 760
    :goto_1e
    const/4 v3, 0x1

    #@89f
    return v3

    #@8a0
    .line 758
    :cond_1e
    const/4 v3, 0x0

    #@8a1
    move-object/from16 v0, p3

    #@8a3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8a6
    goto :goto_1e

    #@8a7
    .line 764
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_47
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@8aa
    move-object/from16 v0, p2

    #@8ac
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8af
    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b2
    move-result v4

    #@8b3
    .line 768
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b6
    move-result v5

    #@8b7
    .line 769
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    #@8b9
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(II)Z

    #@8bc
    move-result v45

    #@8bd
    .line 770
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c0
    .line 771
    if-eqz v45, :cond_1f

    #@8c2
    const/4 v3, 0x1

    #@8c3
    :goto_1f
    move-object/from16 v0, p3

    #@8c5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8c8
    .line 772
    const/4 v3, 0x1

    #@8c9
    return v3

    #@8ca
    .line 771
    :cond_1f
    const/4 v3, 0x0

    #@8cb
    goto :goto_1f

    #@8cc
    .line 776
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v45    # "_result":Z
    :sswitch_48
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@8cf
    move-object/from16 v0, p2

    #@8d1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d4
    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d7
    move-result v4

    #@8d8
    .line 780
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8db
    move-result v5

    #@8dc
    .line 782
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8df
    move-result v6

    #@8e0
    .line 784
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e3
    move-result v7

    #@8e4
    .line 786
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e7
    move-result v8

    #@8e8
    .line 788
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8eb
    move-result v9

    #@8ec
    .line 790
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ef
    move-result v10

    #@8f0
    .line 792
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f3
    move-result-object v11

    #@8f4
    .local v11, "_arg7":Ljava/lang/String;
    move-object/from16 v3, p0

    #@8f6
    .line 793
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    #@8f9
    move-result-object v41

    #@8fa
    .line 794
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8fd
    .line 795
    move-object/from16 v0, p3

    #@8ff
    move-object/from16 v1, v41

    #@901
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@904
    .line 796
    const/4 v3, 0x1

    #@905
    return v3

    #@906
    .line 800
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@909
    move-object/from16 v0, p2

    #@90b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90e
    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@911
    move-result v4

    #@912
    .line 804
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@915
    move-result v5

    #@916
    .line 806
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@919
    move-result v6

    #@91a
    .line 808
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91d
    move-result v7

    #@91e
    .line 810
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@921
    move-result v8

    #@922
    .line 812
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@925
    move-result v9

    #@926
    .line 814
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@929
    move-result-object v19

    #@92a
    .local v19, "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    #@92c
    move v13, v4

    #@92d
    move v14, v5

    #@92e
    move v15, v6

    #@92f
    move/from16 v16, v7

    #@931
    move/from16 v17, v8

    #@933
    move/from16 v18, v9

    #@935
    .line 815
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    #@938
    move-result-object v41

    #@939
    .line 816
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93c
    .line 817
    move-object/from16 v0, p3

    #@93e
    move-object/from16 v1, v41

    #@940
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@943
    .line 818
    const/4 v3, 0x1

    #@944
    return v3

    #@945
    .line 822
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@948
    move-object/from16 v0, p2

    #@94a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94d
    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@950
    move-result v4

    #@951
    .line 826
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@954
    move-result v5

    #@955
    .line 828
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@958
    move-result v6

    #@959
    .line 830
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95c
    move-result v7

    #@95d
    .line 832
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@960
    move-result v8

    #@961
    .line 834
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@964
    move-result v9

    #@965
    .line 836
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@968
    move-result-object v19

    #@969
    .restart local v19    # "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    #@96b
    move v13, v4

    #@96c
    move v14, v5

    #@96d
    move v15, v6

    #@96e
    move/from16 v16, v7

    #@970
    move/from16 v17, v8

    #@972
    move/from16 v18, v9

    #@974
    .line 837
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    #@977
    move-result-object v46

    #@978
    .line 838
    .local v46, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@97b
    .line 839
    move-object/from16 v0, p3

    #@97d
    move-object/from16 v1, v46

    #@97f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@982
    .line 840
    const/4 v3, 0x1

    #@983
    return v3

    #@984
    .line 844
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v46    # "_result":[B
    :sswitch_4b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@987
    move-object/from16 v0, p2

    #@989
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98c
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98f
    move-result v4

    #@990
    .line 848
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@993
    move-result-object v29

    #@994
    .line 849
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@996
    move-object/from16 v1, v29

    #@998
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    #@99b
    move-result-object v41

    #@99c
    .line 850
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99f
    .line 851
    move-object/from16 v0, p3

    #@9a1
    move-object/from16 v1, v41

    #@9a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9a6
    .line 852
    const/4 v3, 0x1

    #@9a7
    return v3

    #@9a8
    .line 856
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@9ab
    move-object/from16 v0, p2

    #@9ad
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b0
    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b3
    move-result v4

    #@9b4
    .line 859
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@9b6
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    #@9b9
    move-result-object v41

    #@9ba
    .line 860
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9bd
    .line 861
    move-object/from16 v0, p3

    #@9bf
    move-object/from16 v1, v41

    #@9c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9c4
    .line 862
    const/4 v3, 0x1

    #@9c5
    return v3

    #@9c6
    .line 866
    .end local v4    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@9c9
    move-object/from16 v0, p2

    #@9cb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9ce
    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d1
    move-result v4

    #@9d2
    .line 870
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9d5
    move-result-object v29

    #@9d6
    .line 871
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9d8
    move-object/from16 v1, v29

    #@9da
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    #@9dd
    move-result v45

    #@9de
    .line 872
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e1
    .line 873
    if-eqz v45, :cond_20

    #@9e3
    const/4 v3, 0x1

    #@9e4
    :goto_20
    move-object/from16 v0, p3

    #@9e6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@9e9
    .line 874
    const/4 v3, 0x1

    #@9ea
    return v3

    #@9eb
    .line 873
    :cond_20
    const/4 v3, 0x0

    #@9ec
    goto :goto_20

    #@9ed
    .line 878
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_4e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@9f0
    move-object/from16 v0, p2

    #@9f2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f5
    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@9f8
    move-result-object v26

    #@9f9
    .line 881
    .local v26, "_arg0":[B
    move-object/from16 v0, p0

    #@9fb
    move-object/from16 v1, v26

    #@9fd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    #@a00
    move-result v45

    #@a01
    .line 882
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a04
    .line 883
    if-eqz v45, :cond_21

    #@a06
    const/4 v3, 0x1

    #@a07
    :goto_21
    move-object/from16 v0, p3

    #@a09
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a0c
    .line 884
    const/4 v3, 0x1

    #@a0d
    return v3

    #@a0e
    .line 883
    :cond_21
    const/4 v3, 0x0

    #@a0f
    goto :goto_21

    #@a10
    .line 888
    .end local v26    # "_arg0":[B
    .end local v45    # "_result":Z
    :sswitch_4f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@a13
    move-object/from16 v0, p2

    #@a15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a18
    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a1b
    move-result v4

    #@a1c
    .line 891
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@a1e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    #@a21
    move-result v45

    #@a22
    .line 892
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a25
    .line 893
    if-eqz v45, :cond_22

    #@a27
    const/4 v3, 0x1

    #@a28
    :goto_22
    move-object/from16 v0, p3

    #@a2a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a2d
    .line 894
    const/4 v3, 0x1

    #@a2e
    return v3

    #@a2f
    .line 893
    :cond_22
    const/4 v3, 0x0

    #@a30
    goto :goto_22

    #@a31
    .line 898
    .end local v4    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_50
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@a34
    move-object/from16 v0, p2

    #@a36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a39
    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3c
    move-result-object v24

    #@a3d
    .line 901
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a3f
    move-object/from16 v1, v24

    #@a41
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    #@a44
    move-result v35

    #@a45
    .line 902
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a48
    .line 903
    move-object/from16 v0, p3

    #@a4a
    move/from16 v1, v35

    #@a4c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a4f
    .line 904
    const/4 v3, 0x1

    #@a50
    return v3

    #@a51
    .line 908
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_51
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@a54
    move-object/from16 v0, p2

    #@a56
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a59
    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5c
    move-result v4

    #@a5d
    .line 911
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@a5f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    #@a62
    move-result v35

    #@a63
    .line 912
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a66
    .line 913
    move-object/from16 v0, p3

    #@a68
    move/from16 v1, v35

    #@a6a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a6d
    .line 914
    const/4 v3, 0x1

    #@a6e
    return v3

    #@a6f
    .line 918
    .end local v4    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_52
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@a72
    move-object/from16 v0, p2

    #@a74
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a77
    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    #@a7a
    move-result v35

    #@a7b
    .line 920
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7e
    .line 921
    move-object/from16 v0, p3

    #@a80
    move/from16 v1, v35

    #@a82
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a85
    .line 922
    const/4 v3, 0x1

    #@a86
    return v3

    #@a87
    .line 926
    .end local v35    # "_result":I
    :sswitch_53
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@a8a
    move-object/from16 v0, p2

    #@a8c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8f
    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a92
    move-result v4

    #@a93
    .line 929
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@a95
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    #@a98
    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9b
    .line 931
    const/4 v3, 0x1

    #@a9c
    return v3

    #@a9d
    .line 935
    .end local v4    # "_arg0":I
    :sswitch_54
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@aa0
    move-object/from16 v0, p2

    #@aa2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa5
    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa8
    move-result v4

    #@aa9
    .line 938
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@aab
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    #@aae
    move-result-object v40

    #@aaf
    .line 939
    .local v40, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab2
    .line 940
    if-eqz v40, :cond_23

    #@ab4
    .line 941
    const/4 v3, 0x1

    #@ab5
    move-object/from16 v0, p3

    #@ab7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@aba
    .line 942
    const/4 v3, 0x1

    #@abb
    move-object/from16 v0, v40

    #@abd
    move-object/from16 v1, p3

    #@abf
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@ac2
    .line 947
    :goto_23
    const/4 v3, 0x1

    #@ac3
    return v3

    #@ac4
    .line 945
    :cond_23
    const/4 v3, 0x0

    #@ac5
    move-object/from16 v0, p3

    #@ac7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@aca
    goto :goto_23

    #@acb
    .line 951
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_55
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ace
    move-object/from16 v0, p2

    #@ad0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad3
    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad6
    move-result v4

    #@ad7
    .line 955
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ada
    move-result v3

    #@adb
    if-eqz v3, :cond_24

    #@add
    .line 956
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@adf
    move-object/from16 v0, p2

    #@ae1
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae4
    move-result-object v28

    #@ae5
    check-cast v28, Lcom/android/internal/telephony/OperatorInfo;

    #@ae7
    .line 962
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aea
    move-result v3

    #@aeb
    if-eqz v3, :cond_25

    #@aed
    const/16 v34, 0x1

    #@aef
    .line 963
    .local v34, "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    #@af1
    move-object/from16 v1, v28

    #@af3
    move/from16 v2, v34

    #@af5
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    #@af8
    move-result v45

    #@af9
    .line 964
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@afc
    .line 965
    if-eqz v45, :cond_26

    #@afe
    const/4 v3, 0x1

    #@aff
    :goto_26
    move-object/from16 v0, p3

    #@b01
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b04
    .line 966
    const/4 v3, 0x1

    #@b05
    return v3

    #@b06
    .line 959
    .end local v34    # "_arg2":Z
    .end local v45    # "_result":Z
    :cond_24
    const/16 v28, 0x0

    #@b08
    .local v28, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_24

    #@b09
    .line 962
    .end local v28    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_25
    const/16 v34, 0x0

    #@b0b
    goto :goto_25

    #@b0c
    .line 965
    .restart local v34    # "_arg2":Z
    .restart local v45    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    #@b0d
    goto :goto_26

    #@b0e
    .line 970
    .end local v4    # "_arg0":I
    .end local v34    # "_arg2":Z
    .end local v45    # "_result":Z
    :sswitch_56
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@b11
    move-object/from16 v0, p2

    #@b13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b16
    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b19
    move-result v4

    #@b1a
    .line 974
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1d
    move-result v5

    #@b1e
    .line 975
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@b20
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    #@b23
    move-result v45

    #@b24
    .line 976
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b27
    .line 977
    if-eqz v45, :cond_27

    #@b29
    const/4 v3, 0x1

    #@b2a
    :goto_27
    move-object/from16 v0, p3

    #@b2c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b2f
    .line 978
    const/4 v3, 0x1

    #@b30
    return v3

    #@b31
    .line 977
    :cond_27
    const/4 v3, 0x0

    #@b32
    goto :goto_27

    #@b33
    .line 982
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v45    # "_result":Z
    :sswitch_57
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@b36
    move-object/from16 v0, p2

    #@b38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3b
    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3e
    move-result v4

    #@b3f
    .line 986
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b42
    move-result v3

    #@b43
    if-eqz v3, :cond_28

    #@b45
    const/16 v30, 0x1

    #@b47
    .line 987
    .restart local v30    # "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    #@b49
    move/from16 v1, v30

    #@b4b
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    #@b4e
    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b51
    .line 989
    const/4 v3, 0x1

    #@b52
    return v3

    #@b53
    .line 986
    .end local v30    # "_arg1":Z
    :cond_28
    const/16 v30, 0x0

    #@b55
    goto :goto_28

    #@b56
    .line 993
    .end local v4    # "_arg0":I
    :sswitch_58
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@b59
    move-object/from16 v0, p2

    #@b5b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5e
    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b61
    move-result v4

    #@b62
    .line 996
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@b64
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    #@b67
    move-result v45

    #@b68
    .line 997
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6b
    .line 998
    if-eqz v45, :cond_29

    #@b6d
    const/4 v3, 0x1

    #@b6e
    :goto_29
    move-object/from16 v0, p3

    #@b70
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b73
    .line 999
    const/4 v3, 0x1

    #@b74
    return v3

    #@b75
    .line 998
    :cond_29
    const/4 v3, 0x0

    #@b76
    goto :goto_29

    #@b77
    .line 1003
    .end local v4    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_59
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@b7a
    move-object/from16 v0, p2

    #@b7c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7f
    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b82
    move-result-object v24

    #@b83
    .line 1007
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b86
    move-result-object v29

    #@b87
    .line 1008
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b89
    move-object/from16 v1, v24

    #@b8b
    move-object/from16 v2, v29

    #@b8d
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@b90
    move-result-object v48

    #@b91
    .line 1009
    .local v48, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b94
    .line 1010
    move-object/from16 v0, p3

    #@b96
    move-object/from16 v1, v48

    #@b98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@b9b
    .line 1011
    const/4 v3, 0x1

    #@b9c
    return v3

    #@b9d
    .line 1015
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":[Ljava/lang/String;
    :sswitch_5a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ba0
    move-object/from16 v0, p2

    #@ba2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba5
    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ba8
    move-result v3

    #@ba9
    if-eqz v3, :cond_2a

    #@bab
    const/16 v25, 0x1

    #@bad
    .line 1018
    .restart local v25    # "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    #@baf
    move/from16 v1, v25

    #@bb1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    #@bb4
    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb7
    .line 1020
    const/4 v3, 0x1

    #@bb8
    return v3

    #@bb9
    .line 1017
    .end local v25    # "_arg0":Z
    :cond_2a
    const/16 v25, 0x0

    #@bbb
    goto :goto_2a

    #@bbc
    .line 1024
    :sswitch_5b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@bbf
    move-object/from16 v0, p2

    #@bc1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc4
    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc7
    move-result v4

    #@bc8
    .line 1027
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@bca
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    #@bcd
    move-result-object v41

    #@bce
    .line 1028
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd1
    .line 1029
    move-object/from16 v0, p3

    #@bd3
    move-object/from16 v1, v41

    #@bd5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@bd8
    .line 1030
    const/4 v3, 0x1

    #@bd9
    return v3

    #@bda
    .line 1034
    .end local v4    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_5c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@bdd
    move-object/from16 v0, p2

    #@bdf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be2
    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@be5
    move-result v4

    #@be6
    .line 1037
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@be8
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    #@beb
    move-result-object v41

    #@bec
    .line 1038
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bef
    .line 1039
    move-object/from16 v0, p3

    #@bf1
    move-object/from16 v1, v41

    #@bf3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@bf6
    .line 1040
    const/4 v3, 0x1

    #@bf7
    return v3

    #@bf8
    .line 1044
    .end local v4    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_5d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@bfb
    move-object/from16 v0, p2

    #@bfd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c00
    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c03
    move-result v4

    #@c04
    .line 1047
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@c06
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    #@c09
    move-result v35

    #@c0a
    .line 1048
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0d
    .line 1049
    move-object/from16 v0, p3

    #@c0f
    move/from16 v1, v35

    #@c11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c14
    .line 1050
    const/4 v3, 0x1

    #@c15
    return v3

    #@c16
    .line 1054
    .end local v4    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_5e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@c19
    move-object/from16 v0, p2

    #@c1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1e
    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c21
    move-result-object v24

    #@c22
    .line 1057
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c24
    move-object/from16 v1, v24

    #@c26
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    #@c29
    move-result v35

    #@c2a
    .line 1058
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2d
    .line 1059
    move-object/from16 v0, p3

    #@c2f
    move/from16 v1, v35

    #@c31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c34
    .line 1060
    const/4 v3, 0x1

    #@c35
    return v3

    #@c36
    .line 1064
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_5f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@c39
    move-object/from16 v0, p2

    #@c3b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3e
    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c41
    move-result-object v24

    #@c42
    .line 1067
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c44
    move-object/from16 v1, v24

    #@c46
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@c49
    move-result v35

    #@c4a
    .line 1068
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4d
    .line 1069
    move-object/from16 v0, p3

    #@c4f
    move/from16 v1, v35

    #@c51
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c54
    .line 1070
    const/4 v3, 0x1

    #@c55
    return v3

    #@c56
    .line 1074
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_60
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@c59
    move-object/from16 v0, p2

    #@c5b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5e
    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c61
    move-result v3

    #@c62
    if-eqz v3, :cond_2b

    #@c64
    .line 1077
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c66
    move-object/from16 v0, p2

    #@c68
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6b
    move-result-object v20

    #@c6c
    check-cast v20, Landroid/content/Intent;

    #@c6e
    .line 1083
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c71
    move-result v5

    #@c72
    .line 1084
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@c74
    move-object/from16 v1, v20

    #@c76
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@c79
    move-result-object v44

    #@c7a
    .line 1085
    .local v44, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7d
    .line 1086
    move-object/from16 v0, p3

    #@c7f
    move-object/from16 v1, v44

    #@c81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@c84
    .line 1087
    const/4 v3, 0x1

    #@c85
    return v3

    #@c86
    .line 1080
    .end local v5    # "_arg1":I
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/16 v20, 0x0

    #@c88
    .local v20, "_arg0":Landroid/content/Intent;
    goto :goto_2b

    #@c89
    .line 1091
    .end local v20    # "_arg0":Landroid/content/Intent;
    :sswitch_61
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@c8c
    move-object/from16 v0, p2

    #@c8e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c91
    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c94
    move-result v4

    #@c95
    .line 1095
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c98
    move-result-object v29

    #@c99
    .line 1097
    .restart local v29    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c9c
    move-result-object v33

    #@c9d
    .line 1098
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c9f
    move-object/from16 v1, v29

    #@ca1
    move-object/from16 v2, v33

    #@ca3
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@ca6
    move-result v45

    #@ca7
    .line 1099
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@caa
    .line 1100
    if-eqz v45, :cond_2c

    #@cac
    const/4 v3, 0x1

    #@cad
    :goto_2c
    move-object/from16 v0, p3

    #@caf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@cb2
    .line 1101
    const/4 v3, 0x1

    #@cb3
    return v3

    #@cb4
    .line 1100
    :cond_2c
    const/4 v3, 0x0

    #@cb5
    goto :goto_2c

    #@cb6
    .line 1105
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_62
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@cb9
    move-object/from16 v0, p2

    #@cbb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cbe
    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc1
    move-result v4

    #@cc2
    .line 1109
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cc5
    move-result-object v29

    #@cc6
    .line 1110
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cc8
    move-object/from16 v1, v29

    #@cca
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@ccd
    move-result-object v41

    #@cce
    .line 1111
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd1
    .line 1112
    move-object/from16 v0, p3

    #@cd3
    move-object/from16 v1, v41

    #@cd5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cd8
    .line 1113
    const/4 v3, 0x1

    #@cd9
    return v3

    #@cda
    .line 1117
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@cdd
    move-object/from16 v0, p2

    #@cdf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce2
    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce5
    move-result v4

    #@ce6
    .line 1121
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ce9
    move-result-object v29

    #@cea
    .line 1122
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cec
    move-object/from16 v1, v29

    #@cee
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@cf1
    move-result-object v41

    #@cf2
    .line 1123
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf5
    .line 1124
    move-object/from16 v0, p3

    #@cf7
    move-object/from16 v1, v41

    #@cf9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cfc
    .line 1125
    const/4 v3, 0x1

    #@cfd
    return v3

    #@cfe
    .line 1129
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@d01
    move-object/from16 v0, p2

    #@d03
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d06
    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d09
    move-result-object v24

    #@d0a
    .line 1132
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d0c
    move-object/from16 v1, v24

    #@d0e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    #@d11
    move-result-object v48

    #@d12
    .line 1133
    .restart local v48    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d15
    .line 1134
    move-object/from16 v0, p3

    #@d17
    move-object/from16 v1, v48

    #@d19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@d1c
    .line 1135
    const/4 v3, 0x1

    #@d1d
    return v3

    #@d1e
    .line 1139
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":[Ljava/lang/String;
    :sswitch_65
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@d21
    move-object/from16 v0, p2

    #@d23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d26
    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d29
    move-result v4

    #@d2a
    .line 1143
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d2d
    move-result-object v29

    #@d2e
    .line 1144
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d30
    move-object/from16 v1, v29

    #@d32
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    #@d35
    move-result v45

    #@d36
    .line 1145
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d39
    .line 1146
    if-eqz v45, :cond_2d

    #@d3b
    const/4 v3, 0x1

    #@d3c
    :goto_2d
    move-object/from16 v0, p3

    #@d3e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d41
    .line 1147
    const/4 v3, 0x1

    #@d42
    return v3

    #@d43
    .line 1146
    :cond_2d
    const/4 v3, 0x0

    #@d44
    goto :goto_2d

    #@d45
    .line 1151
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_66
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@d48
    move-object/from16 v0, p2

    #@d4a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4d
    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d50
    move-result v4

    #@d51
    .line 1155
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d54
    move-result-object v14

    #@d55
    .line 1157
    .local v14, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d58
    move-result-object v15

    #@d59
    .line 1159
    .local v15, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d5c
    move-result-object v16

    #@d5d
    .line 1161
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d60
    move-result-object v17

    #@d61
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v12, p0

    #@d63
    move v13, v4

    #@d64
    .line 1162
    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    #@d67
    move-result v45

    #@d68
    .line 1163
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6b
    .line 1164
    if-eqz v45, :cond_2e

    #@d6d
    const/4 v3, 0x1

    #@d6e
    :goto_2e
    move-object/from16 v0, p3

    #@d70
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d73
    .line 1165
    const/4 v3, 0x1

    #@d74
    return v3

    #@d75
    .line 1164
    :cond_2e
    const/4 v3, 0x0

    #@d76
    goto :goto_2e

    #@d77
    .line 1169
    .end local v4    # "_arg0":I
    .end local v14    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "_result":Z
    :sswitch_67
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@d7a
    move-object/from16 v0, p2

    #@d7c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7f
    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@d82
    move-result-object v26

    #@d83
    .line 1173
    .restart local v26    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d86
    move-result v32

    #@d87
    .line 1174
    .local v32, "_arg1_length":I
    if-gez v32, :cond_2f

    #@d89
    .line 1175
    const/16 v31, 0x0

    #@d8b
    .line 1180
    :goto_2f
    move-object/from16 v0, p0

    #@d8d
    move-object/from16 v1, v26

    #@d8f
    move-object/from16 v2, v31

    #@d91
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    #@d94
    move-result v35

    #@d95
    .line 1181
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d98
    .line 1182
    move-object/from16 v0, p3

    #@d9a
    move/from16 v1, v35

    #@d9c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d9f
    .line 1183
    move-object/from16 v0, p3

    #@da1
    move-object/from16 v1, v31

    #@da3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@da6
    .line 1184
    const/4 v3, 0x1

    #@da7
    return v3

    #@da8
    .line 1178
    .end local v35    # "_result":I
    :cond_2f
    move/from16 v0, v32

    #@daa
    new-array v0, v0, [B

    #@dac
    move-object/from16 v31, v0

    #@dae
    .local v31, "_arg1":[B
    goto :goto_2f

    #@daf
    .line 1188
    .end local v26    # "_arg0":[B
    .end local v31    # "_arg1":[B
    .end local v32    # "_arg1_length":I
    :sswitch_68
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@db2
    move-object/from16 v0, p2

    #@db4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db7
    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    #@dba
    move-result v45

    #@dbb
    .line 1190
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dbe
    .line 1191
    if-eqz v45, :cond_30

    #@dc0
    const/4 v3, 0x1

    #@dc1
    :goto_30
    move-object/from16 v0, p3

    #@dc3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@dc6
    .line 1192
    const/4 v3, 0x1

    #@dc7
    return v3

    #@dc8
    .line 1191
    :cond_30
    const/4 v3, 0x0

    #@dc9
    goto :goto_30

    #@dca
    .line 1196
    .end local v45    # "_result":Z
    :sswitch_69
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@dcd
    move-object/from16 v0, p2

    #@dcf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd2
    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    #@dd5
    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd8
    .line 1199
    const/4 v3, 0x1

    #@dd9
    return v3

    #@dda
    .line 1203
    :sswitch_6a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ddd
    move-object/from16 v0, p2

    #@ddf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de2
    .line 1205
    sget-object v3, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    #@de4
    move-object/from16 v0, p2

    #@de6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@de9
    move-result-object v27

    #@dea
    check-cast v27, [Landroid/telephony/RadioAccessFamily;

    #@dec
    .line 1206
    .local v27, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    #@dee
    move-object/from16 v1, v27

    #@df0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    #@df3
    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df6
    .line 1208
    const/4 v3, 0x1

    #@df7
    return v3

    #@df8
    .line 1212
    .end local v27    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_6b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@dfb
    move-object/from16 v0, p2

    #@dfd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e00
    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e03
    move-result v4

    #@e04
    .line 1216
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e07
    move-result-object v29

    #@e08
    .line 1217
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e0a
    move-object/from16 v1, v29

    #@e0c
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    #@e0f
    move-result v35

    #@e10
    .line 1218
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e13
    .line 1219
    move-object/from16 v0, p3

    #@e15
    move/from16 v1, v35

    #@e17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e1a
    .line 1220
    const/4 v3, 0x1

    #@e1b
    return v3

    #@e1c
    .line 1224
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_6c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e1f
    move-object/from16 v0, p2

    #@e21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e24
    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e27
    move-result v3

    #@e28
    if-eqz v3, :cond_31

    #@e2a
    const/16 v25, 0x1

    #@e2c
    .line 1227
    .restart local v25    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    #@e2e
    move/from16 v1, v25

    #@e30
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    #@e33
    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e36
    .line 1229
    const/4 v3, 0x1

    #@e37
    return v3

    #@e38
    .line 1226
    .end local v25    # "_arg0":Z
    :cond_31
    const/16 v25, 0x0

    #@e3a
    goto :goto_31

    #@e3b
    .line 1233
    :sswitch_6d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e3e
    move-object/from16 v0, p2

    #@e40
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e43
    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e46
    move-result-object v24

    #@e47
    .line 1236
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e49
    move-object/from16 v1, v24

    #@e4b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    #@e4e
    move-result v45

    #@e4f
    .line 1237
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e52
    .line 1238
    if-eqz v45, :cond_32

    #@e54
    const/4 v3, 0x1

    #@e55
    :goto_32
    move-object/from16 v0, p3

    #@e57
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e5a
    .line 1239
    const/4 v3, 0x1

    #@e5b
    return v3

    #@e5c
    .line 1238
    :cond_32
    const/4 v3, 0x0

    #@e5d
    goto :goto_32

    #@e5e
    .line 1243
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_6e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e61
    move-object/from16 v0, p2

    #@e63
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e66
    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    #@e69
    move-result v45

    #@e6a
    .line 1245
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e6d
    .line 1246
    if-eqz v45, :cond_33

    #@e6f
    const/4 v3, 0x1

    #@e70
    :goto_33
    move-object/from16 v0, p3

    #@e72
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e75
    .line 1247
    const/4 v3, 0x1

    #@e76
    return v3

    #@e77
    .line 1246
    :cond_33
    const/4 v3, 0x0

    #@e78
    goto :goto_33

    #@e79
    .line 1251
    .end local v45    # "_result":Z
    :sswitch_6f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e7c
    move-object/from16 v0, p2

    #@e7e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e81
    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    #@e84
    move-result v45

    #@e85
    .line 1253
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e88
    .line 1254
    if-eqz v45, :cond_34

    #@e8a
    const/4 v3, 0x1

    #@e8b
    :goto_34
    move-object/from16 v0, p3

    #@e8d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e90
    .line 1255
    const/4 v3, 0x1

    #@e91
    return v3

    #@e92
    .line 1254
    :cond_34
    const/4 v3, 0x0

    #@e93
    goto :goto_34

    #@e94
    .line 1259
    .end local v45    # "_result":Z
    :sswitch_70
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@e97
    move-object/from16 v0, p2

    #@e99
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9c
    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    #@e9f
    move-result v45

    #@ea0
    .line 1261
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ea3
    .line 1262
    if-eqz v45, :cond_35

    #@ea5
    const/4 v3, 0x1

    #@ea6
    :goto_35
    move-object/from16 v0, p3

    #@ea8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@eab
    .line 1263
    const/4 v3, 0x1

    #@eac
    return v3

    #@ead
    .line 1262
    :cond_35
    const/4 v3, 0x0

    #@eae
    goto :goto_35

    #@eaf
    .line 1267
    .end local v45    # "_result":Z
    :sswitch_71
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@eb2
    move-object/from16 v0, p2

    #@eb4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb7
    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    #@eba
    move-result v45

    #@ebb
    .line 1269
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ebe
    .line 1270
    if-eqz v45, :cond_36

    #@ec0
    const/4 v3, 0x1

    #@ec1
    :goto_36
    move-object/from16 v0, p3

    #@ec3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ec6
    .line 1271
    const/4 v3, 0x1

    #@ec7
    return v3

    #@ec8
    .line 1270
    :cond_36
    const/4 v3, 0x0

    #@ec9
    goto :goto_36

    #@eca
    .line 1275
    .end local v45    # "_result":Z
    :sswitch_72
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ecd
    move-object/from16 v0, p2

    #@ecf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed2
    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    #@ed5
    move-result v45

    #@ed6
    .line 1277
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed9
    .line 1278
    if-eqz v45, :cond_37

    #@edb
    const/4 v3, 0x1

    #@edc
    :goto_37
    move-object/from16 v0, p3

    #@ede
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ee1
    .line 1279
    const/4 v3, 0x1

    #@ee2
    return v3

    #@ee3
    .line 1278
    :cond_37
    const/4 v3, 0x0

    #@ee4
    goto :goto_37

    #@ee5
    .line 1283
    .end local v45    # "_result":Z
    :sswitch_73
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ee8
    move-object/from16 v0, p2

    #@eea
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eed
    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    #@ef0
    move-result v45

    #@ef1
    .line 1285
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef4
    .line 1286
    if-eqz v45, :cond_38

    #@ef6
    const/4 v3, 0x1

    #@ef7
    :goto_38
    move-object/from16 v0, p3

    #@ef9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@efc
    .line 1287
    const/4 v3, 0x1

    #@efd
    return v3

    #@efe
    .line 1286
    :cond_38
    const/4 v3, 0x0

    #@eff
    goto :goto_38

    #@f00
    .line 1291
    .end local v45    # "_result":Z
    :sswitch_74
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@f03
    move-object/from16 v0, p2

    #@f05
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f08
    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    #@f0b
    move-result v45

    #@f0c
    .line 1293
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0f
    .line 1294
    if-eqz v45, :cond_39

    #@f11
    const/4 v3, 0x1

    #@f12
    :goto_39
    move-object/from16 v0, p3

    #@f14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f17
    .line 1295
    const/4 v3, 0x1

    #@f18
    return v3

    #@f19
    .line 1294
    :cond_39
    const/4 v3, 0x0

    #@f1a
    goto :goto_39

    #@f1b
    .line 1299
    .end local v45    # "_result":Z
    :sswitch_75
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@f1e
    move-object/from16 v0, p2

    #@f20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f23
    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    #@f26
    move-result v45

    #@f27
    .line 1301
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2a
    .line 1302
    if-eqz v45, :cond_3a

    #@f2c
    const/4 v3, 0x1

    #@f2d
    :goto_3a
    move-object/from16 v0, p3

    #@f2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f32
    .line 1303
    const/4 v3, 0x1

    #@f33
    return v3

    #@f34
    .line 1302
    :cond_3a
    const/4 v3, 0x0

    #@f35
    goto :goto_3a

    #@f36
    .line 1307
    .end local v45    # "_result":Z
    :sswitch_76
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@f39
    move-object/from16 v0, p2

    #@f3b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3e
    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f41
    move-result-object v24

    #@f42
    .line 1310
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f44
    move-object/from16 v1, v24

    #@f46
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    #@f49
    move-result-object v41

    #@f4a
    .line 1311
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4d
    .line 1312
    move-object/from16 v0, p3

    #@f4f
    move-object/from16 v1, v41

    #@f51
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f54
    .line 1313
    const/4 v3, 0x1

    #@f55
    return v3

    #@f56
    .line 1317
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_77
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@f59
    move-object/from16 v0, p2

    #@f5b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5e
    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f61
    move-result v4

    #@f62
    .line 1321
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f65
    move-result-object v29

    #@f66
    .line 1322
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f68
    move-object/from16 v1, v29

    #@f6a
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;

    #@f6d
    move-result-object v41

    #@f6e
    .line 1323
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f71
    .line 1324
    move-object/from16 v0, p3

    #@f73
    move-object/from16 v1, v41

    #@f75
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f78
    .line 1325
    const/4 v3, 0x1

    #@f79
    return v3

    #@f7a
    .line 1329
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@f7d
    move-object/from16 v0, p2

    #@f7f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f82
    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f85
    move-result v4

    #@f86
    .line 1333
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f89
    move-result-object v29

    #@f8a
    .line 1334
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f8c
    move-object/from16 v1, v29

    #@f8e
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;

    #@f91
    move-result-object v41

    #@f92
    .line 1335
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f95
    .line 1336
    move-object/from16 v0, p3

    #@f97
    move-object/from16 v1, v41

    #@f99
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f9c
    .line 1337
    const/4 v3, 0x1

    #@f9d
    return v3

    #@f9e
    .line 1341
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@fa1
    move-object/from16 v0, p2

    #@fa3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa6
    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa9
    move-result v3

    #@faa
    if-eqz v3, :cond_3b

    #@fac
    .line 1344
    sget-object v3, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fae
    move-object/from16 v0, p2

    #@fb0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fb3
    move-result-object v22

    #@fb4
    check-cast v22, Landroid/telecom/PhoneAccount;

    #@fb6
    .line 1349
    :goto_3b
    move-object/from16 v0, p0

    #@fb8
    move-object/from16 v1, v22

    #@fba
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    #@fbd
    move-result v35

    #@fbe
    .line 1350
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc1
    .line 1351
    move-object/from16 v0, p3

    #@fc3
    move/from16 v1, v35

    #@fc5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fc8
    .line 1352
    const/4 v3, 0x1

    #@fc9
    return v3

    #@fca
    .line 1347
    .end local v35    # "_result":I
    :cond_3b
    const/16 v22, 0x0

    #@fcc
    .local v22, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_3b

    #@fcd
    .line 1356
    .end local v22    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_7a
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@fd0
    move-object/from16 v0, p2

    #@fd2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd5
    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fd8
    move-result v4

    #@fd9
    .line 1359
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@fdb
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    #@fde
    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe1
    .line 1361
    const/4 v3, 0x1

    #@fe2
    return v3

    #@fe3
    .line 1365
    .end local v4    # "_arg0":I
    :sswitch_7b
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@fe6
    move-object/from16 v0, p2

    #@fe8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@feb
    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    #@fee
    move-result-object v41

    #@fef
    .line 1367
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff2
    .line 1368
    move-object/from16 v0, p3

    #@ff4
    move-object/from16 v1, v41

    #@ff6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ff9
    .line 1369
    const/4 v3, 0x1

    #@ffa
    return v3

    #@ffb
    .line 1373
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@ffe
    move-object/from16 v0, p2

    #@1000
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1003
    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1006
    move-result v3

    #@1007
    if-eqz v3, :cond_3c

    #@1009
    .line 1376
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@100b
    move-object/from16 v0, p2

    #@100d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1010
    move-result-object v21

    #@1011
    check-cast v21, Landroid/os/ResultReceiver;

    #@1013
    .line 1381
    :goto_3c
    move-object/from16 v0, p0

    #@1015
    move-object/from16 v1, v21

    #@1017
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    #@101a
    .line 1382
    const/4 v3, 0x1

    #@101b
    return v3

    #@101c
    .line 1379
    :cond_3c
    const/16 v21, 0x0

    #@101e
    .local v21, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_3c

    #@101f
    .line 1386
    .end local v21    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_7d
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@1022
    move-object/from16 v0, p2

    #@1024
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1027
    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@102a
    move-result v4

    #@102b
    .line 1390
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102e
    move-result-object v29

    #@102f
    .line 1391
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1031
    move-object/from16 v1, v29

    #@1033
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;

    #@1036
    move-result-object v39

    #@1037
    .line 1392
    .local v39, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103a
    .line 1393
    if-eqz v39, :cond_3d

    #@103c
    .line 1394
    const/4 v3, 0x1

    #@103d
    move-object/from16 v0, p3

    #@103f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1042
    .line 1395
    const/4 v3, 0x1

    #@1043
    move-object/from16 v0, v39

    #@1045
    move-object/from16 v1, p3

    #@1047
    invoke-virtual {v0, v1, v3}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    #@104a
    .line 1400
    :goto_3d
    const/4 v3, 0x1

    #@104b
    return v3

    #@104c
    .line 1398
    :cond_3d
    const/4 v3, 0x0

    #@104d
    move-object/from16 v0, p3

    #@104f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1052
    goto :goto_3d

    #@1053
    .line 1404
    .end local v4    # "_arg0":I
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Landroid/telephony/ServiceState;
    :sswitch_7e
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@1056
    move-object/from16 v0, p2

    #@1058
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@105b
    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105e
    move-result v3

    #@105f
    if-eqz v3, :cond_3e

    #@1061
    .line 1407
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1063
    move-object/from16 v0, p2

    #@1065
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1068
    move-result-object v23

    #@1069
    check-cast v23, Landroid/telecom/PhoneAccountHandle;

    #@106b
    .line 1412
    :goto_3e
    move-object/from16 v0, p0

    #@106d
    move-object/from16 v1, v23

    #@106f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    #@1072
    move-result-object v36

    #@1073
    .line 1413
    .local v36, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1076
    .line 1414
    if-eqz v36, :cond_3f

    #@1078
    .line 1415
    const/4 v3, 0x1

    #@1079
    move-object/from16 v0, p3

    #@107b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@107e
    .line 1416
    const/4 v3, 0x1

    #@107f
    move-object/from16 v0, v36

    #@1081
    move-object/from16 v1, p3

    #@1083
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1086
    .line 1421
    :goto_3f
    const/4 v3, 0x1

    #@1087
    return v3

    #@1088
    .line 1410
    .end local v36    # "_result":Landroid/net/Uri;
    :cond_3e
    const/16 v23, 0x0

    #@108a
    .local v23, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3e

    #@108b
    .line 1419
    .end local v23    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v36    # "_result":Landroid/net/Uri;
    :cond_3f
    const/4 v3, 0x0

    #@108c
    move-object/from16 v0, p3

    #@108e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1091
    goto :goto_3f

    #@1092
    .line 1425
    .end local v36    # "_result":Landroid/net/Uri;
    :sswitch_7f
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@1095
    move-object/from16 v0, p2

    #@1097
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109a
    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109d
    move-result v3

    #@109e
    if-eqz v3, :cond_40

    #@10a0
    .line 1428
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a2
    move-object/from16 v0, p2

    #@10a4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a7
    move-result-object v23

    #@10a8
    check-cast v23, Landroid/telecom/PhoneAccountHandle;

    #@10aa
    .line 1433
    :goto_40
    move-object/from16 v0, p0

    #@10ac
    move-object/from16 v1, v23

    #@10ae
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    #@10b1
    move-result v45

    #@10b2
    .line 1434
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b5
    .line 1435
    if-eqz v45, :cond_41

    #@10b7
    const/4 v3, 0x1

    #@10b8
    :goto_41
    move-object/from16 v0, p3

    #@10ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10bd
    .line 1436
    const/4 v3, 0x1

    #@10be
    return v3

    #@10bf
    .line 1431
    .end local v45    # "_result":Z
    :cond_40
    const/16 v23, 0x0

    #@10c1
    .restart local v23    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_40

    #@10c2
    .line 1435
    .end local v23    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v45    # "_result":Z
    :cond_41
    const/4 v3, 0x0

    #@10c3
    goto :goto_41

    #@10c4
    .line 1440
    .end local v45    # "_result":Z
    :sswitch_80
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    #@10c7
    move-object/from16 v0, p2

    #@10c9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10cc
    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    #@10cf
    move-result-object v44

    #@10d0
    .line 1442
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d3
    .line 1443
    move-object/from16 v0, p3

    #@10d5
    move-object/from16 v1, v44

    #@10d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@10da
    .line 1444
    const/4 v3, 0x1

    #@10db
    return v3

    #@10dc
    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
