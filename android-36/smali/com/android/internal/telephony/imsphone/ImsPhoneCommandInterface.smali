.class Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "ImsPhoneCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist allocatePduSessionId(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist cancelHandover(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .registers 7

    .line 0
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8

    .line 0
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getImei(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10

    .line 0
    return-void
.end method

.method public blacklist iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11

    .line 0
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 0
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    .registers 10

    .line 0
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist releasePduSessionId(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7

    .line 0
    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .registers 8

    .line 0
    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setRadioPower(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 11

    .line 0
    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist startHandover(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method
