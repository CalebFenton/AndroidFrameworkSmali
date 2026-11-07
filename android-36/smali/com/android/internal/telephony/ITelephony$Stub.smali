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
.field public static final greylist-max-r DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final blacklist TRANSACTION_addAttachRestrictionForCarrier:I = 0x194

.field static final blacklist TRANSACTION_addUceRegistrationOverrideShell:I = 0x145

.field static final blacklist TRANSACTION_bootstrapAuthenticationRequest:I = 0x12a

.field static final greylist TRANSACTION_call:I = 0x2

.field static final greylist-max-o TRANSACTION_canChangeDtmfToneLength:I = 0x89

.field static final blacklist TRANSACTION_canConnectTo5GInDsdsMode:I = 0x122

.field static final greylist-max-o TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0xb2

.field static final blacklist TRANSACTION_carrierActionResetAll:I = 0xb3

.field static final greylist-max-o TRANSACTION_carrierActionSetRadioEnabled:I = 0xb1

.field static final blacklist TRANSACTION_changeIccLockPassword:I = 0x11e

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x79

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x7a

.field static final blacklist TRANSACTION_clearCarrierImsServiceOverride:I = 0x63

.field static final blacklist TRANSACTION_clearDomainSelectionServiceOverride:I = 0x19e

.field static final blacklist TRANSACTION_clearRadioPowerOffForReason:I = 0x16

.field static final blacklist TRANSACTION_clearSignalStrengthUpdateRequest:I = 0x14d

.field static final blacklist TRANSACTION_clearUceRegistrationOverrideShell:I = 0x147

.field static final blacklist TRANSACTION_deprovisionSatellite:I = 0x1b3

.field static final blacklist TRANSACTION_deprovisionSatelliteService:I = 0x170

.field static final greylist-max-r TRANSACTION_dial:I = 0x1

.field static final greylist-max-o TRANSACTION_disableDataConnectivity:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableIms:I = 0x5c

.field static final greylist-max-o TRANSACTION_disableLocationUpdates:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x3b

.field static final blacklist TRANSACTION_doesSwitchMultiSimConfigTriggerReboot:I = 0x108

.field static final greylist-max-o TRANSACTION_enableDataConnectivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_enableIms:I = 0x5b

.field static final greylist-max-o TRANSACTION_enableLocationUpdates:I = 0x1a

.field static final blacklist TRANSACTION_enableModemForSlot:I = 0x104

.field static final greylist-max-o TRANSACTION_enableVideoCalling:I = 0x87

.field static final greylist-max-o TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x3a

.field static final blacklist TRANSACTION_enqueueSmsPickResult:I = 0x114

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x9c

.field static final greylist-max-o TRANSACTION_getActivePhoneType:I = 0x28

.field static final greylist-max-o TRANSACTION_getActivePhoneTypeForSlot:I = 0x29

.field static final greylist-max-o TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x3d

.field static final greylist-max-o TRANSACTION_getAidForAppType:I = 0xa6

.field static final greylist-max-o TRANSACTION_getAllCellInfo:I = 0x48

.field static final greylist-max-o TRANSACTION_getAllowedCarriers:I = 0xab

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmask:I = 0x59

.field static final blacklist TRANSACTION_getAllowedNetworkTypesForReason:I = 0x6b

.field static final blacklist TRANSACTION_getAttachRestrictionReasonsForCarrier:I = 0x196

.field static final blacklist TRANSACTION_getBoundGbaService:I = 0x12c

.field static final blacklist TRANSACTION_getBoundImsServicePackage:I = 0x64

.field static final blacklist TRANSACTION_getCallComposerStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallForwarding:I = 0xb4

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x22

.field static final blacklist TRANSACTION_getCallStateForSubscription:I = 0x23

.field static final blacklist TRANSACTION_getCallWaitingStatus:I = 0xb6

.field static final blacklist TRANSACTION_getCapabilityFromEab:I = 0x142

.field static final blacklist TRANSACTION_getCardIdForDefaultEuicc:I = 0xbf

.field static final blacklist TRANSACTION_getCarrierIdFromIdentifier:I = 0x1b5

.field static final blacklist TRANSACTION_getCarrierIdFromMccMnc:I = 0xb0

.field static final greylist-max-o TRANSACTION_getCarrierIdListVersion:I = 0xcc

.field static final greylist-max-o TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x7b

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatus:I = 0x77

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatusForUid:I = 0x78

.field static final blacklist TRANSACTION_getCarrierRestrictionStatus:I = 0x166

.field static final blacklist TRANSACTION_getCarrierServicePackageNameForLogicalSlot:I = 0x15b

.field static final blacklist TRANSACTION_getCarrierSingleRegistrationEnabled:I = 0x13c

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndex:I = 0x2a

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x2b

.field static final greylist-max-o TRANSACTION_getCdmaEriIconMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x2d

.field static final greylist-max-o TRANSACTION_getCdmaEriText:I = 0x2e

.field static final greylist-max-o TRANSACTION_getCdmaEriTextForSubscriber:I = 0x2f

.field static final greylist-max-o TRANSACTION_getCdmaMdn:I = 0x74

.field static final greylist-max-o TRANSACTION_getCdmaMin:I = 0x75

.field static final greylist-max-o TRANSACTION_getCdmaPrlVersion:I = 0xa8

.field static final blacklist TRANSACTION_getCdmaRoamingMode:I = 0xc6

.field static final blacklist TRANSACTION_getCdmaSubscriptionMode:I = 0xc8

.field static final blacklist TRANSACTION_getCellBroadcastIdRanges:I = 0x163

.field static final greylist-max-o TRANSACTION_getCellLocation:I = 0x1f

.field static final greylist-max-o TRANSACTION_getCellNetworkScanResults:I = 0x67

.field static final blacklist TRANSACTION_getCertsFromCarrierPrivilegeAccessRules:I = 0xf0

.field static final greylist-max-o TRANSACTION_getClientRequestStats:I = 0xb8

.field static final blacklist TRANSACTION_getContactFromEab:I = 0x141

.field static final blacklist TRANSACTION_getCurrentPackageName:I = 0x10c

.field static final greylist-max-o TRANSACTION_getDataActivationState:I = 0x35

.field static final greylist-max-o TRANSACTION_getDataActivity:I = 0x24

.field static final blacklist TRANSACTION_getDataActivityForSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_getDataEnabled:I = 0x6d

.field static final greylist-max-o TRANSACTION_getDataNetworkType:I = 0x41

.field static final greylist-max-o TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x42

.field static final greylist-max-o TRANSACTION_getDataState:I = 0x26

.field static final blacklist TRANSACTION_getDataStateForSubId:I = 0x27

.field static final blacklist TRANSACTION_getDefaultRespondViaMessageApplication:I = 0x15e

.field static final greylist TRANSACTION_getDeviceId:I = 0x92

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x93

.field static final blacklist TRANSACTION_getDeviceSingleRegistrationEnabled:I = 0x137

.field static final greylist-max-o TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x99

.field static final blacklist TRANSACTION_getDeviceUceEnabled:I = 0x143

.field static final greylist-max-o TRANSACTION_getEmergencyCallbackMode:I = 0xbd

.field static final blacklist TRANSACTION_getEmergencyNumberDbVersion:I = 0x100

.field static final blacklist TRANSACTION_getEmergencyNumberList:I = 0xee

.field static final blacklist TRANSACTION_getEmergencyNumberListTestMode:I = 0xff

.field static final blacklist TRANSACTION_getEquivalentHomePlmns:I = 0x123

.field static final greylist-max-o TRANSACTION_getEsn:I = 0xa7

.field static final greylist-max-o TRANSACTION_getForbiddenPlmns:I = 0xbb

.field static final blacklist TRANSACTION_getGbaReleaseTime:I = 0x12e

.field static final blacklist TRANSACTION_getHalVersion:I = 0x10b

.field static final greylist-max-o TRANSACTION_getImeiForSlot:I = 0x94

.field static final greylist-max-o TRANSACTION_getImsConfig:I = 0x61

.field static final blacklist TRANSACTION_getImsFeatureValidationOverride:I = 0x13e

.field static final blacklist TRANSACTION_getImsMmTelFeatureState:I = 0x65

.field static final blacklist TRANSACTION_getImsMmTelRegistrationState:I = 0xd6

.field static final blacklist TRANSACTION_getImsMmTelRegistrationTransportType:I = 0xd7

.field static final blacklist TRANSACTION_getImsProvisioningInt:I = 0xf9

.field static final blacklist TRANSACTION_getImsProvisioningStatusForCapability:I = 0xf6

.field static final blacklist TRANSACTION_getImsProvisioningString:I = 0xfa

.field static final greylist-max-o TRANSACTION_getImsRegTechnologyForMmTel:I = 0x91

.field static final greylist-max-o TRANSACTION_getImsRegistration:I = 0x60

.field static final blacklist TRANSACTION_getLastKnownCellIdentity:I = 0x155

.field static final blacklist TRANSACTION_getLastUcePidfXmlShell:I = 0x149

.field static final blacklist TRANSACTION_getLatestRcsContactUceCapabilityShell:I = 0x148

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForDisplay:I = 0x7e

.field static final greylist-max-o TRANSACTION_getLine1NumberForDisplay:I = 0x7d

.field static final greylist-max-o TRANSACTION_getLteOnCdmaMode:I = 0x46

.field static final greylist-max-o TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x47

.field static final blacklist TRANSACTION_getManualNetworkSelectionPlmn:I = 0x121

.field static final blacklist TRANSACTION_getManufacturerCodeForSlot:I = 0x98

.field static final greylist-max-o TRANSACTION_getMeidForSlot:I = 0x97

.field static final blacklist TRANSACTION_getMergedImsisFromGroup:I = 0x80

.field static final greylist-max-o TRANSACTION_getMergedSubscriberIds:I = 0x7f

.field static final blacklist TRANSACTION_getMmsUAProfUrl:I = 0x117

.field static final blacklist TRANSACTION_getMmsUserAgent:I = 0x116

.field static final blacklist TRANSACTION_getMobileProvisioningUrl:I = 0x13f

.field static final blacklist TRANSACTION_getModemService:I = 0x157

.field static final greylist-max-o TRANSACTION_getNeighboringCellInfo:I = 0x21

.field static final greylist-max-o TRANSACTION_getNetworkCountryIsoForPhone:I = 0x20

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0xcf

.field static final greylist-max-o TRANSACTION_getNetworkTypeForSubscriber:I = 0x40

.field static final blacklist TRANSACTION_getNumberOfModemsWithSimultaneousDataConnections:I = 0xce

.field static final greylist-max-o TRANSACTION_getPackagesWithCarrierPrivileges:I = 0xa4

.field static final blacklist TRANSACTION_getPackagesWithCarrierPrivilegesForAllPhones:I = 0xa5

.field static final blacklist TRANSACTION_getPhoneAccountHandleForSubscriptionId:I = 0x9b

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x14e

.field static final blacklist TRANSACTION_getPrimaryImei:I = 0x95

.field static final greylist-max-o TRANSACTION_getRadioAccessFamily:I = 0x85

.field static final blacklist TRANSACTION_getRadioHalVersion:I = 0x10a

.field static final blacklist TRANSACTION_getRadioPowerOffReasons:I = 0x17

.field static final blacklist TRANSACTION_getRadioPowerState:I = 0xd1

.field static final blacklist TRANSACTION_getRcsProvisioningStatusForCapability:I = 0xf7

.field static final blacklist TRANSACTION_getRcsSingleRegistrationTestModeEnabled:I = 0x135

.field static final blacklist TRANSACTION_getSatelliteDataOptimizedApps:I = 0x1b6

.field static final blacklist TRANSACTION_getSatelliteDataSupportMode:I = 0x1b7

.field static final blacklist TRANSACTION_getSatelliteDisallowedReasons:I = 0x17a

.field static final blacklist TRANSACTION_getSatellitePlmnsForCarrier:I = 0x1a4

.field static final blacklist TRANSACTION_getServiceStateForSlot:I = 0x9f

.field static final blacklist TRANSACTION_getShaIdFromAllowList:I = 0x193

.field static final greylist-max-o TRANSACTION_getSignalStrength:I = 0xbe

.field static final blacklist TRANSACTION_getSimLocaleForSubscriber:I = 0x9d

.field static final blacklist TRANSACTION_getSimStateForSlotIndex:I = 0x15f

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x150

.field static final blacklist TRANSACTION_getSlotsMapping:I = 0x109

.field static final blacklist TRANSACTION_getSubIdForPhoneAccountHandle:I = 0x9a

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierId:I = 0xac

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierName:I = 0xad

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierId:I = 0xae

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierName:I = 0xaf

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0x112

.field static final greylist-max-o TRANSACTION_getTelephonyHistograms:I = 0xa9

.field static final blacklist TRANSACTION_getTestEuiccUiComponent:I = 0x1b1

.field static final blacklist TRANSACTION_getTypeAllocationCodeForSlot:I = 0x96

.field static final blacklist TRANSACTION_getUiccCardsInfo:I = 0xc0

.field static final greylist-max-o TRANSACTION_getUiccSlotsInfo:I = 0xc1

.field static final greylist-max-o TRANSACTION_getVisualVoicemailPackageName:I = 0x39

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSettings:I = 0x38

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x3c

.field static final blacklist TRANSACTION_getVoWiFiModeSetting:I = 0xe8

.field static final blacklist TRANSACTION_getVoWiFiRoamingModeSetting:I = 0xea

.field static final greylist-max-o TRANSACTION_getVoiceActivationState:I = 0x34

.field static final greylist-max-o TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x36

.field static final greylist-max-o TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x43

.field static final greylist-max-o TRANSACTION_getVoicemailRingtoneUri:I = 0xa0

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0xd

.field static final greylist-max-o TRANSACTION_handlePinMmiForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_handleUssdRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_hasIccCard:I = 0x44

.field static final greylist-max-o TRANSACTION_hasIccCardUsingSlotIndex:I = 0x45

.field static final greylist-max-o TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final greylist-max-o TRANSACTION_iccExchangeSimIO:I = 0x52

.field static final greylist-max-o TRANSACTION_iccOpenLogicalChannel:I = 0x4c

.field static final greylist-max-o TRANSACTION_iccTransmitApduBasicChannel:I = 0x51

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelByPort:I = 0x50

.field static final greylist-max-o TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4f

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelByPort:I = 0x4e

.field static final blacklist TRANSACTION_isAdvancedCallingSettingEnabled:I = 0xdd

.field static final blacklist TRANSACTION_isAospDomainSelectionService:I = 0x19f

.field static final blacklist TRANSACTION_isApnMetered:I = 0x110

.field static final blacklist TRANSACTION_isApplicationOnUicc:I = 0x10d

.field static final blacklist TRANSACTION_isAvailable:I = 0xdb

.field static final blacklist TRANSACTION_isCapable:I = 0xda

.field static final blacklist TRANSACTION_isCellularIdentifierDisclosureNotificationsEnabled:I = 0x1a1

.field static final greylist-max-o TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x37

.field static final blacklist TRANSACTION_isCrossSimCallingEnabledByUser:I = 0xe3

.field static final greylist-max-o TRANSACTION_isDataConnectivityPossible:I = 0x1e

.field static final greylist-max-o TRANSACTION_isDataEnabled:I = 0x6f

.field static final blacklist TRANSACTION_isDataEnabledForApn:I = 0x10f

.field static final blacklist TRANSACTION_isDataEnabledForReason:I = 0x71

.field static final blacklist TRANSACTION_isDataRoamingEnabled:I = 0xc4

.field static final blacklist TRANSACTION_isDomainSelectionSupported:I = 0x165

.field static final blacklist TRANSACTION_isEmergencyNumber:I = 0xef

.field static final greylist-max-o TRANSACTION_isHearingAidCompatibilitySupported:I = 0x8d

.field static final blacklist TRANSACTION_isIccLockEnabled:I = 0x11c

.field static final greylist-max-o TRANSACTION_isImsRegistered:I = 0x8e

.field static final blacklist TRANSACTION_isInEmergencySmsMode:I = 0xd0

.field static final blacklist TRANSACTION_isManualNetworkSelectionAllowed:I = 0x72

.field static final blacklist TRANSACTION_isMmTelCapabilitySupported:I = 0xdc

.field static final blacklist TRANSACTION_isMobileDataPolicyEnabled:I = 0x119

.field static final blacklist TRANSACTION_isModemEnabledForSlot:I = 0x10e

.field static final blacklist TRANSACTION_isMultiSimSupported:I = 0x106

.field static final blacklist TRANSACTION_isMvnoMatched:I = 0x113

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0x127

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityPreferenceEnabled:I = 0x162

.field static final blacklist TRANSACTION_isNullCipherNotificationsEnabled:I = 0x1a3

.field static final blacklist TRANSACTION_isPremiumCapabilityAvailableForPurchase:I = 0x151

.field static final blacklist TRANSACTION_isProvisioningRequiredForCapability:I = 0x158

.field static final blacklist TRANSACTION_isRadioInterfaceCapabilitySupported:I = 0x128

.field static final greylist-max-o TRANSACTION_isRadioOn:I = 0x3

.field static final greylist-max-o TRANSACTION_isRadioOnForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_isRadioOnForSubscriberWithFeature:I = 0x6

.field static final blacklist TRANSACTION_isRadioOnWithFeature:I = 0x4

.field static final blacklist TRANSACTION_isRcsProvisioningRequiredForCapability:I = 0x159

.field static final blacklist TRANSACTION_isRcsVolteSingleRegistrationCapable:I = 0x130

.field static final blacklist TRANSACTION_isRemovableEsimDefaultEuicc:I = 0x15d

.field static final blacklist TRANSACTION_isRttSupported:I = 0x8c

.field static final blacklist TRANSACTION_isTetheringApnRequiredForSubscriber:I = 0x5a

.field static final greylist-max-o TRANSACTION_isTtyModeSupported:I = 0x8b

.field static final blacklist TRANSACTION_isTtyOverVolteEnabled:I = 0xed

.field static final greylist-max-o TRANSACTION_isUserDataEnabled:I = 0x6e

.field static final greylist-max-o TRANSACTION_isVideoCallingEnabled:I = 0x88

.field static final greylist-max-o TRANSACTION_isVideoTelephonyAvailable:I = 0x90

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x125

.field static final blacklist TRANSACTION_isVoWiFiRoamingSettingEnabled:I = 0xe5

.field static final blacklist TRANSACTION_isVoWiFiSettingEnabled:I = 0xe1

.field static final greylist-max-o TRANSACTION_isVoicemailVibrationEnabled:I = 0xa2

.field static final blacklist TRANSACTION_isVtSettingEnabled:I = 0xdf

.field static final greylist-max-o TRANSACTION_isWifiCallingAvailable:I = 0x8f

.field static final greylist-max-o TRANSACTION_isWorldPhone:I = 0x8a

.field static final greylist-max-o TRANSACTION_needMobileRadioShutdown:I = 0x83

.field static final greylist-max-o TRANSACTION_needsOtaServiceProvisioning:I = 0x30

.field static final blacklist TRANSACTION_notifyOtaEmergencyNumberDbInstalled:I = 0x101

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x11b

.field static final greylist-max-o TRANSACTION_nvReadItem:I = 0x54

.field static final greylist-max-o TRANSACTION_nvWriteCdmaPrl:I = 0x56

.field static final greylist-max-o TRANSACTION_nvWriteItem:I = 0x55

.field static final blacklist TRANSACTION_overrideCarrierRoamingNtnEligibilityChanged:I = 0x1b2

.field static final blacklist TRANSACTION_overrideConfigDataVersion:I = 0x192

.field static final blacklist TRANSACTION_persistEmergencyCallDiagnosticData:I = 0x160

.field static final blacklist TRANSACTION_pollPendingDatagrams:I = 0x178

.field static final blacklist TRANSACTION_prepareForUnattendedReboot:I = 0x14f

.field static final blacklist TRANSACTION_provisionSatellite:I = 0x1ae

.field static final blacklist TRANSACTION_provisionSatelliteService:I = 0x16f

.field static final blacklist TRANSACTION_purchasePremiumCapability:I = 0x152

.field static final blacklist TRANSACTION_rebootModem:I = 0x58

.field static final greylist-max-o TRANSACTION_refreshUiccProfile:I = 0xcd

.field static final blacklist TRANSACTION_registerFeatureProvisioningChangedCallback:I = 0xf3

.field static final blacklist TRANSACTION_registerForCapabilitiesChanged:I = 0x19a

.field static final blacklist TRANSACTION_registerForCommunicationAccessStateChanged:I = 0x1a7

.field static final blacklist TRANSACTION_registerForIncomingDatagram:I = 0x176

.field static final blacklist TRANSACTION_registerForNtnSignalStrengthChanged:I = 0x198

.field static final blacklist TRANSACTION_registerForSatelliteDisallowedReasonsChanged:I = 0x17b

.field static final blacklist TRANSACTION_registerForSatelliteModemStateChanged:I = 0x174

.field static final blacklist TRANSACTION_registerForSatelliteProvisionStateChanged:I = 0x171

.field static final blacklist TRANSACTION_registerForSatelliteSupportedStateChanged:I = 0x1a5

.field static final blacklist TRANSACTION_registerForSelectedNbIotSatelliteSubscriptionChanged:I = 0x181

.field static final blacklist TRANSACTION_registerImsEmergencyRegistrationCallback:I = 0xd4

