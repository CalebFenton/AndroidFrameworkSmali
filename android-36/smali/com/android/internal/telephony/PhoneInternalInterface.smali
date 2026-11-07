.class public interface abstract Lcom/android/internal/telephony/PhoneInternalInterface;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;,
        Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;,
        Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    }
.end annotation


# static fields
.field public static final blacklist BM_10_800M_2:I = 0xf

.field public static final blacklist BM_4_450M:I = 0xa

.field public static final blacklist BM_7_700M2:I = 0xc

.field public static final blacklist BM_8_1800M:I = 0xd

.field public static final blacklist BM_9_900M:I = 0xe

.field public static final blacklist BM_AUS2_BAND:I = 0x5

.field public static final blacklist BM_AUS_BAND:I = 0x4

.field public static final blacklist BM_AWS:I = 0x11

.field public static final blacklist BM_CELL_800:I = 0x6

.field public static final blacklist BM_EURO_BAND:I = 0x1

.field public static final blacklist BM_EURO_PAMR:I = 0x10

.field public static final blacklist BM_IMT2000:I = 0xb

.field public static final blacklist BM_JPN_BAND:I = 0x3

.field public static final blacklist BM_JTACS:I = 0x8

.field public static final blacklist BM_KOREA_PCS:I = 0x9

.field public static final blacklist BM_NUM_BAND_MODES:I = 0x13

.field public static final blacklist BM_PCS:I = 0x7

.field public static final blacklist BM_UNSPECIFIED:I = 0x0

.field public static final blacklist BM_US_2500M:I = 0x12

.field public static final blacklist BM_US_BAND:I = 0x2

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final blacklist CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final blacklist CDMA_RM_AFFILIATED:I = 0x1

.field public static final blacklist CDMA_RM_ANY:I = 0x2

.field public static final blacklist CDMA_RM_HOME:I = 0x0

.field public static final blacklist CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final blacklist CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final blacklist CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final blacklist DEBUG_PHONE:Z = true

.field public static final blacklist FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final blacklist FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final blacklist FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final blacklist FEATURE_ENABLE_EMERGENCY:Ljava/lang/String; = "enableEmergency"

.field public static final blacklist FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final blacklist FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final blacklist FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final blacklist FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final blacklist FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final blacklist PREFERRED_CDMA_SUBSCRIPTION:I = 0x0

.field public static final greylist-max-r PREFERRED_NT_MODE:I

.field public static final blacklist REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final blacklist REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final blacklist REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final blacklist REASON_CARRIER_ACTION_DISABLE_METERED_APN:Ljava/lang/String; = "carrierActionDisableMeteredApn"

.field public static final blacklist REASON_CARRIER_CHANGE:Ljava/lang/String; = "carrierChange"

.field public static final blacklist REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final blacklist REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final blacklist REASON_CONNECTED:Ljava/lang/String; = "connected"

.field public static final blacklist REASON_CSS_INDICATOR_CHANGED:Ljava/lang/String; = "cssIndicatorChanged"

.field public static final blacklist REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final blacklist REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final blacklist REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final blacklist REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final blacklist REASON_DATA_DISABLED_INTERNAL:Ljava/lang/String; = "dataDisabledInternal"

.field public static final blacklist REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final blacklist REASON_DATA_ENABLED_OVERRIDE:Ljava/lang/String; = "dataEnabledOverride"

.field public static final blacklist REASON_DATA_SPECIFIC_DISABLED:Ljava/lang/String; = "specificDisabled"

.field public static final blacklist REASON_DATA_UNTHROTTLED:Ljava/lang/String; = "dataUnthrottled"

.field public static final blacklist REASON_IWLAN_AVAILABLE:Ljava/lang/String; = "iwlanAvailable"

.field public static final blacklist REASON_IWLAN_DATA_SERVICE_DIED:Ljava/lang/String; = "iwlanDataServiceDied"

.field public static final blacklist REASON_LOST_DATA_CONNECTION:Ljava/lang/String; = "lostDataConnection"

.field public static final blacklist REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final blacklist REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final blacklist REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final blacklist REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final blacklist REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final blacklist REASON_RELEASED_BY_CONNECTIVITY_SERVICE:Ljava/lang/String; = "releasedByConnectivityService"

.field public static final blacklist REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final blacklist REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final blacklist REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final blacklist REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final blacklist REASON_SIM_NOT_READY:Ljava/lang/String; = "simNotReady"

