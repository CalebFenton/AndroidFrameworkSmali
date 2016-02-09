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

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x6f

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x5f

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x60

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x6d

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x78

.field static final TRANSACTION_getActivePhoneType:I = 0x2f

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x30

.field static final TRANSACTION_getAllCellInfo:I = 0x44

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x51

.field static final TRANSACTION_getCallState:I = 0x2b

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2c

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x61

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x5e

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x31

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x32

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x33

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x34

.field static final TRANSACTION_getCdmaEriText:I = 0x35

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaMdn:I = 0x5c

.field static final TRANSACTION_getCdmaMin:I = 0x5d

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x55

.field static final TRANSACTION_getDataActivity:I = 0x2d

.field static final TRANSACTION_getDataEnabled:I = 0x59

.field static final TRANSACTION_getDataNetworkType:I = 0x3d

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3e

.field static final TRANSACTION_getDataState:I = 0x2e

.field static final TRANSACTION_getDefaultSim:I = 0x46

.field static final TRANSACTION_getDeviceId:I = 0x76

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x64

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x63

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x79

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x42

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x43

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x65

.field static final TRANSACTION_getModemActivityInfo:I = 0x7a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x3b

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3c

.field static final TRANSACTION_getPcscfAddress:I = 0x5a

.field static final TRANSACTION_getPreferredNetworkType:I = 0x52

.field static final TRANSACTION_getRadioAccessFamily:I = 0x6c

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x77

.field static final TRANSACTION_getTetherApnRequired:I = 0x53

.field static final TRANSACTION_getVoiceMessageCount:I = 0x39

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3a

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_handlePinMmi:I = 0x19

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_hasIccCard:I = 0x40

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x41

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x48

.field static final TRANSACTION_iccExchangeSimIO:I = 0x4b

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x47

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4a

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x49

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x68

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x72

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x73

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isTtyModeSupported:I = 0x71

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x6e

.field static final TRANSACTION_isVolteEnabled:I = 0x75

.field static final TRANSACTION_isWifiCallingEnabled:I = 0x74

.field static final TRANSACTION_isWorldPhone:I = 0x70

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x69

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x37

.field static final TRANSACTION_nvReadItem:I = 0x4d

.field static final TRANSACTION_nvResetConfig:I = 0x50

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x4f

.field static final TRANSACTION_nvWriteItem:I = 0x4e

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x4c

.field static final TRANSACTION_setCellInfoListRate:I = 0x45

.field static final TRANSACTION_setDataEnabled:I = 0x58

.field static final TRANSACTION_setImsRegistrationState:I = 0x5b

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x62

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x54

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x56

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x66

.field static final TRANSACTION_setPreferredNetworkType:I = 0x57

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x6b

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride:I = 0x67

.field static final TRANSACTION_setVoiceMailNumber:I = 0x38

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6a

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x11

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x12

.field static final TRANSACTION_supplyPinReportResult:I = 0x15

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPuk:I = 0x13

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x14