.field static final blacklist TRANSACTION_registerImsProvisioningChangedCallback:I = 0xf1

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0xd2

.field static final blacklist TRANSACTION_registerImsStateCallback:I = 0x153

.field static final blacklist TRANSACTION_registerMmTelCapabilityCallback:I = 0xd8

.field static final blacklist TRANSACTION_registerMmTelFeatureCallback:I = 0x5e

.field static final blacklist TRANSACTION_registerRcsProvisioningCallback:I = 0x131

.field static final blacklist TRANSACTION_removeAttachRestrictionForCarrier:I = 0x195

.field static final blacklist TRANSACTION_removeContactFromEab:I = 0x140

.field static final blacklist TRANSACTION_removeUceRegistrationOverrideShell:I = 0x146

.field static final blacklist TRANSACTION_removeUceRequestDisallowedStatus:I = 0x14a

.field static final blacklist TRANSACTION_requestCellInfoUpdate:I = 0x49

.field static final blacklist TRANSACTION_requestCellInfoUpdateWithWorkSource:I = 0x4a

.field static final blacklist TRANSACTION_requestIsCommunicationAllowedForCurrentLocation:I = 0x17d

.field static final blacklist TRANSACTION_requestIsDemoModeEnabled:I = 0x169

.field static final blacklist TRANSACTION_requestIsEmergencyModeEnabled:I = 0x16a

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x168

.field static final blacklist TRANSACTION_requestIsSatelliteProvisioned:I = 0x173

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x16b

.field static final greylist-max-o TRANSACTION_requestModemActivityInfo:I = 0x9e

.field static final greylist-max-o TRANSACTION_requestNetworkScan:I = 0x68

.field static final blacklist TRANSACTION_requestNtnSignalStrength:I = 0x197

.field static final blacklist TRANSACTION_requestNumberVerification:I = 0x76

.field static final blacklist TRANSACTION_requestRadioPowerOffForReason:I = 0x15

.field static final blacklist TRANSACTION_requestSatelliteAccessConfigurationForCurrentLocation:I = 0x17e

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x16c

.field static final blacklist TRANSACTION_requestSatelliteDisplayName:I = 0x1ad

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x167

.field static final blacklist TRANSACTION_requestSatelliteSessionStats:I = 0x1ab

.field static final blacklist TRANSACTION_requestSatelliteSubscriberProvisionStatus:I = 0x1ac

.field static final blacklist TRANSACTION_requestSelectedNbIotSatelliteSubscriptionId:I = 0x180

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0x17f

.field static final blacklist TRANSACTION_requestUserActivityNotification:I = 0x11f

.field static final blacklist TRANSACTION_resetIms:I = 0x5d

.field static final blacklist TRANSACTION_resetModemConfig:I = 0x57

.field static final blacklist TRANSACTION_resetOtaEmergencyNumberDbFilePath:I = 0x103

.field static final blacklist TRANSACTION_sendDatagram:I = 0x179

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x139

.field static final greylist-max-o TRANSACTION_sendDialerSpecialCode:I = 0x3f

.field static final greylist-max-o TRANSACTION_sendEnvelopeWithStatus:I = 0x53

.field static final blacklist TRANSACTION_sendThermalMitigationRequest:I = 0x129

.field static final greylist-max-o TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x3e

.field static final blacklist TRANSACTION_setActiveDeviceToDeviceTransport:I = 0x13a

.field static final blacklist TRANSACTION_setAdvancedCallingSettingEnabled:I = 0xde

.field static final greylist-max-o TRANSACTION_setAllowedCarriers:I = 0xaa

.field static final blacklist TRANSACTION_setAllowedNetworkTypesForReason:I = 0x6c

.field static final blacklist TRANSACTION_setBoundGbaServiceOverride:I = 0x12b

.field static final blacklist TRANSACTION_setBoundImsServiceOverride:I = 0x62

.field static final blacklist TRANSACTION_setCallComposerStatus:I = 0x7

.field static final blacklist TRANSACTION_setCallForwarding:I = 0xb5

.field static final blacklist TRANSACTION_setCallWaitingStatus:I = 0xb7

.field static final blacklist TRANSACTION_setCapabilitiesRequestTimeout:I = 0x14b

.field static final blacklist TRANSACTION_setCarrierServicePackageOverride:I = 0xcb

.field static final blacklist TRANSACTION_setCarrierSingleRegistrationEnabledOverride:I = 0x138

.field static final greylist-max-o TRANSACTION_setCarrierTestOverride:I = 0xca

.field static final blacklist TRANSACTION_setCdmaRoamingMode:I = 0xc7

.field static final blacklist TRANSACTION_setCdmaSubscriptionMode:I = 0xc9

.field static final blacklist TRANSACTION_setCellBroadcastIdRanges:I = 0x164

.field static final greylist-max-o TRANSACTION_setCellInfoListRate:I = 0x4b

.field static final blacklist TRANSACTION_setCepEnabled:I = 0x11a

.field static final blacklist TRANSACTION_setCountryCodes:I = 0x18d

.field static final blacklist TRANSACTION_setCrossSimCallingEnabled:I = 0xe4

.field static final greylist-max-o TRANSACTION_setDataActivationState:I = 0x33

.field static final blacklist TRANSACTION_setDataEnabledForReason:I = 0x70

.field static final blacklist TRANSACTION_setDataRoamingEnabled:I = 0xc5

.field static final blacklist TRANSACTION_setDatagramControllerBooleanConfig:I = 0x1a9

.field static final blacklist TRANSACTION_setDatagramControllerTimeoutDuration:I = 0x18a

.field static final blacklist TRANSACTION_setDeviceAlignedWithSatellite:I = 0x183

.field static final blacklist TRANSACTION_setDeviceSingleRegistrationEnabledOverride:I = 0x136

.field static final blacklist TRANSACTION_setDeviceToDeviceForceEnabled:I = 0x13b

.field static final blacklist TRANSACTION_setDeviceUceEnabled:I = 0x144

.field static final blacklist TRANSACTION_setDomainSelectionServiceOverride:I = 0x19d

.field static final blacklist TRANSACTION_setEmergencyCallToSatelliteHandoverType:I = 0x18c

.field static final blacklist TRANSACTION_setEnableCellularIdentifierDisclosureNotifications:I = 0x1a0

.field static final blacklist TRANSACTION_setForbiddenPlmns:I = 0xbc

.field static final blacklist TRANSACTION_setGbaReleaseTimeOverride:I = 0x12d

.field static final blacklist TRANSACTION_setIccLockEnabled:I = 0x11d

.field static final blacklist TRANSACTION_setImsFeatureValidationOverride:I = 0x13d

.field static final blacklist TRANSACTION_setImsProvisioningInt:I = 0xfb

.field static final blacklist TRANSACTION_setImsProvisioningStatusForCapability:I = 0xf5

.field static final blacklist TRANSACTION_setImsProvisioningString:I = 0xfc

.field static final greylist-max-o TRANSACTION_setImsRegistrationState:I = 0x73

.field static final blacklist TRANSACTION_setIsSatelliteCommunicationAllowedForCurrentLocationCache:I = 0x1aa

.field static final greylist-max-o TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x7c

.field static final blacklist TRANSACTION_setMobileDataPolicyEnabled:I = 0x118

.field static final blacklist TRANSACTION_setModemService:I = 0x156

.field static final blacklist TRANSACTION_setMultiSimCarrierRestriction:I = 0x105

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x66

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeManual:I = 0x6a

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x126

.field static final blacklist TRANSACTION_setNtnSmsSupported:I = 0x1b4

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x161

.field static final blacklist TRANSACTION_setNullCipherNotificationsEnabled:I = 0x1a2

.field static final blacklist TRANSACTION_setOemEnabledSatelliteProvisionStatus:I = 0x191

.field static final greylist-max-o TRANSACTION_setOperatorBrandOverride:I = 0x81

.field static final greylist-max-o TRANSACTION_setRadio:I = 0x12

.field static final greylist-max-o TRANSACTION_setRadioForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_setRadioPower:I = 0x14

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0x12f

.field static final blacklist TRANSACTION_setRcsProvisioningStatusForCapability:I = 0xf8

.field static final blacklist TRANSACTION_setRcsSingleRegistrationTestModeEnabled:I = 0x134

.field static final blacklist TRANSACTION_setRemovableEsimAsDefaultEuicc:I = 0x15c

.field static final greylist-max-o TRANSACTION_setRoamingOverride:I = 0x82

.field static final blacklist TRANSACTION_setRttCapabilitySetting:I = 0xec

.field static final blacklist TRANSACTION_setSatelliteAccessAllowedForSubscriptions:I = 0x18f

.field static final blacklist TRANSACTION_setSatelliteAccessControlOverlayConfigs:I = 0x18e

.field static final blacklist TRANSACTION_setSatelliteControllerTimeoutDuration:I = 0x18b

.field static final blacklist TRANSACTION_setSatelliteGatewayServicePackageName:I = 0x185

.field static final blacklist TRANSACTION_setSatelliteIgnoreCellularServiceState:I = 0x187

.field static final blacklist TRANSACTION_setSatelliteIgnorePlmnListFromStorage:I = 0x1b8

.field static final blacklist TRANSACTION_setSatelliteListeningTimeoutDuration:I = 0x186

.field static final blacklist TRANSACTION_setSatellitePointingUiClassName:I = 0x189

.field static final blacklist TRANSACTION_setSatelliteServicePackageName:I = 0x184

.field static final blacklist TRANSACTION_setSatelliteSubscriberIdListChangedIntentComponent:I = 0x1af

.field static final blacklist TRANSACTION_setShouldSendDatagramToModemInDemoMode:I = 0x19c

.field static final blacklist TRANSACTION_setSignalStrengthUpdateRequest:I = 0x14c

.field static final greylist-max-o TRANSACTION_setSimPowerStateForSlot:I = 0xb9

.field static final blacklist TRANSACTION_setSimPowerStateForSlotWithCallback:I = 0xba

.field static final blacklist TRANSACTION_setSimSlotMapping:I = 0xc3

.field static final blacklist TRANSACTION_setSupportDisableSatelliteWhileEnableInProgress:I = 0x188

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0x111

.field static final blacklist TRANSACTION_setTestEuiccUiComponent:I = 0x1b0

.field static final blacklist TRANSACTION_setTnScanningSupport:I = 0x190

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x124

.field static final blacklist TRANSACTION_setVoWiFiModeSetting:I = 0xe9

.field static final blacklist TRANSACTION_setVoWiFiNonPersistent:I = 0xe7

.field static final blacklist TRANSACTION_setVoWiFiRoamingModeSetting:I = 0xeb

.field static final blacklist TRANSACTION_setVoWiFiRoamingSettingEnabled:I = 0xe6

.field static final blacklist TRANSACTION_setVoWiFiSettingEnabled:I = 0xe2

.field static final greylist-max-o TRANSACTION_setVoiceActivationState:I = 0x32

.field static final greylist-max-o TRANSACTION_setVoiceMailNumber:I = 0x31

.field static final blacklist TRANSACTION_setVoiceServiceStateOverride:I = 0x15a

.field static final greylist-max-o TRANSACTION_setVoicemailRingtoneUri:I = 0xa1

.field static final greylist-max-o TRANSACTION_setVoicemailVibrationEnabled:I = 0xa3

.field static final blacklist TRANSACTION_setVtSettingEnabled:I = 0xe0

.field static final blacklist TRANSACTION_showSwitchToManagedProfileDialog:I = 0x115

.field static final greylist-max-o TRANSACTION_shutdownMobileRadios:I = 0x84

.field static final blacklist TRANSACTION_startEmergencyCallbackMode:I = 0xfd

.field static final blacklist TRANSACTION_startSatelliteTransmissionUpdates:I = 0x16d

.field static final greylist-max-o TRANSACTION_stopNetworkScan:I = 0x69

.field static final blacklist TRANSACTION_stopSatelliteTransmissionUpdates:I = 0x16e

.field static final greylist-max-o TRANSACTION_supplyPinForSubscriber:I = 0x9

.field static final greylist-max-o TRANSACTION_supplyPinReportResultForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_supplyPukForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_supplyPukReportResultForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_switchMultiSimConfig:I = 0x107

.field static final greylist-max-o TRANSACTION_switchSlots:I = 0xc2

.field static final greylist-max-o TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final greylist-max-o TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0x133

.field static final blacklist TRANSACTION_unregisterFeatureProvisioningChangedCallback:I = 0xf4

.field static final blacklist TRANSACTION_unregisterForCapabilitiesChanged:I = 0x19b

.field static final blacklist TRANSACTION_unregisterForCommunicationAccessStateChanged:I = 0x1a8

.field static final blacklist TRANSACTION_unregisterForIncomingDatagram:I = 0x177

.field static final blacklist TRANSACTION_unregisterForModemStateChanged:I = 0x175

.field static final blacklist TRANSACTION_unregisterForNtnSignalStrengthChanged:I = 0x199

.field static final blacklist TRANSACTION_unregisterForSatelliteDisallowedReasonsChanged:I = 0x17c

.field static final blacklist TRANSACTION_unregisterForSatelliteProvisionStateChanged:I = 0x172

.field static final blacklist TRANSACTION_unregisterForSatelliteSupportedStateChanged:I = 0x1a6

.field static final blacklist TRANSACTION_unregisterForSelectedNbIotSatelliteSubscriptionChanged:I = 0x182

.field static final blacklist TRANSACTION_unregisterImsEmergencyRegistrationCallback:I = 0xd5

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x5f

.field static final blacklist TRANSACTION_unregisterImsProvisioningChangedCallback:I = 0xf2

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0xd3

.field static final blacklist TRANSACTION_unregisterImsStateCallback:I = 0x154

.field static final blacklist TRANSACTION_unregisterMmTelCapabilityCallback:I = 0xd9

.field static final blacklist TRANSACTION_unregisterRcsProvisioningCallback:I = 0x132

.field static final blacklist TRANSACTION_updateEmergencyNumberListTestMode:I = 0xfe

.field static final blacklist TRANSACTION_updateOtaEmergencyNumberDbFilePath:I = 0x102

.field static final greylist-max-o TRANSACTION_updateServiceLocation:I = 0x18

.field static final blacklist TRANSACTION_updateServiceLocationWithPackageName:I = 0x19

.field static final blacklist TRANSACTION_uploadCallComposerPicture:I = 0x86