.field public static final blacklist REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final blacklist REASON_TRAFFIC_DESCRIPTORS_UPDATED:Ljava/lang/String; = "trafficDescriptorsUpdated"

.field public static final blacklist REASON_VCN_REQUESTED_TEARDOWN:Ljava/lang/String; = "vcnRequestedTeardown"

.field public static final blacklist REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final blacklist REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final blacklist TTY_MODE_FULL:I = 0x1

.field public static final blacklist TTY_MODE_HCO:I = 0x2

.field public static final blacklist TTY_MODE_OFF:I = 0x0

.field public static final blacklist TTY_MODE_VCO:I = 0x3


# direct methods
.method public static synthetic blacklist $r8$lambda$c2GIj0txAdWdTKAB_UQFjbA-_hw(Lcom/android/internal/telephony/Phone;)V
    .registers 1

    .line 0
    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 236
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Lcom/android/internal/telephony/PhoneInternalInterface;->PREFERRED_NT_MODE:I

    return-void
.end method


# virtual methods
.method public abstract blacklist acceptCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract blacklist canConference()Z
.end method

.method public abstract blacklist canTransfer()Z
.end method

.method public abstract blacklist clearDisconnected()V
.end method

.method public abstract blacklist conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 508
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist disableLocationUpdates()V
.end method

.method public abstract blacklist enableLocationUpdates()V
.end method

.method public abstract blacklist explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract blacklist getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
.end method

.method public abstract blacklist getCallForwardingOption(IILandroid/os/Message;)V
.end method

.method public abstract blacklist getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract blacklist getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract blacklist getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;
.end method

.method public abstract blacklist getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract blacklist getDataActivityState()I
.end method

.method public abstract blacklist getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract blacklist getDataRoamingEnabled()Z
.end method

.method public abstract blacklist getDeviceId()Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract blacklist getEsn()Ljava/lang/String;
.end method

.method public abstract blacklist getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract blacklist getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract blacklist getGroupIdLevel2()Ljava/lang/String;
.end method

.method public abstract blacklist getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract blacklist getImei()Ljava/lang/String;
.end method

.method public abstract blacklist getImeiType()I
.end method

.method public abstract blacklist getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract blacklist getLine1Number()Ljava/lang/String;
.end method

.method public abstract blacklist getMeid()Ljava/lang/String;
.end method

.method public abstract blacklist getMobileProvisioningUrl()Ljava/lang/String;
.end method

.method public abstract blacklist getMute()Z
.end method

.method public abstract blacklist getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract blacklist getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPreciseDataConnectionState(Ljava/lang/String;)Landroid/telephony/PreciseDataConnectionState;
.end method

.method public blacklist getRadioPowerOffReasons()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 659
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public abstract blacklist getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract blacklist getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract blacklist getSubscriberId()Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract blacklist handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract blacklist handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist isUserDataEnabled()Z
.end method

.method public abstract blacklist registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist resetCarrierKeysForImsiEncryption()V
.end method

.method public abstract blacklist sendDtmf(C)V
.end method

.method public abstract blacklist sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
.end method

.method public abstract blacklist setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract blacklist setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract blacklist setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
.end method

.method public abstract blacklist setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract blacklist setDataRoamingEnabled(Z)V
.end method

.method public abstract blacklist setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract blacklist setMute(Z)V
.end method

.method public abstract blacklist setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public blacklist setRadioPower(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 593
    invoke-interface {p0, p1, v0, v0, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    return-void
.end method

.method public blacklist setRadioPower(ZZZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 631
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZZZZI)V

    return-void
.end method

.method public blacklist setRadioPowerForReason(ZI)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 652
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZZZZI)V

    return-void
.end method

.method public blacklist setRadioPowerForReason(ZZZZI)V
    .registers 6

    .line 0
    return-void
.end method

.method public blacklist setRadioPowerOnForTestEmergencyCall(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist startConference([Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist startDtmf(C)V
.end method

.method public abstract blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
.end method

.method public abstract blacklist stopDtmf()V
.end method

.method public abstract blacklist stopNetworkScan(Landroid/os/Message;)V
.end method

.method public abstract blacklist switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public blacklist updateServiceLocation()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist updateServiceLocation(Landroid/os/WorkSource;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist updateUsageSetting()Z
.end method
