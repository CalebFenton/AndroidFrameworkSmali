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

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x74

.field static final TRANSACTION_carrierActionSetMeteredApnsEnabled:I = 0x8d

.field static final TRANSACTION_carrierActionSetRadioEnabled:I = 0x8e

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x64

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x65

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x26

.field static final TRANSACTION_disableLocationUpdates:I = 0x23

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x24

.field static final TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x3d

.field static final TRANSACTION_enableDataConnectivity:I = 0x25

.field static final TRANSACTION_enableLocationUpdates:I = 0x21

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x22

.field static final TRANSACTION_enableVideoCalling:I = 0x72

.field static final TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x3c

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x80

.field static final TRANSACTION_getActivePhoneType:I = 0x2e

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x2f

.field static final TRANSACTION_getAidForAppType:I = 0x87

.field static final TRANSACTION_getAllCellInfo:I = 0x49

.field static final TRANSACTION_getAllowedCarriers:I = 0x8c

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x56

.field static final TRANSACTION_getCallState:I = 0x2a

.field static final TRANSACTION_getCallStateForSlot:I = 0x2b

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x66

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x63

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x30

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x31

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x32

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x33

.field static final TRANSACTION_getCdmaEriText:I = 0x34

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaMdn:I = 0x61

.field static final TRANSACTION_getCdmaMin:I = 0x62

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x89

.field static final TRANSACTION_getCellLocation:I = 0x28

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x5a

.field static final TRANSACTION_getDataActivity:I = 0x2c

.field static final TRANSACTION_getDataEnabled:I = 0x5e

.field static final TRANSACTION_getDataNetworkType:I = 0x42

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x43

.field static final TRANSACTION_getDataState:I = 0x2d

.field static final TRANSACTION_getDefaultSim:I = 0x4b

.field static final TRANSACTION_getDeviceId:I = 0x7c

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x7e

.field static final TRANSACTION_getEsn:I = 0x88

.field static final TRANSACTION_getImeiForSlot:I = 0x7d

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x69

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x68

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x81

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x47

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x48

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x6a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x29

.field static final TRANSACTION_getNetworkType:I = 0x40

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x41

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x86

.field static final TRANSACTION_getPcscfAddress:I = 0x5f

.field static final TRANSACTION_getPreferredNetworkType:I = 0x57

.field static final TRANSACTION_getRadioAccessFamily:I = 0x71

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0x83

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x7f

.field static final TRANSACTION_getSystemVisualVoicemailSmsFilterSettings:I = 0x3f

.field static final TRANSACTION_getTelephonyHistograms:I = 0x8a

.field static final TRANSACTION_getTetherApnRequired:I = 0x58

.field static final TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x3e

.field static final TRANSACTION_getVoiceMessageCount:I = 0x38

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x39

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x44

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0x84

.field static final TRANSACTION_getVtDataUsage:I = 0x8f

.field static final TRANSACTION_handlePinMmi:I = 0x18

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x19

.field static final TRANSACTION_hasIccCard:I = 0x45

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x46

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccExchangeSimIO:I = 0x50

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4e

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6d

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x27

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x77

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x78

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isTtyModeSupported:I = 0x76

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x73

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x7b

.field static final TRANSACTION_isVisualVoicemailEnabled:I = 0x3b

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0x85

.field static final TRANSACTION_isVolteAvailable:I = 0x7a

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x79

.field static final TRANSACTION_isWorldPhone:I = 0x75

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6e

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x36

.field static final TRANSACTION_nvReadItem:I = 0x52

.field static final TRANSACTION_nvResetConfig:I = 0x55

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x54

.field static final TRANSACTION_nvWriteItem:I = 0x53

.field static final TRANSACTION_requestModemActivityInfo:I = 0x82

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x51

.field static final TRANSACTION_setAllowedCarriers:I = 0x8b

.field static final TRANSACTION_setCellInfoListRate:I = 0x4a

.field static final TRANSACTION_setDataEnabled:I = 0x5d

.field static final TRANSACTION_setImsRegistrationState:I = 0x60

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x67

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x59

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x5b

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6b

.field static final TRANSACTION_setPolicyDataEnabled:I = 0x90

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5c

.field static final TRANSACTION_setRadio:I = 0x1c

.field static final TRANSACTION_setRadioCapability:I = 0x70

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1d

.field static final TRANSACTION_setRadioPower:I = 0x1e

.field static final TRANSACTION_setRoamingOverride:I = 0x6c

.field static final TRANSACTION_setVisualVoicemailEnabled:I = 0x3a