.field static final blacklist TRANSACTION_userActivity:I = 0x120


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 3847
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3848
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 3849
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 3856
    if-nez p0, :cond_4

    .line 3857
    const/4 v0, 0x0

    return-object v0

    .line 3859
    :cond_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3860
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_14

    .line 3861
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    return-object v1

    .line 3863
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 3872
    packed-switch p0, :pswitch_data_5ec

    .line 5636
    const/4 v0, 0x0

    return-object v0

    .line 5632
    :pswitch_5
    const-string/jumbo v0, "setSatelliteIgnorePlmnListFromStorage"

    return-object v0

    .line 5628
    :pswitch_9
    const-string v0, "getSatelliteDataSupportMode"

    return-object v0

    .line 5624
    :pswitch_c
    const-string v0, "getSatelliteDataOptimizedApps"

    return-object v0

    .line 5620
    :pswitch_f
    const-string v0, "getCarrierIdFromIdentifier"

    return-object v0

    .line 5616
    :pswitch_12
    const-string/jumbo v0, "setNtnSmsSupported"

    return-object v0

    .line 5612
    :pswitch_16
    const-string v0, "deprovisionSatellite"

    return-object v0

    .line 5608
    :pswitch_19
    const-string v0, "overrideCarrierRoamingNtnEligibilityChanged"

    return-object v0

    .line 5604
    :pswitch_1c
    const-string v0, "getTestEuiccUiComponent"

    return-object v0

    .line 5600
    :pswitch_1f
    const-string/jumbo v0, "setTestEuiccUiComponent"

    return-object v0

    .line 5596
    :pswitch_23
    const-string/jumbo v0, "setSatelliteSubscriberIdListChangedIntentComponent"

    return-object v0

    .line 5592
    :pswitch_27
    const-string/jumbo v0, "provisionSatellite"

    return-object v0

    .line 5588
    :pswitch_2b
    const-string/jumbo v0, "requestSatelliteDisplayName"

    return-object v0

    .line 5584
    :pswitch_2f
    const-string/jumbo v0, "requestSatelliteSubscriberProvisionStatus"

    return-object v0

    .line 5580
    :pswitch_33
    const-string/jumbo v0, "requestSatelliteSessionStats"

    return-object v0

    .line 5576
    :pswitch_37
    const-string/jumbo v0, "setIsSatelliteCommunicationAllowedForCurrentLocationCache"

    return-object v0

    .line 5572
    :pswitch_3b
    const-string/jumbo v0, "setDatagramControllerBooleanConfig"

    return-object v0

    .line 5568
    :pswitch_3f
    const-string/jumbo v0, "unregisterForCommunicationAccessStateChanged"

    return-object v0

    .line 5564
    :pswitch_43
    const-string/jumbo v0, "registerForCommunicationAccessStateChanged"

    return-object v0

    .line 5560
    :pswitch_47
    const-string/jumbo v0, "unregisterForSatelliteSupportedStateChanged"

    return-object v0

    .line 5556
    :pswitch_4b
    const-string/jumbo v0, "registerForSatelliteSupportedStateChanged"

    return-object v0

    .line 5552
    :pswitch_4f
    const-string v0, "getSatellitePlmnsForCarrier"

    return-object v0

    .line 5548
    :pswitch_52
    const-string v0, "isNullCipherNotificationsEnabled"

    return-object v0

    .line 5544
    :pswitch_55
    const-string/jumbo v0, "setNullCipherNotificationsEnabled"

    return-object v0

    .line 5540
    :pswitch_59
    const-string v0, "isCellularIdentifierDisclosureNotificationsEnabled"

    return-object v0

    .line 5536
    :pswitch_5c
    const-string/jumbo v0, "setEnableCellularIdentifierDisclosureNotifications"

    return-object v0

    .line 5532
    :pswitch_60
    const-string v0, "isAospDomainSelectionService"

    return-object v0

    .line 5528
    :pswitch_63
    const-string v0, "clearDomainSelectionServiceOverride"

    return-object v0

    .line 5524
    :pswitch_66
    const-string/jumbo v0, "setDomainSelectionServiceOverride"

    return-object v0

    .line 5520
    :pswitch_6a
    const-string/jumbo v0, "setShouldSendDatagramToModemInDemoMode"

    return-object v0

    .line 5516
    :pswitch_6e
    const-string/jumbo v0, "unregisterForCapabilitiesChanged"

    return-object v0

    .line 5512
    :pswitch_72
    const-string/jumbo v0, "registerForCapabilitiesChanged"

    return-object v0

    .line 5508
    :pswitch_76
    const-string/jumbo v0, "unregisterForNtnSignalStrengthChanged"

    return-object v0

    .line 5504
    :pswitch_7a
    const-string/jumbo v0, "registerForNtnSignalStrengthChanged"

    return-object v0

    .line 5500
    :pswitch_7e
    const-string/jumbo v0, "requestNtnSignalStrength"

    return-object v0

    .line 5496
    :pswitch_82
    const-string v0, "getAttachRestrictionReasonsForCarrier"

    return-object v0

    .line 5492
    :pswitch_85
    const-string/jumbo v0, "removeAttachRestrictionForCarrier"

    return-object v0

    .line 5488
    :pswitch_89
    const-string v0, "addAttachRestrictionForCarrier"

    return-object v0

    .line 5484
    :pswitch_8c
    const-string v0, "getShaIdFromAllowList"

    return-object v0

    .line 5480
    :pswitch_8f
    const-string v0, "overrideConfigDataVersion"

    return-object v0

    .line 5476
    :pswitch_92
    const-string/jumbo v0, "setOemEnabledSatelliteProvisionStatus"

    return-object v0

    .line 5472
    :pswitch_96
    const-string/jumbo v0, "setTnScanningSupport"

    return-object v0

    .line 5468
    :pswitch_9a
    const-string/jumbo v0, "setSatelliteAccessAllowedForSubscriptions"

    return-object v0

    .line 5464
    :pswitch_9e
    const-string/jumbo v0, "setSatelliteAccessControlOverlayConfigs"

    return-object v0

    .line 5460
    :pswitch_a2
    const-string/jumbo v0, "setCountryCodes"

    return-object v0

    .line 5456
    :pswitch_a6
    const-string/jumbo v0, "setEmergencyCallToSatelliteHandoverType"

    return-object v0

    .line 5452
    :pswitch_aa
    const-string/jumbo v0, "setSatelliteControllerTimeoutDuration"

    return-object v0

    .line 5448
    :pswitch_ae
    const-string/jumbo v0, "setDatagramControllerTimeoutDuration"

    return-object v0

    .line 5444
    :pswitch_b2
    const-string/jumbo v0, "setSatellitePointingUiClassName"

    return-object v0

    .line 5440
    :pswitch_b6
    const-string/jumbo v0, "setSupportDisableSatelliteWhileEnableInProgress"

    return-object v0

    .line 5436
    :pswitch_ba
    const-string/jumbo v0, "setSatelliteIgnoreCellularServiceState"

    return-object v0

    .line 5432
    :pswitch_be
    const-string/jumbo v0, "setSatelliteListeningTimeoutDuration"

    return-object v0

    .line 5428
    :pswitch_c2
    const-string/jumbo v0, "setSatelliteGatewayServicePackageName"

    return-object v0

    .line 5424
    :pswitch_c6
    const-string/jumbo v0, "setSatelliteServicePackageName"

    return-object v0

    .line 5420
    :pswitch_ca
    const-string/jumbo v0, "setDeviceAlignedWithSatellite"

    return-object v0

    .line 5416
    :pswitch_ce
    const-string/jumbo v0, "unregisterForSelectedNbIotSatelliteSubscriptionChanged"

    return-object v0

    .line 5412
    :pswitch_d2
    const-string/jumbo v0, "registerForSelectedNbIotSatelliteSubscriptionChanged"

    return-object v0

    .line 5408
    :pswitch_d6
    const-string/jumbo v0, "requestSelectedNbIotSatelliteSubscriptionId"

    return-object v0

    .line 5404
    :pswitch_da
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility"

    return-object v0

    .line 5400
    :pswitch_de
    const-string/jumbo v0, "requestSatelliteAccessConfigurationForCurrentLocation"

    return-object v0

    .line 5396
    :pswitch_e2
    const-string/jumbo v0, "requestIsCommunicationAllowedForCurrentLocation"

    return-object v0

    .line 5392
    :pswitch_e6
    const-string/jumbo v0, "unregisterForSatelliteDisallowedReasonsChanged"

    return-object v0

    .line 5388
    :pswitch_ea
    const-string/jumbo v0, "registerForSatelliteDisallowedReasonsChanged"

    return-object v0

    .line 5384
    :pswitch_ee
    const-string v0, "getSatelliteDisallowedReasons"

    return-object v0

    .line 5380
    :pswitch_f1
    const-string/jumbo v0, "sendDatagram"

    return-object v0

    .line 5376
    :pswitch_f5
    const-string/jumbo v0, "pollPendingDatagrams"

    return-object v0

    .line 5372
    :pswitch_f9
    const-string/jumbo v0, "unregisterForIncomingDatagram"

    return-object v0

    .line 5368
    :pswitch_fd
    const-string/jumbo v0, "registerForIncomingDatagram"

    return-object v0

    .line 5364
    :pswitch_101
    const-string/jumbo v0, "unregisterForModemStateChanged"

    return-object v0

    .line 5360
    :pswitch_105
    const-string/jumbo v0, "registerForSatelliteModemStateChanged"

    return-object v0

    .line 5356
    :pswitch_109
    const-string/jumbo v0, "requestIsSatelliteProvisioned"

    return-object v0

    .line 5352
    :pswitch_10d
    const-string/jumbo v0, "unregisterForSatelliteProvisionStateChanged"

    return-object v0

    .line 5348
    :pswitch_111
    const-string/jumbo v0, "registerForSatelliteProvisionStateChanged"

    return-object v0

    .line 5344
    :pswitch_115
    const-string v0, "deprovisionSatelliteService"

    return-object v0

    .line 5340
    :pswitch_118
    const-string/jumbo v0, "provisionSatelliteService"

    return-object v0

    .line 5336
    :pswitch_11c
    const-string/jumbo v0, "stopSatelliteTransmissionUpdates"

    return-object v0

    .line 5332
    :pswitch_120
    const-string/jumbo v0, "startSatelliteTransmissionUpdates"

    return-object v0

    .line 5328
    :pswitch_124
    const-string/jumbo v0, "requestSatelliteCapabilities"

    return-object v0

    .line 5324
    :pswitch_128
    const-string/jumbo v0, "requestIsSatelliteSupported"

    return-object v0

    .line 5320
    :pswitch_12c
    const-string/jumbo v0, "requestIsEmergencyModeEnabled"

    return-object v0

    .line 5316
    :pswitch_130
    const-string/jumbo v0, "requestIsDemoModeEnabled"

    return-object v0

    .line 5312
    :pswitch_134
    const-string/jumbo v0, "requestIsSatelliteEnabled"

    return-object v0

    .line 5308
    :pswitch_138
    const-string/jumbo v0, "requestSatelliteEnabled"

    return-object v0

    .line 5304
    :pswitch_13c
    const-string v0, "getCarrierRestrictionStatus"

    return-object v0

    .line 5300
    :pswitch_13f
    const-string v0, "isDomainSelectionSupported"

    return-object v0

    .line 5296
    :pswitch_142
    const-string/jumbo v0, "setCellBroadcastIdRanges"

    return-object v0

    .line 5292
    :pswitch_146
    const-string v0, "getCellBroadcastIdRanges"

    return-object v0

    .line 5288
    :pswitch_149
    const-string v0, "isNullCipherAndIntegrityPreferenceEnabled"

    return-object v0

    .line 5284
    :pswitch_14c
    const-string/jumbo v0, "setNullCipherAndIntegrityEnabled"

    return-object v0

    .line 5280
    :pswitch_150
    const-string/jumbo v0, "persistEmergencyCallDiagnosticData"

    return-object v0

    .line 5276
    :pswitch_154
    const-string v0, "getSimStateForSlotIndex"

    return-object v0

    .line 5272
    :pswitch_157
    const-string v0, "getDefaultRespondViaMessageApplication"

    return-object v0

    .line 5268
    :pswitch_15a
    const-string v0, "isRemovableEsimDefaultEuicc"

    return-object v0

    .line 5264
    :pswitch_15d
    const-string/jumbo v0, "setRemovableEsimAsDefaultEuicc"

    return-object v0

    .line 5260
    :pswitch_161
    const-string v0, "getCarrierServicePackageNameForLogicalSlot"

    return-object v0

    .line 5256
    :pswitch_164
    const-string/jumbo v0, "setVoiceServiceStateOverride"

    return-object v0

    .line 5252
    :pswitch_168
    const-string v0, "isRcsProvisioningRequiredForCapability"

    return-object v0

    .line 5248
    :pswitch_16b
    const-string v0, "isProvisioningRequiredForCapability"

    return-object v0

    .line 5244
    :pswitch_16e
    const-string v0, "getModemService"

    return-object v0

    .line 5240
    :pswitch_171
    const-string/jumbo v0, "setModemService"

    return-object v0

    .line 5236
    :pswitch_175
    const-string v0, "getLastKnownCellIdentity"

    return-object v0

    .line 5232
    :pswitch_178
    const-string/jumbo v0, "unregisterImsStateCallback"

    return-object v0

    .line 5228
    :pswitch_17c
    const-string/jumbo v0, "registerImsStateCallback"

    return-object v0

    .line 5224
    :pswitch_180
    const-string/jumbo v0, "purchasePremiumCapability"

    return-object v0

    .line 5220
    :pswitch_184
    const-string v0, "isPremiumCapabilityAvailableForPurchase"

    return-object v0

    .line 5216
    :pswitch_187
    const-string v0, "getSlicingConfig"

    return-object v0

    .line 5212
    :pswitch_18a
    const-string/jumbo v0, "prepareForUnattendedReboot"

    return-object v0

    .line 5208
    :pswitch_18e
    const-string v0, "getPhoneCapability"

    return-object v0

    .line 5204
    :pswitch_191
    const-string v0, "clearSignalStrengthUpdateRequest"

    return-object v0

    .line 5200
    :pswitch_194
    const-string/jumbo v0, "setSignalStrengthUpdateRequest"

    return-object v0

    .line 5196
    :pswitch_198
    const-string/jumbo v0, "setCapabilitiesRequestTimeout"

    return-object v0

    .line 5192
    :pswitch_19c
    const-string/jumbo v0, "removeUceRequestDisallowedStatus"

    return-object v0

    .line 5188
    :pswitch_1a0
    const-string v0, "getLastUcePidfXmlShell"

    return-object v0

    .line 5184
    :pswitch_1a3
    const-string v0, "getLatestRcsContactUceCapabilityShell"

    return-object v0

    .line 5180
    :pswitch_1a6
    const-string v0, "clearUceRegistrationOverrideShell"

    return-object v0

    .line 5176
    :pswitch_1a9
    const-string/jumbo v0, "removeUceRegistrationOverrideShell"

    return-object v0

    .line 5172
    :pswitch_1ad
    const-string v0, "addUceRegistrationOverrideShell"

    return-object v0

    .line 5168
    :pswitch_1b0
    const-string/jumbo v0, "setDeviceUceEnabled"

    return-object v0

    .line 5164
    :pswitch_1b4
    const-string v0, "getDeviceUceEnabled"

    return-object v0

    .line 5160
    :pswitch_1b7
    const-string v0, "getCapabilityFromEab"

    return-object v0

    .line 5156
    :pswitch_1ba
    const-string v0, "getContactFromEab"

    return-object v0

    .line 5152
    :pswitch_1bd
    const-string/jumbo v0, "removeContactFromEab"

    return-object v0

    .line 5148
    :pswitch_1c1
    const-string v0, "getMobileProvisioningUrl"

    return-object v0

    .line 5144
    :pswitch_1c4
    const-string v0, "getImsFeatureValidationOverride"

    return-object v0

    .line 5140
    :pswitch_1c7
    const-string/jumbo v0, "setImsFeatureValidationOverride"

    return-object v0

    .line 5136
    :pswitch_1cb
    const-string v0, "getCarrierSingleRegistrationEnabled"

    return-object v0

    .line 5132
    :pswitch_1ce
    const-string/jumbo v0, "setDeviceToDeviceForceEnabled"

    return-object v0

    .line 5128
    :pswitch_1d2
    const-string/jumbo v0, "setActiveDeviceToDeviceTransport"

    return-object v0

    .line 5124
    :pswitch_1d6
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    .line 5120
    :pswitch_1da
    const-string/jumbo v0, "setCarrierSingleRegistrationEnabledOverride"

    return-object v0

    .line 5116
    :pswitch_1de
    const-string v0, "getDeviceSingleRegistrationEnabled"

    return-object v0

    .line 5112
    :pswitch_1e1
    const-string/jumbo v0, "setDeviceSingleRegistrationEnabledOverride"

    return-object v0

    .line 5108
    :pswitch_1e5
    const-string v0, "getRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 5104
    :pswitch_1e8
    const-string/jumbo v0, "setRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 5100
    :pswitch_1ec
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    .line 5096
    :pswitch_1f0
    const-string/jumbo v0, "unregisterRcsProvisioningCallback"

    return-object v0

    .line 5092
    :pswitch_1f4
    const-string/jumbo v0, "registerRcsProvisioningCallback"

    return-object v0

    .line 5088
    :pswitch_1f8
    const-string v0, "isRcsVolteSingleRegistrationCapable"

    return-object v0

    .line 5084
    :pswitch_1fb
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    .line 5080
    :pswitch_1ff
    const-string v0, "getGbaReleaseTime"

    return-object v0

    .line 5076
    :pswitch_202
    const-string/jumbo v0, "setGbaReleaseTimeOverride"

    return-object v0

    .line 5072
    :pswitch_206
    const-string v0, "getBoundGbaService"

    return-object v0

    .line 5068
    :pswitch_209
    const-string/jumbo v0, "setBoundGbaServiceOverride"

    return-object v0

    .line 5064
    :pswitch_20d
    const-string v0, "bootstrapAuthenticationRequest"

    return-object v0

    .line 5060
    :pswitch_210
    const-string/jumbo v0, "sendThermalMitigationRequest"

    return-object v0

    .line 5056
    :pswitch_214
    const-string v0, "isRadioInterfaceCapabilitySupported"

    return-object v0

    .line 5052
    :pswitch_217
    const-string v0, "isNrDualConnectivityEnabled"

    return-object v0

    .line 5048
    :pswitch_21a
    const-string/jumbo v0, "setNrDualConnectivityState"

    return-object v0

    .line 5044
    :pswitch_21e
    const-string v0, "isVoNrEnabled"

    return-object v0

    .line 5040
    :pswitch_221
    const-string/jumbo v0, "setVoNrEnabled"

    return-object v0

    .line 5036
    :pswitch_225
    const-string v0, "getEquivalentHomePlmns"

    return-object v0

    .line 5032
    :pswitch_228
    const-string v0, "canConnectTo5GInDsdsMode"

    return-object v0

    .line 5028
    :pswitch_22b
    const-string v0, "getManualNetworkSelectionPlmn"

    return-object v0

    .line 5024
    :pswitch_22e
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 5020
    :pswitch_232
    const-string/jumbo v0, "requestUserActivityNotification"

    return-object v0

    .line 5016
    :pswitch_236
    const-string v0, "changeIccLockPassword"

    return-object v0

    .line 5012
    :pswitch_239
    const-string/jumbo v0, "setIccLockEnabled"

    return-object v0

    .line 5008
    :pswitch_23d
    const-string v0, "isIccLockEnabled"

    return-object v0

    .line 5004
    :pswitch_240
    const-string v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 5000
    :pswitch_243
    const-string/jumbo v0, "setCepEnabled"

    return-object v0

    .line 4996
    :pswitch_247
    const-string v0, "isMobileDataPolicyEnabled"

    return-object v0

    .line 4992
    :pswitch_24a
    const-string/jumbo v0, "setMobileDataPolicyEnabled"

    return-object v0

    .line 4988
    :pswitch_24e
    const-string v0, "getMmsUAProfUrl"

    return-object v0

    .line 4984
    :pswitch_251
    const-string v0, "getMmsUserAgent"

    return-object v0

    .line 4980
    :pswitch_254
    const-string/jumbo v0, "showSwitchToManagedProfileDialog"

    return-object v0

    .line 4976
    :pswitch_258
    const-string v0, "enqueueSmsPickResult"

    return-object v0

    .line 4972
    :pswitch_25b
    const-string v0, "isMvnoMatched"

    return-object v0

    .line 4968
    :pswitch_25e
    const-string v0, "getSystemSelectionChannels"

    return-object v0

    .line 4964
    :pswitch_261
    const-string/jumbo v0, "setSystemSelectionChannels"

    return-object v0

    .line 4960
    :pswitch_265
    const-string v0, "isApnMetered"

    return-object v0

    .line 4956
    :pswitch_268
    const-string v0, "isDataEnabledForApn"

    return-object v0

    .line 4952
    :pswitch_26b
    const-string v0, "isModemEnabledForSlot"

    return-object v0

    .line 4948
    :pswitch_26e
    const-string v0, "isApplicationOnUicc"

    return-object v0

    .line 4944
    :pswitch_271
    const-string v0, "getCurrentPackageName"

    return-object v0

    .line 4940
    :pswitch_274
    const-string v0, "getHalVersion"

    return-object v0

    .line 4936
    :pswitch_277
    const-string v0, "getRadioHalVersion"

    return-object v0

    .line 4932
    :pswitch_27a
    const-string v0, "getSlotsMapping"

    return-object v0

    .line 4928
    :pswitch_27d
    const-string v0, "doesSwitchMultiSimConfigTriggerReboot"

    return-object v0

    .line 4924
    :pswitch_280
    const-string/jumbo v0, "switchMultiSimConfig"

    return-object v0

    .line 4920
    :pswitch_284
    const-string v0, "isMultiSimSupported"

    return-object v0

    .line 4916
    :pswitch_287
    const-string/jumbo v0, "setMultiSimCarrierRestriction"

    return-object v0

    .line 4912
    :pswitch_28b
    const-string v0, "enableModemForSlot"

    return-object v0

    .line 4908
    :pswitch_28e
    const-string/jumbo v0, "resetOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 4904
    :pswitch_292
    const-string/jumbo v0, "updateOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 4900
    :pswitch_296
    const-string v0, "notifyOtaEmergencyNumberDbInstalled"

    return-object v0

    .line 4896
    :pswitch_299
    const-string v0, "getEmergencyNumberDbVersion"

    return-object v0

    .line 4892
    :pswitch_29c
    const-string v0, "getEmergencyNumberListTestMode"

    return-object v0

    .line 4888
    :pswitch_29f
    const-string/jumbo v0, "updateEmergencyNumberListTestMode"

    return-object v0

    .line 4884
    :pswitch_2a3
    const-string/jumbo v0, "startEmergencyCallbackMode"

    return-object v0

    .line 4880
    :pswitch_2a7
    const-string/jumbo v0, "setImsProvisioningString"

    return-object v0

    .line 4876
    :pswitch_2ab
    const-string/jumbo v0, "setImsProvisioningInt"

    return-object v0

    .line 4872
    :pswitch_2af
    const-string v0, "getImsProvisioningString"

    return-object v0

    .line 4868
    :pswitch_2b2
    const-string v0, "getImsProvisioningInt"

    return-object v0

    .line 4864
    :pswitch_2b5
    const-string/jumbo v0, "setRcsProvisioningStatusForCapability"

    return-object v0

    .line 4860
    :pswitch_2b9
    const-string v0, "getRcsProvisioningStatusForCapability"

    return-object v0

    .line 4856
    :pswitch_2bc
    const-string v0, "getImsProvisioningStatusForCapability"

    return-object v0

    .line 4852
    :pswitch_2bf
    const-string/jumbo v0, "setImsProvisioningStatusForCapability"

    return-object v0

    .line 4848
    :pswitch_2c3
    const-string/jumbo v0, "unregisterFeatureProvisioningChangedCallback"

    return-object v0

    .line 4844
    :pswitch_2c7
    const-string/jumbo v0, "registerFeatureProvisioningChangedCallback"

    return-object v0

    .line 4840
    :pswitch_2cb
    const-string/jumbo v0, "unregisterImsProvisioningChangedCallback"

    return-object v0

    .line 4836
    :pswitch_2cf
    const-string/jumbo v0, "registerImsProvisioningChangedCallback"

    return-object v0

    .line 4832
    :pswitch_2d3
    const-string v0, "getCertsFromCarrierPrivilegeAccessRules"

    return-object v0

    .line 4828
    :pswitch_2d6
    const-string v0, "isEmergencyNumber"

    return-object v0

    .line 4824
    :pswitch_2d9
    const-string v0, "getEmergencyNumberList"

    return-object v0

    .line 4820
    :pswitch_2dc
    const-string v0, "isTtyOverVolteEnabled"

    return-object v0

    .line 4816
    :pswitch_2df
    const-string/jumbo v0, "setRttCapabilitySetting"

    return-object v0

    .line 4812
    :pswitch_2e3
    const-string/jumbo v0, "setVoWiFiRoamingModeSetting"

    return-object v0

    .line 4808
    :pswitch_2e7
    const-string v0, "getVoWiFiRoamingModeSetting"

    return-object v0

    .line 4804
    :pswitch_2ea
    const-string/jumbo v0, "setVoWiFiModeSetting"

    return-object v0

    .line 4800
    :pswitch_2ee
    const-string v0, "getVoWiFiModeSetting"

    return-object v0

    .line 4796
    :pswitch_2f1
    const-string/jumbo v0, "setVoWiFiNonPersistent"

    return-object v0

    .line 4792
    :pswitch_2f5
    const-string/jumbo v0, "setVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 4788
    :pswitch_2f9
    const-string v0, "isVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 4784
    :pswitch_2fc
    const-string/jumbo v0, "setCrossSimCallingEnabled"

    return-object v0

    .line 4780
    :pswitch_300
    const-string v0, "isCrossSimCallingEnabledByUser"

    return-object v0

    .line 4776
    :pswitch_303
    const-string/jumbo v0, "setVoWiFiSettingEnabled"

    return-object v0

    .line 4772
    :pswitch_307
    const-string v0, "isVoWiFiSettingEnabled"

    return-object v0

    .line 4768
    :pswitch_30a
    const-string/jumbo v0, "setVtSettingEnabled"

    return-object v0

    .line 4764
    :pswitch_30e
    const-string v0, "isVtSettingEnabled"

    return-object v0

    .line 4760
    :pswitch_311
    const-string/jumbo v0, "setAdvancedCallingSettingEnabled"

    return-object v0

    .line 4756
    :pswitch_315
    const-string v0, "isAdvancedCallingSettingEnabled"

    return-object v0

    .line 4752
    :pswitch_318
    const-string v0, "isMmTelCapabilitySupported"

    return-object v0

    .line 4748
    :pswitch_31b
    const-string v0, "isAvailable"

    return-object v0

    .line 4744
    :pswitch_31e
    const-string v0, "isCapable"

    return-object v0

    .line 4740
    :pswitch_321
    const-string/jumbo v0, "unregisterMmTelCapabilityCallback"

    return-object v0

    .line 4736
    :pswitch_325
    const-string/jumbo v0, "registerMmTelCapabilityCallback"

    return-object v0

    .line 4732
    :pswitch_329
    const-string v0, "getImsMmTelRegistrationTransportType"

    return-object v0

    .line 4728
    :pswitch_32c
    const-string v0, "getImsMmTelRegistrationState"

    return-object v0

    .line 4724
    :pswitch_32f
    const-string/jumbo v0, "unregisterImsEmergencyRegistrationCallback"

    return-object v0

    .line 4720
    :pswitch_333
    const-string/jumbo v0, "registerImsEmergencyRegistrationCallback"

    return-object v0

    .line 4716
    :pswitch_337
    const-string/jumbo v0, "unregisterImsRegistrationCallback"

    return-object v0

    .line 4712
    :pswitch_33b
    const-string/jumbo v0, "registerImsRegistrationCallback"

    return-object v0

    .line 4708
    :pswitch_33f
    const-string v0, "getRadioPowerState"

    return-object v0

    .line 4704
    :pswitch_342
    const-string v0, "isInEmergencySmsMode"

    return-object v0

    .line 4700
    :pswitch_345
    const-string v0, "getNetworkSelectionMode"

    return-object v0

    .line 4696
    :pswitch_348
    const-string v0, "getNumberOfModemsWithSimultaneousDataConnections"

    return-object v0

    .line 4692
    :pswitch_34b
    const-string/jumbo v0, "refreshUiccProfile"

    return-object v0

    .line 4688
    :pswitch_34f
    const-string v0, "getCarrierIdListVersion"

    return-object v0

    .line 4684
    :pswitch_352
    const-string/jumbo v0, "setCarrierServicePackageOverride"

    return-object v0

    .line 4680
    :pswitch_356
    const-string/jumbo v0, "setCarrierTestOverride"

    return-object v0

    .line 4676
    :pswitch_35a
    const-string/jumbo v0, "setCdmaSubscriptionMode"

    return-object v0

    .line 4672
    :pswitch_35e
    const-string v0, "getCdmaSubscriptionMode"

    return-object v0

    .line 4668
    :pswitch_361
    const-string/jumbo v0, "setCdmaRoamingMode"

    return-object v0

    .line 4664
    :pswitch_365
    const-string v0, "getCdmaRoamingMode"

    return-object v0

    .line 4660
    :pswitch_368
    const-string/jumbo v0, "setDataRoamingEnabled"

    return-object v0

    .line 4656
    :pswitch_36c
    const-string v0, "isDataRoamingEnabled"

    return-object v0

    .line 4652
    :pswitch_36f
    const-string/jumbo v0, "setSimSlotMapping"

    return-object v0

    .line 4648
    :pswitch_373
    const-string/jumbo v0, "switchSlots"

    return-object v0

    .line 4644
    :pswitch_377
    const-string v0, "getUiccSlotsInfo"

    return-object v0

    .line 4640
    :pswitch_37a
    const-string v0, "getUiccCardsInfo"

    return-object v0

    .line 4636
    :pswitch_37d
    const-string v0, "getCardIdForDefaultEuicc"

    return-object v0

    .line 4632
    :pswitch_380
    const-string v0, "getSignalStrength"

    return-object v0

    .line 4628
    :pswitch_383
    const-string v0, "getEmergencyCallbackMode"

    return-object v0

    .line 4624
    :pswitch_386
    const-string/jumbo v0, "setForbiddenPlmns"

    return-object v0

    .line 4620
    :pswitch_38a
    const-string v0, "getForbiddenPlmns"

    return-object v0

    .line 4616
    :pswitch_38d
    const-string/jumbo v0, "setSimPowerStateForSlotWithCallback"

    return-object v0

    .line 4612
    :pswitch_391
    const-string/jumbo v0, "setSimPowerStateForSlot"

    return-object v0

    .line 4608
    :pswitch_395
    const-string v0, "getClientRequestStats"

    return-object v0

    .line 4604
    :pswitch_398
    const-string/jumbo v0, "setCallWaitingStatus"

    return-object v0

    .line 4600
    :pswitch_39c
    const-string v0, "getCallWaitingStatus"

    return-object v0

    .line 4596
    :pswitch_39f
    const-string/jumbo v0, "setCallForwarding"

    return-object v0

    .line 4592
    :pswitch_3a3
    const-string v0, "getCallForwarding"

    return-object v0

    .line 4588
    :pswitch_3a6
    const-string v0, "carrierActionResetAll"

    return-object v0

    .line 4584
    :pswitch_3a9
    const-string v0, "carrierActionReportDefaultNetworkStatus"

    return-object v0

    .line 4580
    :pswitch_3ac
    const-string v0, "carrierActionSetRadioEnabled"

    return-object v0

    .line 4576
    :pswitch_3af
    const-string v0, "getCarrierIdFromMccMnc"

    return-object v0

    .line 4572
    :pswitch_3b2
    const-string v0, "getSubscriptionSpecificCarrierName"

    return-object v0

    .line 4568
    :pswitch_3b5
    const-string v0, "getSubscriptionSpecificCarrierId"

    return-object v0

    .line 4564
    :pswitch_3b8
    const-string v0, "getSubscriptionCarrierName"

    return-object v0

    .line 4560
    :pswitch_3bb
    const-string v0, "getSubscriptionCarrierId"

    return-object v0

    .line 4556
    :pswitch_3be
    const-string v0, "getAllowedCarriers"

    return-object v0

    .line 4552
    :pswitch_3c1
    const-string/jumbo v0, "setAllowedCarriers"

    return-object v0

    .line 4548
    :pswitch_3c5
    const-string v0, "getTelephonyHistograms"

    return-object v0

    .line 4544
    :pswitch_3c8
    const-string v0, "getCdmaPrlVersion"

    return-object v0

    .line 4540
    :pswitch_3cb
    const-string v0, "getEsn"

    return-object v0

    .line 4536
    :pswitch_3ce
    const-string v0, "getAidForAppType"

    return-object v0

    .line 4532
    :pswitch_3d1
    const-string v0, "getPackagesWithCarrierPrivilegesForAllPhones"

    return-object v0

    .line 4528
    :pswitch_3d4
    const-string v0, "getPackagesWithCarrierPrivileges"

    return-object v0

    .line 4524
    :pswitch_3d7
    const-string/jumbo v0, "setVoicemailVibrationEnabled"

    return-object v0

    .line 4520
    :pswitch_3db
    const-string v0, "isVoicemailVibrationEnabled"

    return-object v0

    .line 4516
    :pswitch_3de
    const-string/jumbo v0, "setVoicemailRingtoneUri"

    return-object v0

    .line 4512
    :pswitch_3e2
    const-string v0, "getVoicemailRingtoneUri"

    return-object v0

    .line 4508
    :pswitch_3e5
    const-string v0, "getServiceStateForSlot"

    return-object v0

    .line 4504
    :pswitch_3e8
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    .line 4500
    :pswitch_3ec
    const-string v0, "getSimLocaleForSubscriber"

    return-object v0

    .line 4496
    :pswitch_3ef
    const-string v0, "factoryReset"

    return-object v0

    .line 4492
    :pswitch_3f2
    const-string v0, "getPhoneAccountHandleForSubscriptionId"

    return-object v0

    .line 4488
    :pswitch_3f5
    const-string v0, "getSubIdForPhoneAccountHandle"

    return-object v0

    .line 4484
    :pswitch_3f8
    const-string v0, "getDeviceSoftwareVersionForSlot"

    return-object v0

    .line 4480
    :pswitch_3fb
    const-string v0, "getManufacturerCodeForSlot"

    return-object v0

    .line 4476
    :pswitch_3fe
    const-string v0, "getMeidForSlot"

    return-object v0

    .line 4472
    :pswitch_401
    const-string v0, "getTypeAllocationCodeForSlot"

    return-object v0

    .line 4468
    :pswitch_404
    const-string v0, "getPrimaryImei"

    return-object v0

    .line 4464
    :pswitch_407
    const-string v0, "getImeiForSlot"

    return-object v0

    .line 4460
    :pswitch_40a
    const-string v0, "getDeviceIdWithFeature"

    return-object v0

    .line 4456
    :pswitch_40d
    const-string v0, "getDeviceId"

    return-object v0

    .line 4452
    :pswitch_410
    const-string v0, "getImsRegTechnologyForMmTel"

    return-object v0

    .line 4448
    :pswitch_413
    const-string v0, "isVideoTelephonyAvailable"

    return-object v0

    .line 4444
    :pswitch_416
    const-string v0, "isWifiCallingAvailable"

    return-object v0

    .line 4440
    :pswitch_419
    const-string v0, "isImsRegistered"

    return-object v0

    .line 4436
    :pswitch_41c
    const-string v0, "isHearingAidCompatibilitySupported"

    return-object v0

    .line 4432
    :pswitch_41f
    const-string v0, "isRttSupported"

    return-object v0

    .line 4428
    :pswitch_422
    const-string v0, "isTtyModeSupported"

    return-object v0

    .line 4424
    :pswitch_425
    const-string v0, "isWorldPhone"

    return-object v0

    .line 4420
    :pswitch_428
    const-string v0, "canChangeDtmfToneLength"

    return-object v0

    .line 4416
    :pswitch_42b
    const-string v0, "isVideoCallingEnabled"

    return-object v0

    .line 4412
    :pswitch_42e
    const-string v0, "enableVideoCalling"

    return-object v0

    .line 4408
    :pswitch_431
    const-string/jumbo v0, "uploadCallComposerPicture"

    return-object v0

    .line 4404
    :pswitch_435
    const-string v0, "getRadioAccessFamily"

    return-object v0

    .line 4400
    :pswitch_438
    const-string/jumbo v0, "shutdownMobileRadios"

    return-object v0

    .line 4396
    :pswitch_43c
    const-string v0, "needMobileRadioShutdown"

    return-object v0

    .line 4392
    :pswitch_43f
    const-string/jumbo v0, "setRoamingOverride"

    return-object v0

    .line 4388
    :pswitch_443
    const-string/jumbo v0, "setOperatorBrandOverride"

    return-object v0

    .line 4384
    :pswitch_447
    const-string v0, "getMergedImsisFromGroup"

    return-object v0

    .line 4380
    :pswitch_44a
    const-string v0, "getMergedSubscriberIds"

    return-object v0

    .line 4376
    :pswitch_44d
    const-string v0, "getLine1AlphaTagForDisplay"

    return-object v0

    .line 4372
    :pswitch_450
    const-string v0, "getLine1NumberForDisplay"

    return-object v0

    .line 4368
    :pswitch_453
    const-string/jumbo v0, "setLine1NumberForDisplayForSubscriber"

    return-object v0

    .line 4364
    :pswitch_457
    const-string v0, "getCarrierPackageNamesForIntentAndPhone"

    return-object v0

    .line 4360
    :pswitch_45a
    const-string v0, "checkCarrierPrivilegesForPackageAnyPhone"

    return-object v0

    .line 4356
    :pswitch_45d
    const-string v0, "checkCarrierPrivilegesForPackage"

    return-object v0

    .line 4352
    :pswitch_460
    const-string v0, "getCarrierPrivilegeStatusForUid"

    return-object v0

    .line 4348
    :pswitch_463
    const-string v0, "getCarrierPrivilegeStatus"

    return-object v0

    .line 4344
    :pswitch_466
    const-string/jumbo v0, "requestNumberVerification"

    return-object v0

    .line 4340
    :pswitch_46a
    const-string v0, "getCdmaMin"

    return-object v0

    .line 4336
    :pswitch_46d
    const-string v0, "getCdmaMdn"

    return-object v0

    .line 4332
    :pswitch_470
    const-string/jumbo v0, "setImsRegistrationState"

    return-object v0

    .line 4328
    :pswitch_474
    const-string v0, "isManualNetworkSelectionAllowed"

    return-object v0

    .line 4324
    :pswitch_477
    const-string v0, "isDataEnabledForReason"

    return-object v0

    .line 4320
    :pswitch_47a
    const-string/jumbo v0, "setDataEnabledForReason"

    return-object v0

    .line 4316
    :pswitch_47e
    const-string v0, "isDataEnabled"

    return-object v0

    .line 4312
    :pswitch_481
    const-string v0, "isUserDataEnabled"

    return-object v0

    .line 4308
    :pswitch_484
    const-string v0, "getDataEnabled"

    return-object v0

    .line 4304
    :pswitch_487
    const-string/jumbo v0, "setAllowedNetworkTypesForReason"

    return-object v0

    .line 4300
    :pswitch_48b
    const-string v0, "getAllowedNetworkTypesForReason"

    return-object v0

    .line 4296
    :pswitch_48e
    const-string/jumbo v0, "setNetworkSelectionModeManual"

    return-object v0

    .line 4292
    :pswitch_492
    const-string/jumbo v0, "stopNetworkScan"

    return-object v0

    .line 4288
    :pswitch_496
    const-string/jumbo v0, "requestNetworkScan"

    return-object v0

    .line 4284
    :pswitch_49a
    const-string v0, "getCellNetworkScanResults"

    return-object v0

    .line 4280
    :pswitch_49d
    const-string/jumbo v0, "setNetworkSelectionModeAutomatic"

    return-object v0

    .line 4276
    :pswitch_4a1
    const-string v0, "getImsMmTelFeatureState"

    return-object v0

    .line 4272
    :pswitch_4a4
    const-string v0, "getBoundImsServicePackage"

    return-object v0

    .line 4268
    :pswitch_4a7
    const-string v0, "clearCarrierImsServiceOverride"

    return-object v0

    .line 4264
    :pswitch_4aa
    const-string/jumbo v0, "setBoundImsServiceOverride"

    return-object v0

    .line 4260
    :pswitch_4ae
    const-string v0, "getImsConfig"

    return-object v0

    .line 4256
    :pswitch_4b1
    const-string v0, "getImsRegistration"

    return-object v0

    .line 4252
    :pswitch_4b4
    const-string/jumbo v0, "unregisterImsFeatureCallback"

    return-object v0

    .line 4248
    :pswitch_4b8
    const-string/jumbo v0, "registerMmTelFeatureCallback"

    return-object v0

    .line 4244
    :pswitch_4bc
    const-string/jumbo v0, "resetIms"

    return-object v0

    .line 4240
    :pswitch_4c0
    const-string v0, "disableIms"

    return-object v0

    .line 4236
    :pswitch_4c3
    const-string v0, "enableIms"

    return-object v0

    .line 4232
    :pswitch_4c6
    const-string v0, "isTetheringApnRequiredForSubscriber"

    return-object v0

    .line 4228
    :pswitch_4c9
    const-string v0, "getAllowedNetworkTypesBitmask"

    return-object v0

    .line 4224
    :pswitch_4cc
    const-string/jumbo v0, "rebootModem"

    return-object v0

    .line 4220
    :pswitch_4d0
    const-string/jumbo v0, "resetModemConfig"

    return-object v0

    .line 4216
    :pswitch_4d4
    const-string v0, "nvWriteCdmaPrl"

    return-object v0

    .line 4212
    :pswitch_4d7
    const-string v0, "nvWriteItem"

    return-object v0

    .line 4208
    :pswitch_4da
    const-string v0, "nvReadItem"

    return-object v0

    .line 4204
    :pswitch_4dd
    const-string/jumbo v0, "sendEnvelopeWithStatus"

    return-object v0

    .line 4200
    :pswitch_4e1
    const-string v0, "iccExchangeSimIO"

    return-object v0

    .line 4196
    :pswitch_4e4
    const-string v0, "iccTransmitApduBasicChannel"

    return-object v0

    .line 4192
    :pswitch_4e7
    const-string v0, "iccTransmitApduBasicChannelByPort"

    return-object v0

    .line 4188
    :pswitch_4ea
    const-string v0, "iccTransmitApduLogicalChannel"

    return-object v0

    .line 4184
    :pswitch_4ed
    const-string v0, "iccTransmitApduLogicalChannelByPort"

    return-object v0

    .line 4180
    :pswitch_4f0
    const-string v0, "iccCloseLogicalChannel"

    return-object v0

    .line 4176
    :pswitch_4f3
    const-string v0, "iccOpenLogicalChannel"

    return-object v0

    .line 4172
    :pswitch_4f6
    const-string/jumbo v0, "setCellInfoListRate"

    return-object v0

    .line 4168
    :pswitch_4fa
    const-string/jumbo v0, "requestCellInfoUpdateWithWorkSource"

    return-object v0

    .line 4164
    :pswitch_4fe
    const-string/jumbo v0, "requestCellInfoUpdate"

    return-object v0

    .line 4160
    :pswitch_502
    const-string v0, "getAllCellInfo"

    return-object v0

    .line 4156
    :pswitch_505
    const-string v0, "getLteOnCdmaModeForSubscriber"

    return-object v0

    .line 4152
    :pswitch_508
    const-string v0, "getLteOnCdmaMode"

    return-object v0

    .line 4148
    :pswitch_50b
    const-string v0, "hasIccCardUsingSlotIndex"

    return-object v0

    .line 4144
    :pswitch_50e
    const-string v0, "hasIccCard"

    return-object v0

    .line 4140
    :pswitch_511
    const-string v0, "getVoiceNetworkTypeForSubscriber"

    return-object v0

    .line 4136
    :pswitch_514
    const-string v0, "getDataNetworkTypeForSubscriber"

    return-object v0

    .line 4132
    :pswitch_517
    const-string v0, "getDataNetworkType"

    return-object v0

    .line 4128
    :pswitch_51a
    const-string v0, "getNetworkTypeForSubscriber"

    return-object v0

    .line 4124
    :pswitch_51d
    const-string/jumbo v0, "sendDialerSpecialCode"

    return-object v0

    .line 4120
    :pswitch_521
    const-string/jumbo v0, "sendVisualVoicemailSmsForSubscriber"

    return-object v0

    .line 4116
    :pswitch_525
    const-string v0, "getActiveVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 4112
    :pswitch_528
    const-string v0, "getVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 4108
    :pswitch_52b
    const-string v0, "disableVisualVoicemailSmsFilter"

    return-object v0

    .line 4104
    :pswitch_52e
    const-string v0, "enableVisualVoicemailSmsFilter"

    return-object v0

    .line 4100
    :pswitch_531
    const-string v0, "getVisualVoicemailPackageName"

    return-object v0

    .line 4096
    :pswitch_534
    const-string v0, "getVisualVoicemailSettings"

    return-object v0

    .line 4092
    :pswitch_537
    const-string v0, "isConcurrentVoiceAndDataAllowed"

    return-object v0

    .line 4088
    :pswitch_53a
    const-string v0, "getVoiceMessageCountForSubscriber"

    return-object v0

    .line 4084
    :pswitch_53d
    const-string v0, "getDataActivationState"

    return-object v0

    .line 4080
    :pswitch_540
    const-string v0, "getVoiceActivationState"

    return-object v0

    .line 4076
    :pswitch_543
    const-string/jumbo v0, "setDataActivationState"

    return-object v0

    .line 4072
    :pswitch_547
    const-string/jumbo v0, "setVoiceActivationState"

    return-object v0

    .line 4068
    :pswitch_54b
    const-string/jumbo v0, "setVoiceMailNumber"

    return-object v0

    .line 4064
    :pswitch_54f
    const-string v0, "needsOtaServiceProvisioning"

    return-object v0

    .line 4060
    :pswitch_552
    const-string v0, "getCdmaEriTextForSubscriber"

    return-object v0

    .line 4056
    :pswitch_555
    const-string v0, "getCdmaEriText"

    return-object v0

    .line 4052
    :pswitch_558
    const-string v0, "getCdmaEriIconModeForSubscriber"

    return-object v0

    .line 4048
    :pswitch_55b
    const-string v0, "getCdmaEriIconMode"

    return-object v0

    .line 4044
    :pswitch_55e
    const-string v0, "getCdmaEriIconIndexForSubscriber"

    return-object v0

    .line 4040
    :pswitch_561
    const-string v0, "getCdmaEriIconIndex"

    return-object v0

    .line 4036
    :pswitch_564
    const-string v0, "getActivePhoneTypeForSlot"

    return-object v0

    .line 4032
    :pswitch_567
    const-string v0, "getActivePhoneType"

    return-object v0

    .line 4028
    :pswitch_56a
    const-string v0, "getDataStateForSubId"

    return-object v0

    .line 4024
    :pswitch_56d
    const-string v0, "getDataState"

    return-object v0

    .line 4020
    :pswitch_570
    const-string v0, "getDataActivityForSubId"

    return-object v0

    .line 4016
    :pswitch_573
    const-string v0, "getDataActivity"

    return-object v0

    .line 4012
    :pswitch_576
    const-string v0, "getCallStateForSubscription"

    return-object v0

    .line 4008
    :pswitch_579
    const-string v0, "getCallState"

    return-object v0

    .line 4004
    :pswitch_57c
    const-string v0, "getNeighboringCellInfo"

    return-object v0

    .line 4000
    :pswitch_57f
    const-string v0, "getNetworkCountryIsoForPhone"

    return-object v0

    .line 3996
    :pswitch_582
    const-string v0, "getCellLocation"

    return-object v0

    .line 3992
    :pswitch_585
    const-string v0, "isDataConnectivityPossible"

    return-object v0

    .line 3988
    :pswitch_588
    const-string v0, "disableDataConnectivity"

    return-object v0

    .line 3984
    :pswitch_58b
    const-string v0, "enableDataConnectivity"

    return-object v0

    .line 3980
    :pswitch_58e
    const-string v0, "disableLocationUpdates"

    return-object v0

    .line 3976
    :pswitch_591
    const-string v0, "enableLocationUpdates"

    return-object v0

    .line 3972
    :pswitch_594
    const-string/jumbo v0, "updateServiceLocationWithPackageName"

    return-object v0

    .line 3968
    :pswitch_598
    const-string/jumbo v0, "updateServiceLocation"

    return-object v0

    .line 3964
    :pswitch_59c
    const-string v0, "getRadioPowerOffReasons"

    return-object v0

    .line 3960
    :pswitch_59f
    const-string v0, "clearRadioPowerOffForReason"

    return-object v0

    .line 3956
    :pswitch_5a2
    const-string/jumbo v0, "requestRadioPowerOffForReason"

    return-object v0

    .line 3952
    :pswitch_5a6
    const-string/jumbo v0, "setRadioPower"

    return-object v0

    .line 3948
    :pswitch_5aa
    const-string/jumbo v0, "setRadioForSubscriber"

    return-object v0

    .line 3944
    :pswitch_5ae
    const-string/jumbo v0, "setRadio"

    return-object v0

    .line 3940
    :pswitch_5b2
    const-string/jumbo v0, "toggleRadioOnOffForSubscriber"

    return-object v0

    .line 3936
    :pswitch_5b6
    const-string/jumbo v0, "toggleRadioOnOff"

    return-object v0

    .line 3932
    :pswitch_5ba
    const-string v0, "handlePinMmiForSubscriber"

    return-object v0

    .line 3928
    :pswitch_5bd
    const-string v0, "handleUssdRequest"

    return-object v0

    .line 3924
    :pswitch_5c0
    const-string v0, "handlePinMmi"

    return-object v0

    .line 3920
    :pswitch_5c3
    const-string/jumbo v0, "supplyPukReportResultForSubscriber"

    return-object v0

    .line 3916
    :pswitch_5c7
    const-string/jumbo v0, "supplyPinReportResultForSubscriber"

    return-object v0

    .line 3912
    :pswitch_5cb
    const-string/jumbo v0, "supplyPukForSubscriber"

    return-object v0

    .line 3908
    :pswitch_5cf
    const-string/jumbo v0, "supplyPinForSubscriber"

    return-object v0

    .line 3904
    :pswitch_5d3
    const-string v0, "getCallComposerStatus"

    return-object v0

    .line 3900
    :pswitch_5d6
    const-string/jumbo v0, "setCallComposerStatus"

    return-object v0

    .line 3896
    :pswitch_5da
    const-string v0, "isRadioOnForSubscriberWithFeature"

    return-object v0

    .line 3892
    :pswitch_5dd
    const-string v0, "isRadioOnForSubscriber"

    return-object v0

    .line 3888
    :pswitch_5e0
    const-string v0, "isRadioOnWithFeature"

    return-object v0

    .line 3884
    :pswitch_5e3
    const-string v0, "isRadioOn"

    return-object v0

    .line 3880
    :pswitch_5e6
    const-string v0, "call"

    return-object v0

    .line 3876
    :pswitch_5e9
    const-string v0, "dial"

    return-object v0

    :pswitch_data_5ec
    .packed-switch 0x1
        :pswitch_5e9
        :pswitch_5e6
        :pswitch_5e3
        :pswitch_5e0
        :pswitch_5dd
        :pswitch_5da
        :pswitch_5d6
        :pswitch_5d3
        :pswitch_5cf
        :pswitch_5cb
        :pswitch_5c7
        :pswitch_5c3
        :pswitch_5c0
        :pswitch_5bd
        :pswitch_5ba
        :pswitch_5b6
        :pswitch_5b2
        :pswitch_5ae
        :pswitch_5aa
        :pswitch_5a6
        :pswitch_5a2
        :pswitch_59f
        :pswitch_59c
        :pswitch_598
        :pswitch_594
        :pswitch_591
        :pswitch_58e
        :pswitch_58b
        :pswitch_588
        :pswitch_585
        :pswitch_582
        :pswitch_57f
        :pswitch_57c
        :pswitch_579
        :pswitch_576
        :pswitch_573
        :pswitch_570
        :pswitch_56d
        :pswitch_56a
        :pswitch_567
        :pswitch_564
        :pswitch_561
        :pswitch_55e
        :pswitch_55b
        :pswitch_558
        :pswitch_555
        :pswitch_552
        :pswitch_54f
        :pswitch_54b
        :pswitch_547
        :pswitch_543
        :pswitch_540
        :pswitch_53d
        :pswitch_53a
        :pswitch_537
        :pswitch_534
        :pswitch_531
        :pswitch_52e
        :pswitch_52b
        :pswitch_528
        :pswitch_525
        :pswitch_521
        :pswitch_51d
        :pswitch_51a
        :pswitch_517
        :pswitch_514
        :pswitch_511
        :pswitch_50e
        :pswitch_50b
        :pswitch_508
        :pswitch_505
        :pswitch_502
        :pswitch_4fe
        :pswitch_4fa
        :pswitch_4f6
        :pswitch_4f3
        :pswitch_4f0
        :pswitch_4ed
        :pswitch_4ea
        :pswitch_4e7
        :pswitch_4e4
        :pswitch_4e1
        :pswitch_4dd
        :pswitch_4da
        :pswitch_4d7
        :pswitch_4d4
        :pswitch_4d0
        :pswitch_4cc
        :pswitch_4c9
        :pswitch_4c6
        :pswitch_4c3
        :pswitch_4c0
        :pswitch_4bc
        :pswitch_4b8
        :pswitch_4b4
        :pswitch_4b1
        :pswitch_4ae
        :pswitch_4aa
        :pswitch_4a7
        :pswitch_4a4
        :pswitch_4a1
        :pswitch_49d
        :pswitch_49a
        :pswitch_496
        :pswitch_492
        :pswitch_48e
        :pswitch_48b
        :pswitch_487
        :pswitch_484
        :pswitch_481
        :pswitch_47e
        :pswitch_47a
        :pswitch_477
        :pswitch_474
        :pswitch_470
        :pswitch_46d
        :pswitch_46a
        :pswitch_466
        :pswitch_463
        :pswitch_460
        :pswitch_45d
        :pswitch_45a
        :pswitch_457
        :pswitch_453
        :pswitch_450
        :pswitch_44d
        :pswitch_44a
        :pswitch_447
        :pswitch_443
        :pswitch_43f
        :pswitch_43c
        :pswitch_438
        :pswitch_435
        :pswitch_431
        :pswitch_42e
        :pswitch_42b
        :pswitch_428
        :pswitch_425
        :pswitch_422
        :pswitch_41f
        :pswitch_41c
        :pswitch_419
        :pswitch_416
        :pswitch_413
        :pswitch_410
        :pswitch_40d
        :pswitch_40a
        :pswitch_407
        :pswitch_404
        :pswitch_401
        :pswitch_3fe
        :pswitch_3fb
        :pswitch_3f8
        :pswitch_3f5
        :pswitch_3f2
        :pswitch_3ef
        :pswitch_3ec
        :pswitch_3e8
        :pswitch_3e5
        :pswitch_3e2
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d7
        :pswitch_3d4
        :pswitch_3d1
        :pswitch_3ce
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c5
        :pswitch_3c1
        :pswitch_3be
        :pswitch_3bb
        :pswitch_3b8
        :pswitch_3b5
        :pswitch_3b2
        :pswitch_3af
        :pswitch_3ac
        :pswitch_3a9
        :pswitch_3a6
        :pswitch_3a3
        :pswitch_39f
        :pswitch_39c
        :pswitch_398
        :pswitch_395
        :pswitch_391
        :pswitch_38d
        :pswitch_38a
        :pswitch_386
        :pswitch_383
        :pswitch_380
        :pswitch_37d
        :pswitch_37a
        :pswitch_377
        :pswitch_373
        :pswitch_36f
        :pswitch_36c
        :pswitch_368
        :pswitch_365
        :pswitch_361
        :pswitch_35e
        :pswitch_35a
        :pswitch_356
        :pswitch_352
        :pswitch_34f
        :pswitch_34b
        :pswitch_348
        :pswitch_345
        :pswitch_342
        :pswitch_33f
        :pswitch_33b
        :pswitch_337
        :pswitch_333
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_325
        :pswitch_321
        :pswitch_31e
        :pswitch_31b
        :pswitch_318
        :pswitch_315
        :pswitch_311
        :pswitch_30e
        :pswitch_30a
        :pswitch_307
        :pswitch_303
        :pswitch_300
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f5
        :pswitch_2f1
        :pswitch_2ee
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e3
        :pswitch_2df
        :pswitch_2dc
        :pswitch_2d9
        :pswitch_2d6
        :pswitch_2d3
        :pswitch_2cf
        :pswitch_2cb
        :pswitch_2c7
        :pswitch_2c3
        :pswitch_2bf
        :pswitch_2bc
        :pswitch_2b9
        :pswitch_2b5
        :pswitch_2b2
        :pswitch_2af
        :pswitch_2ab
        :pswitch_2a7
        :pswitch_2a3
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_292
        :pswitch_28e
        :pswitch_28b
        :pswitch_287
        :pswitch_284
        :pswitch_280
        :pswitch_27d
        :pswitch_27a
        :pswitch_277
        :pswitch_274
        :pswitch_271
        :pswitch_26e
        :pswitch_26b
        :pswitch_268
        :pswitch_265
        :pswitch_261
        :pswitch_25e
        :pswitch_25b
        :pswitch_258
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24a
        :pswitch_247
        :pswitch_243
        :pswitch_240
        :pswitch_23d
        :pswitch_239
        :pswitch_236
        :pswitch_232
        :pswitch_22e
        :pswitch_22b
        :pswitch_228
        :pswitch_225
        :pswitch_221
        :pswitch_21e
        :pswitch_21a
        :pswitch_217
        :pswitch_214
        :pswitch_210
        :pswitch_20d
        :pswitch_209
        :pswitch_206
        :pswitch_202
        :pswitch_1ff
        :pswitch_1fb
        :pswitch_1f8
        :pswitch_1f4
        :pswitch_1f0
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1da
        :pswitch_1d6
        :pswitch_1d2
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1ba
        :pswitch_1b7
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ad
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19c
        :pswitch_198
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18a
        :pswitch_187
        :pswitch_184
        :pswitch_180
        :pswitch_17c
        :pswitch_178
        :pswitch_175
        :pswitch_171
        :pswitch_16e
        :pswitch_16b
        :pswitch_168
        :pswitch_164
        :pswitch_161
        :pswitch_15d
        :pswitch_15a
        :pswitch_157
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_142
        :pswitch_13f
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e2
        :pswitch_de
        :pswitch_da
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21559
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21561
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 21562
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21563
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21564
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21565
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21006
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 21007
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21008
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    .line 21009
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21010
    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 21011
    return v3