.field static final TRANSACTION_supplyPukReportResult:I = 0x17

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x18

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


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
    .line 1344
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v5, 0x1

    #@11
    return v5

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v22

    #@1e
    .line 57
    .local v22, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v22

    #@22
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    #@25
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 59
    const/4 v5, 0x1

    #@29
    return v5

    #@2a
    .line 63
    .end local v22    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v22

    #@36
    .line 67
    .restart local v22    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v28

    #@3a
    .line 68
    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v22

    #@3e
    move-object/from16 v2, v28

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 70
    const/4 v5, 0x1

    #@47
    return v5

    #@48
    .line 74
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    const/4 v5, 0x1

    #@5a
    :goto_0
    move-object/from16 v0, p3

    #@5c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 78
    const/4 v5, 0x1

    #@60
    return v5

    #@61
    .line 77
    :cond_0
    const/4 v5, 0x0

    #@62
    goto :goto_0

    #@63
    .line 82
    .end local v45    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v6

    #@6f
    .line 85
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

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
    const/4 v5, 0x1

    #@7b
    :goto_1
    move-object/from16 v0, p3

    #@7d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 88
    const/4 v5, 0x1

    #@81
    return v5

    #@82
    .line 87
    :cond_1
    const/4 v5, 0x0

    #@83
    goto :goto_1

    #@84
    .line 92
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    #@8f
    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 95
    const/4 v5, 0x1

    #@93
    return v5

    #@94
    .line 99
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v6

    #@a0
    .line 102
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    #@a5
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 104
    const/4 v5, 0x1

    #@a9
    return v5

    #@aa
    .line 108
    .end local v6    # "_arg0":I
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    #@b5
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 111
    const/4 v5, 0x1

    #@b9
    return v5

    #@ba
    .line 115
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v22

    #@c6
    .line 118
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v22

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
    const/4 v5, 0x1

    #@d4
    :goto_2
    move-object/from16 v0, p3

    #@d6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    .line 121
    const/4 v5, 0x1

    #@da
    return v5

    #@db
    .line 120
    :cond_2
    const/4 v5, 0x0

    #@dc
    goto :goto_2

    #@dd
    .line 125
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v6

    #@e9
    .line 129
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v28

    #@ed
    .line 130
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v28

    #@f1
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

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
    const/4 v5, 0x1

    #@fb
    :goto_3
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 133
    const/4 v5, 0x1

    #@101
    return v5

    #@102
    .line 132
    :cond_3
    const/4 v5, 0x0

    #@103
    goto :goto_3

    #@104
    .line 137
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v6

    #@110
    .line 141
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v28

    #@114
    .line 142
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v28

    #@118
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

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
    const/4 v5, 0x1

    #@122
    :goto_4
    move-object/from16 v0, p3

    #@124
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 145
    const/4 v5, 0x1

    #@128
    return v5

    #@129
    .line 144
    :cond_4
    const/4 v5, 0x0

    #@12a
    goto :goto_4

    #@12b
    .line 149
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@136
    move-result-object v22

    #@137
    .line 152
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v22

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
    const/4 v5, 0x1

    #@145
    :goto_5
    move-object/from16 v0, p3

    #@147
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 155
    const/4 v5, 0x1

    #@14b
    return v5

    #@14c
    .line 154
    :cond_5
    const/4 v5, 0x0

    #@14d
    goto :goto_5

    #@14e
    .line 159
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159
    move-result-object v22

    #@15a
    .line 162
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v22

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
    const/4 v5, 0x1

    #@168
    :goto_6
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 165
    const/4 v5, 0x1

    #@16e
    return v5

    #@16f
    .line 164
    :cond_6
    const/4 v5, 0x0

    #@170
    goto :goto_6

    #@171
    .line 169
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v6

    #@17d
    .line 173
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@180
    move-result-object v28

    #@181
    .line 174
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v28

    #@185
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

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
    const/4 v5, 0x1

    #@18f
    :goto_7
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 177
    const/4 v5, 0x1

    #@195
    return v5

    #@196
    .line 176
    :cond_7
    const/4 v5, 0x0

    #@197
    goto :goto_7

    #@198
    .line 181
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3
    move-result-object v22

    #@1a4
    .line 184
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, v22

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
    const/4 v5, 0x1

    #@1b2
    :goto_8
    move-object/from16 v0, p3

    #@1b4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b7
    .line 187
    const/4 v5, 0x1

    #@1b8
    return v5

    #@1b9
    .line 186
    :cond_8
    const/4 v5, 0x0

    #@1ba
    goto :goto_8

    #@1bb
    .line 191
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v6

    #@1c7
    .line 195
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ca
    move-result-object v28

    #@1cb
    .line 196
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cd
    move-object/from16 v1, v28

    #@1cf
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

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
    const/4 v5, 0x1

    #@1d9
    :goto_9
    move-object/from16 v0, p3

    #@1db
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 199
    const/4 v5, 0x1

    #@1df
    return v5

    #@1e0
    .line 198
    :cond_9
    const/4 v5, 0x0

    #@1e1
    goto :goto_9

    #@1e2
    .line 203
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v22

    #@1ee
    .line 206
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f0
    move-object/from16 v1, v22

    #@1f2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled(Ljava/lang/String;)Z

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
    const/4 v5, 0x1

    #@1fc
    :goto_a
    move-object/from16 v0, p3

    #@1fe
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@201
    .line 209
    const/4 v5, 0x1

    #@202
    return v5

    #@203
    .line 208
    :cond_a
    const/4 v5, 0x0

    #@204
    goto :goto_a

    #@205
    .line 213
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20d
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@210
    move-result-object v22

    #@211
    .line 216
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@213
    move-object/from16 v1, v22

    #@215
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    #@218
    move-result v45

    #@219
    .line 217
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 218
    if-eqz v45, :cond_b

    #@21e
    const/4 v5, 0x1

    #@21f
    :goto_b
    move-object/from16 v0, p3

    #@221
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@224
    .line 219
    const/4 v5, 0x1

    #@225
    return v5

    #@226
    .line 218
    :cond_b
    const/4 v5, 0x0

    #@227
    goto :goto_b

    #@228
    .line 223
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@22b
    move-object/from16 v0, p2

    #@22d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@230
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v6

    #@234
    .line 227
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@237
    move-result-object v28

    #@238
    .line 228
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23a
    move-object/from16 v1, v28

    #@23c
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    #@23f
    move-result v45

    #@240
    .line 229
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@243
    .line 230
    if-eqz v45, :cond_c

    #@245
    const/4 v5, 0x1

    #@246
    :goto_c
    move-object/from16 v0, p3

    #@248
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@24b
    .line 231
    const/4 v5, 0x1

    #@24c
    return v5

    #@24d
    .line 230
    :cond_c
    const/4 v5, 0x0

    #@24e
    goto :goto_c

    #@24f
    .line 235
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@252
    move-object/from16 v0, p2

    #@254
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@257
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25a
    move-result-object v22

    #@25b
    .line 239
    .restart local v22    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25e
    move-result-object v28

    #@25f
    .line 240
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@261
    move-object/from16 v1, v22

    #@263
    move-object/from16 v2, v28

    #@265
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    #@268
    move-result v45

    #@269
    .line 241
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 242
    if-eqz v45, :cond_d

    #@26e
    const/4 v5, 0x1

    #@26f
    :goto_d
    move-object/from16 v0, p3

    #@271
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@274
    .line 243
    const/4 v5, 0x1

    #@275
    return v5

    #@276
    .line 242
    :cond_d
    const/4 v5, 0x0

    #@277
    goto :goto_d

    #@278
    .line 247
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@27b
    move-object/from16 v0, p2

    #@27d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@280
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@283
    move-result v6

    #@284
    .line 251
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@287
    move-result-object v28

    #@288
    .line 253
    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28b
    move-result-object v33

    #@28c
    .line 254
    .local v33, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28e
    move-object/from16 v1, v28

    #@290
    move-object/from16 v2, v33

    #@292
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@295
    move-result v45

    #@296
    .line 255
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@299
    .line 256
    if-eqz v45, :cond_e

    #@29b
    const/4 v5, 0x1

    #@29c
    :goto_e
    move-object/from16 v0, p3

    #@29e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a1
    .line 257
    const/4 v5, 0x1

    #@2a2
    return v5

    #@2a3
    .line 256
    :cond_e
    const/4 v5, 0x0

    #@2a4
    goto :goto_e

    #@2a5
    .line 261
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ad
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b0
    move-result-object v22

    #@2b1
    .line 264
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b3
    move-object/from16 v1, v22

    #@2b5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    #@2b8
    move-result-object v47

    #@2b9
    .line 265
    .local v47, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bc
    .line 266
    move-object/from16 v0, p3

    #@2be
    move-object/from16 v1, v47

    #@2c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2c3
    .line 267
    const/4 v5, 0x1

    #@2c4
    return v5

    #@2c5
    .line 271
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cd
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v6

    #@2d1
    .line 275
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d4
    move-result-object v28

    #@2d5
    .line 276
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d7
    move-object/from16 v1, v28

    #@2d9
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    #@2dc
    move-result-object v47

    #@2dd
    .line 277
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e0
    .line 278
    move-object/from16 v0, p3

    #@2e2
    move-object/from16 v1, v47

    #@2e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2e7
    .line 279
    const/4 v5, 0x1

    #@2e8
    return v5

    #@2e9
    .line 283
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@2ec
    move-object/from16 v0, p2

    #@2ee
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f1
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f4
    move-result-object v22

    #@2f5
    .line 287
    .restart local v22    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f8
    move-result-object v28

    #@2f9
    .line 288
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2fb
    move-object/from16 v1, v22

    #@2fd
    move-object/from16 v2, v28

    #@2ff
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    #@302
    move-result-object v47

    #@303
    .line 289
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@306
    .line 290
    move-object/from16 v0, p3

    #@308
    move-object/from16 v1, v47

    #@30a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@30d
    .line 291
    const/4 v5, 0x1

    #@30e
    return v5

    #@30f
    .line 295
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@317
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31a
    move-result v6

    #@31b
    .line 299
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31e
    move-result-object v28

    #@31f
    .line 301
    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@322
    move-result-object v33

    #@323
    .line 302
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v28

    #@327
    move-object/from16 v2, v33

    #@329
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    #@32c
    move-result-object v47

    #@32d
    .line 303
    .restart local v47    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@330
    .line 304
    move-object/from16 v0, p3

    #@332
    move-object/from16 v1, v47

    #@334
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@337
    .line 305
    const/4 v5, 0x1

    #@338
    return v5

    #@339
    .line 309
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v47    # "_result":[I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@33c
    move-object/from16 v0, p2

    #@33e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@341
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@344
    move-result-object v22

    #@345
    .line 312
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@347
    move-object/from16 v1, v22

    #@349
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    #@34c
    move-result v45

    #@34d
    .line 313
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@350
    .line 314
    if-eqz v45, :cond_f

    #@352
    const/4 v5, 0x1

    #@353
    :goto_f
    move-object/from16 v0, p3

    #@355
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@358
    .line 315
    const/4 v5, 0x1

    #@359
    return v5

    #@35a
    .line 314
    :cond_f
    const/4 v5, 0x0

    #@35b
    goto :goto_f

    #@35c
    .line 319
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@367
    move-result v6

    #@368
    .line 323
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36b
    move-result-object v28

    #@36c
    .line 324
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36e
    move-object/from16 v1, v28

    #@370
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    #@373
    move-result v45

    #@374
    .line 325
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@377
    .line 326
    if-eqz v45, :cond_10

    #@379
    const/4 v5, 0x1

    #@37a
    :goto_10
    move-object/from16 v0, p3

    #@37c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@37f
    .line 327
    const/4 v5, 0x1

    #@380
    return v5

    #@381
    .line 326
    :cond_10
    const/4 v5, 0x0

    #@382
    goto :goto_10

    #@383
    .line 331
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38b
    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    #@38e
    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@391
    .line 334
    const/4 v5, 0x1

    #@392
    return v5

    #@393
    .line 338
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@396
    move-object/from16 v0, p2

    #@398
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39b
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39e
    move-result v6

    #@39f
    .line 341
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@3a1
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    #@3a4
    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a7
    .line 343
    const/4 v5, 0x1

    #@3a8
    return v5

    #@3a9
    .line 347
    .end local v6    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@3ac
    move-object/from16 v0, p2

    #@3ae
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b1
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b4
    move-result v5

    #@3b5
    if-eqz v5, :cond_11

    #@3b7
    const/16 v24, 0x1

    #@3b9
    .line 350
    .local v24, "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    #@3bb
    move/from16 v1, v24

    #@3bd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    #@3c0
    move-result v45

    #@3c1
    .line 351
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 352
    if-eqz v45, :cond_12

    #@3c6
    const/4 v5, 0x1

    #@3c7
    :goto_12
    move-object/from16 v0, p3

    #@3c9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3cc
    .line 353
    const/4 v5, 0x1

    #@3cd
    return v5

    #@3ce
    .line 349
    .end local v24    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_11
    const/16 v24, 0x0

    #@3d0
    .restart local v24    # "_arg0":Z
    goto :goto_11

    #@3d1
    .line 352
    .restart local v45    # "_result":Z
    :cond_12
    const/4 v5, 0x0

    #@3d2
    goto :goto_12

    #@3d3
    .line 357
    .end local v24    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@3d6
    move-object/from16 v0, p2

    #@3d8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3db
    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3de
    move-result v6

    #@3df
    .line 361
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e2
    move-result v5

    #@3e3
    if-eqz v5, :cond_13

    #@3e5
    const/16 v30, 0x1

    #@3e7
    .line 362
    .local v30, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@3e9
    move/from16 v1, v30

    #@3eb
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    #@3ee
    move-result v45

    #@3ef
    .line 363
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f2
    .line 364
    if-eqz v45, :cond_14

    #@3f4
    const/4 v5, 0x1

    #@3f5
    :goto_14
    move-object/from16 v0, p3

    #@3f7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3fa
    .line 365
    const/4 v5, 0x1

    #@3fb
    return v5

    #@3fc
    .line 361
    .end local v30    # "_arg1":Z
    .end local v45    # "_result":Z
    :cond_13
    const/16 v30, 0x0

    #@3fe
    .restart local v30    # "_arg1":Z
    goto :goto_13

    #@3ff
    .line 364
    .restart local v45    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    #@400
    goto :goto_14

    #@401
    .line 369
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Z
    .end local v45    # "_result":Z
    :sswitch_1f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@404
    move-object/from16 v0, p2

    #@406
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@409
    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40c
    move-result v5

    #@40d
    if-eqz v5, :cond_15

    #@40f
    const/16 v24, 0x1

    #@411
    .line 372
    .restart local v24    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    #@413
    move/from16 v1, v24

    #@415
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    #@418
    move-result v45

    #@419
    .line 373
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41c
    .line 374
    if-eqz v45, :cond_16

    #@41e
    const/4 v5, 0x1

    #@41f
    :goto_16
    move-object/from16 v0, p3

    #@421
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@424
    .line 375
    const/4 v5, 0x1

    #@425
    return v5

    #@426
    .line 371
    .end local v24    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_15
    const/16 v24, 0x0

    #@428
    .restart local v24    # "_arg0":Z
    goto :goto_15

    #@429
    .line 374
    .restart local v45    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    #@42a
    goto :goto_16

    #@42b
    .line 379
    .end local v24    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_20
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@42e
    move-object/from16 v0, p2

    #@430
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@433
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    #@436
    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@439
    .line 382
    const/4 v5, 0x1

    #@43a
    return v5

    #@43b
    .line 386
    :sswitch_21
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@43e
    move-object/from16 v0, p2

    #@440
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@443
    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@446
    move-result v6

    #@447
    .line 389
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@449
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    #@44c
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44f
    .line 391
    const/4 v5, 0x1

    #@450
    return v5

    #@451
    .line 395
    .end local v6    # "_arg0":I
    :sswitch_22
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@454
    move-object/from16 v0, p2

    #@456
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@459
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    #@45c
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45f
    .line 398
    const/4 v5, 0x1

    #@460
    return v5

    #@461
    .line 402
    :sswitch_23
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@464
    move-object/from16 v0, p2

    #@466
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@469
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46c
    move-result v6

    #@46d
    .line 405
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@46f
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    #@472
    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@475
    .line 407
    const/4 v5, 0x1

    #@476
    return v5

    #@477
    .line 411
    .end local v6    # "_arg0":I
    :sswitch_24
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@47a
    move-object/from16 v0, p2

    #@47c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47f
    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    #@482
    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@485
    .line 414
    const/4 v5, 0x1

    #@486
    return v5

    #@487
    .line 418
    :sswitch_25
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@48a
    move-object/from16 v0, p2

    #@48c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48f
    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@492
    move-result v6

    #@493
    .line 421
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@495
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    #@498
    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49b
    .line 423
    const/4 v5, 0x1

    #@49c
    return v5

    #@49d
    .line 427
    .end local v6    # "_arg0":I
    :sswitch_26
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@4a0
    move-object/from16 v0, p2

    #@4a2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a5
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    #@4a8
    move-result v45

    #@4a9
    .line 429
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ac
    .line 430
    if-eqz v45, :cond_17

    #@4ae
    const/4 v5, 0x1

    #@4af
    :goto_17
    move-object/from16 v0, p3

    #@4b1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@4b4
    .line 431
    const/4 v5, 0x1

    #@4b5
    return v5

    #@4b6
    .line 430
    :cond_17
    const/4 v5, 0x0

    #@4b7
    goto :goto_17

    #@4b8
    .line 435
    .end local v45    # "_result":Z
    :sswitch_27
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@4bb
    move-object/from16 v0, p2

    #@4bd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c0
    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    #@4c3
    move-result v45

    #@4c4
    .line 437
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 438
    if-eqz v45, :cond_18

    #@4c9
    const/4 v5, 0x1

    #@4ca
    :goto_18
    move-object/from16 v0, p3

    #@4cc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@4cf
    .line 439
    const/4 v5, 0x1

    #@4d0
    return v5

    #@4d1
    .line 438
    :cond_18
    const/4 v5, 0x0

    #@4d2
    goto :goto_18

    #@4d3
    .line 443
    .end local v45    # "_result":Z
    :sswitch_28
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@4d6
    move-object/from16 v0, p2

    #@4d8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4db
    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    #@4de
    move-result v45

    #@4df
    .line 445
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e2
    .line 446
    if-eqz v45, :cond_19

    #@4e4
    const/4 v5, 0x1

    #@4e5
    :goto_19
    move-object/from16 v0, p3

    #@4e7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@4ea
    .line 447
    const/4 v5, 0x1

    #@4eb
    return v5

    #@4ec
    .line 446
    :cond_19
    const/4 v5, 0x0

    #@4ed
    goto :goto_19

    #@4ee
    .line 451
    .end local v45    # "_result":Z
    :sswitch_29
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@4f1
    move-object/from16 v0, p2

    #@4f3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f6
    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f9
    move-result-object v22

    #@4fa
    .line 454
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4fc
    move-object/from16 v1, v22

    #@4fe
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    #@501
    move-result-object v37

    #@502
    .line 455
    .local v37, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@505
    .line 456
    if-eqz v37, :cond_1a

    #@507
    .line 457
    const/4 v5, 0x1

    #@508
    move-object/from16 v0, p3

    #@50a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@50d
    .line 458
    const/4 v5, 0x1

    #@50e
    move-object/from16 v0, v37

    #@510
    move-object/from16 v1, p3

    #@512
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@515
    .line 463
    :goto_1a
    const/4 v5, 0x1

    #@516
    return v5

    #@517
    .line 461
    :cond_1a
    const/4 v5, 0x0

    #@518
    move-object/from16 v0, p3

    #@51a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@51d
    goto :goto_1a

    #@51e
    .line 467
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v37    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@521
    move-object/from16 v0, p2

    #@523
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@526
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@529
    move-result-object v22

    #@52a
    .line 470
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52c
    move-object/from16 v1, v22

    #@52e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@531
    move-result-object v43

    #@532
    .line 471
    .local v43, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@535
    .line 472
    move-object/from16 v0, p3

    #@537
    move-object/from16 v1, v43

    #@539
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@53c
    .line 473
    const/4 v5, 0x1

    #@53d
    return v5

    #@53e
    .line 477
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@541
    move-object/from16 v0, p2

    #@543
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@546
    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    #@549
    move-result v36

    #@54a
    .line 479
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54d
    .line 480
    move-object/from16 v0, p3

    #@54f
    move/from16 v1, v36

    #@551
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@554
    .line 481
    const/4 v5, 0x1

    #@555
    return v5

    #@556
    .line 485
    .end local v36    # "_result":I
    :sswitch_2c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@559
    move-object/from16 v0, p2

    #@55b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55e
    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@561
    move-result v6

    #@562
    .line 488
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@564
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    #@567
    move-result v36

    #@568
    .line 489
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56b
    .line 490
    move-object/from16 v0, p3

    #@56d
    move/from16 v1, v36

    #@56f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@572
    .line 491
    const/4 v5, 0x1

    #@573
    return v5

    #@574
    .line 495
    .end local v6    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_2d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@577
    move-object/from16 v0, p2

    #@579
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57c
    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    #@57f
    move-result v36

    #@580
    .line 497
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@583
    .line 498
    move-object/from16 v0, p3

    #@585
    move/from16 v1, v36

    #@587
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@58a
    .line 499
    const/4 v5, 0x1

    #@58b
    return v5

    #@58c
    .line 503
    .end local v36    # "_result":I
    :sswitch_2e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@58f
    move-object/from16 v0, p2

    #@591
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@594
    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    #@597
    move-result v36

    #@598
    .line 505
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59b
    .line 506
    move-object/from16 v0, p3

    #@59d
    move/from16 v1, v36

    #@59f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a2
    .line 507
    const/4 v5, 0x1

    #@5a3
    return v5

    #@5a4
    .line 511
    .end local v36    # "_result":I
    :sswitch_2f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@5a7
    move-object/from16 v0, p2

    #@5a9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ac
    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    #@5af
    move-result v36

    #@5b0
    .line 513
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b3
    .line 514
    move-object/from16 v0, p3

    #@5b5
    move/from16 v1, v36

    #@5b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5ba
    .line 515
    const/4 v5, 0x1

    #@5bb
    return v5

    #@5bc
    .line 519
    .end local v36    # "_result":I
    :sswitch_30
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@5bf
    move-object/from16 v0, p2

    #@5c1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c4
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c7
    move-result v6

    #@5c8
    .line 522
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@5ca
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    #@5cd
    move-result v36

    #@5ce
    .line 523
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d1
    .line 524
    move-object/from16 v0, p3

    #@5d3
    move/from16 v1, v36

    #@5d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d8
    .line 525
    const/4 v5, 0x1

    #@5d9
    return v5

    #@5da
    .line 529
    .end local v6    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_31
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@5dd
    move-object/from16 v0, p2

    #@5df
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e2
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e5
    move-result-object v22

    #@5e6
    .line 532
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5e8
    move-object/from16 v1, v22

    #@5ea
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    #@5ed
    move-result v36

    #@5ee
    .line 533
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f1
    .line 534
    move-object/from16 v0, p3

    #@5f3
    move/from16 v1, v36

    #@5f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f8
    .line 535
    const/4 v5, 0x1

    #@5f9
    return v5

    #@5fa
    .line 539
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_32
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@5fd
    move-object/from16 v0, p2

    #@5ff
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@602
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@605
    move-result v6

    #@606
    .line 543
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@609
    move-result-object v28

    #@60a
    .line 544
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@60c
    move-object/from16 v1, v28

    #@60e
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    #@611
    move-result v36

    #@612
    .line 545
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@615
    .line 546
    move-object/from16 v0, p3

    #@617
    move/from16 v1, v36

    #@619
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@61c
    .line 547
    const/4 v5, 0x1

    #@61d
    return v5

    #@61e
    .line 551
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_33
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@621
    move-object/from16 v0, p2

    #@623
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@626
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@629
    move-result-object v22

    #@62a
    .line 554
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62c
    move-object/from16 v1, v22

    #@62e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    #@631
    move-result v36

    #@632
    .line 555
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@635
    .line 556
    move-object/from16 v0, p3

    #@637
    move/from16 v1, v36

    #@639
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63c
    .line 557
    const/4 v5, 0x1

    #@63d
    return v5

    #@63e
    .line 561
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_34
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@641
    move-object/from16 v0, p2

    #@643
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@646
    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@649
    move-result v6

    #@64a
    .line 565
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64d
    move-result-object v28

    #@64e
    .line 566
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@650
    move-object/from16 v1, v28

    #@652
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    #@655
    move-result v36

    #@656
    .line 567
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@659
    .line 568
    move-object/from16 v0, p3

    #@65b
    move/from16 v1, v36

    #@65d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@660
    .line 569
    const/4 v5, 0x1

    #@661
    return v5

    #@662
    .line 573
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_35
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@665
    move-object/from16 v0, p2

    #@667
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66a
    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66d
    move-result-object v22

    #@66e
    .line 576
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@670
    move-object/from16 v1, v22

    #@672
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    #@675
    move-result-object v41

    #@676
    .line 577
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@679
    .line 578
    move-object/from16 v0, p3

    #@67b
    move-object/from16 v1, v41

    #@67d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@680
    .line 579
    const/4 v5, 0x1

    #@681
    return v5

    #@682
    .line 583
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@685
    move-object/from16 v0, p2

    #@687
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68a
    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68d
    move-result v6

    #@68e
    .line 587
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@691
    move-result-object v28

    #@692
    .line 588
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@694
    move-object/from16 v1, v28

    #@696
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@699
    move-result-object v41

    #@69a
    .line 589
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69d
    .line 590
    move-object/from16 v0, p3

    #@69f
    move-object/from16 v1, v41

    #@6a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6a4
    .line 591
    const/4 v5, 0x1

    #@6a5
    return v5

    #@6a6
    .line 595
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@6a9
    move-object/from16 v0, p2

    #@6ab
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ae
    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    #@6b1
    move-result v45

    #@6b2
    .line 597
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b5
    .line 598
    if-eqz v45, :cond_1b

    #@6b7
    const/4 v5, 0x1

    #@6b8
    :goto_1b
    move-object/from16 v0, p3

    #@6ba
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@6bd
    .line 599
    const/4 v5, 0x1

    #@6be
    return v5

    #@6bf
    .line 598
    :cond_1b
    const/4 v5, 0x0

    #@6c0
    goto :goto_1b

    #@6c1
    .line 603
    .end local v45    # "_result":Z
    :sswitch_38
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@6c4
    move-object/from16 v0, p2

    #@6c6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c9
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6cc
    move-result v6

    #@6cd
    .line 607
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d0
    move-result-object v28

    #@6d1
    .line 609
    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d4
    move-result-object v33

    #@6d5
    .line 610
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d7
    move-object/from16 v1, v28

    #@6d9
    move-object/from16 v2, v33

    #@6db
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@6de
    move-result v45

    #@6df
    .line 611
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e2
    .line 612
    if-eqz v45, :cond_1c

    #@6e4
    const/4 v5, 0x1

    #@6e5
    :goto_1c
    move-object/from16 v0, p3

    #@6e7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@6ea
    .line 613
    const/4 v5, 0x1

    #@6eb
    return v5

    #@6ec
    .line 612
    :cond_1c
    const/4 v5, 0x0

    #@6ed
    goto :goto_1c

    #@6ee
    .line 617
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_39
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@6f1
    move-object/from16 v0, p2

    #@6f3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f6
    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    #@6f9
    move-result v36

    #@6fa
    .line 619
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fd
    .line 620
    move-object/from16 v0, p3

    #@6ff
    move/from16 v1, v36

    #@701
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@704
    .line 621
    const/4 v5, 0x1

    #@705
    return v5

    #@706
    .line 625
    .end local v36    # "_result":I
    :sswitch_3a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@709
    move-object/from16 v0, p2

    #@70b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70e
    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@711
    move-result v6

    #@712
    .line 628
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@714
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    #@717
    move-result v36

    #@718
    .line 629
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71b
    .line 630
    move-object/from16 v0, p3

    #@71d
    move/from16 v1, v36

    #@71f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@722
    .line 631
    const/4 v5, 0x1

    #@723
    return v5

    #@724
    .line 635
    .end local v6    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_3b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@727
    move-object/from16 v0, p2

    #@729
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72c
    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    #@72f
    move-result v36

    #@730
    .line 637
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@733
    .line 638
    move-object/from16 v0, p3

    #@735
    move/from16 v1, v36

    #@737
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@73a
    .line 639
    const/4 v5, 0x1

    #@73b
    return v5

    #@73c
    .line 643
    .end local v36    # "_result":I
    :sswitch_3c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@73f
    move-object/from16 v0, p2

    #@741
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@744
    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@747
    move-result v6

    #@748
    .line 647
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74b
    move-result-object v28

    #@74c
    .line 648
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@74e
    move-object/from16 v1, v28

    #@750
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@753
    move-result v36

    #@754
    .line 649
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@757
    .line 650
    move-object/from16 v0, p3

    #@759
    move/from16 v1, v36

    #@75b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@75e
    .line 651
    const/4 v5, 0x1

    #@75f
    return v5

    #@760
    .line 655
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_3d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@763
    move-object/from16 v0, p2

    #@765
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@768
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76b
    move-result-object v22

    #@76c
    .line 658
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@76e
    move-object/from16 v1, v22

    #@770
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    #@773
    move-result v36

    #@774
    .line 659
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@777
    .line 660
    move-object/from16 v0, p3

    #@779
    move/from16 v1, v36

    #@77b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@77e
    .line 661
    const/4 v5, 0x1

    #@77f
    return v5

    #@780
    .line 665
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_3e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@783
    move-object/from16 v0, p2

    #@785
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@788
    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78b
    move-result v6

    #@78c
    .line 669
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@78f
    move-result-object v28

    #@790
    .line 670
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@792
    move-object/from16 v1, v28

    #@794
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@797
    move-result v36

    #@798
    .line 671
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79b
    .line 672
    move-object/from16 v0, p3

    #@79d
    move/from16 v1, v36

    #@79f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a2
    .line 673
    const/4 v5, 0x1

    #@7a3
    return v5

    #@7a4
    .line 677
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_3f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@7a7
    move-object/from16 v0, p2

    #@7a9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ac
    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7af
    move-result v6

    #@7b0
    .line 681
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7b3
    move-result-object v28

    #@7b4
    .line 682
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7b6
    move-object/from16 v1, v28

    #@7b8
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    #@7bb
    move-result v36

    #@7bc
    .line 683
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bf
    .line 684
    move-object/from16 v0, p3

    #@7c1
    move/from16 v1, v36

    #@7c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7c6
    .line 685
    const/4 v5, 0x1

    #@7c7
    return v5

    #@7c8
    .line 689
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_40
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@7cb
    move-object/from16 v0, p2

    #@7cd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d0
    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    #@7d3
    move-result v45

    #@7d4
    .line 691
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d7
    .line 692
    if-eqz v45, :cond_1d

    #@7d9
    const/4 v5, 0x1

    #@7da
    :goto_1d
    move-object/from16 v0, p3

    #@7dc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@7df
    .line 693
    const/4 v5, 0x1

    #@7e0
    return v5

    #@7e1
    .line 692
    :cond_1d
    const/4 v5, 0x0

    #@7e2
    goto :goto_1d

    #@7e3
    .line 697
    .end local v45    # "_result":Z
    :sswitch_41
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7eb
    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ee
    move-result v6

    #@7ef
    .line 700
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@7f1
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    #@7f4
    move-result v45

    #@7f5
    .line 701
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f8
    .line 702
    if-eqz v45, :cond_1e

    #@7fa
    const/4 v5, 0x1

    #@7fb
    :goto_1e
    move-object/from16 v0, p3

    #@7fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@800
    .line 703
    const/4 v5, 0x1

    #@801
    return v5

    #@802
    .line 702
    :cond_1e
    const/4 v5, 0x0

    #@803
    goto :goto_1e

    #@804
    .line 707
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_42
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@807
    move-object/from16 v0, p2

    #@809
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80c
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@80f
    move-result-object v22

    #@810
    .line 710
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@812
    move-object/from16 v1, v22

    #@814
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    #@817
    move-result v36

    #@818
    .line 711
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81b
    .line 712
    move-object/from16 v0, p3

    #@81d
    move/from16 v1, v36

    #@81f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@822
    .line 713
    const/4 v5, 0x1

    #@823
    return v5

    #@824
    .line 717
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_43
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@827
    move-object/from16 v0, p2

    #@829
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82c
    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@82f
    move-result v6

    #@830
    .line 721
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@833
    move-result-object v28

    #@834
    .line 722
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@836
    move-object/from16 v1, v28

    #@838
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    #@83b
    move-result v36

    #@83c
    .line 723
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@83f
    .line 724
    move-object/from16 v0, p3

    #@841
    move/from16 v1, v36

    #@843
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@846
    .line 725
    const/4 v5, 0x1

    #@847
    return v5

    #@848
    .line 729
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_44
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@84b
    move-object/from16 v0, p2

    #@84d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@850
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@853
    move-result-object v22

    #@854
    .line 732
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@856
    move-object/from16 v1, v22

    #@858
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    #@85b
    move-result-object v42

    #@85c
    .line 733
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85f
    .line 734
    move-object/from16 v0, p3

    #@861
    move-object/from16 v1, v42

    #@863
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@866
    .line 735
    const/4 v5, 0x1

    #@867
    return v5

    #@868
    .line 739
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_45
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@86b
    move-object/from16 v0, p2

    #@86d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@870
    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@873
    move-result v6

    #@874
    .line 742
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@876
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    #@879
    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87c
    .line 744
    const/4 v5, 0x1

    #@87d
    return v5

    #@87e
    .line 748
    .end local v6    # "_arg0":I
    :sswitch_46
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@881
    move-object/from16 v0, p2

    #@883
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@886
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    #@889
    move-result v36

    #@88a
    .line 750
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88d
    .line 751
    move-object/from16 v0, p3

    #@88f
    move/from16 v1, v36

    #@891
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@894
    .line 752
    const/4 v5, 0x1

    #@895
    return v5

    #@896
    .line 756
    .end local v36    # "_result":I
    :sswitch_47
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@899
    move-object/from16 v0, p2

    #@89b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89e
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8a1
    move-result-object v22

    #@8a2
    .line 759
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8a4
    move-object/from16 v1, v22

    #@8a6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    #@8a9
    move-result-object v38

    #@8aa
    .line 760
    .local v38, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ad
    .line 761
    if-eqz v38, :cond_1f

    #@8af
    .line 762
    const/4 v5, 0x1

    #@8b0
    move-object/from16 v0, p3

    #@8b2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@8b5
    .line 763
    const/4 v5, 0x1

    #@8b6
    move-object/from16 v0, v38

    #@8b8
    move-object/from16 v1, p3

    #@8ba
    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@8bd
    .line 768
    :goto_1f
    const/4 v5, 0x1

    #@8be
    return v5

    #@8bf
    .line 766
    :cond_1f
    const/4 v5, 0x0

    #@8c0
    move-object/from16 v0, p3

    #@8c2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@8c5
    goto :goto_1f

    #@8c6
    .line 772
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_48
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@8c9
    move-object/from16 v0, p2

    #@8cb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ce
    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d1
    move-result v6

    #@8d2
    .line 775
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@8d4
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    #@8d7
    move-result v45

    #@8d8
    .line 776
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8db
    .line 777
    if-eqz v45, :cond_20

    #@8dd
    const/4 v5, 0x1

    #@8de
    :goto_20
    move-object/from16 v0, p3

    #@8e0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@8e3
    .line 778
    const/4 v5, 0x1

    #@8e4
    return v5

    #@8e5
    .line 777
    :cond_20
    const/4 v5, 0x0

    #@8e6
    goto :goto_20

    #@8e7
    .line 782
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_49
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@8ea
    move-object/from16 v0, p2

    #@8ec
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ef
    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f2
    move-result v6

    #@8f3
    .line 786
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f6
    move-result v7

    #@8f7
    .line 788
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8fa
    move-result v8

    #@8fb
    .line 790
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8fe
    move-result v9

    #@8ff
    .line 792
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@902
    move-result v10

    #@903
    .line 794
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@906
    move-result v11

    #@907
    .line 796
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90a
    move-result-object v12

    #@90b
    .local v12, "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    #@90d
    .line 797
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    #@910
    move-result-object v41

    #@911
    .line 798
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@914
    .line 799
    move-object/from16 v0, p3

    #@916
    move-object/from16 v1, v41

    #@918
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@91b
    .line 800
    const/4 v5, 0x1

    #@91c
    return v5

    #@91d
    .line 804
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@920
    move-object/from16 v0, p2

    #@922
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@925
    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@928
    move-result v6

    #@929
    .line 808
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92c
    move-result v7

    #@92d
    .line 810
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@930
    move-result v8

    #@931
    .line 812
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@934
    move-result v9

    #@935
    .line 814
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@938
    move-result v10

    #@939
    .line 816
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@93c
    move-result-object v19

    #@93d
    .local v19, "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    #@93f
    move v14, v6

    #@940
    move v15, v7

    #@941
    move/from16 v16, v8

    #@943
    move/from16 v17, v9

    #@945
    move/from16 v18, v10

    #@947
    .line 817
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    #@94a
    move-result-object v41

    #@94b
    .line 818
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94e
    .line 819
    move-object/from16 v0, p3

    #@950
    move-object/from16 v1, v41

    #@952
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@955
    .line 820
    const/4 v5, 0x1

    #@956
    return v5

    #@957
    .line 824
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@95a
    move-object/from16 v0, p2

    #@95c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95f
    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@962
    move-result v6

    #@963
    .line 828
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@966
    move-result v7

    #@967
    .line 830
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96a
    move-result v8

    #@96b
    .line 832
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96e
    move-result v9

    #@96f
    .line 834
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@972
    move-result v10

    #@973
    .line 836
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@976
    move-result-object v19

    #@977
    .restart local v19    # "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    #@979
    move v14, v6

    #@97a
    move v15, v7

    #@97b
    move/from16 v16, v8

    #@97d
    move/from16 v17, v9

    #@97f
    move/from16 v18, v10

    #@981
    .line 837
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    #@984
    move-result-object v46

    #@985
    .line 838
    .local v46, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@988
    .line 839
    move-object/from16 v0, p3

    #@98a
    move-object/from16 v1, v46

    #@98c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@98f
    .line 840
    const/4 v5, 0x1

    #@990
    return v5

    #@991
    .line 844
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v46    # "_result":[B
    :sswitch_4c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@994
    move-object/from16 v0, p2

    #@996
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@999
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99c
    move-result-object v22

    #@99d
    .line 847
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@99f
    move-object/from16 v1, v22

    #@9a1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    #@9a4
    move-result-object v41

    #@9a5
    .line 848
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a8
    .line 849
    move-object/from16 v0, p3

    #@9aa
    move-object/from16 v1, v41

    #@9ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9af
    .line 850
    const/4 v5, 0x1

    #@9b0
    return v5

    #@9b1
    .line 854
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@9b4
    move-object/from16 v0, p2

    #@9b6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b9
    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9bc
    move-result v6

    #@9bd
    .line 857
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@9bf
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    #@9c2
    move-result-object v41

    #@9c3
    .line 858
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c6
    .line 859
    move-object/from16 v0, p3

    #@9c8
    move-object/from16 v1, v41

    #@9ca
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9cd
    .line 860
    const/4 v5, 0x1

    #@9ce
    return v5

    #@9cf
    .line 864
    .end local v6    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@9d2
    move-object/from16 v0, p2

    #@9d4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d7
    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9da
    move-result v6

    #@9db
    .line 868
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9de
    move-result-object v28

    #@9df
    .line 869
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9e1
    move-object/from16 v1, v28

    #@9e3
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    #@9e6
    move-result v45

    #@9e7
    .line 870
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ea
    .line 871
    if-eqz v45, :cond_21

    #@9ec
    const/4 v5, 0x1

    #@9ed
    :goto_21
    move-object/from16 v0, p3

    #@9ef
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@9f2
    .line 872
    const/4 v5, 0x1

    #@9f3
    return v5

    #@9f4
    .line 871
    :cond_21
    const/4 v5, 0x0

    #@9f5
    goto :goto_21

    #@9f6
    .line 876
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_4f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@9f9
    move-object/from16 v0, p2

    #@9fb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9fe
    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@a01
    move-result-object v25

    #@a02
    .line 879
    .local v25, "_arg0":[B
    move-object/from16 v0, p0

    #@a04
    move-object/from16 v1, v25

    #@a06
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    #@a09
    move-result v45

    #@a0a
    .line 880
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0d
    .line 881
    if-eqz v45, :cond_22

    #@a0f
    const/4 v5, 0x1

    #@a10
    :goto_22
    move-object/from16 v0, p3

    #@a12
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@a15
    .line 882
    const/4 v5, 0x1

    #@a16
    return v5

    #@a17
    .line 881
    :cond_22
    const/4 v5, 0x0

    #@a18
    goto :goto_22

    #@a19
    .line 886
    .end local v25    # "_arg0":[B
    .end local v45    # "_result":Z
    :sswitch_50
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@a1c
    move-object/from16 v0, p2

    #@a1e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a21
    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a24
    move-result v6

    #@a25
    .line 889
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@a27
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    #@a2a
    move-result v45

    #@a2b
    .line 890
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a2e
    .line 891
    if-eqz v45, :cond_23

    #@a30
    const/4 v5, 0x1

    #@a31
    :goto_23
    move-object/from16 v0, p3

    #@a33
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@a36
    .line 892
    const/4 v5, 0x1

    #@a37
    return v5

    #@a38
    .line 891
    :cond_23
    const/4 v5, 0x0

    #@a39
    goto :goto_23

    #@a3a
    .line 896
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_51
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@a3d
    move-object/from16 v0, p2

    #@a3f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a42
    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a45
    move-result-object v22

    #@a46
    .line 899
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a48
    move-object/from16 v1, v22

    #@a4a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    #@a4d
    move-result v36

    #@a4e
    .line 900
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a51
    .line 901
    move-object/from16 v0, p3

    #@a53
    move/from16 v1, v36

    #@a55
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a58
    .line 902
    const/4 v5, 0x1

    #@a59
    return v5

    #@a5a
    .line 906
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_52
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@a5d
    move-object/from16 v0, p2

    #@a5f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a62
    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a65
    move-result v6

    #@a66
    .line 909
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@a68
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    #@a6b
    move-result v36

    #@a6c
    .line 910
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6f
    .line 911
    move-object/from16 v0, p3

    #@a71
    move/from16 v1, v36

    #@a73
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a76
    .line 912
    const/4 v5, 0x1

    #@a77
    return v5

    #@a78
    .line 916
    .end local v6    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_53
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@a7b
    move-object/from16 v0, p2

    #@a7d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a80
    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    #@a83
    move-result v36

    #@a84
    .line 918
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a87
    .line 919
    move-object/from16 v0, p3

    #@a89
    move/from16 v1, v36

    #@a8b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a8e
    .line 920
    const/4 v5, 0x1

    #@a8f
    return v5

    #@a90
    .line 924
    .end local v36    # "_result":I
    :sswitch_54
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@a93
    move-object/from16 v0, p2

    #@a95
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a98
    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9b
    move-result v6

    #@a9c
    .line 927
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@a9e
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    #@aa1
    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa4
    .line 929
    const/4 v5, 0x1

    #@aa5
    return v5

    #@aa6
    .line 933
    .end local v6    # "_arg0":I
    :sswitch_55
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@aa9
    move-object/from16 v0, p2

    #@aab
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aae
    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab1
    move-result v6

    #@ab2
    .line 936
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@ab4
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    #@ab7
    move-result-object v40

    #@ab8
    .line 937
    .local v40, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@abb
    .line 938
    if-eqz v40, :cond_24

    #@abd
    .line 939
    const/4 v5, 0x1

    #@abe
    move-object/from16 v0, p3

    #@ac0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ac3
    .line 940
    const/4 v5, 0x1

    #@ac4
    move-object/from16 v0, v40

    #@ac6
    move-object/from16 v1, p3

    #@ac8
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@acb
    .line 945
    :goto_24
    const/4 v5, 0x1

    #@acc
    return v5

    #@acd
    .line 943
    :cond_24
    const/4 v5, 0x0

    #@ace
    move-object/from16 v0, p3

    #@ad0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ad3
    goto :goto_24

    #@ad4
    .line 949
    .end local v6    # "_arg0":I
    .end local v40    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_56
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@ad7
    move-object/from16 v0, p2

    #@ad9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@adc
    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@adf
    move-result v6

    #@ae0
    .line 953
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ae3
    move-result v5

    #@ae4
    if-eqz v5, :cond_25

    #@ae6
    .line 954
    sget-object v5, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae8
    move-object/from16 v0, p2

    #@aea
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@aed
    move-result-object v27

    #@aee
    check-cast v27, Lcom/android/internal/telephony/OperatorInfo;

    #@af0
    .line 959
    :goto_25
    move-object/from16 v0, p0

    #@af2
    move-object/from16 v1, v27

    #@af4
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z

    #@af7
    move-result v45

    #@af8
    .line 960
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@afb
    .line 961
    if-eqz v45, :cond_26

    #@afd
    const/4 v5, 0x1

    #@afe
    :goto_26
    move-object/from16 v0, p3

    #@b00
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@b03
    .line 962
    const/4 v5, 0x1

    #@b04
    return v5

    #@b05
    .line 957
    .end local v45    # "_result":Z
    :cond_25
    const/16 v27, 0x0

    #@b07
    .local v27, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_25

    #@b08
    .line 961
    .end local v27    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .restart local v45    # "_result":Z
    :cond_26
    const/4 v5, 0x0

    #@b09
    goto :goto_26

    #@b0a
    .line 966
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_57
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b0d
    move-object/from16 v0, p2

    #@b0f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b12
    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b15
    move-result v6

    #@b16
    .line 970
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b19
    move-result v7

    #@b1a
    .line 971
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    #@b1c
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    #@b1f
    move-result v45

    #@b20
    .line 972
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b23
    .line 973
    if-eqz v45, :cond_27

    #@b25
    const/4 v5, 0x1

    #@b26
    :goto_27
    move-object/from16 v0, p3

    #@b28
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@b2b
    .line 974
    const/4 v5, 0x1

    #@b2c
    return v5

    #@b2d
    .line 973
    :cond_27
    const/4 v5, 0x0

    #@b2e
    goto :goto_27

    #@b2f
    .line 978
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v45    # "_result":Z
    :sswitch_58
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b32
    move-object/from16 v0, p2

    #@b34
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b37
    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3a
    move-result v6

    #@b3b
    .line 982
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3e
    move-result v5

    #@b3f
    if-eqz v5, :cond_28

    #@b41
    const/16 v30, 0x1

    #@b43
    .line 983
    .restart local v30    # "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    #@b45
    move/from16 v1, v30

    #@b47
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    #@b4a
    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4d
    .line 985
    const/4 v5, 0x1

    #@b4e
    return v5

    #@b4f
    .line 982
    .end local v30    # "_arg1":Z
    :cond_28
    const/16 v30, 0x0

    #@b51
    .restart local v30    # "_arg1":Z
    goto :goto_28

    #@b52
    .line 989
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Z
    :sswitch_59
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b55
    move-object/from16 v0, p2

    #@b57
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5a
    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5d
    move-result v6

    #@b5e
    .line 992
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@b60
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    #@b63
    move-result v45

    #@b64
    .line 993
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b67
    .line 994
    if-eqz v45, :cond_29

    #@b69
    const/4 v5, 0x1

    #@b6a
    :goto_29
    move-object/from16 v0, p3

    #@b6c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@b6f
    .line 995
    const/4 v5, 0x1

    #@b70
    return v5

    #@b71
    .line 994
    :cond_29
    const/4 v5, 0x0

    #@b72
    goto :goto_29

    #@b73
    .line 999
    .end local v6    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_5a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b76
    move-object/from16 v0, p2

    #@b78
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7b
    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b7e
    move-result-object v22

    #@b7f
    .line 1003
    .restart local v22    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b82
    move-result-object v28

    #@b83
    .line 1004
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b85
    move-object/from16 v1, v22

    #@b87
    move-object/from16 v2, v28

    #@b89
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@b8c
    move-result-object v48

    #@b8d
    .line 1005
    .local v48, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b90
    .line 1006
    move-object/from16 v0, p3

    #@b92
    move-object/from16 v1, v48

    #@b94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@b97
    .line 1007
    const/4 v5, 0x1

    #@b98
    return v5

    #@b99
    .line 1011
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":[Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@b9c
    move-object/from16 v0, p2

    #@b9e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba1
    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ba4
    move-result v5

    #@ba5
    if-eqz v5, :cond_2a

    #@ba7
    const/16 v24, 0x1

    #@ba9
    .line 1014
    .restart local v24    # "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    #@bab
    move/from16 v1, v24

    #@bad
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    #@bb0
    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb3
    .line 1016
    const/4 v5, 0x1

    #@bb4
    return v5

    #@bb5
    .line 1013
    .end local v24    # "_arg0":Z
    :cond_2a
    const/16 v24, 0x0

    #@bb7
    .restart local v24    # "_arg0":Z
    goto :goto_2a

    #@bb8
    .line 1020
    .end local v24    # "_arg0":Z
    :sswitch_5c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@bbb
    move-object/from16 v0, p2

    #@bbd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc0
    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc3
    move-result v6

    #@bc4
    .line 1023
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@bc6
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    #@bc9
    move-result-object v41

    #@bca
    .line 1024
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bcd
    .line 1025
    move-object/from16 v0, p3

    #@bcf
    move-object/from16 v1, v41

    #@bd1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@bd4
    .line 1026
    const/4 v5, 0x1

    #@bd5
    return v5

    #@bd6
    .line 1030
    .end local v6    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_5d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@bd9
    move-object/from16 v0, p2

    #@bdb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bde
    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@be1
    move-result v6

    #@be2
    .line 1033
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@be4
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    #@be7
    move-result-object v41

    #@be8
    .line 1034
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@beb
    .line 1035
    move-object/from16 v0, p3

    #@bed
    move-object/from16 v1, v41

    #@bef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@bf2
    .line 1036
    const/4 v5, 0x1

    #@bf3
    return v5

    #@bf4
    .line 1040
    .end local v6    # "_arg0":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@bf7
    move-object/from16 v0, p2

    #@bf9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bfc
    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    #@bff
    move-result v36

    #@c00
    .line 1042
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c03
    .line 1043
    move-object/from16 v0, p3

    #@c05
    move/from16 v1, v36

    #@c07
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c0a
    .line 1044
    const/4 v5, 0x1

    #@c0b
    return v5

    #@c0c
    .line 1048
    .end local v36    # "_result":I
    :sswitch_5f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@c0f
    move-object/from16 v0, p2

    #@c11
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c14
    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c17
    move-result-object v22

    #@c18
    .line 1051
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c1a
    move-object/from16 v1, v22

    #@c1c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    #@c1f
    move-result v36

    #@c20
    .line 1052
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c23
    .line 1053
    move-object/from16 v0, p3

    #@c25
    move/from16 v1, v36

    #@c27
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c2a
    .line 1054
    const/4 v5, 0x1

    #@c2b
    return v5

    #@c2c
    .line 1058
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_60
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@c2f
    move-object/from16 v0, p2

    #@c31
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c34
    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c37
    move-result-object v22

    #@c38
    .line 1061
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c3a
    move-object/from16 v1, v22

    #@c3c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@c3f
    move-result v36

    #@c40
    .line 1062
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c43
    .line 1063
    move-object/from16 v0, p3

    #@c45
    move/from16 v1, v36

    #@c47
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c4a
    .line 1064
    const/4 v5, 0x1

    #@c4b
    return v5

    #@c4c
    .line 1068
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_61
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@c4f
    move-object/from16 v0, p2

    #@c51
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c54
    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c57
    move-result v5

    #@c58
    if-eqz v5, :cond_2b

    #@c5a
    .line 1071
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c5c
    move-object/from16 v0, p2

    #@c5e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c61
    move-result-object v20

    #@c62
    check-cast v20, Landroid/content/Intent;

    #@c64
    .line 1077
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c67
    move-result v7

    #@c68
    .line 1078
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    #@c6a
    move-object/from16 v1, v20

    #@c6c
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@c6f
    move-result-object v44

    #@c70
    .line 1079
    .local v44, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c73
    .line 1080
    move-object/from16 v0, p3

    #@c75
    move-object/from16 v1, v44

    #@c77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@c7a
    .line 1081
    const/4 v5, 0x1

    #@c7b
    return v5

    #@c7c
    .line 1074
    .end local v7    # "_arg1":I
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/16 v20, 0x0

    #@c7e
    .local v20, "_arg0":Landroid/content/Intent;
    goto :goto_2b

    #@c7f
    .line 1085
    .end local v20    # "_arg0":Landroid/content/Intent;
    :sswitch_62
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@c82
    move-object/from16 v0, p2

    #@c84
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c87
    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8a
    move-result v6

    #@c8b
    .line 1089
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c8e
    move-result-object v28

    #@c8f
    .line 1091
    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c92
    move-result-object v33

    #@c93
    .line 1092
    .restart local v33    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c95
    move-object/from16 v1, v28

    #@c97
    move-object/from16 v2, v33

    #@c99
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@c9c
    move-result v45

    #@c9d
    .line 1093
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca0
    .line 1094
    if-eqz v45, :cond_2c

    #@ca2
    const/4 v5, 0x1

    #@ca3
    :goto_2c
    move-object/from16 v0, p3

    #@ca5
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ca8
    .line 1095
    const/4 v5, 0x1

    #@ca9
    return v5

    #@caa
    .line 1094
    :cond_2c
    const/4 v5, 0x0

    #@cab
    goto :goto_2c

    #@cac
    .line 1099
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_63
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@caf
    move-object/from16 v0, p2

    #@cb1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb4
    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb7
    move-result v6

    #@cb8
    .line 1103
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cbb
    move-result-object v28

    #@cbc
    .line 1104
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cbe
    move-object/from16 v1, v28

    #@cc0
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@cc3
    move-result-object v41

    #@cc4
    .line 1105
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc7
    .line 1106
    move-object/from16 v0, p3

    #@cc9
    move-object/from16 v1, v41

    #@ccb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cce
    .line 1107
    const/4 v5, 0x1

    #@ccf
    return v5

    #@cd0
    .line 1111
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@cd3
    move-object/from16 v0, p2

    #@cd5
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd8
    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cdb
    move-result v6

    #@cdc
    .line 1115
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cdf
    move-result-object v28

    #@ce0
    .line 1116
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ce2
    move-object/from16 v1, v28

    #@ce4
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    #@ce7
    move-result-object v41

    #@ce8
    .line 1117
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ceb
    .line 1118
    move-object/from16 v0, p3

    #@ced
    move-object/from16 v1, v41

    #@cef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cf2
    .line 1119
    const/4 v5, 0x1

    #@cf3
    return v5

    #@cf4
    .line 1123
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_65
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@cf7
    move-object/from16 v0, p2

    #@cf9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cfc
    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cff
    move-result-object v22

    #@d00
    .line 1126
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d02
    move-object/from16 v1, v22

    #@d04
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    #@d07
    move-result-object v48

    #@d08
    .line 1127
    .restart local v48    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d0b
    .line 1128
    move-object/from16 v0, p3

    #@d0d
    move-object/from16 v1, v48

    #@d0f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@d12
    .line 1129
    const/4 v5, 0x1

    #@d13
    return v5

    #@d14
    .line 1133
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":[Ljava/lang/String;
    :sswitch_66
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@d17
    move-object/from16 v0, p2

    #@d19
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d1c
    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d1f
    move-result-object v22

    #@d20
    .line 1136
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d22
    move-object/from16 v1, v22

    #@d24
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    #@d27
    move-result v45

    #@d28
    .line 1137
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2b
    .line 1138
    if-eqz v45, :cond_2d

    #@d2d
    const/4 v5, 0x1

    #@d2e
    :goto_2d
    move-object/from16 v0, p3

    #@d30
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@d33
    .line 1139
    const/4 v5, 0x1

    #@d34
    return v5

    #@d35
    .line 1138
    :cond_2d
    const/4 v5, 0x0

    #@d36
    goto :goto_2d

    #@d37
    .line 1143
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_67
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@d3a
    move-object/from16 v0, p2

    #@d3c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3f
    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d42
    move-result-object v23

    #@d43
    .line 1147
    .local v23, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d46
    move-result-object v29

    #@d47
    .line 1149
    .local v29, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d4a
    move-result-object v34

    #@d4b
    .line 1151
    .local v34, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@d4e
    move-result-object v35

    #@d4f
    .line 1152
    .local v35, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@d51
    move-object/from16 v1, v23

    #@d53
    move-object/from16 v2, v29

    #@d55
    move-object/from16 v3, v34

    #@d57
    move-object/from16 v4, v35

    #@d59
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    #@d5c
    move-result v45

    #@d5d
    .line 1153
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d60
    .line 1154
    if-eqz v45, :cond_2e

    #@d62
    const/4 v5, 0x1

    #@d63
    :goto_2e
    move-object/from16 v0, p3

    #@d65
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@d68
    .line 1155
    const/4 v5, 0x1

    #@d69
    return v5

    #@d6a
    .line 1154
    :cond_2e
    const/4 v5, 0x0

    #@d6b
    goto :goto_2e

    #@d6c
    .line 1159
    .end local v23    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "_result":Z
    :sswitch_68
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@d6f
    move-object/from16 v0, p2

    #@d71
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d74
    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@d77
    move-result-object v25

    #@d78
    .line 1163
    .restart local v25    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7b
    move-result v32

    #@d7c
    .line 1164
    .local v32, "_arg1_length":I
    if-gez v32, :cond_2f

    #@d7e
    .line 1165
    const/16 v31, 0x0

    #@d80
    .line 1170
    :goto_2f
    move-object/from16 v0, p0

    #@d82
    move-object/from16 v1, v25

    #@d84
    move-object/from16 v2, v31

    #@d86
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    #@d89
    move-result v36

    #@d8a
    .line 1171
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8d
    .line 1172
    move-object/from16 v0, p3

    #@d8f
    move/from16 v1, v36

    #@d91
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d94
    .line 1173
    move-object/from16 v0, p3

    #@d96
    move-object/from16 v1, v31

    #@d98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@d9b
    .line 1174
    const/4 v5, 0x1

    #@d9c
    return v5

    #@d9d
    .line 1168
    .end local v36    # "_result":I
    :cond_2f
    move/from16 v0, v32

    #@d9f
    new-array v0, v0, [B

    #@da1
    move-object/from16 v31, v0

    #@da3
    .local v31, "_arg1":[B
    goto :goto_2f

    #@da4
    .line 1178
    .end local v25    # "_arg0":[B
    .end local v31    # "_arg1":[B
    .end local v32    # "_arg1_length":I
    :sswitch_69
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@da7
    move-object/from16 v0, p2

    #@da9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dac
    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    #@daf
    move-result v45

    #@db0
    .line 1180
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@db3
    .line 1181
    if-eqz v45, :cond_30

    #@db5
    const/4 v5, 0x1

    #@db6
    :goto_30
    move-object/from16 v0, p3

    #@db8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@dbb
    .line 1182
    const/4 v5, 0x1

    #@dbc
    return v5

    #@dbd
    .line 1181
    :cond_30
    const/4 v5, 0x0

    #@dbe
    goto :goto_30

    #@dbf
    .line 1186
    .end local v45    # "_result":Z
    :sswitch_6a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@dc2
    move-object/from16 v0, p2

    #@dc4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc7
    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    #@dca
    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dcd
    .line 1189
    const/4 v5, 0x1

    #@dce
    return v5

    #@dcf
    .line 1193
    :sswitch_6b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@dd2
    move-object/from16 v0, p2

    #@dd4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd7
    .line 1195
    sget-object v5, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd9
    move-object/from16 v0, p2

    #@ddb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@dde
    move-result-object v26

    #@ddf
    check-cast v26, [Landroid/telephony/RadioAccessFamily;

    #@de1
    .line 1196
    .local v26, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    #@de3
    move-object/from16 v1, v26

    #@de5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    #@de8
    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@deb
    .line 1198
    const/4 v5, 0x1

    #@dec
    return v5

    #@ded
    .line 1202
    .end local v26    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_6c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@df0
    move-object/from16 v0, p2

    #@df2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@df5
    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df8
    move-result v6

    #@df9
    .line 1206
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dfc
    move-result-object v28

    #@dfd
    .line 1207
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@dff
    move-object/from16 v1, v28

    #@e01
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    #@e04
    move-result v36

    #@e05
    .line 1208
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e08
    .line 1209
    move-object/from16 v0, p3

    #@e0a
    move/from16 v1, v36

    #@e0c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e0f
    .line 1210
    const/4 v5, 0x1

    #@e10
    return v5

    #@e11
    .line 1214
    .end local v6    # "_arg0":I
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_6d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e14
    move-object/from16 v0, p2

    #@e16
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e19
    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1c
    move-result v5

    #@e1d
    if-eqz v5, :cond_31

    #@e1f
    const/16 v24, 0x1

    #@e21
    .line 1217
    .restart local v24    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    #@e23
    move/from16 v1, v24

    #@e25
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    #@e28
    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2b
    .line 1219
    const/4 v5, 0x1

    #@e2c
    return v5

    #@e2d
    .line 1216
    .end local v24    # "_arg0":Z
    :cond_31
    const/16 v24, 0x0

    #@e2f
    .restart local v24    # "_arg0":Z
    goto :goto_31

    #@e30
    .line 1223
    .end local v24    # "_arg0":Z
    :sswitch_6e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e33
    move-object/from16 v0, p2

    #@e35
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e38
    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e3b
    move-result-object v22

    #@e3c
    .line 1226
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e3e
    move-object/from16 v1, v22

    #@e40
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    #@e43
    move-result v45

    #@e44
    .line 1227
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e47
    .line 1228
    if-eqz v45, :cond_32

    #@e49
    const/4 v5, 0x1

    #@e4a
    :goto_32
    move-object/from16 v0, p3

    #@e4c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@e4f
    .line 1229
    const/4 v5, 0x1

    #@e50
    return v5

    #@e51
    .line 1228
    :cond_32
    const/4 v5, 0x0

    #@e52
    goto :goto_32

    #@e53
    .line 1233
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_6f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e56
    move-object/from16 v0, p2

    #@e58
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5b
    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    #@e5e
    move-result v45

    #@e5f
    .line 1235
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e62
    .line 1236
    if-eqz v45, :cond_33

    #@e64
    const/4 v5, 0x1

    #@e65
    :goto_33
    move-object/from16 v0, p3

    #@e67
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@e6a
    .line 1237
    const/4 v5, 0x1

    #@e6b
    return v5

    #@e6c
    .line 1236
    :cond_33
    const/4 v5, 0x0

    #@e6d
    goto :goto_33

    #@e6e
    .line 1241
    .end local v45    # "_result":Z
    :sswitch_70
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e71
    move-object/from16 v0, p2

    #@e73
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e76
    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    #@e79
    move-result v45

    #@e7a
    .line 1243
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7d
    .line 1244
    if-eqz v45, :cond_34

    #@e7f
    const/4 v5, 0x1

    #@e80
    :goto_34
    move-object/from16 v0, p3

    #@e82
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@e85
    .line 1245
    const/4 v5, 0x1

    #@e86
    return v5

    #@e87
    .line 1244
    :cond_34
    const/4 v5, 0x0

    #@e88
    goto :goto_34

    #@e89
    .line 1249
    .end local v45    # "_result":Z
    :sswitch_71
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@e8c
    move-object/from16 v0, p2

    #@e8e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e91
    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    #@e94
    move-result v45

    #@e95
    .line 1251
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e98
    .line 1252
    if-eqz v45, :cond_35

    #@e9a
    const/4 v5, 0x1

    #@e9b
    :goto_35
    move-object/from16 v0, p3

    #@e9d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ea0
    .line 1253
    const/4 v5, 0x1

    #@ea1
    return v5

    #@ea2
    .line 1252
    :cond_35
    const/4 v5, 0x0

    #@ea3
    goto :goto_35

    #@ea4
    .line 1257
    .end local v45    # "_result":Z
    :sswitch_72
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@ea7
    move-object/from16 v0, p2

    #@ea9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eac
    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    #@eaf
    move-result v45

    #@eb0
    .line 1259
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb3
    .line 1260
    if-eqz v45, :cond_36

    #@eb5
    const/4 v5, 0x1

    #@eb6
    :goto_36
    move-object/from16 v0, p3

    #@eb8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ebb
    .line 1261
    const/4 v5, 0x1

    #@ebc
    return v5

    #@ebd
    .line 1260
    :cond_36
    const/4 v5, 0x0

    #@ebe
    goto :goto_36

    #@ebf
    .line 1265
    .end local v45    # "_result":Z
    :sswitch_73
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@ec2
    move-object/from16 v0, p2

    #@ec4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec7
    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    #@eca
    move-result v45

    #@ecb
    .line 1267
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ece
    .line 1268
    if-eqz v45, :cond_37

    #@ed0
    const/4 v5, 0x1

    #@ed1
    :goto_37
    move-object/from16 v0, p3

    #@ed3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ed6
    .line 1269
    const/4 v5, 0x1

    #@ed7
    return v5

    #@ed8
    .line 1268
    :cond_37
    const/4 v5, 0x0

    #@ed9
    goto :goto_37

    #@eda
    .line 1273
    .end local v45    # "_result":Z
    :sswitch_74
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@edd
    move-object/from16 v0, p2

    #@edf
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee2
    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingEnabled()Z

    #@ee5
    move-result v45

    #@ee6
    .line 1275
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee9
    .line 1276
    if-eqz v45, :cond_38

    #@eeb
    const/4 v5, 0x1

    #@eec
    :goto_38
    move-object/from16 v0, p3

    #@eee
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ef1
    .line 1277
    const/4 v5, 0x1

    #@ef2
    return v5

    #@ef3
    .line 1276
    :cond_38
    const/4 v5, 0x0

    #@ef4
    goto :goto_38

    #@ef5
    .line 1281
    .end local v45    # "_result":Z
    :sswitch_75
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@ef8
    move-object/from16 v0, p2

    #@efa
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@efd
    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteEnabled()Z

    #@f00
    move-result v45

    #@f01
    .line 1283
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f04
    .line 1284
    if-eqz v45, :cond_39

    #@f06
    const/4 v5, 0x1

    #@f07
    :goto_39
    move-object/from16 v0, p3

    #@f09
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@f0c
    .line 1285
    const/4 v5, 0x1

    #@f0d
    return v5

    #@f0e
    .line 1284
    :cond_39
    const/4 v5, 0x0

    #@f0f
    goto :goto_39

    #@f10
    .line 1289
    .end local v45    # "_result":Z
    :sswitch_76
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@f13
    move-object/from16 v0, p2

    #@f15
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f18
    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f1b
    move-result-object v22

    #@f1c
    .line 1292
    .restart local v22    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f1e
    move-object/from16 v1, v22

    #@f20
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    #@f23
    move-result-object v41

    #@f24
    .line 1293
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f27
    .line 1294
    move-object/from16 v0, p3

    #@f29
    move-object/from16 v1, v41

    #@f2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f2e
    .line 1295
    const/4 v5, 0x1

    #@f2f
    return v5

    #@f30
    .line 1299
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_77
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@f33
    move-object/from16 v0, p2

    #@f35
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f38
    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3b
    move-result v5

    #@f3c
    if-eqz v5, :cond_3a

    #@f3e
    .line 1302
    sget-object v5, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f40
    move-object/from16 v0, p2

    #@f42
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f45
    move-result-object v21

    #@f46
    check-cast v21, Landroid/telecom/PhoneAccount;

    #@f48
    .line 1307
    :goto_3a
    move-object/from16 v0, p0

    #@f4a
    move-object/from16 v1, v21

    #@f4c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    #@f4f
    move-result v36

    #@f50
    .line 1308
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f53
    .line 1309
    move-object/from16 v0, p3

    #@f55
    move/from16 v1, v36

    #@f57
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f5a
    .line 1310
    const/4 v5, 0x1

    #@f5b
    return v5

    #@f5c
    .line 1305
    .end local v36    # "_result":I
    :cond_3a
    const/16 v21, 0x0

    #@f5e
    .local v21, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_3a

    #@f5f
    .line 1314
    .end local v21    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_78
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@f62
    move-object/from16 v0, p2

    #@f64
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f67
    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f6a
    move-result v6

    #@f6b
    .line 1317
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@f6d
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    #@f70
    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f73
    .line 1319
    const/4 v5, 0x1

    #@f74
    return v5

    #@f75
    .line 1323
    .end local v6    # "_arg0":I
    :sswitch_79
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@f78
    move-object/from16 v0, p2

    #@f7a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f7d
    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    #@f80
    move-result-object v41

    #@f81
    .line 1325
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f84
    .line 1326
    move-object/from16 v0, p3

    #@f86
    move-object/from16 v1, v41

    #@f88
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f8b
    .line 1327
    const/4 v5, 0x1

    #@f8c
    return v5

    #@f8d
    .line 1331
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    #@f90
    move-object/from16 v0, p2

    #@f92
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f95
    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    #@f98
    move-result-object v39

    #@f99
    .line 1333
    .local v39, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9c
    .line 1334
    if-eqz v39, :cond_3b

    #@f9e
    .line 1335
    const/4 v5, 0x1

    #@f9f
    move-object/from16 v0, p3

    #@fa1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@fa4
    .line 1336
    const/4 v5, 0x1

    #@fa5
    move-object/from16 v0, v39

    #@fa7
    move-object/from16 v1, p3

    #@fa9
    invoke-virtual {v0, v1, v5}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@fac
    .line 1341
    :goto_3b
    const/4 v5, 0x1

    #@fad
    return v5

    #@fae
    .line 1339
    :cond_3b
    const/4 v5, 0x0

    #@faf
    move-object/from16 v0, p3

    #@fb1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@fb4
    goto :goto_3b

    #@fb5
    .line 45
    nop

    #@fb6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
