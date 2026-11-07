.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# static fields
.field public static final blacklist CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final blacklist CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final blacklist CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final blacklist CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final blacklist CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final blacklist CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final blacklist CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final blacklist CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final blacklist CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final blacklist CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final blacklist CB_FACILITY_BIC_ACR:Ljava/lang/String; = "AR"

.field public static final blacklist CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final blacklist CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final blacklist CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final blacklist CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final blacklist CF_ACTION_DISABLE:I = 0x0

.field public static final blacklist CF_ACTION_ENABLE:I = 0x1

.field public static final blacklist CF_ACTION_ERASURE:I = 0x4

.field public static final blacklist CF_ACTION_REGISTRATION:I = 0x3

.field public static final blacklist CF_REASON_ALL:I = 0x4

.field public static final blacklist CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final blacklist CF_REASON_BUSY:I = 0x1

.field public static final blacklist CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final blacklist CF_REASON_NO_REPLY:I = 0x2

.field public static final blacklist CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final blacklist CLIR_DEFAULT:I = 0x0

.field public static final blacklist CLIR_INVOCATION:I = 0x1

.field public static final blacklist CLIR_SUPPRESSION:I = 0x2

.field public static final blacklist GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final blacklist GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final blacklist GSM_SMS_FAIL_CAUSE_USIM_APP_TOOLKIT_BUSY:I = 0xd4

.field public static final blacklist GSM_SMS_FAIL_CAUSE_USIM_DATA_DOWNLOAD_ERROR:I = 0xd5

.field public static final blacklist IMS_MMTEL_CAPABILITY_SMS:I = 0x4

.field public static final blacklist IMS_MMTEL_CAPABILITY_VIDEO:I = 0x2

.field public static final blacklist IMS_MMTEL_CAPABILITY_VOICE:I = 0x1

.field public static final blacklist IMS_RCS_CAPABILITIES:I = 0x8

.field public static final blacklist SERVICE_CLASS_DATA:I = 0x2

.field public static final blacklist SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final blacklist SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final blacklist SERVICE_CLASS_FAX:I = 0x4

.field public static final blacklist SERVICE_CLASS_MAX:I = 0x80

.field public static final blacklist SERVICE_CLASS_NONE:I = 0x0

.field public static final blacklist SERVICE_CLASS_PACKET:I = 0x40

.field public static final blacklist SERVICE_CLASS_PAD:I = 0x80

.field public static final blacklist SERVICE_CLASS_SMS:I = 0x8

.field public static final blacklist SERVICE_CLASS_VOICE:I = 0x1

.field public static final blacklist SS_STATUS_UNKNOWN:I = 0xff

.field public static final blacklist USSD_MODE_LOCAL_CLIENT:I = 0x3

.field public static final blacklist USSD_MODE_NOTIFY:I = 0x0

.field public static final blacklist USSD_MODE_NOT_SUPPORTED:I = 0x4

.field public static final blacklist USSD_MODE_NW_RELEASE:I = 0x2

.field public static final blacklist USSD_MODE_NW_TIMEOUT:I = 0x5

.field public static final blacklist USSD_MODE_REQUEST:I = 0x1


# virtual methods
.method public abstract greylist acceptCall(Landroid/os/Message;)V
.end method