.end method

.method private blacklist onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20856
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20858
    .local v2, "_arg1":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 20860
    .local v3, "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 20862
    .local v4, "_arg3":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 20864
    .local v5, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v6

    .line 20865
    .local v6, "_arg5":Landroid/telephony/IBootstrapAuthenticationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20866
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 20867
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20868
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19762
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19764
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19765
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19766
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19767
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19768
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19769
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20778
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20780
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20781
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20782
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 20783
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20784
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20785
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21063
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 21065
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21066
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21067
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 21068
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21069
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21685
    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 21687
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 21688
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21689
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 21690
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21691
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21321
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 21322
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21323
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21324
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21325
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20600
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20602
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20603
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20604
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 20605
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20606
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20607
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20572
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20573
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20574
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableModemForSlot(IZ)Z

    move-result v2

    .line 20575
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20576
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20577
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19222
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19224
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 19225
    .local v2, "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19226
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 19227
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19228
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20702
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20704
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20706
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20707
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20708
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20709
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19526
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19528
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19529
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19530
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundImsServicePackage(IZI)Ljava/lang/String;

    move-result-object v3

    .line 19531
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19532
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19533
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19947
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19949
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallForwardingInfoCallback;

    move-result-object v2

    .line 19950
    .local v2, "_arg2":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19951
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V

    .line 19952
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19953
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19101
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19103
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19104
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19105
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19106
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19107
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19108
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19929
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19931
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19932
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19933
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v3

    .line 19934
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19935
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19936
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21247
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 21249
    .local v0, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21250
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21251
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V

    .line 21252
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21253
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19123
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19125
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19126
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19127
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19128
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19129
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19130
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19139
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19141
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19142
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19143
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19144
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19145
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19146
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19155
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19158
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19159
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19160
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19161
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19162
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19543
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19545
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19546
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19547
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v3

    .line 19548
    .local v3, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19549
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19550
    return v4