.field static final TRANSACTION_setVoiceMailNumber:I = 0x37

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6f

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
    .locals 58
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
    .line 1648
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v25

    #@1e
    .line 57
    .local v25, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v25

    #@22
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    #@25
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 59
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 63
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v25

    #@36
    .line 67
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v31

    #@3a
    .line 68
    .local v31, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v25

    #@3e
    move-object/from16 v2, v31

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 70
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 74
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    #@53
    move-result v54

    #@54
    .line 76
    .local v54, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 77
    if-eqz v54, :cond_0

    #@59
    const/4 v4, 0x1

    #@5a
    :goto_0
    move-object/from16 v0, p3

    #@5c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 78
    const/4 v4, 0x1

    #@60
    return v4

    #@61
    .line 77
    :cond_0
    const/4 v4, 0x0

    #@62
    goto :goto_0

    #@63
    .line 82
    .end local v54    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v5

    #@6f
    .line 85
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    #@74
    move-result v54

    #@75
    .line 86
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    .line 87
    if-eqz v54, :cond_1

    #@7a
    const/4 v4, 0x1

    #@7b
    :goto_1
    move-object/from16 v0, p3

    #@7d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 88
    const/4 v4, 0x1

    #@81
    return v4

    #@82
    .line 87
    :cond_1
    const/4 v4, 0x0

    #@83
    goto :goto_1

    #@84
    .line 92
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    #@8f
    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 95
    const/4 v4, 0x1

    #@93
    return v4

    #@94
    .line 99
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v5

    #@a0
    .line 102
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    #@a5
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 104
    const/4 v4, 0x1

    #@a9
    return v4

    #@aa
    .line 108
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    #@b5
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 111
    const/4 v4, 0x1

    #@b9
    return v4

    #@ba
    .line 115
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v25

    #@c6
    .line 118
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v25

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    #@cd
    move-result v54

    #@ce
    .line 119
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 120
    if-eqz v54, :cond_2

    #@d3
    const/4 v4, 0x1

    #@d4
    :goto_2
    move-object/from16 v0, p3

    #@d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    .line 121
    const/4 v4, 0x1

    #@da
    return v4

    #@db
    .line 120
    :cond_2
    const/4 v4, 0x0

    #@dc
    goto :goto_2

    #@dd
    .line 125
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v5

    #@e9
    .line 129
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v31

    #@ed
    .line 130
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v31

    #@f1
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    #@f4
    move-result v54

    #@f5
    .line 131
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 132
    if-eqz v54, :cond_3

    #@fa
    const/4 v4, 0x1

    #@fb
    :goto_3
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 133
    const/4 v4, 0x1

    #@101
    return v4

    #@102
    .line 132
    :cond_3
    const/4 v4, 0x0

    #@103
    goto :goto_3

    #@104
    .line 137
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v5

    #@110
    .line 141
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v31

    #@114
    .line 142
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v31

    #@118
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    #@11b
    move-result v54

    #@11c
    .line 143
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11f
    .line 144
    if-eqz v54, :cond_4

    #@121
    const/4 v4, 0x1

    #@122
    :goto_4
    move-object/from16 v0, p3

    #@124
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 145
    const/4 v4, 0x1

    #@128
    return v4

    #@129
    .line 144
    :cond_4
    const/4 v4, 0x0

    #@12a
    goto :goto_4

    #@12b
    .line 149
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@136
    move-result-object v25

    #@137
    .line 152
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v25

    #@13b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    #@13e
    move-result v54

    #@13f
    .line 153
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@142
    .line 154
    if-eqz v54, :cond_5

    #@144
    const/4 v4, 0x1

    #@145
    :goto_5
    move-object/from16 v0, p3

    #@147
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 155
    const/4 v4, 0x1

    #@14b
    return v4

    #@14c
    .line 154
    :cond_5
    const/4 v4, 0x0

    #@14d
    goto :goto_5

    #@14e
    .line 159
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159
    move-result-object v25

    #@15a
    .line 162
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v25

    #@15e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    #@161
    move-result v54

    #@162
    .line 163
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 164
    if-eqz v54, :cond_6

    #@167
    const/4 v4, 0x1

    #@168
    :goto_6
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 165
    const/4 v4, 0x1

    #@16e
    return v4

    #@16f
    .line 164
    :cond_6
    const/4 v4, 0x0

    #@170
    goto :goto_6

    #@171
    .line 169
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v5

    #@17d
    .line 173
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@180
    move-result-object v31

    #@181
    .line 174
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v31

    #@185
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    #@188
    move-result v54

    #@189
    .line 175
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 176
    if-eqz v54, :cond_7

    #@18e
    const/4 v4, 0x1

    #@18f
    :goto_7
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 177
    const/4 v4, 0x1

    #@195
    return v4

    #@196
    .line 176
    :cond_7
    const/4 v4, 0x0

    #@197
    goto :goto_7

    #@198
    .line 181
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3
    move-result-object v25

    #@1a4
    .line 184
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, v25

    #@1a8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    #@1ab
    move-result v54

    #@1ac
    .line 185
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af
    .line 186
    if-eqz v54, :cond_8

    #@1b1
    const/4 v4, 0x1

    #@1b2
    :goto_8
    move-object/from16 v0, p3

    #@1b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b7
    .line 187
    const/4 v4, 0x1

    #@1b8
    return v4

    #@1b9
    .line 186
    :cond_8
    const/4 v4, 0x0

    #@1ba
    goto :goto_8

    #@1bb
    .line 191
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v5

    #@1c7
    .line 195
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ca
    move-result-object v31

    #@1cb
    .line 196
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cd
    move-object/from16 v1, v31

    #@1cf
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    #@1d2
    move-result v54

    #@1d3
    .line 197
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 198
    if-eqz v54, :cond_9

    #@1d8
    const/4 v4, 0x1

    #@1d9
    :goto_9
    move-object/from16 v0, p3

    #@1db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 199
    const/4 v4, 0x1

    #@1df
    return v4

    #@1e0
    .line 198
    :cond_9
    const/4 v4, 0x0

    #@1e1
    goto :goto_9

    #@1e2
    .line 203
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v25

    #@1ee
    .line 206
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f0
    move-object/from16 v1, v25

    #@1f2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    #@1f5
    move-result v54

    #@1f6
    .line 207
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 208
    if-eqz v54, :cond_a

    #@1fb
    const/4 v4, 0x1

    #@1fc
    :goto_a
    move-object/from16 v0, p3

    #@1fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@201
    .line 209
    const/4 v4, 0x1

    #@202
    return v4

    #@203
    .line 208
    :cond_a
    const/4 v4, 0x0

    #@204
    goto :goto_a

    #@205
    .line 213
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20d
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v5

    #@211
    .line 217
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@214
    move-result-object v31

    #@215
    .line 218
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v31

    #@219
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    #@21c
    move-result v54

    #@21d
    .line 219
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    .line 220
    if-eqz v54, :cond_b

    #@222
    const/4 v4, 0x1

    #@223
    :goto_b
    move-object/from16 v0, p3

    #@225
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@228
    .line 221
    const/4 v4, 0x1

    #@229
    return v4

    #@22a
    .line 220
    :cond_b
    const/4 v4, 0x0

    #@22b
    goto :goto_b

    #@22c
    .line 225
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@22f
    move-object/from16 v0, p2

    #@231
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@234
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@237
    move-result-object v25

    #@238
    .line 229
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23b
    move-result-object v31

    #@23c
    .line 230
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23e
    move-object/from16 v1, v25

    #@240
    move-object/from16 v2, v31

    #@242
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    #@245
    move-result v54

    #@246
    .line 231
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 232
    if-eqz v54, :cond_c

    #@24b
    const/4 v4, 0x1

    #@24c
    :goto_c
    move-object/from16 v0, p3

    #@24e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@251
    .line 233
    const/4 v4, 0x1

    #@252
    return v4

    #@253
    .line 232
    :cond_c
    const/4 v4, 0x0

    #@254
    goto :goto_c

    #@255
    .line 237
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@258
    move-object/from16 v0, p2

    #@25a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25d
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@260
    move-result v5

    #@261
    .line 241
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@264
    move-result-object v31

    #@265
    .line 243
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@268
    move-result-object v37

    #@269
    .line 244
    .local v37, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26b
    move-object/from16 v1, v31

    #@26d
    move-object/from16 v2, v37

    #@26f
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@272
    move-result v54

    #@273
    .line 245
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@276
    .line 246
    if-eqz v54, :cond_d

    #@278
    const/4 v4, 0x1

    #@279
    :goto_d
    move-object/from16 v0, p3

    #@27b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27e
    .line 247
    const/4 v4, 0x1

    #@27f
    return v4

    #@280
    .line 246
    :cond_d
    const/4 v4, 0x0

    #@281
    goto :goto_d

    #@282
    .line 251
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a
    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28d
    move-result-object v25

    #@28e
    .line 254
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@290
    move-object/from16 v1, v25

    #@292
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    #@295
    move-result-object v56

    #@296
    .line 255
    .local v56, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@299
    .line 256
    move-object/from16 v0, p3

    #@29b
    move-object/from16 v1, v56

    #@29d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2a0
    .line 257
    const/4 v4, 0x1

    #@2a1
    return v4

    #@2a2
    .line 261
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v5

    #@2ae
    .line 265
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b1
    move-result-object v31

    #@2b2
    .line 266
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b4
    move-object/from16 v1, v31

    #@2b6
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    #@2b9
    move-result-object v56

    #@2ba
    .line 267
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd
    .line 268
    move-object/from16 v0, p3

    #@2bf
    move-object/from16 v1, v56

    #@2c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2c4
    .line 269
    const/4 v4, 0x1

    #@2c5
    return v4

    #@2c6
    .line 273
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v25

    #@2d2
    .line 277
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d5
    move-result-object v31

    #@2d6
    .line 278
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d8
    move-object/from16 v1, v25

    #@2da
    move-object/from16 v2, v31

    #@2dc
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    #@2df
    move-result-object v56

    #@2e0
    .line 279
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e3
    .line 280
    move-object/from16 v0, p3

    #@2e5
    move-object/from16 v1, v56

    #@2e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2ea
    .line 281
    const/4 v4, 0x1

    #@2eb
    return v4

    #@2ec
    .line 285
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@2ef
    move-object/from16 v0, p2

    #@2f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f4
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v5

    #@2f8
    .line 289
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fb
    move-result-object v31

    #@2fc
    .line 291
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v37

    #@300
    .line 292
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v31

    #@304
    move-object/from16 v2, v37

    #@306
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    #@309
    move-result-object v56

    #@30a
    .line 293
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30d
    .line 294
    move-object/from16 v0, p3

    #@30f
    move-object/from16 v1, v56

    #@311
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@314
    .line 295
    const/4 v4, 0x1

    #@315
    return v4

    #@316
    .line 299
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@319
    move-object/from16 v0, p2

    #@31b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31e
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@321
    move-result-object v25

    #@322
    .line 302
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v25

    #@326
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    #@329
    move-result v54

    #@32a
    .line 303
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32d
    .line 304
    if-eqz v54, :cond_e

    #@32f
    const/4 v4, 0x1

    #@330
    :goto_e
    move-object/from16 v0, p3

    #@332
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@335
    .line 305
    const/4 v4, 0x1

    #@336
    return v4

    #@337
    .line 304
    :cond_e
    const/4 v4, 0x0

    #@338
    goto :goto_e

    #@339
    .line 309
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@33c
    move-object/from16 v0, p2

    #@33e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@341
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@344
    move-result v5

    #@345
    .line 313
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@348
    move-result-object v31

    #@349
    .line 314
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v31

    #@34d
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    #@350
    move-result v54

    #@351
    .line 315
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@354
    .line 316
    if-eqz v54, :cond_f

    #@356
    const/4 v4, 0x1

    #@357
    :goto_f
    move-object/from16 v0, p3

    #@359
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35c
    .line 317
    const/4 v4, 0x1

    #@35d
    return v4

    #@35e
    .line 316
    :cond_f
    const/4 v4, 0x0

    #@35f
    goto :goto_f

    #@360
    .line 321
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    #@36b
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36e
    .line 324
    const/4 v4, 0x1

    #@36f
    return v4

    #@370
    .line 328
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@378
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37b
    move-result v5

    #@37c
    .line 331
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@37e
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    #@381
    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@384
    .line 333
    const/4 v4, 0x1

    #@385
    return v4

    #@386
    .line 337
    .end local v5    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@389
    move-object/from16 v0, p2

    #@38b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38e
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@391
    move-result v4

    #@392
    if-eqz v4, :cond_10

    #@394
    const/16 v26, 0x1

    #@396
    .line 340
    .local v26, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    #@398
    move/from16 v1, v26

    #@39a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    #@39d
    move-result v54

    #@39e
    .line 341
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 342
    if-eqz v54, :cond_11

    #@3a3
    const/4 v4, 0x1

    #@3a4
    :goto_11
    move-object/from16 v0, p3

    #@3a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3a9
    .line 343
    const/4 v4, 0x1

    #@3aa
    return v4

    #@3ab
    .line 339
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_10
    const/16 v26, 0x0

    #@3ad
    goto :goto_10

    #@3ae
    .line 342
    .restart local v26    # "_arg0":Z
    .restart local v54    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    #@3af
    goto :goto_11

    #@3b0
    .line 347
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@3b3
    move-object/from16 v0, p2

    #@3b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b8
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bb
    move-result v5

    #@3bc
    .line 351
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bf
    move-result v4

    #@3c0
    if-eqz v4, :cond_12

    #@3c2
    const/16 v33, 0x1

    #@3c4
    .line 352
    .local v33, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@3c6
    move/from16 v1, v33

    #@3c8
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    #@3cb
    move-result v54

    #@3cc
    .line 353
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cf
    .line 354
    if-eqz v54, :cond_13

    #@3d1
    const/4 v4, 0x1

    #@3d2
    :goto_13
    move-object/from16 v0, p3

    #@3d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d7
    .line 355
    const/4 v4, 0x1

    #@3d8
    return v4

    #@3d9
    .line 351
    .end local v33    # "_arg1":Z
    .end local v54    # "_result":Z
    :cond_12
    const/16 v33, 0x0

    #@3db
    goto :goto_12

    #@3dc
    .line 354
    .restart local v33    # "_arg1":Z
    .restart local v54    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    #@3dd
    goto :goto_13

    #@3de
    .line 359
    .end local v5    # "_arg0":I
    .end local v33    # "_arg1":Z
    .end local v54    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e6
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e9
    move-result v4

    #@3ea
    if-eqz v4, :cond_14

    #@3ec
    const/16 v26, 0x1

    #@3ee
    .line 362
    .restart local v26    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    #@3f0
    move/from16 v1, v26

    #@3f2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    #@3f5
    move-result v54

    #@3f6
    .line 363
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f9
    .line 364
    if-eqz v54, :cond_15

    #@3fb
    const/4 v4, 0x1

    #@3fc
    :goto_15
    move-object/from16 v0, p3

    #@3fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@401
    .line 365
    const/4 v4, 0x1

    #@402
    return v4

    #@403
    .line 361
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_14
    const/16 v26, 0x0

    #@405
    goto :goto_14

    #@406
    .line 364
    .restart local v26    # "_arg0":Z
    .restart local v54    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    #@407
    goto :goto_15

    #@408
    .line 369
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@40b
    move-object/from16 v0, p2

    #@40d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@410
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    #@413
    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@416
    .line 372
    const/4 v4, 0x1

    #@417
    return v4

    #@418
    .line 376
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@41b
    move-object/from16 v0, p2

    #@41d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@420
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@423
    move-result v5

    #@424
    .line 379
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@426
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    #@429
    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42c
    .line 381
    const/4 v4, 0x1

    #@42d
    return v4

    #@42e
    .line 385
    .end local v5    # "_arg0":I
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@431
    move-object/from16 v0, p2

    #@433
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@436
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    #@439
    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 388
    const/4 v4, 0x1

    #@43d
    return v4

    #@43e
    .line 392
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@441
    move-object/from16 v0, p2

    #@443
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@446
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@449
    move-result v5

    #@44a
    .line 395
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@44c
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    #@44f
    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@452
    .line 397
    const/4 v4, 0x1

    #@453
    return v4

    #@454
    .line 401
    .end local v5    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45c
    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    #@45f
    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@462
    .line 404
    const/4 v4, 0x1

    #@463
    return v4

    #@464
    .line 408
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@467
    move-object/from16 v0, p2

    #@469
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46c
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46f
    move-result v5

    #@470
    .line 411
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@472
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    #@475
    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@478
    .line 413
    const/4 v4, 0x1

    #@479
    return v4

    #@47a
    .line 417
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@482
    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    #@485
    move-result v54

    #@486
    .line 419
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@489
    .line 420
    if-eqz v54, :cond_16

    #@48b
    const/4 v4, 0x1

    #@48c
    :goto_16
    move-object/from16 v0, p3

    #@48e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@491
    .line 421
    const/4 v4, 0x1

    #@492
    return v4

    #@493
    .line 420
    :cond_16
    const/4 v4, 0x0

    #@494
    goto :goto_16

    #@495
    .line 425
    .end local v54    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@498
    move-object/from16 v0, p2

    #@49a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49d
    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    #@4a0
    move-result v54

    #@4a1
    .line 427
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a4
    .line 428
    if-eqz v54, :cond_17

    #@4a6
    const/4 v4, 0x1

    #@4a7
    :goto_17
    move-object/from16 v0, p3

    #@4a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4ac
    .line 429
    const/4 v4, 0x1

    #@4ad
    return v4

    #@4ae
    .line 428
    :cond_17
    const/4 v4, 0x0

    #@4af
    goto :goto_17

    #@4b0
    .line 433
    .end local v54    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@4b3
    move-object/from16 v0, p2

    #@4b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b8
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    #@4bb
    move-result v54

    #@4bc
    .line 435
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bf
    .line 436
    if-eqz v54, :cond_18

    #@4c1
    const/4 v4, 0x1

    #@4c2
    :goto_18
    move-object/from16 v0, p3

    #@4c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c7
    .line 437
    const/4 v4, 0x1

    #@4c8
    return v4

    #@4c9
    .line 436
    :cond_18
    const/4 v4, 0x0

    #@4ca
    goto :goto_18

    #@4cb
    .line 441
    .end local v54    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d6
    move-result-object v25

    #@4d7
    .line 444
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d9
    move-object/from16 v1, v25

    #@4db
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    #@4de
    move-result-object v43

    #@4df
    .line 445
    .local v43, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e2
    .line 446
    if-eqz v43, :cond_19

    #@4e4
    .line 447
    const/4 v4, 0x1

    #@4e5
    move-object/from16 v0, p3

    #@4e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4ea
    .line 448
    const/4 v4, 0x1

    #@4eb
    move-object/from16 v0, v43

    #@4ed
    move-object/from16 v1, p3

    #@4ef
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@4f2
    .line 453
    :goto_19
    const/4 v4, 0x1

    #@4f3
    return v4

    #@4f4
    .line 451
    :cond_19
    const/4 v4, 0x0

    #@4f5
    move-object/from16 v0, p3

    #@4f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4fa
    goto :goto_19

    #@4fb
    .line 457
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Landroid/os/Bundle;
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@4fe
    move-object/from16 v0, p2

    #@500
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@503
    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@506
    move-result-object v25

    #@507
    .line 460
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@509
    move-object/from16 v1, v25

    #@50b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@50e
    move-result-object v51

    #@50f
    .line 461
    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@512
    .line 462
    move-object/from16 v0, p3

    #@514
    move-object/from16 v1, v51

    #@516
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@519
    .line 463
    const/4 v4, 0x1

    #@51a
    return v4

    #@51b
    .line 467
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@51e
    move-object/from16 v0, p2

    #@520
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@523
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    #@526
    move-result v39

    #@527
    .line 469
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52a
    .line 470
    move-object/from16 v0, p3

    #@52c
    move/from16 v1, v39

    #@52e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@531
    .line 471
    const/4 v4, 0x1

    #@532
    return v4

    #@533
    .line 475
    .end local v39    # "_result":I
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@536
    move-object/from16 v0, p2

    #@538
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53b
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53e
    move-result v5

    #@53f
    .line 478
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@541
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSlot(I)I

    #@544
    move-result v39

    #@545
    .line 479
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@548
    .line 480
    move-object/from16 v0, p3

    #@54a
    move/from16 v1, v39

    #@54c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54f
    .line 481
    const/4 v4, 0x1

    #@550
    return v4

    #@551
    .line 485
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@554
    move-object/from16 v0, p2

    #@556
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@559
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    #@55c
    move-result v39

    #@55d
    .line 487
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@560
    .line 488
    move-object/from16 v0, p3

    #@562
    move/from16 v1, v39

    #@564
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@567
    .line 489
    const/4 v4, 0x1

    #@568
    return v4

    #@569
    .line 493
    .end local v39    # "_result":I
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@56c
    move-object/from16 v0, p2

    #@56e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@571
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    #@574
    move-result v39

    #@575
    .line 495
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@578
    .line 496
    move-object/from16 v0, p3

    #@57a
    move/from16 v1, v39

    #@57c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57f
    .line 497
    const/4 v4, 0x1

    #@580
    return v4

    #@581
    .line 501
    .end local v39    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@584
    move-object/from16 v0, p2

    #@586
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@589
    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    #@58c
    move-result v39

    #@58d
    .line 503
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 504
    move-object/from16 v0, p3

    #@592
    move/from16 v1, v39

    #@594
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@597
    .line 505
    const/4 v4, 0x1

    #@598
    return v4

    #@599
    .line 509
    .end local v39    # "_result":I
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@59c
    move-object/from16 v0, p2

    #@59e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a1
    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a4
    move-result v5

    #@5a5
    .line 512
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@5a7
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    #@5aa
    move-result v39

    #@5ab
    .line 513
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ae
    .line 514
    move-object/from16 v0, p3

    #@5b0
    move/from16 v1, v39

    #@5b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b5
    .line 515
    const/4 v4, 0x1

    #@5b6
    return v4

    #@5b7
    .line 519
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bf
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c2
    move-result-object v25

    #@5c3
    .line 522
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c5
    move-object/from16 v1, v25

    #@5c7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    #@5ca
    move-result v39

    #@5cb
    .line 523
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ce
    .line 524
    move-object/from16 v0, p3

    #@5d0
    move/from16 v1, v39

    #@5d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d5
    .line 525
    const/4 v4, 0x1

    #@5d6
    return v4

    #@5d7
    .line 529
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@5da
    move-object/from16 v0, p2

    #@5dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5df
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e2
    move-result v5

    #@5e3
    .line 533
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e6
    move-result-object v31

    #@5e7
    .line 534
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5e9
    move-object/from16 v1, v31

    #@5eb
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    #@5ee
    move-result v39

    #@5ef
    .line 535
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f2
    .line 536
    move-object/from16 v0, p3

    #@5f4
    move/from16 v1, v39

    #@5f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f9
    .line 537
    const/4 v4, 0x1

    #@5fa
    return v4

    #@5fb
    .line 541
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@603
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@606
    move-result-object v25

    #@607
    .line 544
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@609
    move-object/from16 v1, v25

    #@60b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    #@60e
    move-result v39

    #@60f
    .line 545
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@612
    .line 546
    move-object/from16 v0, p3

    #@614
    move/from16 v1, v39

    #@616
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@619
    .line 547
    const/4 v4, 0x1

    #@61a
    return v4

    #@61b
    .line 551
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@61e
    move-object/from16 v0, p2

    #@620
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@623
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@626
    move-result v5

    #@627
    .line 555
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62a
    move-result-object v31

    #@62b
    .line 556
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62d
    move-object/from16 v1, v31

    #@62f
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    #@632
    move-result v39

    #@633
    .line 557
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@636
    .line 558
    move-object/from16 v0, p3

    #@638
    move/from16 v1, v39

    #@63a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63d
    .line 559
    const/4 v4, 0x1

    #@63e
    return v4

    #@63f
    .line 563
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@642
    move-object/from16 v0, p2

    #@644
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@647
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64a
    move-result-object v25

    #@64b
    .line 566
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@64d
    move-object/from16 v1, v25

    #@64f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    #@652
    move-result-object v48

    #@653
    .line 567
    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@656
    .line 568
    move-object/from16 v0, p3

    #@658
    move-object/from16 v1, v48

    #@65a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@65d
    .line 569
    const/4 v4, 0x1

    #@65e
    return v4

    #@65f
    .line 573
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@662
    move-object/from16 v0, p2

    #@664
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@667
    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66a
    move-result v5

    #@66b
    .line 577
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66e
    move-result-object v31

    #@66f
    .line 578
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@671
    move-object/from16 v1, v31

    #@673
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@676
    move-result-object v48

    #@677
    .line 579
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67a
    .line 580
    move-object/from16 v0, p3

    #@67c
    move-object/from16 v1, v48

    #@67e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@681
    .line 581
    const/4 v4, 0x1

    #@682
    return v4

    #@683
    .line 585
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@686
    move-object/from16 v0, p2

    #@688
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68b
    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    #@68e
    move-result v54

    #@68f
    .line 587
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@692
    .line 588
    if-eqz v54, :cond_1a

    #@694
    const/4 v4, 0x1

    #@695
    :goto_1a
    move-object/from16 v0, p3

    #@697
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@69a
    .line 589
    const/4 v4, 0x1

    #@69b
    return v4

    #@69c
    .line 588
    :cond_1a
    const/4 v4, 0x0

    #@69d
    goto :goto_1a

    #@69e
    .line 593
    .end local v54    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@6a1
    move-object/from16 v0, p2

    #@6a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a6
    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a9
    move-result v5

    #@6aa
    .line 597
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ad
    move-result-object v31

    #@6ae
    .line 599
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b1
    move-result-object v37

    #@6b2
    .line 600
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b4
    move-object/from16 v1, v31

    #@6b6
    move-object/from16 v2, v37

    #@6b8
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@6bb
    move-result v54

    #@6bc
    .line 601
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bf
    .line 602
    if-eqz v54, :cond_1b

    #@6c1
    const/4 v4, 0x1

    #@6c2
    :goto_1b
    move-object/from16 v0, p3

    #@6c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6c7
    .line 603
    const/4 v4, 0x1

    #@6c8
    return v4

    #@6c9
    .line 602
    :cond_1b
    const/4 v4, 0x0

    #@6ca
    goto :goto_1b

    #@6cb
    .line 607
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@6ce
    move-object/from16 v0, p2

    #@6d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d3
    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    #@6d6
    move-result v39

    #@6d7
    .line 609
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6da
    .line 610
    move-object/from16 v0, p3

    #@6dc
    move/from16 v1, v39

    #@6de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e1
    .line 611
    const/4 v4, 0x1

    #@6e2
    return v4

    #@6e3
    .line 615
    .end local v39    # "_result":I
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@6e6
    move-object/from16 v0, p2

    #@6e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6eb
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ee
    move-result v5

    #@6ef
    .line 618
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6f1
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    #@6f4
    move-result v39

    #@6f5
    .line 619
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f8
    .line 620
    move-object/from16 v0, p3

    #@6fa
    move/from16 v1, v39

    #@6fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6ff
    .line 621
    const/4 v4, 0x1

    #@700
    return v4

    #@701
    .line 625
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@704
    move-object/from16 v0, p2

    #@706
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@709
    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70c
    move-result-object v25

    #@70d
    .line 629
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@710
    move-result v4

    #@711
    if-eqz v4, :cond_1c

    #@713
    .line 630
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@715
    move-object/from16 v0, p2

    #@717
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@71a
    move-result-object v29

    #@71b
    check-cast v29, Landroid/telecom/PhoneAccountHandle;

    #@71d
    .line 636
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@720
    move-result v4

    #@721
    if-eqz v4, :cond_1d

    #@723
    const/16 v38, 0x1

    #@725
    .line 637
    .local v38, "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    #@727
    move-object/from16 v1, v25

    #@729
    move-object/from16 v2, v29

    #@72b
    move/from16 v3, v38

    #@72d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    #@730
    .line 638
    const/4 v4, 0x1

    #@731
    return v4

    #@732
    .line 633
    .end local v38    # "_arg2":Z
    :cond_1c
    const/16 v29, 0x0

    #@734
    .local v29, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1c

    #@735
    .line 636
    .end local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_1d
    const/16 v38, 0x0

    #@737
    goto :goto_1d

    #@738
    .line 642
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@73b
    move-object/from16 v0, p2

    #@73d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@740
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@743
    move-result-object v25

    #@744
    .line 646
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@747
    move-result v4

    #@748
    if-eqz v4, :cond_1e

    #@74a
    .line 647
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74c
    move-object/from16 v0, p2

    #@74e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@751
    move-result-object v29

    #@752
    check-cast v29, Landroid/telecom/PhoneAccountHandle;

    #@754
    .line 652
    :goto_1e
    move-object/from16 v0, p0

    #@756
    move-object/from16 v1, v25

    #@758
    move-object/from16 v2, v29

    #@75a
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    #@75d
    move-result v54

    #@75e
    .line 653
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@761
    .line 654
    if-eqz v54, :cond_1f

    #@763
    const/4 v4, 0x1

    #@764
    :goto_1f
    move-object/from16 v0, p3

    #@766
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@769
    .line 655
    const/4 v4, 0x1

    #@76a
    return v4

    #@76b
    .line 650
    .end local v54    # "_result":Z
    :cond_1e
    const/16 v29, 0x0

    #@76d
    .restart local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1e

    #@76e
    .line 654
    .end local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .restart local v54    # "_result":Z
    :cond_1f
    const/4 v4, 0x0

    #@76f
    goto :goto_1f

    #@770
    .line 659
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@773
    move-object/from16 v0, p2

    #@775
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@778
    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@77b
    move-result-object v25

    #@77c
    .line 663
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77f
    move-result v6

    #@780
    .line 665
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@783
    move-result v4

    #@784
    if-eqz v4, :cond_20

    #@786
    .line 666
    sget-object v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@788
    move-object/from16 v0, p2

    #@78a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78d
    move-result-object v36

    #@78e
    check-cast v36, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@790
    .line 671
    :goto_20
    move-object/from16 v0, p0

    #@792
    move-object/from16 v1, v25

    #@794
    move-object/from16 v2, v36

    #@796
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    #@799
    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79c
    .line 673
    const/4 v4, 0x1

    #@79d
    return v4

    #@79e
    .line 669
    :cond_20
    const/16 v36, 0x0

    #@7a0
    .local v36, "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    goto :goto_20

    #@7a1
    .line 677
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@7a4
    move-object/from16 v0, p2

    #@7a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a9
    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7ac
    move-result-object v25

    #@7ad
    .line 681
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b0
    move-result v6

    #@7b1
    .line 682
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7b3
    move-object/from16 v1, v25

    #@7b5
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    #@7b8
    .line 683
    const/4 v4, 0x1

    #@7b9
    return v4

    #@7ba
    .line 687
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@7bd
    move-object/from16 v0, p2

    #@7bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c2
    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7c5
    move-result-object v25

    #@7c6
    .line 691
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c9
    move-result v6

    #@7ca
    .line 692
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7cc
    move-object/from16 v1, v25

    #@7ce
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@7d1
    move-result-object v46

    #@7d2
    .line 693
    .local v46, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d5
    .line 694
    if-eqz v46, :cond_21

    #@7d7
    .line 695
    const/4 v4, 0x1

    #@7d8
    move-object/from16 v0, p3

    #@7da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7dd
    .line 696
    const/4 v4, 0x1

    #@7de
    move-object/from16 v0, v46

    #@7e0
    move-object/from16 v1, p3

    #@7e2
    invoke-virtual {v0, v1, v4}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@7e5
    .line 701
    :goto_21
    const/4 v4, 0x1

    #@7e6
    return v4

    #@7e7
    .line 699
    :cond_21
    const/4 v4, 0x0

    #@7e8
    move-object/from16 v0, p3

    #@7ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7ed
    goto :goto_21

    #@7ee
    .line 705
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@7f1
    move-object/from16 v0, p2

    #@7f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f6
    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f9
    move-result-object v25

    #@7fa
    .line 709
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7fd
    move-result v6

    #@7fe
    .line 710
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@800
    move-object/from16 v1, v25

    #@802
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@805
    move-result-object v46

    #@806
    .line 711
    .restart local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@809
    .line 712
    if-eqz v46, :cond_22

    #@80b
    .line 713
    const/4 v4, 0x1

    #@80c
    move-object/from16 v0, p3

    #@80e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@811
    .line 714
    const/4 v4, 0x1

    #@812
    move-object/from16 v0, v46

    #@814
    move-object/from16 v1, p3

    #@816
    invoke-virtual {v0, v1, v4}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@819
    .line 719
    :goto_22
    const/4 v4, 0x1

    #@81a
    return v4

    #@81b
    .line 717
    :cond_22
    const/4 v4, 0x0

    #@81c
    move-object/from16 v0, p3

    #@81e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@821
    goto :goto_22

    #@822
    .line 723
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@825
    move-object/from16 v0, p2

    #@827
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82a
    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    #@82d
    move-result v39

    #@82e
    .line 725
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@831
    .line 726
    move-object/from16 v0, p3

    #@833
    move/from16 v1, v39

    #@835
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@838
    .line 727
    const/4 v4, 0x1

    #@839
    return v4

    #@83a
    .line 731
    .end local v39    # "_result":I
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@83d
    move-object/from16 v0, p2

    #@83f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@842
    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@845
    move-result v5

    #@846
    .line 735
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@849
    move-result-object v31

    #@84a
    .line 736
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@84c
    move-object/from16 v1, v31

    #@84e
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@851
    move-result v39

    #@852
    .line 737
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@855
    .line 738
    move-object/from16 v0, p3

    #@857
    move/from16 v1, v39

    #@859
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@85c
    .line 739
    const/4 v4, 0x1

    #@85d
    return v4

    #@85e
    .line 743
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@861
    move-object/from16 v0, p2

    #@863
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@866
    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@869
    move-result-object v25

    #@86a
    .line 746
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@86c
    move-object/from16 v1, v25

    #@86e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    #@871
    move-result v39

    #@872
    .line 747
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@875
    .line 748
    move-object/from16 v0, p3

    #@877
    move/from16 v1, v39

    #@879
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@87c
    .line 749
    const/4 v4, 0x1

    #@87d
    return v4

    #@87e
    .line 753
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@881
    move-object/from16 v0, p2

    #@883
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@886
    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@889
    move-result v5

    #@88a
    .line 757
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@88d
    move-result-object v31

    #@88e
    .line 758
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@890
    move-object/from16 v1, v31

    #@892
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@895
    move-result v39

    #@896
    .line 759
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@899
    .line 760
    move-object/from16 v0, p3

    #@89b
    move/from16 v1, v39

    #@89d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8a0
    .line 761
    const/4 v4, 0x1

    #@8a1
    return v4

    #@8a2
    .line 765
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@8a5
    move-object/from16 v0, p2

    #@8a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8aa
    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ad
    move-result v5

    #@8ae
    .line 769
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b1
    move-result-object v31

    #@8b2
    .line 770
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8b4
    move-object/from16 v1, v31

    #@8b6
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@8b9
    move-result v39

    #@8ba
    .line 771
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8bd
    .line 772
    move-object/from16 v0, p3

    #@8bf
    move/from16 v1, v39

    #@8c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8c4
    .line 773
    const/4 v4, 0x1

    #@8c5
    return v4

    #@8c6
    .line 777
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@8c9
    move-object/from16 v0, p2

    #@8cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ce
    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    #@8d1
    move-result v54

    #@8d2
    .line 779
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d5
    .line 780
    if-eqz v54, :cond_23

    #@8d7
    const/4 v4, 0x1

    #@8d8
    :goto_23
    move-object/from16 v0, p3

    #@8da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8dd
    .line 781
    const/4 v4, 0x1

    #@8de
    return v4

    #@8df
    .line 780
    :cond_23
    const/4 v4, 0x0

    #@8e0
    goto :goto_23

    #@8e1
    .line 785
    .end local v54    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@8e4
    move-object/from16 v0, p2

    #@8e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e9
    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ec
    move-result v5

    #@8ed
    .line 788
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@8ef
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    #@8f2
    move-result v54

    #@8f3
    .line 789
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f6
    .line 790
    if-eqz v54, :cond_24

    #@8f8
    const/4 v4, 0x1

    #@8f9
    :goto_24
    move-object/from16 v0, p3

    #@8fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8fe
    .line 791
    const/4 v4, 0x1

    #@8ff
    return v4

    #@900
    .line 790
    :cond_24
    const/4 v4, 0x0

    #@901
    goto :goto_24

    #@902
    .line 795
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@905
    move-object/from16 v0, p2

    #@907
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90a
    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90d
    move-result-object v25

    #@90e
    .line 798
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@910
    move-object/from16 v1, v25

    #@912
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    #@915
    move-result v39

    #@916
    .line 799
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@919
    .line 800
    move-object/from16 v0, p3

    #@91b
    move/from16 v1, v39

    #@91d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@920
    .line 801
    const/4 v4, 0x1

    #@921
    return v4

    #@922
    .line 805
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@925
    move-object/from16 v0, p2

    #@927
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92a
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92d
    move-result v5

    #@92e
    .line 809
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@931
    move-result-object v31

    #@932
    .line 810
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@934
    move-object/from16 v1, v31

    #@936
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    #@939
    move-result v39

    #@93a
    .line 811
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93d
    .line 812
    move-object/from16 v0, p3

    #@93f
    move/from16 v1, v39

    #@941
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@944
    .line 813
    const/4 v4, 0x1

    #@945
    return v4

    #@946
    .line 817
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@949
    move-object/from16 v0, p2

    #@94b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94e
    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@951
    move-result-object v25

    #@952
    .line 820
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@954
    move-object/from16 v1, v25

    #@956
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@959
    move-result-object v50

    #@95a
    .line 821
    .local v50, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95d
    .line 822
    move-object/from16 v0, p3

    #@95f
    move-object/from16 v1, v50

    #@961
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@964
    .line 823
    const/4 v4, 0x1

    #@965
    return v4

    #@966
    .line 827
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@969
    move-object/from16 v0, p2

    #@96b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96e
    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@971
    move-result v5

    #@972
    .line 830
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@974
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    #@977
    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@97a
    .line 832
    const/4 v4, 0x1

    #@97b
    return v4

    #@97c
    .line 836
    .end local v5    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@97f
    move-object/from16 v0, p2

    #@981
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@984
    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    #@987
    move-result v39

    #@988
    .line 838
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98b
    .line 839
    move-object/from16 v0, p3

    #@98d
    move/from16 v1, v39

    #@98f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@992
    .line 840
    const/4 v4, 0x1

    #@993
    return v4

    #@994
    .line 844
    .end local v39    # "_result":I
    :sswitch_4c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@997
    move-object/from16 v0, p2

    #@999
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99c
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99f
    move-result v5

    #@9a0
    .line 848
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a3
    move-result-object v31

    #@9a4
    .line 849
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9a6
    move-object/from16 v1, v31

    #@9a8
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    #@9ab
    move-result-object v44

    #@9ac
    .line 850
    .local v44, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9af
    .line 851
    if-eqz v44, :cond_25

    #@9b1
    .line 852
    const/4 v4, 0x1

    #@9b2
    move-object/from16 v0, p3

    #@9b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9b7
    .line 853
    const/4 v4, 0x1

    #@9b8
    move-object/from16 v0, v44

    #@9ba
    move-object/from16 v1, p3

    #@9bc
    invoke-virtual {v0, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@9bf
    .line 858
    :goto_25
    const/4 v4, 0x1

    #@9c0
    return v4

    #@9c1
    .line 856
    :cond_25
    const/4 v4, 0x0

    #@9c2
    move-object/from16 v0, p3

    #@9c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9c7
    goto :goto_25

    #@9c8
    .line 862
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@9cb
    move-object/from16 v0, p2

    #@9cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d0
    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d3
    move-result v5

    #@9d4
    .line 866
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d7
    move-result v6

    #@9d8
    .line 867
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@9da
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(II)Z

    #@9dd
    move-result v54

    #@9de
    .line 868
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e1
    .line 869
    if-eqz v54, :cond_26

    #@9e3
    const/4 v4, 0x1

    #@9e4
    :goto_26
    move-object/from16 v0, p3

    #@9e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9e9
    .line 870
    const/4 v4, 0x1

    #@9ea
    return v4

    #@9eb
    .line 869
    :cond_26
    const/4 v4, 0x0

    #@9ec
    goto :goto_26

    #@9ed
    .line 874
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_4e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@9f0
    move-object/from16 v0, p2

    #@9f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f5
    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f8
    move-result v5

    #@9f9
    .line 878
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9fc
    move-result v6

    #@9fd
    .line 880
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a00
    move-result v7

    #@a01
    .line 882
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a04
    move-result v8

    #@a05
    .line 884
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a08
    move-result v9

    #@a09
    .line 886
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0c
    move-result v10

    #@a0d
    .line 888
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a10
    move-result v11

    #@a11
    .line 890
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a14
    move-result-object v12

    #@a15
    .local v12, "_arg7":Ljava/lang/String;
    move-object/from16 v4, p0

    #@a17
    .line 891
    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    #@a1a
    move-result-object v48

    #@a1b
    .line 892
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1e
    .line 893
    move-object/from16 v0, p3

    #@a20
    move-object/from16 v1, v48

    #@a22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a25
    .line 894
    const/4 v4, 0x1

    #@a26
    return v4

    #@a27
    .line 898
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@a2a
    move-object/from16 v0, p2

    #@a2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2f
    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a32
    move-result v5

    #@a33
    .line 902
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a36
    move-result v6

    #@a37
    .line 904
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3a
    move-result v7

    #@a3b
    .line 906
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3e
    move-result v8

    #@a3f
    .line 908
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a42
    move-result v9

    #@a43
    .line 910
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a46
    move-result v10

    #@a47
    .line 912
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a4a
    move-result-object v20

    #@a4b
    .local v20, "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    #@a4d
    move v14, v5

    #@a4e
    move v15, v6

    #@a4f
    move/from16 v16, v7

    #@a51
    move/from16 v17, v8

    #@a53
    move/from16 v18, v9

    #@a55
    move/from16 v19, v10

    #@a57
    .line 913
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    #@a5a
    move-result-object v48

    #@a5b
    .line 914
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5e
    .line 915
    move-object/from16 v0, p3

    #@a60
    move-object/from16 v1, v48

    #@a62
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a65
    .line 916
    const/4 v4, 0x1

    #@a66
    return v4

    #@a67
    .line 920
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@a6a
    move-object/from16 v0, p2

    #@a6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6f
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a72
    move-result v5

    #@a73
    .line 924
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a76
    move-result v6

    #@a77
    .line 926
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7a
    move-result v7

    #@a7b
    .line 928
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7e
    move-result v8

    #@a7f
    .line 930
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a82
    move-result v9

    #@a83
    .line 932
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a86
    move-result v10

    #@a87
    .line 934
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a8a
    move-result-object v20

    #@a8b
    .restart local v20    # "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    #@a8d
    move v14, v5

    #@a8e
    move v15, v6

    #@a8f
    move/from16 v16, v7

    #@a91
    move/from16 v17, v8

    #@a93
    move/from16 v18, v9

    #@a95
    move/from16 v19, v10

    #@a97
    .line 935
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    #@a9a
    move-result-object v55

    #@a9b
    .line 936
    .local v55, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9e
    .line 937
    move-object/from16 v0, p3

    #@aa0
    move-object/from16 v1, v55

    #@aa2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@aa5
    .line 938
    const/4 v4, 0x1

    #@aa6
    return v4

    #@aa7
    .line 942
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_51
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@aaa
    move-object/from16 v0, p2

    #@aac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aaf
    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab2
    move-result v5

    #@ab3
    .line 946
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ab6
    move-result-object v31

    #@ab7
    .line 947
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ab9
    move-object/from16 v1, v31

    #@abb
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    #@abe
    move-result-object v48

    #@abf
    .line 948
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac2
    .line 949
    move-object/from16 v0, p3

    #@ac4
    move-object/from16 v1, v48

    #@ac6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ac9
    .line 950
    const/4 v4, 0x1

    #@aca
    return v4

    #@acb
    .line 954
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ace
    move-object/from16 v0, p2

    #@ad0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad3
    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad6
    move-result v5

    #@ad7
    .line 957
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@ad9
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    #@adc
    move-result-object v48

    #@add
    .line 958
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ae0
    .line 959
    move-object/from16 v0, p3

    #@ae2
    move-object/from16 v1, v48

    #@ae4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ae7
    .line 960
    const/4 v4, 0x1

    #@ae8
    return v4

    #@ae9
    .line 964
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@aec
    move-object/from16 v0, p2

    #@aee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af1
    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af4
    move-result v5

    #@af5
    .line 968
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@af8
    move-result-object v31

    #@af9
    .line 969
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@afb
    move-object/from16 v1, v31

    #@afd
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    #@b00
    move-result v54

    #@b01
    .line 970
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b04
    .line 971
    if-eqz v54, :cond_27

    #@b06
    const/4 v4, 0x1

    #@b07
    :goto_27
    move-object/from16 v0, p3

    #@b09
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b0c
    .line 972
    const/4 v4, 0x1

    #@b0d
    return v4

    #@b0e
    .line 971
    :cond_27
    const/4 v4, 0x0

    #@b0f
    goto :goto_27

    #@b10
    .line 976
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b13
    move-object/from16 v0, p2

    #@b15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b18
    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@b1b
    move-result-object v27

    #@b1c
    .line 979
    .local v27, "_arg0":[B
    move-object/from16 v0, p0

    #@b1e
    move-object/from16 v1, v27

    #@b20
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    #@b23
    move-result v54

    #@b24
    .line 980
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b27
    .line 981
    if-eqz v54, :cond_28

    #@b29
    const/4 v4, 0x1

    #@b2a
    :goto_28
    move-object/from16 v0, p3

    #@b2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b2f
    .line 982
    const/4 v4, 0x1

    #@b30
    return v4

    #@b31
    .line 981
    :cond_28
    const/4 v4, 0x0

    #@b32
    goto :goto_28

    #@b33
    .line 986
    .end local v27    # "_arg0":[B
    .end local v54    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b36
    move-object/from16 v0, p2

    #@b38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3b
    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3e
    move-result v5

    #@b3f
    .line 989
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b41
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    #@b44
    move-result v54

    #@b45
    .line 990
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b48
    .line 991
    if-eqz v54, :cond_29

    #@b4a
    const/4 v4, 0x1

    #@b4b
    :goto_29
    move-object/from16 v0, p3

    #@b4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b50
    .line 992
    const/4 v4, 0x1

    #@b51
    return v4

    #@b52
    .line 991
    :cond_29
    const/4 v4, 0x0

    #@b53
    goto :goto_29

    #@b54
    .line 996
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_56
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b57
    move-object/from16 v0, p2

    #@b59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5c
    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5f
    move-result-object v25

    #@b60
    .line 999
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b62
    move-object/from16 v1, v25

    #@b64
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    #@b67
    move-result v39

    #@b68
    .line 1000
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6b
    .line 1001
    move-object/from16 v0, p3

    #@b6d
    move/from16 v1, v39

    #@b6f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b72
    .line 1002
    const/4 v4, 0x1

    #@b73
    return v4

    #@b74
    .line 1006
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_57
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b77
    move-object/from16 v0, p2

    #@b79
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7c
    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7f
    move-result v5

    #@b80
    .line 1009
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b82
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    #@b85
    move-result v39

    #@b86
    .line 1010
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b89
    .line 1011
    move-object/from16 v0, p3

    #@b8b
    move/from16 v1, v39

    #@b8d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b90
    .line 1012
    const/4 v4, 0x1

    #@b91
    return v4

    #@b92
    .line 1016
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@b95
    move-object/from16 v0, p2

    #@b97
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b9a
    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    #@b9d
    move-result v39

    #@b9e
    .line 1018
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba1
    .line 1019
    move-object/from16 v0, p3

    #@ba3
    move/from16 v1, v39

    #@ba5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ba8
    .line 1020
    const/4 v4, 0x1

    #@ba9
    return v4

    #@baa
    .line 1024
    .end local v39    # "_result":I
    :sswitch_59
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@bad
    move-object/from16 v0, p2

    #@baf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bb2
    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb5
    move-result v5

    #@bb6
    .line 1027
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bb8
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    #@bbb
    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bbe
    .line 1029
    const/4 v4, 0x1

    #@bbf
    return v4

    #@bc0
    .line 1033
    .end local v5    # "_arg0":I
    :sswitch_5a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@bc3
    move-object/from16 v0, p2

    #@bc5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc8
    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bcb
    move-result v5

    #@bcc
    .line 1036
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bce
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    #@bd1
    move-result-object v47

    #@bd2
    .line 1037
    .local v47, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd5
    .line 1038
    if-eqz v47, :cond_2a

    #@bd7
    .line 1039
    const/4 v4, 0x1

    #@bd8
    move-object/from16 v0, p3

    #@bda
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bdd
    .line 1040
    const/4 v4, 0x1

    #@bde
    move-object/from16 v0, v47

    #@be0
    move-object/from16 v1, p3

    #@be2
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@be5
    .line 1045
    :goto_2a
    const/4 v4, 0x1

    #@be6
    return v4

    #@be7
    .line 1043
    :cond_2a
    const/4 v4, 0x0

    #@be8
    move-object/from16 v0, p3

    #@bea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bed
    goto :goto_2a

    #@bee
    .line 1049
    .end local v5    # "_arg0":I
    .end local v47    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_5b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@bf1
    move-object/from16 v0, p2

    #@bf3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf6
    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf9
    move-result v5

    #@bfa
    .line 1053
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bfd
    move-result v4

    #@bfe
    if-eqz v4, :cond_2b

    #@c00
    .line 1054
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c02
    move-object/from16 v0, p2

    #@c04
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c07
    move-result-object v30

    #@c08
    check-cast v30, Lcom/android/internal/telephony/OperatorInfo;

    #@c0a
    .line 1060
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0d
    move-result v4

    #@c0e
    if-eqz v4, :cond_2c

    #@c10
    const/16 v38, 0x1

    #@c12
    .line 1061
    .restart local v38    # "_arg2":Z
    :goto_2c
    move-object/from16 v0, p0

    #@c14
    move-object/from16 v1, v30

    #@c16
    move/from16 v2, v38

    #@c18
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    #@c1b
    move-result v54

    #@c1c
    .line 1062
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1f
    .line 1063
    if-eqz v54, :cond_2d

    #@c21
    const/4 v4, 0x1

    #@c22
    :goto_2d
    move-object/from16 v0, p3

    #@c24
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c27
    .line 1064
    const/4 v4, 0x1

    #@c28
    return v4

    #@c29
    .line 1057
    .end local v38    # "_arg2":Z
    .end local v54    # "_result":Z
    :cond_2b
    const/16 v30, 0x0

    #@c2b
    .local v30, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_2b

    #@c2c
    .line 1060
    .end local v30    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2c
    const/16 v38, 0x0

    #@c2e
    goto :goto_2c

    #@c2f
    .line 1063
    .restart local v38    # "_arg2":Z
    .restart local v54    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    #@c30
    goto :goto_2d

    #@c31
    .line 1068
    .end local v5    # "_arg0":I
    .end local v38    # "_arg2":Z
    .end local v54    # "_result":Z
    :sswitch_5c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@c34
    move-object/from16 v0, p2

    #@c36
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c39
    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3c
    move-result v5

    #@c3d
    .line 1072
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c40
    move-result v6

    #@c41
    .line 1073
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@c43
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    #@c46
    move-result v54

    #@c47
    .line 1074
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4a
    .line 1075
    if-eqz v54, :cond_2e

    #@c4c
    const/4 v4, 0x1

    #@c4d
    :goto_2e
    move-object/from16 v0, p3

    #@c4f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c52
    .line 1076
    const/4 v4, 0x1

    #@c53
    return v4

    #@c54
    .line 1075
    :cond_2e
    const/4 v4, 0x0

    #@c55
    goto :goto_2e

    #@c56
    .line 1080
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_5d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@c59
    move-object/from16 v0, p2

    #@c5b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5e
    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c61
    move-result v5

    #@c62
    .line 1084
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c65
    move-result v4

    #@c66
    if-eqz v4, :cond_2f

    #@c68
    const/16 v33, 0x1

    #@c6a
    .line 1085
    .restart local v33    # "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    #@c6c
    move/from16 v1, v33

    #@c6e
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    #@c71
    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c74
    .line 1087
    const/4 v4, 0x1

    #@c75
    return v4

    #@c76
    .line 1084
    .end local v33    # "_arg1":Z
    :cond_2f
    const/16 v33, 0x0

    #@c78
    goto :goto_2f

    #@c79
    .line 1091
    .end local v5    # "_arg0":I
    :sswitch_5e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@c7c
    move-object/from16 v0, p2

    #@c7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c81
    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c84
    move-result v5

    #@c85
    .line 1094
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@c87
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    #@c8a
    move-result v54

    #@c8b
    .line 1095
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8e
    .line 1096
    if-eqz v54, :cond_30

    #@c90
    const/4 v4, 0x1

    #@c91
    :goto_30
    move-object/from16 v0, p3

    #@c93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c96
    .line 1097
    const/4 v4, 0x1

    #@c97
    return v4

    #@c98
    .line 1096
    :cond_30
    const/4 v4, 0x0

    #@c99
    goto :goto_30

    #@c9a
    .line 1101
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@c9d
    move-object/from16 v0, p2

    #@c9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca2
    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca5
    move-result-object v25

    #@ca6
    .line 1105
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca9
    move-result-object v31

    #@caa
    .line 1106
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cac
    move-object/from16 v1, v25

    #@cae
    move-object/from16 v2, v31

    #@cb0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@cb3
    move-result-object v57

    #@cb4
    .line 1107
    .local v57, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb7
    .line 1108
    move-object/from16 v0, p3

    #@cb9
    move-object/from16 v1, v57

    #@cbb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@cbe
    .line 1109
    const/4 v4, 0x1

    #@cbf
    return v4

    #@cc0
    .line 1113
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@cc3
    move-object/from16 v0, p2

    #@cc5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc8
    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ccb
    move-result v4

    #@ccc
    if-eqz v4, :cond_31

    #@cce
    const/16 v26, 0x1

    #@cd0
    .line 1116
    .restart local v26    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    #@cd2
    move/from16 v1, v26

    #@cd4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    #@cd7
    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cda
    .line 1118
    const/4 v4, 0x1

    #@cdb
    return v4

    #@cdc
    .line 1115
    .end local v26    # "_arg0":Z
    :cond_31
    const/16 v26, 0x0

    #@cde
    goto :goto_31

    #@cdf
    .line 1122
    :sswitch_61
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ce2
    move-object/from16 v0, p2

    #@ce4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce7
    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cea
    move-result v5

    #@ceb
    .line 1125
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@ced
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    #@cf0
    move-result-object v48

    #@cf1
    .line 1126
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf4
    .line 1127
    move-object/from16 v0, p3

    #@cf6
    move-object/from16 v1, v48

    #@cf8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cfb
    .line 1128
    const/4 v4, 0x1

    #@cfc
    return v4

    #@cfd
    .line 1132
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@d00
    move-object/from16 v0, p2

    #@d02
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d05
    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d08
    move-result v5

    #@d09
    .line 1135
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@d0b
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    #@d0e
    move-result-object v48

    #@d0f
    .line 1136
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d12
    .line 1137
    move-object/from16 v0, p3

    #@d14
    move-object/from16 v1, v48

    #@d16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d19
    .line 1138
    const/4 v4, 0x1

    #@d1a
    return v4

    #@d1b
    .line 1142
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@d1e
    move-object/from16 v0, p2

    #@d20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d23
    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d26
    move-result v5

    #@d27
    .line 1145
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@d29
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    #@d2c
    move-result v39

    #@d2d
    .line 1146
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d30
    .line 1147
    move-object/from16 v0, p3

    #@d32
    move/from16 v1, v39

    #@d34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d37
    .line 1148
    const/4 v4, 0x1

    #@d38
    return v4

    #@d39
    .line 1152
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_64
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@d3c
    move-object/from16 v0, p2

    #@d3e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d41
    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d44
    move-result-object v25

    #@d45
    .line 1155
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d47
    move-object/from16 v1, v25

    #@d49
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    #@d4c
    move-result v39

    #@d4d
    .line 1156
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d50
    .line 1157
    move-object/from16 v0, p3

    #@d52
    move/from16 v1, v39

    #@d54
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d57
    .line 1158
    const/4 v4, 0x1

    #@d58
    return v4

    #@d59
    .line 1162
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_65
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@d5c
    move-object/from16 v0, p2

    #@d5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d61
    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d64
    move-result-object v25

    #@d65
    .line 1165
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d67
    move-object/from16 v1, v25

    #@d69
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@d6c
    move-result v39

    #@d6d
    .line 1166
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d70
    .line 1167
    move-object/from16 v0, p3

    #@d72
    move/from16 v1, v39

    #@d74
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d77
    .line 1168
    const/4 v4, 0x1

    #@d78
    return v4

    #@d79
    .line 1172
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_66
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@d7c
    move-object/from16 v0, p2

    #@d7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d81
    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d84
    move-result v4

    #@d85
    if-eqz v4, :cond_32

    #@d87
    .line 1175
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d89
    move-object/from16 v0, p2

    #@d8b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d8e
    move-result-object v21

    #@d8f
    check-cast v21, Landroid/content/Intent;

    #@d91
    .line 1181
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d94
    move-result v6

    #@d95
    .line 1182
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@d97
    move-object/from16 v1, v21

    #@d99
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@d9c
    move-result-object v53

    #@d9d
    .line 1183
    .local v53, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da0
    .line 1184
    move-object/from16 v0, p3

    #@da2
    move-object/from16 v1, v53

    #@da4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@da7
    .line 1185
    const/4 v4, 0x1

    #@da8
    return v4

    #@da9
    .line 1178
    .end local v6    # "_arg1":I
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    const/16 v21, 0x0

    #@dab
    .local v21, "_arg0":Landroid/content/Intent;
    goto :goto_32

    #@dac
    .line 1189
    .end local v21    # "_arg0":Landroid/content/Intent;
    :sswitch_67
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@daf
    move-object/from16 v0, p2

    #@db1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db4
    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db7
    move-result v5

    #@db8
    .line 1193
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dbb
    move-result-object v31

    #@dbc
    .line 1195
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dbf
    move-result-object v37

    #@dc0
    .line 1196
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@dc2
    move-object/from16 v1, v31

    #@dc4
    move-object/from16 v2, v37

    #@dc6
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@dc9
    move-result v54

    #@dca
    .line 1197
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dcd
    .line 1198
    if-eqz v54, :cond_33

    #@dcf
    const/4 v4, 0x1

    #@dd0
    :goto_33
    move-object/from16 v0, p3

    #@dd2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@dd5
    .line 1199
    const/4 v4, 0x1

    #@dd6
    return v4

    #@dd7
    .line 1198
    :cond_33
    const/4 v4, 0x0

    #@dd8
    goto :goto_33

    #@dd9
    .line 1203
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_68
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ddc
    move-object/from16 v0, p2

    #@dde
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de1
    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@de4
    move-result v5

    #@de5
    .line 1207
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@de8
    move-result-object v31

    #@de9
    .line 1208
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@deb
    move-object/from16 v1, v31

    #@ded
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@df0
    move-result-object v48

    #@df1
    .line 1209
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df4
    .line 1210
    move-object/from16 v0, p3

    #@df6
    move-object/from16 v1, v48

    #@df8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@dfb
    .line 1211
    const/4 v4, 0x1

    #@dfc
    return v4

    #@dfd
    .line 1215
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e00
    move-object/from16 v0, p2

    #@e02
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e05
    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e08
    move-result v5

    #@e09
    .line 1219
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e0c
    move-result-object v31

    #@e0d
    .line 1220
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e0f
    move-object/from16 v1, v31

    #@e11
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@e14
    move-result-object v48

    #@e15
    .line 1221
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e18
    .line 1222
    move-object/from16 v0, p3

    #@e1a
    move-object/from16 v1, v48

    #@e1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e1f
    .line 1223
    const/4 v4, 0x1

    #@e20
    return v4

    #@e21
    .line 1227
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e24
    move-object/from16 v0, p2

    #@e26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e29
    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e2c
    move-result-object v25

    #@e2d
    .line 1230
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e2f
    move-object/from16 v1, v25

    #@e31
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    #@e34
    move-result-object v57

    #@e35
    .line 1231
    .restart local v57    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e38
    .line 1232
    move-object/from16 v0, p3

    #@e3a
    move-object/from16 v1, v57

    #@e3c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e3f
    .line 1233
    const/4 v4, 0x1

    #@e40
    return v4

    #@e41
    .line 1237
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_6b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e44
    move-object/from16 v0, p2

    #@e46
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e49
    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e4c
    move-result v5

    #@e4d
    .line 1241
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e50
    move-result-object v31

    #@e51
    .line 1242
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e53
    move-object/from16 v1, v31

    #@e55
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    #@e58
    move-result v54

    #@e59
    .line 1243
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5c
    .line 1244
    if-eqz v54, :cond_34

    #@e5e
    const/4 v4, 0x1

    #@e5f
    :goto_34
    move-object/from16 v0, p3

    #@e61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e64
    .line 1245
    const/4 v4, 0x1

    #@e65
    return v4

    #@e66
    .line 1244
    :cond_34
    const/4 v4, 0x0

    #@e67
    goto :goto_34

    #@e68
    .line 1249
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_6c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e6b
    move-object/from16 v0, p2

    #@e6d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e70
    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e73
    move-result v5

    #@e74
    .line 1253
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@e77
    move-result-object v15

    #@e78
    .line 1255
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@e7b
    move-result-object v16

    #@e7c
    .line 1257
    .local v16, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@e7f
    move-result-object v17

    #@e80
    .line 1259
    .local v17, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@e83
    move-result-object v18

    #@e84
    .local v18, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    #@e86
    move v14, v5

    #@e87
    .line 1260
    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    #@e8a
    move-result v54

    #@e8b
    .line 1261
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8e
    .line 1262
    if-eqz v54, :cond_35

    #@e90
    const/4 v4, 0x1

    #@e91
    :goto_35
    move-object/from16 v0, p3

    #@e93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e96
    .line 1263
    const/4 v4, 0x1

    #@e97
    return v4

    #@e98
    .line 1262
    :cond_35
    const/4 v4, 0x0

    #@e99
    goto :goto_35

    #@e9a
    .line 1267
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "_result":Z
    :sswitch_6d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@e9d
    move-object/from16 v0, p2

    #@e9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea2
    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ea5
    move-result-object v27

    #@ea6
    .line 1271
    .restart local v27    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ea9
    move-result v35

    #@eaa
    .line 1272
    .local v35, "_arg1_length":I
    if-gez v35, :cond_36

    #@eac
    .line 1273
    const/16 v34, 0x0

    #@eae
    .line 1278
    :goto_36
    move-object/from16 v0, p0

    #@eb0
    move-object/from16 v1, v27

    #@eb2
    move-object/from16 v2, v34

    #@eb4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    #@eb7
    move-result v39

    #@eb8
    .line 1279
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ebb
    .line 1280
    move-object/from16 v0, p3

    #@ebd
    move/from16 v1, v39

    #@ebf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ec2
    .line 1281
    move-object/from16 v0, p3

    #@ec4
    move-object/from16 v1, v34

    #@ec6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@ec9
    .line 1282
    const/4 v4, 0x1

    #@eca
    return v4

    #@ecb
    .line 1276
    .end local v39    # "_result":I
    :cond_36
    move/from16 v0, v35

    #@ecd
    new-array v0, v0, [B

    #@ecf
    move-object/from16 v34, v0

    #@ed1
    .local v34, "_arg1":[B
    goto :goto_36

    #@ed2
    .line 1286
    .end local v27    # "_arg0":[B
    .end local v34    # "_arg1":[B
    .end local v35    # "_arg1_length":I
    :sswitch_6e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ed5
    move-object/from16 v0, p2

    #@ed7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eda
    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    #@edd
    move-result v54

    #@ede
    .line 1288
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee1
    .line 1289
    if-eqz v54, :cond_37

    #@ee3
    const/4 v4, 0x1

    #@ee4
    :goto_37
    move-object/from16 v0, p3

    #@ee6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ee9
    .line 1290
    const/4 v4, 0x1

    #@eea
    return v4

    #@eeb
    .line 1289
    :cond_37
    const/4 v4, 0x0

    #@eec
    goto :goto_37

    #@eed
    .line 1294
    .end local v54    # "_result":Z
    :sswitch_6f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ef0
    move-object/from16 v0, p2

    #@ef2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef5
    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    #@ef8
    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@efb
    .line 1297
    const/4 v4, 0x1

    #@efc
    return v4

    #@efd
    .line 1301
    :sswitch_70
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f00
    move-object/from16 v0, p2

    #@f02
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f05
    .line 1303
    sget-object v4, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f07
    move-object/from16 v0, p2

    #@f09
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@f0c
    move-result-object v28

    #@f0d
    check-cast v28, [Landroid/telephony/RadioAccessFamily;

    #@f0f
    .line 1304
    .local v28, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    #@f11
    move-object/from16 v1, v28

    #@f13
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    #@f16
    .line 1305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f19
    .line 1306
    const/4 v4, 0x1

    #@f1a
    return v4

    #@f1b
    .line 1310
    .end local v28    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_71
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f1e
    move-object/from16 v0, p2

    #@f20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f23
    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f26
    move-result v5

    #@f27
    .line 1314
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f2a
    move-result-object v31

    #@f2b
    .line 1315
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f2d
    move-object/from16 v1, v31

    #@f2f
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    #@f32
    move-result v39

    #@f33
    .line 1316
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f36
    .line 1317
    move-object/from16 v0, p3

    #@f38
    move/from16 v1, v39

    #@f3a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f3d
    .line 1318
    const/4 v4, 0x1

    #@f3e
    return v4

    #@f3f
    .line 1322
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_72
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f42
    move-object/from16 v0, p2

    #@f44
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f47
    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f4a
    move-result v4

    #@f4b
    if-eqz v4, :cond_38

    #@f4d
    const/16 v26, 0x1

    #@f4f
    .line 1325
    .restart local v26    # "_arg0":Z
    :goto_38
    move-object/from16 v0, p0

    #@f51
    move/from16 v1, v26

    #@f53
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    #@f56
    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f59
    .line 1327
    const/4 v4, 0x1

    #@f5a
    return v4

    #@f5b
    .line 1324
    .end local v26    # "_arg0":Z
    :cond_38
    const/16 v26, 0x0

    #@f5d
    goto :goto_38

    #@f5e
    .line 1331
    :sswitch_73
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f61
    move-object/from16 v0, p2

    #@f63
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f66
    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f69
    move-result-object v25

    #@f6a
    .line 1334
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f6c
    move-object/from16 v1, v25

    #@f6e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    #@f71
    move-result v54

    #@f72
    .line 1335
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f75
    .line 1336
    if-eqz v54, :cond_39

    #@f77
    const/4 v4, 0x1

    #@f78
    :goto_39
    move-object/from16 v0, p3

    #@f7a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f7d
    .line 1337
    const/4 v4, 0x1

    #@f7e
    return v4

    #@f7f
    .line 1336
    :cond_39
    const/4 v4, 0x0

    #@f80
    goto :goto_39

    #@f81
    .line 1341
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_74
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f84
    move-object/from16 v0, p2

    #@f86
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f89
    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    #@f8c
    move-result v54

    #@f8d
    .line 1343
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f90
    .line 1344
    if-eqz v54, :cond_3a

    #@f92
    const/4 v4, 0x1

    #@f93
    :goto_3a
    move-object/from16 v0, p3

    #@f95
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f98
    .line 1345
    const/4 v4, 0x1

    #@f99
    return v4

    #@f9a
    .line 1344
    :cond_3a
    const/4 v4, 0x0

    #@f9b
    goto :goto_3a

    #@f9c
    .line 1349
    .end local v54    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@f9f
    move-object/from16 v0, p2

    #@fa1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa4
    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    #@fa7
    move-result v54

    #@fa8
    .line 1351
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fab
    .line 1352
    if-eqz v54, :cond_3b

    #@fad
    const/4 v4, 0x1

    #@fae
    :goto_3b
    move-object/from16 v0, p3

    #@fb0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fb3
    .line 1353
    const/4 v4, 0x1

    #@fb4
    return v4

    #@fb5
    .line 1352
    :cond_3b
    const/4 v4, 0x0

    #@fb6
    goto :goto_3b

    #@fb7
    .line 1357
    .end local v54    # "_result":Z
    :sswitch_76
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@fba
    move-object/from16 v0, p2

    #@fbc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fbf
    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    #@fc2
    move-result v54

    #@fc3
    .line 1359
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc6
    .line 1360
    if-eqz v54, :cond_3c

    #@fc8
    const/4 v4, 0x1

    #@fc9
    :goto_3c
    move-object/from16 v0, p3

    #@fcb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fce
    .line 1361
    const/4 v4, 0x1

    #@fcf
    return v4

    #@fd0
    .line 1360
    :cond_3c
    const/4 v4, 0x0

    #@fd1
    goto :goto_3c

    #@fd2
    .line 1365
    .end local v54    # "_result":Z
    :sswitch_77
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@fd5
    move-object/from16 v0, p2

    #@fd7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fda
    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    #@fdd
    move-result v54

    #@fde
    .line 1367
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe1
    .line 1368
    if-eqz v54, :cond_3d

    #@fe3
    const/4 v4, 0x1

    #@fe4
    :goto_3d
    move-object/from16 v0, p3

    #@fe6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fe9
    .line 1369
    const/4 v4, 0x1

    #@fea
    return v4

    #@feb
    .line 1368
    :cond_3d
    const/4 v4, 0x0

    #@fec
    goto :goto_3d

    #@fed
    .line 1373
    .end local v54    # "_result":Z
    :sswitch_78
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@ff0
    move-object/from16 v0, p2

    #@ff2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff5
    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    #@ff8
    move-result v54

    #@ff9
    .line 1375
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ffc
    .line 1376
    if-eqz v54, :cond_3e

    #@ffe
    const/4 v4, 0x1

    #@fff
    :goto_3e
    move-object/from16 v0, p3

    #@1001
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1004
    .line 1377
    const/4 v4, 0x1

    #@1005
    return v4

    #@1006
    .line 1376
    :cond_3e
    const/4 v4, 0x0

    #@1007
    goto :goto_3e

    #@1008
    .line 1381
    .end local v54    # "_result":Z
    :sswitch_79
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@100b
    move-object/from16 v0, p2

    #@100d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1010
    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    #@1013
    move-result v54

    #@1014
    .line 1383
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1017
    .line 1384
    if-eqz v54, :cond_3f

    #@1019
    const/4 v4, 0x1

    #@101a
    :goto_3f
    move-object/from16 v0, p3

    #@101c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@101f
    .line 1385
    const/4 v4, 0x1

    #@1020
    return v4

    #@1021
    .line 1384
    :cond_3f
    const/4 v4, 0x0

    #@1022
    goto :goto_3f

    #@1023
    .line 1389
    .end local v54    # "_result":Z
    :sswitch_7a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1026
    move-object/from16 v0, p2

    #@1028
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102b
    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    #@102e
    move-result v54

    #@102f
    .line 1391
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1032
    .line 1392
    if-eqz v54, :cond_40

    #@1034
    const/4 v4, 0x1

    #@1035
    :goto_40
    move-object/from16 v0, p3

    #@1037
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@103a
    .line 1393
    const/4 v4, 0x1

    #@103b
    return v4

    #@103c
    .line 1392
    :cond_40
    const/4 v4, 0x0

    #@103d
    goto :goto_40

    #@103e
    .line 1397
    .end local v54    # "_result":Z
    :sswitch_7b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1041
    move-object/from16 v0, p2

    #@1043
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1046
    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    #@1049
    move-result v54

    #@104a
    .line 1399
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104d
    .line 1400
    if-eqz v54, :cond_41

    #@104f
    const/4 v4, 0x1

    #@1050
    :goto_41
    move-object/from16 v0, p3

    #@1052
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1055
    .line 1401
    const/4 v4, 0x1

    #@1056
    return v4

    #@1057
    .line 1400
    :cond_41
    const/4 v4, 0x0

    #@1058
    goto :goto_41

    #@1059
    .line 1405
    .end local v54    # "_result":Z
    :sswitch_7c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@105c
    move-object/from16 v0, p2

    #@105e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1061
    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1064
    move-result-object v25

    #@1065
    .line 1408
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1067
    move-object/from16 v1, v25

    #@1069
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    #@106c
    move-result-object v48

    #@106d
    .line 1409
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1070
    .line 1410
    move-object/from16 v0, p3

    #@1072
    move-object/from16 v1, v48

    #@1074
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1077
    .line 1411
    const/4 v4, 0x1

    #@1078
    return v4

    #@1079
    .line 1415
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@107c
    move-object/from16 v0, p2

    #@107e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1081
    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1084
    move-result v5

    #@1085
    .line 1419
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1088
    move-result-object v31

    #@1089
    .line 1420
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@108b
    move-object/from16 v1, v31

    #@108d
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;

    #@1090
    move-result-object v48

    #@1091
    .line 1421
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1094
    .line 1422
    move-object/from16 v0, p3

    #@1096
    move-object/from16 v1, v48

    #@1098
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@109b
    .line 1423
    const/4 v4, 0x1

    #@109c
    return v4

    #@109d
    .line 1427
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@10a0
    move-object/from16 v0, p2

    #@10a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a5
    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a8
    move-result v5

    #@10a9
    .line 1431
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10ac
    move-result-object v31

    #@10ad
    .line 1432
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10af
    move-object/from16 v1, v31

    #@10b1
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;

    #@10b4
    move-result-object v48

    #@10b5
    .line 1433
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b8
    .line 1434
    move-object/from16 v0, p3

    #@10ba
    move-object/from16 v1, v48

    #@10bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10bf
    .line 1435
    const/4 v4, 0x1

    #@10c0
    return v4

    #@10c1
    .line 1439
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@10c4
    move-object/from16 v0, p2

    #@10c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c9
    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10cc
    move-result v4

    #@10cd
    if-eqz v4, :cond_42

    #@10cf
    .line 1442
    sget-object v4, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10d1
    move-object/from16 v0, p2

    #@10d3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d6
    move-result-object v23

    #@10d7
    check-cast v23, Landroid/telecom/PhoneAccount;

    #@10d9
    .line 1447
    :goto_42
    move-object/from16 v0, p0

    #@10db
    move-object/from16 v1, v23

    #@10dd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    #@10e0
    move-result v39

    #@10e1
    .line 1448
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e4
    .line 1449
    move-object/from16 v0, p3

    #@10e6
    move/from16 v1, v39

    #@10e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10eb
    .line 1450
    const/4 v4, 0x1

    #@10ec
    return v4

    #@10ed
    .line 1445
    .end local v39    # "_result":I
    :cond_42
    const/16 v23, 0x0

    #@10ef
    .local v23, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_42

    #@10f0
    .line 1454
    .end local v23    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_80
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@10f3
    move-object/from16 v0, p2

    #@10f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f8
    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10fb
    move-result v5

    #@10fc
    .line 1457
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@10fe
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    #@1101
    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1104
    .line 1459
    const/4 v4, 0x1

    #@1105
    return v4

    #@1106
    .line 1463
    .end local v5    # "_arg0":I
    :sswitch_81
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1109
    move-object/from16 v0, p2

    #@110b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110e
    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    #@1111
    move-result-object v48

    #@1112
    .line 1465
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1115
    .line 1466
    move-object/from16 v0, p3

    #@1117
    move-object/from16 v1, v48

    #@1119
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@111c
    .line 1467
    const/4 v4, 0x1

    #@111d
    return v4

    #@111e
    .line 1471
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1121
    move-object/from16 v0, p2

    #@1123
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1126
    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1129
    move-result v4

    #@112a
    if-eqz v4, :cond_43

    #@112c
    .line 1474
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@112e
    move-object/from16 v0, p2

    #@1130
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1133
    move-result-object v22

    #@1134
    check-cast v22, Landroid/os/ResultReceiver;

    #@1136
    .line 1479
    :goto_43
    move-object/from16 v0, p0

    #@1138
    move-object/from16 v1, v22

    #@113a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    #@113d
    .line 1480
    const/4 v4, 0x1

    #@113e
    return v4

    #@113f
    .line 1477
    :cond_43
    const/16 v22, 0x0

    #@1141
    .local v22, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_43

    #@1142
    .line 1484
    .end local v22    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_83
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1145
    move-object/from16 v0, p2

    #@1147
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114a
    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@114d
    move-result v5

    #@114e
    .line 1488
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1151
    move-result-object v31

    #@1152
    .line 1489
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1154
    move-object/from16 v1, v31

    #@1156
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;

    #@1159
    move-result-object v45

    #@115a
    .line 1490
    .local v45, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115d
    .line 1491
    if-eqz v45, :cond_44

    #@115f
    .line 1492
    const/4 v4, 0x1

    #@1160
    move-object/from16 v0, p3

    #@1162
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1165
    .line 1493
    const/4 v4, 0x1

    #@1166
    move-object/from16 v0, v45

    #@1168
    move-object/from16 v1, p3

    #@116a
    invoke-virtual {v0, v1, v4}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    #@116d
    .line 1498
    :goto_44
    const/4 v4, 0x1

    #@116e
    return v4

    #@116f
    .line 1496
    :cond_44
    const/4 v4, 0x0

    #@1170
    move-object/from16 v0, p3

    #@1172
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1175
    goto :goto_44

    #@1176
    .line 1502
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Landroid/telephony/ServiceState;
    :sswitch_84
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1179
    move-object/from16 v0, p2

    #@117b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@117e
    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1181
    move-result v4

    #@1182
    if-eqz v4, :cond_45

    #@1184
    .line 1505
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1186
    move-object/from16 v0, p2

    #@1188
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@118b
    move-result-object v24

    #@118c
    check-cast v24, Landroid/telecom/PhoneAccountHandle;

    #@118e
    .line 1510
    :goto_45
    move-object/from16 v0, p0

    #@1190
    move-object/from16 v1, v24

    #@1192
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    #@1195
    move-result-object v42

    #@1196
    .line 1511
    .local v42, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1199
    .line 1512
    if-eqz v42, :cond_46

    #@119b
    .line 1513
    const/4 v4, 0x1

    #@119c
    move-object/from16 v0, p3

    #@119e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11a1
    .line 1514
    const/4 v4, 0x1

    #@11a2
    move-object/from16 v0, v42

    #@11a4
    move-object/from16 v1, p3

    #@11a6
    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@11a9
    .line 1519
    :goto_46
    const/4 v4, 0x1

    #@11aa
    return v4

    #@11ab
    .line 1508
    .end local v42    # "_result":Landroid/net/Uri;
    :cond_45
    const/16 v24, 0x0

    #@11ad
    .local v24, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_45

    #@11ae
    .line 1517
    .end local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v42    # "_result":Landroid/net/Uri;
    :cond_46
    const/4 v4, 0x0

    #@11af
    move-object/from16 v0, p3

    #@11b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11b4
    goto :goto_46

    #@11b5
    .line 1523
    .end local v42    # "_result":Landroid/net/Uri;
    :sswitch_85
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@11b8
    move-object/from16 v0, p2

    #@11ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11bd
    .line 1525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c0
    move-result v4

    #@11c1
    if-eqz v4, :cond_47

    #@11c3
    .line 1526
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11c5
    move-object/from16 v0, p2

    #@11c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11ca
    move-result-object v24

    #@11cb
    check-cast v24, Landroid/telecom/PhoneAccountHandle;

    #@11cd
    .line 1531
    :goto_47
    move-object/from16 v0, p0

    #@11cf
    move-object/from16 v1, v24

    #@11d1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    #@11d4
    move-result v54

    #@11d5
    .line 1532
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d8
    .line 1533
    if-eqz v54, :cond_48

    #@11da
    const/4 v4, 0x1

    #@11db
    :goto_48
    move-object/from16 v0, p3

    #@11dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11e0
    .line 1534
    const/4 v4, 0x1

    #@11e1
    return v4

    #@11e2
    .line 1529
    .end local v54    # "_result":Z
    :cond_47
    const/16 v24, 0x0

    #@11e4
    .restart local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_47

    #@11e5
    .line 1533
    .end local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v54    # "_result":Z
    :cond_48
    const/4 v4, 0x0

    #@11e6
    goto :goto_48

    #@11e7
    .line 1538
    .end local v54    # "_result":Z
    :sswitch_86
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@11ea
    move-object/from16 v0, p2

    #@11ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11ef
    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    #@11f2
    move-result-object v53

    #@11f3
    .line 1540
    .restart local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11f6
    .line 1541
    move-object/from16 v0, p3

    #@11f8
    move-object/from16 v1, v53

    #@11fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@11fd
    .line 1542
    const/4 v4, 0x1

    #@11fe
    return v4

    #@11ff
    .line 1546
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_87
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1202
    move-object/from16 v0, p2

    #@1204
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1207
    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120a
    move-result v5

    #@120b
    .line 1550
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120e
    move-result v6

    #@120f
    .line 1551
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1211
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    #@1214
    move-result-object v48

    #@1215
    .line 1552
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1218
    .line 1553
    move-object/from16 v0, p3

    #@121a
    move-object/from16 v1, v48

    #@121c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@121f
    .line 1554
    const/4 v4, 0x1

    #@1220
    return v4

    #@1221
    .line 1558
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_88
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1224
    move-object/from16 v0, p2

    #@1226
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1229
    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122c
    move-result v5

    #@122d
    .line 1561
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@122f
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    #@1232
    move-result-object v48

    #@1233
    .line 1562
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1236
    .line 1563
    move-object/from16 v0, p3

    #@1238
    move-object/from16 v1, v48

    #@123a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@123d
    .line 1564
    const/4 v4, 0x1

    #@123e
    return v4

    #@123f
    .line 1568
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_89
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1242
    move-object/from16 v0, p2

    #@1244
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1247
    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@124a
    move-result v5

    #@124b
    .line 1571
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@124d
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    #@1250
    move-result-object v48

    #@1251
    .line 1572
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1254
    .line 1573
    move-object/from16 v0, p3

    #@1256
    move-object/from16 v1, v48

    #@1258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@125b
    .line 1574
    const/4 v4, 0x1

    #@125c
    return v4

    #@125d
    .line 1578
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_8a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1260
    move-object/from16 v0, p2

    #@1262
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1265
    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    #@1268
    move-result-object v52

    #@1269
    .line 1580
    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126c
    .line 1581
    move-object/from16 v0, p3

    #@126e
    move-object/from16 v1, v52

    #@1270
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1273
    .line 1582
    const/4 v4, 0x1

    #@1274
    return v4

    #@1275
    .line 1586
    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :sswitch_8b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1278
    move-object/from16 v0, p2

    #@127a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@127d
    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1280
    move-result v5

    #@1281
    .line 1590
    .restart local v5    # "_arg0":I
    sget-object v4, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1283
    move-object/from16 v0, p2

    #@1285
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1288
    move-result-object v32

    #@1289
    .line 1591
    .local v32, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    move-object/from16 v0, p0

    #@128b
    move-object/from16 v1, v32

    #@128d
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(ILjava/util/List;)I

    #@1290
    move-result v39

    #@1291
    .line 1592
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1294
    .line 1593
    move-object/from16 v0, p3

    #@1296
    move/from16 v1, v39

    #@1298
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@129b
    .line 1594
    const/4 v4, 0x1

    #@129c
    return v4

    #@129d
    .line 1598
    .end local v5    # "_arg0":I
    .end local v32    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    .end local v39    # "_result":I
    :sswitch_8c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@12a0
    move-object/from16 v0, p2

    #@12a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a5
    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a8
    move-result v5

    #@12a9
    .line 1601
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@12ab
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers(I)Ljava/util/List;

    #@12ae
    move-result-object v49

    #@12af
    .line 1602
    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b2
    .line 1603
    move-object/from16 v0, p3

    #@12b4
    move-object/from16 v1, v49

    #@12b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@12b9
    .line 1604
    const/4 v4, 0x1

    #@12ba
    return v4

    #@12bb
    .line 1608
    .end local v5    # "_arg0":I
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    :sswitch_8d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@12be
    move-object/from16 v0, p2

    #@12c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c3
    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12c6
    move-result v5

    #@12c7
    .line 1612
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12ca
    move-result v4

    #@12cb
    if-eqz v4, :cond_49

    #@12cd
    const/16 v33, 0x1

    #@12cf
    .line 1613
    .restart local v33    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    #@12d1
    move/from16 v1, v33

    #@12d3
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetMeteredApnsEnabled(IZ)V

    #@12d6
    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12d9
    .line 1615
    const/4 v4, 0x1

    #@12da
    return v4

    #@12db
    .line 1612
    .end local v33    # "_arg1":Z
    :cond_49
    const/16 v33, 0x0

    #@12dd
    goto :goto_49

    #@12de
    .line 1619
    .end local v5    # "_arg0":I
    :sswitch_8e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@12e1
    move-object/from16 v0, p2

    #@12e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e6
    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e9
    move-result v5

    #@12ea
    .line 1623
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12ed
    move-result v4

    #@12ee
    if-eqz v4, :cond_4a

    #@12f0
    const/16 v33, 0x1

    #@12f2
    .line 1624
    .restart local v33    # "_arg1":Z
    :goto_4a
    move-object/from16 v0, p0

    #@12f4
    move/from16 v1, v33

    #@12f6
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    #@12f9
    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12fc
    .line 1626
    const/4 v4, 0x1

    #@12fd
    return v4

    #@12fe
    .line 1623
    .end local v33    # "_arg1":Z
    :cond_4a
    const/16 v33, 0x0

    #@1300
    goto :goto_4a

    #@1301
    .line 1630
    .end local v5    # "_arg0":I
    :sswitch_8f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@1304
    move-object/from16 v0, p2

    #@1306
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1309
    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVtDataUsage()J

    #@130c
    move-result-wide v40

    #@130d
    .line 1632
    .local v40, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1310
    .line 1633
    move-object/from16 v0, p3

    #@1312
    move-wide/from16 v1, v40

    #@1314
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1317
    .line 1634
    const/4 v4, 0x1

    #@1318
    return v4

    #@1319
    .line 1638
    .end local v40    # "_result":J
    :sswitch_90
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    #@131c
    move-object/from16 v0, p2

    #@131e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1321
    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1324
    move-result v4

    #@1325
    if-eqz v4, :cond_4b

    #@1327
    const/16 v26, 0x1

    #@1329
    .line 1642
    .local v26, "_arg0":Z
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132c
    move-result v6

    #@132d
    .line 1643
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@132f
    move/from16 v1, v26

    #@1331
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setPolicyDataEnabled(ZI)V

    #@1334
    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1337
    .line 1645
    const/4 v4, 0x1

    #@1338
    return v4

    #@1339
    .line 1640
    .end local v6    # "_arg1":I
    .end local v26    # "_arg0":Z
    :cond_4b
    const/16 v26, 0x0

    #@133b
    .restart local v26    # "_arg0":Z
    goto :goto_4b

    #@133c
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
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