.method public abstract blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract greylist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public blacklist allocatePduSessionId(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist areUiccApplicationsEnabled(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist canToggleUiccApplicationsEnablement()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist cancelEmergencyNetworkScan(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cancelHandover(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract greylist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist conference(Landroid/os/Message;)V
.end method

.method public abstract blacklist deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract greylist deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract greylist deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
.end method

.method public abstract blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public blacklist enableModem(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist enableUiccApplications(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public blacklist exitEmergencyMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public blacklist getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
.end method

.method public abstract blacklist getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public blacklist getBarringInfo(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract greylist getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract greylist getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract blacklist getCLIR(Landroid/os/Message;)V
.end method

.method public abstract greylist getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public blacklist getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist getClientRequestStats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract blacklist getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract greylist getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract blacklist getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract blacklist getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public blacklist getHalVersion()Lcom/android/internal/telephony/HalVersion;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2145
    sget-object p0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .registers 2

    .line 2153
    sget-object p0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public abstract blacklist getHardwareConfig(Landroid/os/Message;)V
.end method

.method public abstract greylist getIMSI(Landroid/os/Message;)V
.end method

.method public abstract blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract blacklist getImei(Landroid/os/Message;)V
.end method

.method public abstract blacklist getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public blacklist getLastBarringInfo()Landroid/telephony/BarringInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract blacklist getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public blacklist getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 1

    .line 2627
    const-string p0, "default"

    return-object p0
.end method

.method public blacklist getModemStatus(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist getMute(Landroid/os/Message;)V
.end method

.method public abstract greylist getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract greylist getOperator(Landroid/os/Message;)V
.end method

.method public abstract greylist getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract blacklist getRadioCapability(Landroid/os/Message;)V
.end method

.method public abstract blacklist getRadioState()I
.end method

.method public abstract blacklist getRilVersion()I
.end method

.method public abstract greylist getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract blacklist getSimPhonebookCapacity(Landroid/os/Message;)V
.end method

.method public abstract blacklist getSimPhonebookRecords(Landroid/os/Message;)V
.end method

.method public blacklist getSlicingConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract greylist getSmscAddress(Landroid/os/Message;)V
.end method

.method public blacklist getSystemSelectionChannels(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getUsageSetting(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
.end method

.method public abstract greylist-max-r getVoiceRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract greylist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract blacklist hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract blacklist hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
.end method

.method public abstract greylist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist-max-r iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
.end method

.method public blacklist isCellularIdentifierTransparencyEnabled(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist isN1ModeEnabled(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist isNullCipherAndIntegrityEnabled(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist isSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabled(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist nvResetConfig(ILandroid/os/Message;)V
.end method

.method public abstract blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist onSlotActiveStatusChange(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract greylist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract greylist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract blacklist registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForBarringInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist-max-r registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForCellularIdentifierDisclosures(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForEmergencyNetworkScan(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForImeiMappingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist-max-r registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForNotifyAnbr(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist-max-r registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForSecurityAlgorithmUpdates(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerForTriggerImsDeregistration(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist registerUiccApplicationEnablementChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist rejectCall(Landroid/os/Message;)V
.end method

.method public blacklist releasePduSessionId(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract greylist reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract greylist-max-r requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist-max-r requestShutdown(Landroid/os/Message;)V
.end method

.method public blacklist sendAnbrQuery(IIILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public abstract blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
.end method

.method public abstract blacklist sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract blacklist sendDeviceState(IZLandroid/os/Message;)V
.end method

.method public abstract greylist sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract greylist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
.end method

.method public abstract blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist separateConnection(ILandroid/os/Message;)V
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract greylist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract greylist setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
.end method

.method public abstract greylist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
.end method

.method public blacklist setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setCellularIdentifierTransparencyEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist-max-r setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
.end method

.method public blacklist setDataThrottling(Landroid/os/Message;Landroid/os/WorkSource;IJ)V
    .registers 6

    .line 0
    return-void
.end method

.method public abstract greylist setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist setEmergencyMode(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
.end method

.method public abstract blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract blacklist setMute(ZLandroid/os/Message;)V
.end method

.method public blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract greylist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public blacklist setNrDualConnectivityState(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract greylist setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist setOnRegistrationFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract greylist setPhoneType(I)V
.end method

.method public abstract greylist setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
.end method

.method public greylist setRadioPower(ZLandroid/os/Message;)V
    .registers 4

    const/4 v0, 0x0

    .line 1259
    invoke-interface {p0, p1, v0, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZZZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setRadioPower(ZZZLandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V
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
.end method

.method public blacklist setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract greylist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public blacklist setSrvccCallInfo([Lcom/android/internal/telephony/SrvccConnection;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public abstract greylist setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract greylist setUiccSubscription(IIIILandroid/os/Message;)V
.end method

.method public abstract blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
.end method

.method public blacklist setUsageSetting(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
.end method

.method public abstract blacklist startDtmf(CLandroid/os/Message;)V
.end method

.method public blacklist startHandover(Landroid/os/Message;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist startImsTraffic(IIIILandroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public abstract blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
.end method

.method public abstract blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
.end method

.method public abstract blacklist stopDtmf(Landroid/os/Message;)V
.end method

.method public blacklist stopImsTraffic(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist stopNattKeepalive(ILandroid/os/Message;)V
.end method

.method public abstract blacklist stopNetworkScan(Landroid/os/Message;)V
.end method

.method public abstract greylist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract greylist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract blacklist testingEmergencyCall()V
.end method

.method public blacklist triggerEmergencyNetworkScan([IILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist triggerEpsFallback(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract blacklist unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnNewCdmaSms(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnNewGsmSms(Landroid/os/Handler;)V
.end method

.method public blacklist unSetOnRegistrationFailed(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSs(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForApnUnthrottled(Landroid/os/Handler;)V
.end method

.method public abstract greylist unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForBarringInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
.end method

.method public abstract greylist unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCellInfoList(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForCellularIdentifierDisclosures(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForConnectionSetupFailure(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForEmergencyNetworkScan(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unregisterForEmergencyNumberList(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForLceInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForModemReset(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNetworkScanResult(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForNotifyAnbr(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract greylist unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract greylist unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForPcoData(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract greylist-max-r unregisterForRilConnected(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForSecurityAlgorithmUpdates(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimPhonebookChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSlicingConfigChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSrvccStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterForTriggerImsDeregistration(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract greylist-max-r unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public blacklist unregisterUiccApplicationEnablementChanged(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist unsetOnIccRefresh(Landroid/os/Handler;)V
.end method

.method public blacklist updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist updateImsRegistrationInfo(IIIILandroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public abstract blacklist updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
.end method

.method public abstract greylist writeSmsToRuim(I[BLandroid/os/Message;)V
.end method

.method public abstract greylist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method