.end method

.method private blacklist onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19988
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19990
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19992
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19993
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19994
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 19995
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19996
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 19997
    return v4
.end method

.method private blacklist onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19278
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19280
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19281
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19282
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19283
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19284
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19285
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21199
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21200
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21201
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v2

    .line 21202
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21203
    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 21204
    return v3
.end method

.method private blacklist onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19834
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19836
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19837
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19838
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19839
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19840
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19841
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getEmergencyNumberList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20361
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20362
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20363
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 20364
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20365
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 20366
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20797
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20799
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20800
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20801
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 20802
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20803
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 20804
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20018
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20020
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20022
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20024
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 20025
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20026
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 20027
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20028
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 20029
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19801
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19803
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19804
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19805
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19806
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19807
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19808
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getImsMmTelRegistrationState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20149
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 20150
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20151
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20152
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20153
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getImsMmTelRegistrationTransportType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20161
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 20162
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20163
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20164
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20165
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20498
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20499
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20500
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningInt(II)I

    move-result v2

    .line 20501
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20502
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20503
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20452
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20454
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20455
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20456
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 20457
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20458
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20459
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20511
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20512
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20513
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v2

    .line 20514
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20515
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20516
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21124
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21126
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21127
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21128
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 21129
    .local v3, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21130
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 21131
    return v4
.end method

.method private blacklist onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19688
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19690
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19691
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19692
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19693
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19694
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19695
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19673
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19675
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19676
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19677
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19678
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19679
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19680
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19311
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19313
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19314
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19315
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19316
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19317
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19318
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19818
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19820
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19821
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19822
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19823
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19824
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19825
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19703
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19705
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19706
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19707
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 19708
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19709
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19710
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19262
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19264
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19265
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19266
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19267
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19268
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19269
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20113
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20115
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20116
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20117
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 20118
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20119
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20120
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19075
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19077
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19078
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19079
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 19080
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19081
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 19082
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20130
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20132
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20133
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20134
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 20135
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20136
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20137
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20467
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20469
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20470
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20471
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 20472
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20473
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20474
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19868
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19870
    .local v2, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 19872
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 19874
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 19875
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19876
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 19877
    .local v6, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19878
    const/4 v0, 0x1

    invoke-virtual {p2, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19879
    return v0
.end method

.method private blacklist onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21546
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21547
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21548
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 21549
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21550
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 21551
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19847
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 19849
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19851
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19852
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19853
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19854
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19855
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19856
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19209
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19210
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19211
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 19212
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19213
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19214
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19190
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19192
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19193
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19194
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19195
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19196
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19197
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19293
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19295
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19296
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19297
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19298
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19299
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19300
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19053
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19055
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 19056
    .local v2, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19057
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 19058
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19059
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19468
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19470
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19472
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19474
    .local v4, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19476
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19478
    .local v6, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 19479
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19480
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v8

    .line 19481
    .local v8, "_result":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19482
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19483
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19443
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19445
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19447
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19449
    .local v4, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19451
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19453
    .local v6, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 19455
    .local v7, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 19456
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19457
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19458
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19459
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19460
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19416
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19418
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19420
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19422
    .local v4, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19424
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19426
    .local v6, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 19428
    .local v7, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 19430
    .local v8, "_arg7":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 19431
    .local v9, "_arg8":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19432
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 19433
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19434
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19435
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19391
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19393
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19395
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19397
    .local v4, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19399
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19401
    .local v6, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 19403
    .local v7, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 19404
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19405
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19406
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19407
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19408
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19364
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19366
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19368
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19370
    .local v4, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19372
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19374
    .local v6, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 19376
    .local v7, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 19378
    .local v8, "_arg7":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 19379
    .local v9, "_arg8":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19380
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 19381
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19382
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19383
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20662
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20663
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20664
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnMetered(II)Z

    move-result v2

    .line 20665
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20666
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20667
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20619
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20620
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20621
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApplicationOnUicc(II)Z

    move-result v2

    .line 20622
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20623
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20624
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20212
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20214
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20215
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20216
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAvailable(III)Z

    move-result v3

    .line 20217
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20218
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20219
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20197
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20199
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20200
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20201
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCapable(III)Z

    move-result v3

    .line 20202
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20203
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20204
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20647
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20649
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20650
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20651
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v3

    .line 20652
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20653
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20654
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isEmergencyNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20374
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20375
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20376
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    .line 20377
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20378
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20379
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20227
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 20229
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20231
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 20232
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20233
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V

    .line 20234
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20235
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20734
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20735
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20736
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMobileDataPolicyEnabled(II)Z

    move-result v2

    .line 20737
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20738
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20739
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20632
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20634
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20635
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20636
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 20637
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20638
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20639
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20586
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20587
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20588
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 20589
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20590
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20591
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20689
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20691
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20692
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20693
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v3

    .line 20694
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20695
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20696
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21080
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21081
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21082
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result v2

    .line 21083
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21084
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21085
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21141
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21143
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21144
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21145
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 21146
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21147
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21148
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19003
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19005
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19006
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19007
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19008
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19009
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19010
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21156
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21158
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21159
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21160
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 21161
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21162
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21163
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19777
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19779
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19780
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19781
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19782
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19783
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19784
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20748
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 20750
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20751
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20752
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 20753
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20754
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21672
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21674
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21675
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21676
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideCarrierRoamingNtnEligibilityChanged(ZZ)Z

    move-result v2

    .line 21677
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21678
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21679
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$overrideConfigDataVersion$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21531
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21533
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21534
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21535
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideConfigDataVersion(ZI)Z

    move-result v2

    .line 21536
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21537
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21538
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21213
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21215
    .local v2, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 21217
    .local v3, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 21219
    .local v5, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 21220
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21221
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V

    .line 21222
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21223
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21657
    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 21659
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 21660
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21661
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 21662
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21663
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21306
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 21308
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 21309
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21310
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 21311
    .local v3, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21312
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 21313
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21093
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 21095
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21096
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21097
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V

    .line 21098
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21099
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20412
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v1

    .line 20413
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20414
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 20415
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20416
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21604
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    move-result-object v1

    .line 21605
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21606
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I

    move-result v2

    .line 21607
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21608
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21609
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20388
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    .line 20389
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20390
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 20391
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20392
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21107
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21109
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 21111
    .local v2, "_arg2":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 21112
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21113
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V

    .line 21114
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21115
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$registerMmTelCapabilityCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20173
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 20174
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20175
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 20176
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20177
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20917
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    .line 20918
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20919
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 20920
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20921
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21573
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21575
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 21576
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21577
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21578
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21579
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20989
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20990
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20991
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeContactFromEab(ILjava/lang/String;)I

    move-result v2

    .line 20992
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20993
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20994
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21019
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 21020
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21021
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    .line 21022
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21023
    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 21024
    return v3
.end method

.method private blacklist onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19327
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v1

    .line 19329
    .local v1, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19331
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19332
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19333
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 19334
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19335
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19343
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v2

    .line 19345
    .local v2, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19347
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 19349
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/WorkSource;

    .line 19350
    .local v5, "_arg4":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19351
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 19352
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19353
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21360
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 21361
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21362
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    .line 21363
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21364
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19558
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19560
    .local v2, "_arg1":Z
    sget-object v0, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/NetworkScanRequest;

    .line 19562
    .local v3, "_arg2":Landroid/telephony/NetworkScanRequest;
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Messenger;

    .line 19564
    .local v4, "_arg3":Landroid/os/Messenger;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 19566
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 19568
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 19569
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19570
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 19571
    .local v8, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19572
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 19573
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19635
    sget-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/PhoneNumberRange;

    .line 19637
    .local v2, "_arg0":Landroid/telephony/PhoneNumberRange;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 19639
    .local v3, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;

    move-result-object v5

    .line 19641
    .local v5, "_arg2":Lcom/android/internal/telephony/INumberVerificationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 19642
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19643
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V

    .line 19644
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19645
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21259
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21261
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21263
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21265
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 21266
    .local v3, "_arg3":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21267
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21268
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21269
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21645
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 21646
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21647
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    .line 21648
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21649
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21341
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteDatagram;

    .line 21343
    .local v1, "_arg1":Landroid/telephony/satellite/SatelliteDatagram;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21345
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 21346
    .local v3, "_arg3":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21347
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21348
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21349
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20959
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20960
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20961
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDeviceToDeviceMessage(II)V

    .line 20962
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20963
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20841
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ThermalMitigationRequest;

    .line 20843
    .local v1, "_arg1":Landroid/telephony/ThermalMitigationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20844
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20845
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v3

    .line 20846
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20847
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20848
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19239
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19241
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19243
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 19245
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19247
    .local v5, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 19249
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 19250
    .local v7, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19251
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 19252
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19253
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setAdvancedCallingSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20244
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20245
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20246
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setAdvancedCallingSettingEnabled(IZ)V

    .line 20247
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20248
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19598
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19600
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 19601
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19602
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v4

    .line 19603
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19604
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19605
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20876
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20877
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20878
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundGbaServiceOverride(ILjava/lang/String;)Z

    move-result v2

    .line 20879
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20880
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20881
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19506
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19508
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 19510
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 19512
    .local v4, "_arg3":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 19513
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19514
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundImsServiceOverride(IIZ[ILjava/lang/String;)Z

    move-result v6

    .line 19515
    .local v6, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19516
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19517
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19961
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    .line 19963
    .local v1, "_arg1":Landroid/telephony/CallForwardingInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 19964
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19965
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19966
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19967
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19976
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19978
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 19979
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19980
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19981
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19982
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21036
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 21037
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21038
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCapabilitiesRequestTimeout(IJ)Z

    move-result v3

    .line 21039
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21040
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21041
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20097
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20099
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20100
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20101
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V

    .line 20102
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20103
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20946
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20947
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20948
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z

    move-result v2

    .line 20949
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20950
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20951
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20069
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20071
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 20073
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 20075
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 20077
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 20079
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 20081
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 20083
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 20085
    .local v9, "_arg8":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 20086
    .local v10, "_arg9":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20087
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20088
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20089
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21234
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CellBroadcastIdRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 21236
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 21237
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21238
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 21239
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21240
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21461
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21463
    .local v1, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 21465
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 21466
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 21468
    .local v3, "_arg2":Ljava/util/Map;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 21470
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 21471
    .local v5, "_arg4":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21472
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z

    move-result v8

    .line 21473
    .local v8, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21474
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21475
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setCrossSimCallingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20283
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20284
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20285
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCrossSimCallingEnabled(IZ)V

    .line 20286
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20287
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19616
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19618
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19620
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19621
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19622
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 19623
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19624
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21627
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21629
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21631
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21632
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21633
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerBooleanConfig(ZIZ)Z

    move-result v3

    .line 21634
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21635
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21636
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21418
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21420
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21422
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 21423
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21424
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerTimeoutDuration(ZIJ)Z

    move-result v4

    .line 21425
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21426
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21427
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21450
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21451
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21452
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setEmergencyCallToSatelliteHandoverType(II)Z

    move-result v2

    .line 21453
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21454
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21455
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20037
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20039
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 20041
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 20043
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 20044
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20045
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 20046
    .local v6, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20047
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 20048
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20890
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20891
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20892
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaReleaseTimeOverride(II)Z

    move-result v2

    .line 20893
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20894
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20895
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20763
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20765
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20766
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20767
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v3

    .line 20768
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20769
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20770
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20974
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20975
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20976
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsFeatureValidationOverride(ILjava/lang/String;)Z

    move-result v2

    .line 20977
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20978
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20979
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20524
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20526
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20527
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20528
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningInt(III)I

    move-result v3

    .line 20529
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20530
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20531
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20436
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20438
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20440
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 20441
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20442
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningStatusForCapability(IIIZ)V

    .line 20443
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20444
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20539
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20541
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20542
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20543
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v3

    .line 20544
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20545
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 20546
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19658
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19660
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19661
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19662
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19663
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19664
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19665
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20720
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20722
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20723
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20724
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMobileDataPolicyEnabled(IIZ)V

    .line 20725
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20726
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19582
    .local v0, "_arg0":I
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 19584
    .local v1, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19585
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19586
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v3

    .line 19587
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19588
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19589
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20826
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20827
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20828
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNrDualConnectivityState(II)I

    move-result v2

    .line 20829
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20830
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20831
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21518
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21520
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21521
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21522
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOemEnabledSatelliteProvisionStatus(ZZ)Z

    move-result v2

    .line 21523
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21524
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21525
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20904
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsClientConfiguration;

    .line 20905
    .local v1, "_arg1":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20906
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    .line 20907
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20908
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20482
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20484
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20486
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 20487
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20488
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsProvisioningStatusForCapability(IIIZ)V

    .line 20489
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20490
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21184
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21186
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21187
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21188
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V

    .line 21189
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21190
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19720
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 19722
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 19724
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 19726
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 19727
    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19728
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    .line 19729
    .local v6, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19730
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19731
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setRttCapabilitySetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20348
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20349
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20350
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRttCapabilitySetting(IZ)V

    .line 20351
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20352
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21481
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21483
    .local v1, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21485
    .local v2, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 21487
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 21489
    .local v4, "_arg3":J
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 21491
    .local v6, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 21492
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21493
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteAccessControlOverlayConfigs(ZZLjava/lang/String;JLjava/util/List;Ljava/lang/String;)Z

    move-result v8

    .line 21494
    .local v8, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21495
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21496
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21433
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21435
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21437
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 21438
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21439
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteControllerTimeoutDuration(ZIJ)Z

    move-result v4

    .line 21440
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21441
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21442
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21407
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21408
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21409
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 21410
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21411
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21412
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21378
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21379
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21380
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteServicePackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 21381
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21382
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21383
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21049
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 21051
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21052
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21053
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 21054
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21055
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20006
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20008
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20009
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20010
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20011
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20012
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSupportDisableSatelliteWhileEnableInProgress$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21392
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21394
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21395
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21396
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSupportDisableSatelliteWhileEnableInProgress(ZZ)Z

    move-result v2

    .line 21397
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21398
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21399
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20673
    sget-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 20675
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20677
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    .line 20678
    .local v2, "_arg2":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20679
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V

    .line 20680
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTnScanningSupport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21503
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 21505
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21507
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 21508
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21509
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setTnScanningSupport(ZZZ)Z

    move-result v3

    .line 21510
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21511
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21512
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20812
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20813
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20814
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoNrEnabled(IZ)I

    move-result v2

    .line 20815
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20816
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20817
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoWiFiModeSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20323
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20324
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20325
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiModeSetting(II)V

    .line 20326
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20327
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20308
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20310
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20311
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20312
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiNonPersistent(IZI)V

    .line 20313
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20314
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoWiFiRoamingModeSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20336
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20337
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20338
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingModeSetting(II)V

    .line 20339
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20340
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setVoWiFiRoamingSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20296
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20297
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20298
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingSettingEnabled(IZ)V

    .line 20299
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20300
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setVoWiFiSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20270
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20271
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20272
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiSettingEnabled(IZ)V

    .line 20273
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20274
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19171
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19173
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19174
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19175
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19176
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19177
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19178
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21171
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 21173
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21174
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21175
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 21176
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21177
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19888
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 19890
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 19891
    .local v2, "_arg2":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19892
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    .line 19893
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19894
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19901
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19903
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 19905
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19906
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19907
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 19908
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19909
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVtSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20257
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20258
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20259
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVtSettingEnabled(IZ)V

    .line 20260
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20261
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21280
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 21282
    .local v0, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    .line 21283
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21284
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 21285
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21286
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21292
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 21294
    .local v0, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    .line 21295
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21296
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 21297
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21298
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19021
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19023
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19024
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19025
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 19026
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19027
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19028
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19037
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19039
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19040
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19041
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 19042
    .local v3, "_result":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19043
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 19044
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$unregisterFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20424
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v1

    .line 20425
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20426
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 20427
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20428
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21617
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    move-result-object v1

    .line 21618
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 21619
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V

    .line 21620
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21621
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20400
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    .line 20401
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20402
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 20403
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20404
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterMmTelCapabilityCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20185
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 20186
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20187
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 20188
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20189
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20929
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    .line 20930
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20931
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 20932
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20933
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20555
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 20556
    .local v1, "_arg1":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20557
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V

    .line 20558
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20559
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19742
    .local v1, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19744
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19746
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 19748
    .local v4, "_arg3":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ResultReceiver;

    .line 19749
    .local v5, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19750
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V

    .line 19751
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19752
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 3867
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 21701
    const/16 v0, 0x1b7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 5643
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5647
    const-string v0, "com.android.internal.telephony.ITelephony"

    .line 5648
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 5649
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5651
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 5652
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5653
    return v1

    .line 5655
    :cond_16
    packed-switch p1, :pswitch_data_16d8

    .line 8964
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 8955
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8956
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8957
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteIgnorePlmnListFromStorage(Z)Z

    move-result v3

    .line 8958
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8959
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8960
    goto/16 :goto_16d6

    .line 8945
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8946
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8947
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDataSupportMode(I)I

    move-result v3

    .line 8948
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8949
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8950
    goto/16 :goto_16d6

    .line 8937
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDataOptimizedApps()Ljava/util/List;

    move-result-object v2

    .line 8938
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8939
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8940
    goto/16 :goto_16d6

    .line 8928
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_50
    sget-object v2, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    .line 8929
    .local v2, "_arg0":Landroid/service/carrier/CarrierIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8930
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I

    move-result v3

    .line 8931
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8932
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8933
    goto/16 :goto_16d6

    .line 8919
    .end local v2    # "_arg0":Landroid/service/carrier/CarrierIdentifier;
    .end local v3    # "_result":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8920
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8921
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNtnSmsSupported(Z)V

    .line 8922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8923
    goto/16 :goto_16d6

    .line 8914
    .end local v2    # "_arg0":Z
    :pswitch_76
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8910
    :pswitch_7b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8903
    :pswitch_80
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTestEuiccUiComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8904
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8905
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8906
    goto/16 :goto_16d6

    .line 8895
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_8c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 8896
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8897
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setTestEuiccUiComponent(Landroid/content/ComponentName;)V

    .line 8898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8899
    goto/16 :goto_16d6

    .line 8885
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8886
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8887
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteSubscriberIdListChangedIntentComponent(Ljava/lang/String;)Z

    move-result v3

    .line 8888
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8889
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8890
    goto/16 :goto_16d6

    .line 8880
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8872
    :pswitch_b7
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8873
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8874
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V

    .line 8875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8876
    goto/16 :goto_16d6

    .line 8863
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_ca
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8864
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8865
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    .line 8866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8867
    goto/16 :goto_16d6

    .line 8858
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_dd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8849
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8850
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8851
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIsSatelliteCommunicationAllowedForCurrentLocationCache(Ljava/lang/String;)Z

    move-result v3

    .line 8852
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8853
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8854
    goto/16 :goto_16d6

    .line 8844
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8840
    :pswitch_fa
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8836
    :pswitch_ff
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8828
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    .line 8829
    .local v2, "_arg0":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8830
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 8831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8832
    goto/16 :goto_16d6

    .line 8818
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IBooleanConsumer;
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    .line 8819
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8820
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I

    move-result v3

    .line 8821
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8822
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8823
    goto/16 :goto_16d6

    .line 8808
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IBooleanConsumer;
    .end local v3    # "_result":I
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8809
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8810
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object v3

    .line 8811
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8812
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8813
    goto/16 :goto_16d6

    .line 8800
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherNotificationsEnabled()Z

    move-result v2

    .line 8801
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8802
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8803
    goto/16 :goto_16d6

    .line 8792
    .end local v2    # "_result":Z
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8793
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8794
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherNotificationsEnabled(Z)V

    .line 8795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8796
    goto/16 :goto_16d6

    .line 8784
    .end local v2    # "_arg0":Z
    :pswitch_15c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isCellularIdentifierDisclosureNotificationsEnabled()Z

    move-result v2

    .line 8785
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8786
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8787
    goto/16 :goto_16d6

    .line 8776
    .end local v2    # "_result":Z
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8777
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8778
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setEnableCellularIdentifierDisclosureNotifications(Z)V

    .line 8779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8780
    goto/16 :goto_16d6

    .line 8768
    .end local v2    # "_arg0":Z
    :pswitch_177
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAospDomainSelectionService()Z

    move-result v2

    .line 8769
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8770
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8771
    goto/16 :goto_16d6

    .line 8761
    .end local v2    # "_result":Z
    :pswitch_183
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->clearDomainSelectionServiceOverride()Z

    move-result v2

    .line 8762
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8763
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8764
    goto/16 :goto_16d6

    .line 8752
    .end local v2    # "_result":Z
    :pswitch_18f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 8753
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8754
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z

    move-result v3

    .line 8755
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8756
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8757
    goto/16 :goto_16d6

    .line 8742
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8743
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8744
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setShouldSendDatagramToModemInDemoMode(Z)Z

    move-result v3

    .line 8745
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8746
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8747
    goto/16 :goto_16d6

    .line 8733
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object v2

    .line 8734
    .local v2, "_arg0":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8735
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    .line 8736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8737
    goto/16 :goto_16d6

    .line 8723
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    :pswitch_1cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object v2

    .line 8724
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8725
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result v3

    .line 8726
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8727
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8728
    goto/16 :goto_16d6

    .line 8714
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    .end local v3    # "_result":I
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object v2

    .line 8715
    .local v2, "_arg0":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8716
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 8717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8718
    goto/16 :goto_16d6

    .line 8705
    .end local v2    # "_arg0":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    :pswitch_1f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object v2

    .line 8706
    .restart local v2    # "_arg0":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8707
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 8708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8709
    goto/16 :goto_16d6

    .line 8696
    .end local v2    # "_arg0":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    :pswitch_209
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8697
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8698
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    .line 8699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8700
    goto/16 :goto_16d6

    .line 8686
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_21c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8687
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8688
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object v3

    .line 8689
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8690
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8691
    goto/16 :goto_16d6

    .line 8681
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_22f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8677
    :pswitch_234
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8673
    :pswitch_239
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8669
    :pswitch_23e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideConfigDataVersion$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8665
    :pswitch_243
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8661
    :pswitch_248
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setTnScanningSupport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8652
    :pswitch_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8653
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8654
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteAccessAllowedForSubscriptions(Ljava/lang/String;)Z

    move-result v3

    .line 8655
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8656
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8657
    goto/16 :goto_16d6

    .line 8647
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_260
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8643
    :pswitch_265
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8639
    :pswitch_26a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8635
    :pswitch_26f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8631
    :pswitch_274
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8627
    :pswitch_279
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8623
    :pswitch_27e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSupportDisableSatelliteWhileEnableInProgress$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8614
    :pswitch_283
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8615
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8616
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteIgnoreCellularServiceState(Z)Z

    move-result v3

    .line 8617
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8618
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8619
    goto/16 :goto_16d6

    .line 8604
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_296
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 8605
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8606
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteListeningTimeoutDuration(J)Z

    move-result v4

    .line 8607
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8608
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8609
    goto/16 :goto_16d6

    .line 8594
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8595
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8596
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z

    move-result v3

    .line 8597
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8598
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8599
    goto/16 :goto_16d6

    .line 8589
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2bc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8581
    :pswitch_2c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8582
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8583
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceAlignedWithSatellite(Z)V

    .line 8584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8585
    goto/16 :goto_16d6

    .line 8572
    .end local v2    # "_arg0":Z
    :pswitch_2d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    move-result-object v2

    .line 8573
    .local v2, "_arg0":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8574
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    .line 8575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8576
    goto/16 :goto_16d6

    .line 8562
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    :pswitch_2e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    move-result-object v2

    .line 8563
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8564
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result v3

    .line 8565
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8566
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8567
    goto/16 :goto_16d6

    .line 8553
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    .end local v3    # "_result":I
    :pswitch_2fa
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8554
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8555
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    .line 8556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8557
    goto/16 :goto_16d6

    .line 8544
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_30d
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8545
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8546
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    .line 8547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8548
    goto/16 :goto_16d6

    .line 8535
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_320
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8536
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8537
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V

    .line 8538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8539
    goto/16 :goto_16d6

    .line 8530
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_333
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8522
    :pswitch_338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object v2

    .line 8523
    .local v2, "_arg0":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8524
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 8525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8526
    goto/16 :goto_16d6

    .line 8513
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    :pswitch_34b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object v2

    .line 8514
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8515
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 8516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8517
    goto/16 :goto_16d6

    .line 8505
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    :pswitch_35e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDisallowedReasons()[I

    move-result-object v2

    .line 8506
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8507
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8508
    goto/16 :goto_16d6

    .line 8501
    .end local v2    # "_result":[I
    :pswitch_36a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8493
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 8494
    .local v2, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8495
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 8496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8497
    goto/16 :goto_16d6

    .line 8484
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v2

    .line 8485
    .local v2, "_arg0":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8486
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 8487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8488
    goto/16 :goto_16d6

    .line 8474
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    :pswitch_395
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v2

    .line 8475
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8476
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result v3

    .line 8477
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8479
    goto/16 :goto_16d6

    .line 8465
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .end local v3    # "_result":I
    :pswitch_3ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object v2

    .line 8466
    .local v2, "_arg0":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8467
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    .line 8468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8469
    goto/16 :goto_16d6

    .line 8455
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    :pswitch_3bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object v2

    .line 8456
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8457
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result v3

    .line 8458
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8459
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8460
    goto/16 :goto_16d6

    .line 8446
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .end local v3    # "_result":I
    :pswitch_3d6
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8447
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8448
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    .line 8449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8450
    goto/16 :goto_16d6

    .line 8437
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_3e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v2

    .line 8438
    .local v2, "_arg0":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8439
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    .line 8440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8441
    goto/16 :goto_16d6

    .line 8427
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    :pswitch_3fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v2

    .line 8428
    .restart local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8429
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result v3

    .line 8430
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8431
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8432
    goto/16 :goto_16d6

    .line 8422
    .end local v2    # "_arg0":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .end local v3    # "_result":I
    :pswitch_413
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8418
    :pswitch_418
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8414
    :pswitch_41d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8410
    :pswitch_422
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8402
    :pswitch_427
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8403
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8404
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    .line 8405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8406
    goto/16 :goto_16d6

    .line 8393
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_43a
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8394
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8395
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    .line 8396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8397
    goto/16 :goto_16d6

    .line 8384
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_44d
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8385
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8386
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    .line 8387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8388
    goto/16 :goto_16d6

    .line 8375
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_460
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8376
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8377
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    .line 8378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8379
    goto/16 :goto_16d6

    .line 8366
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_473
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8367
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8368
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    .line 8369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8370
    goto/16 :goto_16d6

    .line 8361
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_486
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8357
    :pswitch_48b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8350
    :pswitch_490
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDomainSelectionSupported()Z

    move-result v2

    .line 8351
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8353
    goto/16 :goto_16d6

    .line 8346
    .end local v2    # "_result":Z
    :pswitch_49c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8337
    :pswitch_4a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8338
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8339
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object v3

    .line 8340
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8341
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 8342
    goto/16 :goto_16d6

    .line 8329
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    :pswitch_4b4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result v2

    .line 8330
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8332
    goto/16 :goto_16d6

    .line 8321
    .end local v2    # "_result":Z
    :pswitch_4c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8322
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8323
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherAndIntegrityEnabled(Z)V

    .line 8324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8325
    goto/16 :goto_16d6

    .line 8316
    .end local v2    # "_arg0":Z
    :pswitch_4cf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8307
    :pswitch_4d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8308
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8309
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 8310
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8311
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8312
    goto/16 :goto_16d6

    .line 8302
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4e7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8293
    :pswitch_4ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8294
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8295
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v3

    .line 8296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8298
    goto/16 :goto_16d6

    .line 8288
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4ff
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8279
    :pswitch_504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8280
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8281
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 8282
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8283
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8284
    goto/16 :goto_16d6

    .line 8274
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_517
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8270
    :pswitch_51c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8266
    :pswitch_521
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8259
    :pswitch_526
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemService()Ljava/lang/String;

    move-result-object v2

    .line 8260
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8262
    goto/16 :goto_16d6

    .line 8250
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8251
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8252
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setModemService(Ljava/lang/String;)Z

    move-result v3

    .line 8253
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8255
    goto/16 :goto_16d6

    .line 8245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_545
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8237
    :pswitch_54a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 8238
    .local v2, "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8239
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V

    .line 8240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8241
    goto/16 :goto_16d6

    .line 8232
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    :pswitch_55d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8228
    :pswitch_562
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8224
    :pswitch_567
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8216
    :pswitch_56c
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 8217
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8218
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 8219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8220
    goto/16 :goto_16d6

    .line 8208
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_57f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareForUnattendedReboot()I

    move-result v2

    .line 8209
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8211
    goto/16 :goto_16d6

    .line 8201
    .end local v2    # "_result":I
    :pswitch_58b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v2

    .line 8202
    .local v2, "_result":Landroid/telephony/PhoneCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8203
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8204
    goto/16 :goto_16d6

    .line 8197
    .end local v2    # "_result":Landroid/telephony/PhoneCapability;
    :pswitch_597
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8193
    :pswitch_59c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8189
    :pswitch_5a1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8180
    :pswitch_5a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8181
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8182
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRequestDisallowedStatus(I)Z

    move-result v3

    .line 8183
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8185
    goto/16 :goto_16d6

    .line 8170
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8172
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastUcePidfXmlShell(I)Ljava/lang/String;

    move-result-object v3

    .line 8173
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8175
    goto/16 :goto_16d6

    .line 8160
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8162
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 8163
    .local v3, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8164
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8165
    goto/16 :goto_16d6

    .line 8150
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_5df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8152
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 8153
    .restart local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8155
    goto/16 :goto_16d6

    .line 8145
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_5f2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8141
    :pswitch_5f7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8133
    :pswitch_5fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8134
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8135
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceUceEnabled(Z)V

    .line 8136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8137
    goto/16 :goto_16d6

    .line 8125
    .end local v2    # "_arg0":Z
    :pswitch_60b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUceEnabled()Z

    move-result v2

    .line 8126
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8128
    goto/16 :goto_16d6

    .line 8116
    .end local v2    # "_result":Z
    :pswitch_617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8117
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8118
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8119
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8121
    goto/16 :goto_16d6

    .line 8106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_62a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8107
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8108
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getContactFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8109
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8111
    goto/16 :goto_16d6

    .line 8101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_63d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8094
    :pswitch_642
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 8095
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8096
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8097
    goto/16 :goto_16d6

    .line 8085
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_64e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8086
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8087
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsFeatureValidationOverride(I)Z

    move-result v3

    .line 8088
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8089
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8090
    goto/16 :goto_16d6

    .line 8080
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_661
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8071
    :pswitch_666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8072
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8073
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierSingleRegistrationEnabled(I)Z

    move-result v3

    .line 8074
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8075
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8076
    goto/16 :goto_16d6

    .line 8062
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_679
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8063
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8064
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceToDeviceForceEnabled(Z)V

    .line 8065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8066
    goto/16 :goto_16d6

    .line 8053
    .end local v2    # "_arg0":Z
    :pswitch_688
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8054
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8055
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveDeviceToDeviceTransport(Ljava/lang/String;)V

    .line 8056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8057
    goto/16 :goto_16d6

    .line 8048
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_697
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8044
    :pswitch_69c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 8037
    :pswitch_6a1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSingleRegistrationEnabled()Z

    move-result v2

    .line 8038
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8039
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8040
    goto/16 :goto_16d6

    .line 8029
    .end local v2    # "_result":Z
    :pswitch_6ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8030
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8031
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V

    .line 8032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8033
    goto/16 :goto_16d6

    .line 8021
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6bc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsSingleRegistrationTestModeEnabled()Z

    move-result v2

    .line 8022
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8023
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8024
    goto/16 :goto_16d6

    .line 8013
    .end local v2    # "_result":Z
    :pswitch_6c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 8014
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8015
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsSingleRegistrationTestModeEnabled(Z)V

    .line 8016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8017
    goto/16 :goto_16d6

    .line 8004
    .end local v2    # "_arg0":Z
    :pswitch_6d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8005
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8006
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->triggerRcsReconfiguration(I)V

    .line 8007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8008
    goto/16 :goto_16d6

    .line 7999
    .end local v2    # "_arg0":I
    :pswitch_6e6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7995
    :pswitch_6eb
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7986
    :pswitch_6f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7987
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7988
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result v3

    .line 7989
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7990
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7991
    goto/16 :goto_16d6

    .line 7981
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_703
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7972
    :pswitch_708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7973
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7974
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGbaReleaseTime(I)I

    move-result v3

    .line 7975
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7976
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7977
    goto/16 :goto_16d6

    .line 7967
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_71b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7958
    :pswitch_720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7959
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7960
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundGbaService(I)Ljava/lang/String;

    move-result-object v3

    .line 7961
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7962
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7963
    goto/16 :goto_16d6

    .line 7953
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_733
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7949
    :pswitch_738
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7945
    :pswitch_73d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7936
    :pswitch_742
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7937
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7938
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v3

    .line 7939
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7940
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7941
    goto/16 :goto_16d6

    .line 7926
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7927
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7928
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isNrDualConnectivityEnabled(I)Z

    move-result v3

    .line 7929
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7930
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7931
    goto/16 :goto_16d6

    .line 7921
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_768
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7912
    :pswitch_76d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7913
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7914
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoNrEnabled(I)Z

    move-result v3

    .line 7915
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7916
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7917
    goto/16 :goto_16d6

    .line 7907
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_780
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7903
    :pswitch_785
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7896
    :pswitch_78a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canConnectTo5GInDsdsMode()Z

    move-result v2

    .line 7897
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7898
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7899
    goto/16 :goto_16d6

    .line 7887
    .end local v2    # "_result":Z
    :pswitch_796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7888
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7889
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v3

    .line 7890
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7891
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7892
    goto/16 :goto_16d6

    .line 7881
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7a9
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->userActivity()V

    .line 7882
    goto/16 :goto_16d6

    .line 7876
    :pswitch_7ae
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestUserActivityNotification()V

    .line 7877
    goto/16 :goto_16d6

    .line 7872
    :pswitch_7b3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7868
    :pswitch_7b8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7859
    :pswitch_7bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7860
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7861
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccLockEnabled(I)Z

    move-result v3

    .line 7862
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7864
    goto/16 :goto_16d6

    .line 7854
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7d0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7847
    :pswitch_7d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7848
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7849
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCepEnabled(Z)V

    .line 7850
    goto/16 :goto_16d6

    .line 7842
    .end local v2    # "_arg0":Z
    :pswitch_7e1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7838
    :pswitch_7e6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7829
    :pswitch_7eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7830
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7831
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 7832
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7833
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7834
    goto/16 :goto_16d6

    .line 7819
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7820
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7821
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v3

    .line 7822
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7823
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7824
    goto/16 :goto_16d6

    .line 7813
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_811
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showSwitchToManagedProfileDialog()V

    .line 7814
    goto/16 :goto_16d6

    .line 7809
    :pswitch_816
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7805
    :pswitch_81b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7796
    :pswitch_820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7797
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7798
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v3

    .line 7799
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7800
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7801
    goto/16 :goto_16d6

    .line 7791
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    :pswitch_833
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7787
    :pswitch_838
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7783
    :pswitch_83d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7779
    :pswitch_842
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7775
    :pswitch_847
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7768
    :pswitch_84c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7769
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7770
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7771
    goto/16 :goto_16d6

    .line 7759
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7760
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7761
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getHalVersion(I)I

    move-result v3

    .line 7762
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7763
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7764
    goto/16 :goto_16d6

    .line 7751
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_86b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioHalVersion()I

    move-result v2

    .line 7752
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7753
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7754
    goto/16 :goto_16d6

    .line 7742
    .end local v2    # "_result":I
    :pswitch_877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7743
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7744
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 7745
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7746
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7747
    goto/16 :goto_16d6

    .line 7737
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :pswitch_88a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7729
    :pswitch_88f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7730
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7731
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchMultiSimConfig(I)V

    .line 7732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7733
    goto/16 :goto_16d6

    .line 7724
    .end local v2    # "_arg0":I
    :pswitch_89e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7716
    :pswitch_8a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7717
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7718
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimCarrierRestriction(Z)V

    .line 7719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7720
    goto/16 :goto_16d6

    .line 7711
    .end local v2    # "_arg0":Z
    :pswitch_8b2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7705
    :pswitch_8b7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetOtaEmergencyNumberDbFilePath()V

    .line 7706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7707
    goto/16 :goto_16d6

    .line 7697
    :pswitch_8bf
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 7698
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7699
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 7700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7701
    goto/16 :goto_16d6

    .line 7690
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_8d2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyOtaEmergencyNumberDbInstalled()V

    .line 7691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7692
    goto/16 :goto_16d6

    .line 7681
    :pswitch_8da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7682
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7683
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberDbVersion(I)I

    move-result v3

    .line 7684
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7685
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7686
    goto/16 :goto_16d6

    .line 7673
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8ed
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v2

    .line 7674
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7675
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7676
    goto/16 :goto_16d6

    .line 7669
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8f9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7663
    :pswitch_8fe
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startEmergencyCallbackMode()V

    .line 7664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7665
    goto/16 :goto_16d6

    .line 7659
    :pswitch_906
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7655
    :pswitch_90b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7651
    :pswitch_910
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7647
    :pswitch_915
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7643
    :pswitch_91a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7639
    :pswitch_91f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7635
    :pswitch_924
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7631
    :pswitch_929
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7627
    :pswitch_92e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7623
    :pswitch_933
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7619
    :pswitch_938
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7615
    :pswitch_93d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7606
    :pswitch_942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7607
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7608
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v3

    .line 7609
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7610
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7611
    goto/16 :goto_16d6

    .line 7601
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_955
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isEmergencyNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7597
    :pswitch_95a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEmergencyNumberList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7588
    :pswitch_95f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7589
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7590
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyOverVolteEnabled(I)Z

    move-result v3

    .line 7591
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7593
    goto/16 :goto_16d6

    .line 7583
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_972
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRttCapabilitySetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7579
    :pswitch_977
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiRoamingModeSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7570
    :pswitch_97c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7571
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7572
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiRoamingModeSetting(I)I

    move-result v3

    .line 7573
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7574
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7575
    goto/16 :goto_16d6

    .line 7565
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_98f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiModeSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7556
    :pswitch_994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7557
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7558
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiModeSetting(I)I

    move-result v3

    .line 7559
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7560
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7561
    goto/16 :goto_16d6

    .line 7551
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9a7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7547
    :pswitch_9ac
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiRoamingSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7538
    :pswitch_9b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7539
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7540
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v3

    .line 7541
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7542
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7543
    goto/16 :goto_16d6

    .line 7533
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9c4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCrossSimCallingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7524
    :pswitch_9c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7525
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7526
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCrossSimCallingEnabledByUser(I)Z

    move-result v3

    .line 7527
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7528
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7529
    goto/16 :goto_16d6

    .line 7519
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9dc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7510
    :pswitch_9e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7511
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7512
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiSettingEnabled(I)Z

    move-result v3

    .line 7513
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7514
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7515
    goto/16 :goto_16d6

    .line 7505
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9f4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVtSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7496
    :pswitch_9f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7497
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7498
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVtSettingEnabled(I)Z

    move-result v3

    .line 7499
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7501
    goto/16 :goto_16d6

    .line 7491
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a0c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setAdvancedCallingSettingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7482
    :pswitch_a11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7483
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7484
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAdvancedCallingSettingEnabled(I)Z

    move-result v3

    .line 7485
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7486
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7487
    goto/16 :goto_16d6

    .line 7477
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7473
    :pswitch_a29
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7469
    :pswitch_a2e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7465
    :pswitch_a33
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterMmTelCapabilityCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7461
    :pswitch_a38
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerMmTelCapabilityCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7457
    :pswitch_a3d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsMmTelRegistrationTransportType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7453
    :pswitch_a42
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsMmTelRegistrationState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7443
    :pswitch_a47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7445
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 7446
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7447
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 7448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7449
    goto/16 :goto_16d6

    .line 7432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_a5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7434
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 7435
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7436
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 7437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7438
    goto/16 :goto_16d6

    .line 7421
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_a75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7423
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 7424
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7425
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 7426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7427
    goto/16 :goto_16d6

    .line 7410
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_a8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7412
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 7413
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7414
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 7415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7416
    goto/16 :goto_16d6

    .line 7405
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_aa3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7398
    :pswitch_aa8
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencySmsMode()Z

    move-result v2

    .line 7399
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7400
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7401
    goto/16 :goto_16d6

    .line 7389
    .end local v2    # "_result":Z
    :pswitch_ab4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7390
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7391
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkSelectionMode(I)I

    move-result v3

    .line 7392
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7393
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7394
    goto/16 :goto_16d6

    .line 7384
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ac7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7376
    :pswitch_acc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7377
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7378
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->refreshUiccProfile(I)V

    .line 7379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7380
    goto/16 :goto_16d6

    .line 7366
    .end local v2    # "_arg0":I
    :pswitch_adb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7367
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7368
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdListVersion(I)I

    move-result v3

    .line 7369
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7371
    goto/16 :goto_16d6

    .line 7361
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_aee
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7357
    :pswitch_af3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7346
    :pswitch_af8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7348
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7349
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7350
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaSubscriptionMode(II)Z

    move-result v4

    .line 7351
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7352
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7353
    goto/16 :goto_16d6

    .line 7336
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b0f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7337
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7338
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaSubscriptionMode(I)I

    move-result v3

    .line 7339
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7340
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7341
    goto/16 :goto_16d6

    .line 7324
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7326
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7327
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7328
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaRoamingMode(II)Z

    move-result v4

    .line 7329
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7331
    goto/16 :goto_16d6

    .line 7314
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7315
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7316
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaRoamingMode(I)I

    move-result v3

    .line 7317
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7319
    goto/16 :goto_16d6

    .line 7303
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7305
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7306
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7307
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(IZ)V

    .line 7308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7309
    goto/16 :goto_16d6

    .line 7293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_b5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7294
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7295
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataRoamingEnabled(I)Z

    move-result v3

    .line 7296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7298
    goto/16 :goto_16d6

    .line 7283
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b72
    sget-object v2, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7284
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7285
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v3

    .line 7286
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7288
    goto/16 :goto_16d6

    .line 7273
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    .end local v3    # "_result":Z
    :pswitch_b87
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 7274
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7275
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchSlots([I)Z

    move-result v3

    .line 7276
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7278
    goto/16 :goto_16d6

    .line 7263
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Z
    :pswitch_b9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7264
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7265
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    .line 7266
    .local v3, "_result":[Landroid/telephony/UiccSlotInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7267
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 7268
    goto/16 :goto_16d6

    .line 7253
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/telephony/UiccSlotInfo;
    :pswitch_bad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7254
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7255
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 7256
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7257
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7258
    goto/16 :goto_16d6

    .line 7241
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    :pswitch_bc0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7243
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7244
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7245
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v4

    .line 7246
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7247
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7248
    goto/16 :goto_16d6

    .line 7231
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_bd7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7232
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7233
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 7234
    .local v3, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7235
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7236
    goto/16 :goto_16d6

    .line 7221
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/SignalStrength;
    :pswitch_bea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7223
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyCallbackMode(I)Z

    move-result v3

    .line 7224
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7226
    goto/16 :goto_16d6

    .line 7216
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_bfd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7212
    :pswitch_c02
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7208
    :pswitch_c07
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7198
    :pswitch_c0c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7200
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7201
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7202
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlot(II)V

    .line 7203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7204
    goto/16 :goto_16d6

    .line 7193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c1f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7189
    :pswitch_c24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7179
    :pswitch_c29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7181
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 7182
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7183
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 7184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7185
    goto/16 :goto_16d6

    .line 7174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_c40
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7170
    :pswitch_c45
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7162
    :pswitch_c4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7163
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7164
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionResetAll(I)V

    .line 7165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7166
    goto/16 :goto_16d6

    .line 7151
    .end local v2    # "_arg0":I
    :pswitch_c59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7153
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7154
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7155
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionReportDefaultNetworkStatus(IZ)V

    .line 7156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7157
    goto/16 :goto_16d6

    .line 7140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7142
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7143
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7144
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    .line 7145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7146
    goto/16 :goto_16d6

    .line 7135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c7f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7126
    :pswitch_c84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7128
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 7129
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7131
    goto/16 :goto_16d6

    .line 7116
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7118
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierId(I)I

    move-result v3

    .line 7119
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7121
    goto/16 :goto_16d6

    .line 7106
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_caa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7107
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7108
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 7109
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7111
    goto/16 :goto_16d6

    .line 7096
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_cbd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7097
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7098
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierId(I)I

    move-result v3

    .line 7099
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7101
    goto/16 :goto_16d6

    .line 7088
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_cd0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v2

    .line 7089
    .local v2, "_result":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7090
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7091
    goto/16 :goto_16d6

    .line 7079
    .end local v2    # "_result":Landroid/telephony/CarrierRestrictionRules;
    :pswitch_cdc
    sget-object v2, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierRestrictionRules;

    .line 7080
    .local v2, "_arg0":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7081
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v3

    .line 7082
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7083
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7084
    goto/16 :goto_16d6

    .line 7071
    .end local v2    # "_arg0":Landroid/telephony/CarrierRestrictionRules;
    .end local v3    # "_result":I
    :pswitch_cf3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v2

    .line 7072
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7073
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7074
    goto/16 :goto_16d6

    .line 7062
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :pswitch_cff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7063
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7064
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v3

    .line 7065
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7066
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7067
    goto/16 :goto_16d6

    .line 7052
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7053
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7054
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    move-result-object v3

    .line 7055
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7056
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7057
    goto/16 :goto_16d6

    .line 7040
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7042
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7043
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7044
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v4

    .line 7045
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7046
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7047
    goto/16 :goto_16d6

    .line 7032
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_d3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v2

    .line 7033
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7034
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7035
    goto/16 :goto_16d6

    .line 7023
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7024
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7025
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v3

    .line 7026
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7027
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7028
    goto/16 :goto_16d6

    .line 7018
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d5b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7009
    :pswitch_d60
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 7010
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7011
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    .line 7012
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7013
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7014
    goto/16 :goto_16d6

    .line 7004
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Z
    :pswitch_d77
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6995
    :pswitch_d7c
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 6996
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6997
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v3

    .line 6998
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6999
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7000
    goto/16 :goto_16d6

    .line 6990
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Landroid/net/Uri;
    :pswitch_d93
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6983
    :pswitch_d98
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 6984
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6985
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 6986
    goto/16 :goto_16d6

    .line 6973
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_da8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6974
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6975
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 6976
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6977
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6978
    goto/16 :goto_16d6

    .line 6962
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_dbb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6964
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6965
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6966
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(ILjava/lang/String;)V

    .line 6967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6968
    goto/16 :goto_16d6

    .line 6952
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_dce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6953
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6954
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 6955
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6956
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6957
    goto/16 :goto_16d6

    .line 6947
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_de1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6943
    :pswitch_de6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6934
    :pswitch_deb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6935
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6936
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 6937
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6938
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6939
    goto/16 :goto_16d6

    .line 6929
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_dfe
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6920
    :pswitch_e03
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6921
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6922
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 6923
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6924
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6925
    goto/16 :goto_16d6

    .line 6908
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6910
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6911
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6912
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6913
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6914
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6915
    goto/16 :goto_16d6

    .line 6903
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_e2d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6892
    :pswitch_e32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6894
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6895
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6896
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6897
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6898
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6899
    goto/16 :goto_16d6

    .line 6882
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_e49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6883
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6884
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6885
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6887
    goto/16 :goto_16d6

    .line 6872
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6873
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6874
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegTechnologyForMmTel(I)I

    move-result v3

    .line 6875
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6876
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6877
    goto/16 :goto_16d6

    .line 6862
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6863
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6864
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result v3

    .line 6865
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6867
    goto/16 :goto_16d6

    .line 6852
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6853
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6854
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result v3

    .line 6855
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6856
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6857
    goto/16 :goto_16d6

    .line 6842
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6843
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6844
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered(I)Z

    move-result v3

    .line 6845
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6846
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6847
    goto/16 :goto_16d6

    .line 6834
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ea8
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v2

    .line 6835
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6836
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6837
    goto/16 :goto_16d6

    .line 6825
    .end local v2    # "_result":Z
    :pswitch_eb4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6826
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6827
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRttSupported(I)Z

    move-result v3

    .line 6828
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6829
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6830
    goto/16 :goto_16d6

    .line 6817
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ec7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v2

    .line 6818
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6819
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6820
    goto/16 :goto_16d6

    .line 6813
    .end local v2    # "_result":Z
    :pswitch_ed3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6809
    :pswitch_ed8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6798
    :pswitch_edd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6800
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6801
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6802
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 6803
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6804
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6805
    goto/16 :goto_16d6

    .line 6789
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_ef4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6790
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6791
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 6792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6793
    goto/16 :goto_16d6

    .line 6784
    .end local v2    # "_arg0":Z
    :pswitch_f03
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6773
    :pswitch_f08
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6775
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6776
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6777
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v4

    .line 6778
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6779
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6780
    goto/16 :goto_16d6

    .line 6766
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_f1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 6767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6768
    goto/16 :goto_16d6

    .line 6759
    :pswitch_f27
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v2

    .line 6760
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6761
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6762
    goto/16 :goto_16d6

    .line 6755
    .end local v2    # "_result":Z
    :pswitch_f33
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6744
    :pswitch_f38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6746
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6747
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6748
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v4

    .line 6749
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6750
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6751
    goto/16 :goto_16d6

    .line 6732
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6734
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6735
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6736
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6737
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6738
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6739
    goto/16 :goto_16d6

    .line 6727
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_f66
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6723
    :pswitch_f6b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6719
    :pswitch_f70
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6715
    :pswitch_f75
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6704
    :pswitch_f7a
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 6706
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6707
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6708
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 6709
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6710
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6711
    goto/16 :goto_16d6

    .line 6694
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6695
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6696
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    .line 6697
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6698
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6699
    goto/16 :goto_16d6

    .line 6682
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_fa8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6684
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6685
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6686
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v4

    .line 6687
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6688
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6689
    goto/16 :goto_16d6

    .line 6670
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_fbf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6672
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6673
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6674
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatusForUid(II)I

    move-result v4

    .line 6675
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6676
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6677
    goto/16 :goto_16d6

    .line 6660
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_fd6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6661
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6662
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v3

    .line 6663
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6664
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6665
    goto/16 :goto_16d6

    .line 6655
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_fe9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6646
    :pswitch_fee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6647
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6648
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v3

    .line 6649
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6650
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6651
    goto/16 :goto_16d6

    .line 6636
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6637
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6638
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v3

    .line 6639
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6640
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6641
    goto/16 :goto_16d6

    .line 6627
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6628
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6629
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 6630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6631
    goto/16 :goto_16d6

    .line 6617
    .end local v2    # "_arg0":Z
    :pswitch_1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6618
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6619
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isManualNetworkSelectionAllowed(I)Z

    move-result v3

    .line 6620
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6621
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6622
    goto/16 :goto_16d6

    .line 6605
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6607
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6608
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6609
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForReason(II)Z

    move-result v4

    .line 6610
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6611
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6612
    goto/16 :goto_16d6

    .line 6600
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_104d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6591
    :pswitch_1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6592
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6593
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabled(I)Z

    move-result v3

    .line 6594
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6595
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6596
    goto/16 :goto_16d6

    .line 6581
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6582
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6583
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isUserDataEnabled(I)Z

    move-result v3

    .line 6584
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6585
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6586
    goto/16 :goto_16d6

    .line 6571
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6572
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6573
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v3

    .line 6574
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6575
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6576
    goto/16 :goto_16d6

    .line 6566
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_108b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6555
    :pswitch_1090
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6557
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6558
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6559
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v4

    .line 6560
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6561
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6562
    goto/16 :goto_16d6

    .line 6550
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_10a7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6540
    :pswitch_10ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6542
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6543
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6544
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->stopNetworkScan(II)V

    .line 6545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6546
    goto/16 :goto_16d6

    .line 6535
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_10bf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6531
    :pswitch_10c4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6523
    :pswitch_10c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6524
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6525
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6527
    goto/16 :goto_16d6

    .line 6512
    .end local v2    # "_arg0":I
    :pswitch_10d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6514
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6515
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6516
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6518
    goto/16 :goto_16d6

    .line 6507
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_10ef
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6498
    :pswitch_10f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6499
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6500
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearCarrierImsServiceOverride(I)Z

    move-result v3

    .line 6501
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6502
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6503
    goto/16 :goto_16d6

    .line 6493
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1107
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6482
    :pswitch_110c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6484
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6485
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6486
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 6487
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6488
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6489
    goto/16 :goto_16d6

    .line 6470
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6472
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6473
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6474
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 6475
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6476
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6477
    goto/16 :goto_16d6

    .line 6461
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_113a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 6462
    .local v2, "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6463
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 6464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6465
    goto/16 :goto_16d6

    .line 6450
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_114d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6452
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    .line 6453
    .local v3, "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6454
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 6455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6456
    goto/16 :goto_16d6

    .line 6441
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6442
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6443
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetIms(I)V

    .line 6444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6445
    goto/16 :goto_16d6

    .line 6432
    .end local v2    # "_arg0":I
    :pswitch_1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6434
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableIms(I)V

    .line 6435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6436
    goto/16 :goto_16d6

    .line 6423
    .end local v2    # "_arg0":I
    :pswitch_1182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6424
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6425
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableIms(I)V

    .line 6426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6427
    goto/16 :goto_16d6

    .line 6413
    .end local v2    # "_arg0":I
    :pswitch_1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6414
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6415
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v3

    .line 6416
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6417
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6418
    goto/16 :goto_16d6

    .line 6403
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_11a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6404
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6405
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesBitmask(I)I

    move-result v3

    .line 6406
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6407
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6408
    goto/16 :goto_16d6

    .line 6393
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_11b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6394
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6395
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->rebootModem(I)Z

    move-result v3

    .line 6396
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6397
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6398
    goto/16 :goto_16d6

    .line 6383
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_11ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6384
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6385
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetModemConfig(I)Z

    move-result v3

    .line 6386
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6387
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6388
    goto/16 :goto_16d6

    .line 6373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_11dd
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 6374
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6375
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v3

    .line 6376
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6378
    goto/16 :goto_16d6

    .line 6361
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_11f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6363
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6364
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6365
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v4

    .line 6366
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6368
    goto/16 :goto_16d6

    .line 6351
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6353
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v3

    .line 6354
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6356
    goto/16 :goto_16d6

    .line 6339
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_121a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6341
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6342
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6344
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6346
    goto/16 :goto_16d6

    .line 6334
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1231
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6330
    :pswitch_1236
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6326
    :pswitch_123b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6322
    :pswitch_1240
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6318
    :pswitch_1245
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6309
    :pswitch_124a
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 6310
    .local v2, "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6311
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v3

    .line 6312
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6314
    goto/16 :goto_16d6

    .line 6299
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Z
    :pswitch_1261
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 6300
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6301
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v3

    .line 6302
    .local v3, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6303
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6304
    goto/16 :goto_16d6

    .line 6288
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :pswitch_1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6290
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6291
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6292
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(II)V

    .line 6293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6294
    goto/16 :goto_16d6

    .line 6283
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_128b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6279
    :pswitch_1290
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6268
    :pswitch_1295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6270
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6271
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6272
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6273
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6274
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6275
    goto/16 :goto_16d6

    .line 6263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_12ac
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6252
    :pswitch_12b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6254
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6255
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6256
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6257
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6259
    goto/16 :goto_16d6

    .line 6242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6243
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6244
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotIndex(I)Z

    move-result v3

    .line 6245
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6247
    goto/16 :goto_16d6

    .line 6234
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_12db
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v2

    .line 6235
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6236
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6237
    goto/16 :goto_16d6

    .line 6230
    .end local v2    # "_result":Z
    :pswitch_12e7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6226
    :pswitch_12ec
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6215
    :pswitch_12f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6217
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6218
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6219
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6220
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6222
    goto/16 :goto_16d6

    .line 6210
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1308
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6200
    :pswitch_130d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6202
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6203
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6204
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 6205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6206
    goto/16 :goto_16d6

    .line 6195
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1320
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6186
    :pswitch_1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6187
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6188
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v3

    .line 6189
    .local v3, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6190
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6191
    goto/16 :goto_16d6

    .line 6174
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_1338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6176
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6177
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6178
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v4

    .line 6179
    .local v4, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6180
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6181
    goto/16 :goto_16d6

    .line 6164
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_134f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6166
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6167
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6168
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 6169
    goto/16 :goto_16d6

    .line 6159
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_135f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6155
    :pswitch_1364
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6144
    :pswitch_1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6146
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6147
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6148
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 6149
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6150
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6151
    goto/16 :goto_16d6

    .line 6134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_1380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6135
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6136
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v3

    .line 6137
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6139
    goto/16 :goto_16d6

    .line 6129
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1393
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6118
    :pswitch_1398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6120
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6121
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6122
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivationState(ILjava/lang/String;)I

    move-result v4

    .line 6123
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6125
    goto/16 :goto_16d6

    .line 6106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6108
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6109
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6110
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v4

    .line 6111
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6113
    goto/16 :goto_16d6

    .line 6095
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6097
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6098
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6099
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataActivationState(II)V

    .line 6100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6101
    goto/16 :goto_16d6

    .line 6084
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_13d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6086
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6087
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6088
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceActivationState(II)V

    .line 6089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6090
    goto/16 :goto_16d6

    .line 6079
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_13ec
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6072
    :pswitch_13f1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v2

    .line 6073
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6074
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6075
    goto/16 :goto_16d6

    .line 6068
    .end local v2    # "_result":Z
    :pswitch_13fd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6057
    :pswitch_1402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6059
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6060
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6061
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6062
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6063
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6064
    goto/16 :goto_16d6

    .line 6052
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1419
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6041
    :pswitch_141e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6043
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6044
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6045
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6046
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6047
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6048
    goto/16 :goto_16d6

    .line 6036
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1435
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6025
    :pswitch_143a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6027
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6028
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6029
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6030
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6031
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6032
    goto/16 :goto_16d6

    .line 6015
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6016
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6017
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v3

    .line 6018
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6019
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6020
    goto/16 :goto_16d6

    .line 6007
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1464
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v2

    .line 6008
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6009
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6010
    goto/16 :goto_16d6

    .line 5998
    .end local v2    # "_result":I
    :pswitch_1470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5999
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6000
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubId(I)I

    move-result v3

    .line 6001
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6002
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6003
    goto/16 :goto_16d6

    .line 5990
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1483
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v2

    .line 5991
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5992
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5993
    goto/16 :goto_16d6

    .line 5981
    .end local v2    # "_result":I
    :pswitch_148f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5982
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5983
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubId(I)I

    move-result v3

    .line 5984
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5985
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5986
    goto/16 :goto_16d6

    .line 5973
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_14a2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v2

    .line 5974
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5975
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5976
    goto/16 :goto_16d6

    .line 5969
    .end local v2    # "_result":I
    :pswitch_14ae
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5962
    :pswitch_14b3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v2

    .line 5963
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5964
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5965
    goto/16 :goto_16d6

    .line 5951
    .end local v2    # "_result":I
    :pswitch_14bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5953
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5954
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5955
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5956
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5957
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5958
    goto/16 :goto_16d6

    .line 5941
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :pswitch_14d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5942
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5943
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 5944
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5945
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5946
    goto/16 :goto_16d6

    .line 5929
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5931
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5932
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5933
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v4

    .line 5934
    .local v4, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5935
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5936
    goto/16 :goto_16d6

    .line 5919
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/CellIdentity;
    :pswitch_1500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5920
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5921
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible(I)Z

    move-result v3

    .line 5922
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5923
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5924
    goto/16 :goto_16d6

    .line 5909
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5910
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5911
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 5912
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5913
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5914
    goto/16 :goto_16d6

    .line 5899
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5900
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5901
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 5902
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5903
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5904
    goto/16 :goto_16d6

    .line 5892
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1539
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 5893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5894
    goto/16 :goto_16d6

    .line 5886
    :pswitch_1541
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 5887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5888
    goto/16 :goto_16d6

    .line 5878
    :pswitch_1549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5879
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5880
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationWithPackageName(Ljava/lang/String;)V

    .line 5881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5882
    goto/16 :goto_16d6

    .line 5871
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1558
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 5872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5873
    goto/16 :goto_16d6

    .line 5867
    :pswitch_1560
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5856
    :pswitch_1565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5858
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5859
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5860
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->clearRadioPowerOffForReason(II)Z

    move-result v4

    .line 5861
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5862
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5863
    goto/16 :goto_16d6

    .line 5844
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_157c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5846
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5847
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5848
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestRadioPowerOffForReason(II)Z

    move-result v4

    .line 5849
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5850
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5851
    goto/16 :goto_16d6

    .line 5834
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1593
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5835
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5836
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v3

    .line 5837
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5838
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5839
    goto/16 :goto_16d6

    .line 5822
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_15a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5824
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5825
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5826
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v4

    .line 5827
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5828
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5829
    goto/16 :goto_16d6

    .line 5812
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_15bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5813
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5814
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 5815
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5816
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5817
    goto/16 :goto_16d6

    .line 5803
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_15d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5804
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5805
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 5806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5807
    goto/16 :goto_16d6

    .line 5796
    .end local v2    # "_arg0":I
    :pswitch_15df
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 5797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5798
    goto/16 :goto_16d6

    .line 5785
    :pswitch_15e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5787
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5788
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5789
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 5790
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5791
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5792
    goto/16 :goto_16d6

    .line 5780
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_15fe
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5771
    :pswitch_1603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5772
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5773
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 5774
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5775
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5776
    goto/16 :goto_16d6

    .line 5766
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1616
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5755
    :pswitch_161b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5757
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5758
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5759
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v4

    .line 5760
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5761
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5762
    goto/16 :goto_16d6

    .line 5750
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[I
    :pswitch_1632
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5739
    :pswitch_1637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5741
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5742
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5743
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 5744
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5745
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5746
    goto/16 :goto_16d6

    .line 5729
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_164e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5730
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5731
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallComposerStatus(I)I

    move-result v3

    .line 5732
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5733
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5734
    goto/16 :goto_16d6

    .line 5718
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5720
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5721
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5722
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallComposerStatus(II)V

    .line 5723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5724
    goto :goto_16d6

    .line 5713
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1673
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5702
    :pswitch_1678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5704
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5705
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5706
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 5707
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5708
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5709
    goto :goto_16d6

    .line 5690
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_168e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5692
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5693
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5694
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5695
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5696
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5697
    goto :goto_16d6

    .line 5680
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_16a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5681
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5682
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v3

    .line 5683
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5684
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5685
    goto :goto_16d6

    .line 5669
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_16b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5671
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5672
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5673
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 5674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5675
    goto :goto_16d6

    .line 5660
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_16c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5661
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5662
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 5663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5664
    nop

    .line 8967
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_16d6
    return v1

    nop

    :pswitch_data_16d8
    .packed-switch 0x1
        :pswitch_16c8
        :pswitch_16b6
        :pswitch_16a4
        :pswitch_168e
        :pswitch_1678
        :pswitch_1673
        :pswitch_1661
        :pswitch_164e
        :pswitch_1637
        :pswitch_1632
        :pswitch_161b
        :pswitch_1616
        :pswitch_1603
        :pswitch_15fe
        :pswitch_15e7
        :pswitch_15df
        :pswitch_15d0
        :pswitch_15bd
        :pswitch_15a6
        :pswitch_1593
        :pswitch_157c
        :pswitch_1565
        :pswitch_1560
        :pswitch_1558
        :pswitch_1549
        :pswitch_1541
        :pswitch_1539
        :pswitch_1526
        :pswitch_1513
        :pswitch_1500
        :pswitch_14e9
        :pswitch_14d6
        :pswitch_14bf
        :pswitch_14b3
        :pswitch_14ae
        :pswitch_14a2
        :pswitch_148f
        :pswitch_1483
        :pswitch_1470
        :pswitch_1464
        :pswitch_1451
        :pswitch_143a
        :pswitch_1435
        :pswitch_141e
        :pswitch_1419
        :pswitch_1402
        :pswitch_13fd
        :pswitch_13f1
        :pswitch_13ec
        :pswitch_13d9
        :pswitch_13c6
        :pswitch_13af
        :pswitch_1398
        :pswitch_1393
        :pswitch_1380
        :pswitch_1369
        :pswitch_1364
        :pswitch_135f
        :pswitch_134f
        :pswitch_1338
        :pswitch_1325
        :pswitch_1320
        :pswitch_130d
        :pswitch_1308
        :pswitch_12f1
        :pswitch_12ec
        :pswitch_12e7
        :pswitch_12db
        :pswitch_12c8
        :pswitch_12b1
        :pswitch_12ac
        :pswitch_1295
        :pswitch_1290
        :pswitch_128b
        :pswitch_1278
        :pswitch_1261
        :pswitch_124a
        :pswitch_1245
        :pswitch_1240
        :pswitch_123b
        :pswitch_1236
        :pswitch_1231
        :pswitch_121a
        :pswitch_1207
        :pswitch_11f0
        :pswitch_11dd
        :pswitch_11ca
        :pswitch_11b7
        :pswitch_11a4
        :pswitch_1191
        :pswitch_1182
        :pswitch_1173
        :pswitch_1164
        :pswitch_114d
        :pswitch_113a
        :pswitch_1123
        :pswitch_110c
        :pswitch_1107
        :pswitch_10f4
        :pswitch_10ef
        :pswitch_10d8
        :pswitch_10c9
        :pswitch_10c4
        :pswitch_10bf
        :pswitch_10ac
        :pswitch_10a7
        :pswitch_1090
        :pswitch_108b
        :pswitch_1078
        :pswitch_1065
        :pswitch_1052
        :pswitch_104d
        :pswitch_1036
        :pswitch_1023
        :pswitch_1014
        :pswitch_1001
        :pswitch_fee
        :pswitch_fe9
        :pswitch_fd6
        :pswitch_fbf
        :pswitch_fa8
        :pswitch_f95
        :pswitch_f7a
        :pswitch_f75
        :pswitch_f70
        :pswitch_f6b
        :pswitch_f66
        :pswitch_f4f
        :pswitch_f38
        :pswitch_f33
        :pswitch_f27
        :pswitch_f1f
        :pswitch_f08
        :pswitch_f03
        :pswitch_ef4
        :pswitch_edd
        :pswitch_ed8
        :pswitch_ed3
        :pswitch_ec7
        :pswitch_eb4
        :pswitch_ea8
        :pswitch_e95
        :pswitch_e82
        :pswitch_e6f
        :pswitch_e5c
        :pswitch_e49
        :pswitch_e32
        :pswitch_e2d
        :pswitch_e16
        :pswitch_e03
        :pswitch_dfe
        :pswitch_deb
        :pswitch_de6
        :pswitch_de1
        :pswitch_dce
        :pswitch_dbb
        :pswitch_da8
        :pswitch_d98
        :pswitch_d93
        :pswitch_d7c
        :pswitch_d77
        :pswitch_d60
        :pswitch_d5b
        :pswitch_d48
        :pswitch_d3c
        :pswitch_d25
        :pswitch_d12
        :pswitch_cff
        :pswitch_cf3
        :pswitch_cdc
        :pswitch_cd0
        :pswitch_cbd
        :pswitch_caa
        :pswitch_c97
        :pswitch_c84
        :pswitch_c7f
        :pswitch_c6c
        :pswitch_c59
        :pswitch_c4a
        :pswitch_c45
        :pswitch_c40
        :pswitch_c29
        :pswitch_c24
        :pswitch_c1f
        :pswitch_c0c
        :pswitch_c07
        :pswitch_c02
        :pswitch_bfd
        :pswitch_bea
        :pswitch_bd7
        :pswitch_bc0
        :pswitch_bad
        :pswitch_b9a
        :pswitch_b87
        :pswitch_b72
        :pswitch_b5f
        :pswitch_b4c
        :pswitch_b39
        :pswitch_b22
        :pswitch_b0f
        :pswitch_af8
        :pswitch_af3
        :pswitch_aee
        :pswitch_adb
        :pswitch_acc
        :pswitch_ac7
        :pswitch_ab4
        :pswitch_aa8
        :pswitch_aa3
        :pswitch_a8c
        :pswitch_a75
        :pswitch_a5e
        :pswitch_a47
        :pswitch_a42
        :pswitch_a3d
        :pswitch_a38
        :pswitch_a33
        :pswitch_a2e
        :pswitch_a29
        :pswitch_a24
        :pswitch_a11
        :pswitch_a0c
        :pswitch_9f9
        :pswitch_9f4
        :pswitch_9e1
        :pswitch_9dc
        :pswitch_9c9
        :pswitch_9c4
        :pswitch_9b1
        :pswitch_9ac
        :pswitch_9a7
        :pswitch_994
        :pswitch_98f
        :pswitch_97c
        :pswitch_977
        :pswitch_972
        :pswitch_95f
        :pswitch_95a
        :pswitch_955
        :pswitch_942
        :pswitch_93d
        :pswitch_938
        :pswitch_933
        :pswitch_92e
        :pswitch_929
        :pswitch_924
        :pswitch_91f
        :pswitch_91a
        :pswitch_915
        :pswitch_910
        :pswitch_90b
        :pswitch_906
        :pswitch_8fe
        :pswitch_8f9
        :pswitch_8ed
        :pswitch_8da
        :pswitch_8d2
        :pswitch_8bf
        :pswitch_8b7
        :pswitch_8b2
        :pswitch_8a3
        :pswitch_89e
        :pswitch_88f
        :pswitch_88a
        :pswitch_877
        :pswitch_86b
        :pswitch_858
        :pswitch_84c
        :pswitch_847
        :pswitch_842
        :pswitch_83d
        :pswitch_838
        :pswitch_833
        :pswitch_820
        :pswitch_81b
        :pswitch_816
        :pswitch_811
        :pswitch_7fe
        :pswitch_7eb
        :pswitch_7e6
        :pswitch_7e1
        :pswitch_7d5
        :pswitch_7d0
        :pswitch_7bd
        :pswitch_7b8
        :pswitch_7b3
        :pswitch_7ae
        :pswitch_7a9
        :pswitch_796
        :pswitch_78a
        :pswitch_785
        :pswitch_780
        :pswitch_76d
        :pswitch_768
        :pswitch_755
        :pswitch_742
        :pswitch_73d
        :pswitch_738
        :pswitch_733
        :pswitch_720
        :pswitch_71b
        :pswitch_708
        :pswitch_703
        :pswitch_6f0
        :pswitch_6eb
        :pswitch_6e6
        :pswitch_6d7
        :pswitch_6c8
        :pswitch_6bc
        :pswitch_6ad
        :pswitch_6a1
        :pswitch_69c
        :pswitch_697
        :pswitch_688
        :pswitch_679
        :pswitch_666
        :pswitch_661
        :pswitch_64e
        :pswitch_642
        :pswitch_63d
        :pswitch_62a
        :pswitch_617
        :pswitch_60b
        :pswitch_5fc
        :pswitch_5f7
        :pswitch_5f2
        :pswitch_5df
        :pswitch_5cc
        :pswitch_5b9
        :pswitch_5a6
        :pswitch_5a1
        :pswitch_59c
        :pswitch_597
        :pswitch_58b
        :pswitch_57f
        :pswitch_56c
        :pswitch_567
        :pswitch_562
        :pswitch_55d
        :pswitch_54a
        :pswitch_545
        :pswitch_532
        :pswitch_526
        :pswitch_521
        :pswitch_51c
        :pswitch_517
        :pswitch_504
        :pswitch_4ff
        :pswitch_4ec
        :pswitch_4e7
        :pswitch_4d4
        :pswitch_4cf
        :pswitch_4c0
        :pswitch_4b4
        :pswitch_4a1
        :pswitch_49c
        :pswitch_490
        :pswitch_48b
        :pswitch_486
        :pswitch_473
        :pswitch_460
        :pswitch_44d
        :pswitch_43a
        :pswitch_427
        :pswitch_422
        :pswitch_41d
        :pswitch_418
        :pswitch_413
        :pswitch_3fc
        :pswitch_3e9
        :pswitch_3d6
        :pswitch_3bf
        :pswitch_3ac
        :pswitch_395
        :pswitch_382
        :pswitch_36f
        :pswitch_36a
        :pswitch_35e
        :pswitch_34b
        :pswitch_338
        :pswitch_333
        :pswitch_320
        :pswitch_30d
        :pswitch_2fa
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2c1
        :pswitch_2bc
        :pswitch_2a9
        :pswitch_296
        :pswitch_283
        :pswitch_27e
        :pswitch_279
        :pswitch_274
        :pswitch_26f
        :pswitch_26a
        :pswitch_265
        :pswitch_260
        :pswitch_24d
        :pswitch_248
        :pswitch_243
        :pswitch_23e
        :pswitch_239
        :pswitch_234
        :pswitch_22f
        :pswitch_21c
        :pswitch_209
        :pswitch_1f6
        :pswitch_1e3
        :pswitch_1cc
        :pswitch_1b9
        :pswitch_1a6
        :pswitch_18f
        :pswitch_183
        :pswitch_177
        :pswitch_168
        :pswitch_15c
        :pswitch_14d
        :pswitch_141
        :pswitch_12e
        :pswitch_117
        :pswitch_104
        :pswitch_ff
        :pswitch_fa
        :pswitch_f5
        :pswitch_e2
        :pswitch_dd
        :pswitch_ca
        :pswitch_b7
        :pswitch_b2
        :pswitch_9f
        :pswitch_8c
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_67
        :pswitch_50
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
