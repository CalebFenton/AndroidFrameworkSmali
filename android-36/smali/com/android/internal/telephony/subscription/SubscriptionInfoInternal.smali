.class public Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
.super Ljava/lang/Object;
.source "SubscriptionInfoInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAlertSoundDuration:I

.field private final blacklist mAllowedNetworkTypesForReasons:Ljava/lang/String;

.field private final blacklist mAreUiccApplicationsEnabled:I

.field private final blacklist mCardId:I

.field private final blacklist mCardString:Ljava/lang/String;

.field private final blacklist mCarrierConfigAccessRules:[B

.field private final blacklist mCarrierId:I

.field private final blacklist mCarrierName:Ljava/lang/String;

.field private final blacklist mCountryIso:Ljava/lang/String;

.field private final blacklist mDataRoaming:I

.field private final blacklist mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

.field private final blacklist mDeviceToDeviceStatusSharingPreference:I

.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mDisplayNameSource:I

.field private final blacklist mEhplmns:Ljava/lang/String;

.field private final blacklist mEnabledMobileDataPolicies:Ljava/lang/String;

.field private final blacklist mGroupOwner:Ljava/lang/String;

.field private final blacklist mGroupUuid:Ljava/lang/String;

.field private final blacklist mHplmns:Ljava/lang/String;

.field private final blacklist mIccId:Ljava/lang/String;

.field private final blacklist mIconTint:I

.field private final blacklist mId:I

.field private final blacklist mImsi:Ljava/lang/String;

.field private blacklist mIsAlertSpeechEnabled:I

.field private blacklist mIsAlertVibrationEnabled:I

.field private blacklist mIsAmberAlertEnabled:I

.field private blacklist mIsAreaInfoMessageEnabled:I

.field private final blacklist mIsCrossSimCallingEnabled:I

.field private final blacklist mIsEmbedded:I

.field private blacklist mIsEmergencyAlertEnabled:I

.field private final blacklist mIsEnhanced4GModeEnabled:I

.field private blacklist mIsEtwsTestAlertEnabled:I

.field private blacklist mIsExtremeThreatAlertEnabled:I

.field private final blacklist mIsGroupDisabled:Z

.field private final blacklist mIsNrAdvancedCallingEnabled:I

.field private final blacklist mIsOnlyNonTerrestrialNetwork:I

.field private final blacklist mIsOpportunistic:I

.field private blacklist mIsOptOutDialogEnabled:I

.field private final blacklist mIsRcsUceEnabled:I

.field private final blacklist mIsRemovableEmbedded:I

.field private final blacklist mIsSatelliteAttachEnabledForCarrier:I

.field private final blacklist mIsSatelliteESOSSupported:I

.field private final blacklist mIsSatelliteEnabled:I

.field private final blacklist mIsSatelliteEntitlementStatus:I

.field private final blacklist mIsSatelliteProvisionedForNonIpDatagram:I

.field private blacklist mIsSevereThreatAlertEnabled:I

.field private blacklist mIsTestAlertEnabled:I

.field private final blacklist mIsVideoTelephonyEnabled:I

.field private final blacklist mIsVoImsOptInEnabled:I

.field private final blacklist mIsWifiCallingEnabled:I

.field private final blacklist mIsWifiCallingEnabledForRoaming:I

.field private final blacklist mLastUsedTPMessageReference:I

.field private final blacklist mMcc:Ljava/lang/String;

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNativeAccessRules:[B

.field private final blacklist mNumber:Ljava/lang/String;

.field private final blacklist mNumberFromCarrier:Ljava/lang/String;

.field private final blacklist mNumberFromIms:Ljava/lang/String;

.field private final blacklist mPortIndex:I

.field private final blacklist mProfileClass:I

.field private final blacklist mRcsConfig:[B

.field private blacklist mReminderInterval:I

.field private final blacklist mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

.field private final blacklist mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

.field private final blacklist mSatelliteEntitlementPlmns:Ljava/lang/String;

.field private final blacklist mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

.field private final blacklist mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

.field private final blacklist mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

.field private final blacklist mServiceCapabilities:I

.field private final blacklist mSimSlotIndex:I

.field private final blacklist mTransferStatus:I

.field private final blacklist mType:I

.field private final blacklist mUsageSetting:I

.field private final blacklist mUserId:I

.field private final blacklist mWifiCallingMode:I

.field private final blacklist mWifiCallingModeForRoaming:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOptOutDialogEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)V
    .registers 3

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    .line 544
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    .line 545
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    .line 546
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    .line 547
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    .line 548
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    .line 549
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    .line 550
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    .line 551
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    .line 552
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    .line 553
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    .line 554
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    .line 555
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    .line 556
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    .line 557
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    .line 558
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    .line 559
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    .line 560
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    .line 561
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    .line 562
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    .line 563
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    .line 564
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    .line 565
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    .line 566
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    .line 567
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    .line 568
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    .line 569
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    .line 570
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    .line 571
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsTestAlertEnabled:I

    .line 572
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOptOutDialogEnabled:I

    .line 573
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    .line 574
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    .line 575
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    .line 576
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    .line 577
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    .line 578
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    .line 579
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    .line 580
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    .line 581
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    .line 582
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    .line 583
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    .line 584
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    .line 585
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    .line 586
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 587
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    .line 588
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    .line 589
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    .line 590
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    .line 591
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    .line 592
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 593
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    .line 595
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    .line 596
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 597
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    .line 598
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    .line 599
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    .line 600
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    .line 601
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    .line 602
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmLastUsedTPMessageReference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mLastUsedTPMessageReference:I

    .line 603
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    .line 604
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    .line 605
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    .line 607
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    .line 610
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    .line 611
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    .line 612
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    .line 613
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    .line 614
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    .line 615
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 616
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    .line 617
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 619
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 620
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 621
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 622
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 623
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->-$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist areUiccApplicationsEnabled()Z
    .registers 1

    .line 1066
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 1576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 1577
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->equalsDbItemsOnly(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    iget v3, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    if-ne v2, v3, :cond_27

    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    if-ne p0, p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist equalsDbItemsOnly(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 1508
    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mLastUsedTPMessageReference:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mLastUsedTPMessageReference:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    if-ne v0, v1, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    .line 1540
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    .line 1541
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    .line 1542
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    .line 1544
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    .line 1545
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    .line 1546
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    .line 1547
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    .line 1548
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    .line 1549
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    .line 1552
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    .line 1553
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    if-ne v0, v1, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 1559
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    if-ne v0, v1, :cond_21e

    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    iget v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    if-ne v0, v1, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 1563
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 1565
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 1567
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 1569
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    .line 1570
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21e

    const/4 p0, 0x1

    return p0

    :cond_21e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAllowedNetworkTypesForReasons()Ljava/lang/String;
    .registers 1

    .line 1122
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCardId()I
    .registers 1

    .line 1248
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    return p0
.end method

.method public blacklist getCardString()Ljava/lang/String;
    .registers 1

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCarrierConfigAccessRules()[B
    .registers 1

    .line 783
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 1010
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    return p0
.end method

.method public blacklist getCarrierName()Ljava/lang/String;
    .registers 1

    .line 671
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCellBroadcastAlertReminderInterval()I
    .registers 1

    .line 843
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    return p0
.end method

.method public blacklist getCellBroadcastAlertSoundDuration()I
    .registers 1

    .line 836
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    return p0
.end method

.method public blacklist getCellBroadcastAlertSpeechEnabled()I
    .registers 1

    .line 857
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastAlertVibrationEnabled()I
    .registers 1

    .line 850
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastAmberAlertEnabled()I
    .registers 1

    .line 822
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastAreaInfoMessageEnabled()I
    .registers 1

    .line 871
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastEmergencyAlertEnabled()I
    .registers 1

    .line 829
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastEtwsTestAlertEnabled()I
    .registers 1

    .line 864
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastExtremeThreatAlertEnabled()I
    .registers 1

    .line 808
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastOptOutDialogEnabled()I
    .registers 1

    .line 885
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOptOutDialogEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastSevereThreatAlertEnabled()I
    .registers 1

    .line 815
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    return p0
.end method

.method public blacklist getCellBroadcastTestAlertEnabled()I
    .registers 1

    .line 878
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsTestAlertEnabled:I

    return p0
.end method

.method public blacklist getCountryIso()Ljava/lang/String;
    .registers 1

    .line 1001
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCrossSimCallingEnabled()I
    .registers 1

    .line 1103
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    return p0
.end method

.method public blacklist getDataRoaming()I
    .registers 1

    .line 706
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    return p0
.end method

.method public blacklist getDeviceToDeviceStatusSharingContacts()Ljava/lang/String;
    .registers 1

    .line 1152
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeviceToDeviceStatusSharingPreference()I
    .registers 1

    .line 1130
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    return p0
.end method

.method public blacklist getDisplayName()Ljava/lang/String;
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDisplayNameSource()I
    .registers 1

    .line 679
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    return p0
.end method

.method public blacklist getEhplmns()Ljava/lang/String;
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEmbedded()I
    .registers 1

    .line 752
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    return p0
.end method

.method public blacklist getEnabledMobileDataPolicies()Ljava/lang/String;
    .registers 1

    .line 1051
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEnhanced4GModeEnabled()I
    .registers 1

    .line 900
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    return p0
.end method

.method public blacklist getGroupOwner()Ljava/lang/String;
    .registers 1

    .line 1041
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGroupUuid()Ljava/lang/String;
    .registers 1

    .line 994
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getHplmns()Ljava/lang/String;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIconTint()I
    .registers 1

    .line 689
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    return p0
.end method

.method public blacklist getImsi()Ljava/lang/String;
    .registers 1

    .line 1059
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsSatelliteProvisionedForNonIpDatagram()I
    .registers 1

    .line 1334
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    return p0
.end method

.method public blacklist getLastUsedTPMessageReference()I
    .registers 1

    .line 1207
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mLastUsedTPMessageReference:I

    return p0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .registers 1

    .line 714
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .registers 1

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNativeAccessRules()[B
    .registers 1

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    return-object p0
.end method

.method public blacklist getNrAdvancedCallingEnabled()I
    .registers 1

    .line 1167
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    return p0
.end method

.method public blacklist getNumber()Ljava/lang/String;
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    return-object p0

    .line 697
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNumberFromCarrier()Ljava/lang/String;
    .registers 1

    .line 1175
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNumberFromIms()Ljava/lang/String;
    .registers 1

    .line 1183
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOnlyNonTerrestrialNetwork()I
    .registers 1

    .line 1238
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    return p0
.end method

.method public blacklist getOpportunistic()I
    .registers 1

    .line 981
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    return p0
.end method

.method public blacklist getPortIndex()I
    .registers 1

    .line 1190
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    return p0
.end method

.method public blacklist getProfileClass()I
    .registers 1

    .line 1021
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    return p0
.end method

.method public blacklist getRcsConfig()[B
    .registers 1

    .line 1111
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    return-object p0
.end method

.method public blacklist getRcsUceEnabled()I
    .registers 1

    .line 1089
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    return p0
.end method

.method public blacklist getRemovableEmbedded()I
    .registers 1

    .line 801
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    return p0
.end method

.method public blacklist getSatelliteAttachEnabledForCarrier()I
    .registers 1

    .line 1229
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    return p0
.end method

.method public blacklist getSatelliteESOSSupported()I
    .registers 1

    .line 1324
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    return p0
.end method

.method public blacklist getSatelliteEnabled()I
    .registers 1

    .line 1222
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    return p0
.end method

.method public blacklist getSatelliteEntitlementBarredPlmnsList()Ljava/lang/String;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementDataPlanForPlmns()Ljava/lang/String;
    .registers 1

    .line 1353
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmns()Ljava/lang/String;
    .registers 1

    .line 1317
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnsServiceTypes()Ljava/lang/String;
    .registers 1

    .line 1363
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementStatus()I
    .registers 1

    .line 1307
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    return p0
.end method

.method public blacklist getSatellitePlmnsDataServicePolicy()Ljava/lang/String;
    .registers 1

    .line 1373
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatellitePlmnsVoiceServicePolicy()Ljava/lang/String;
    .registers 1

    .line 1383
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceCapabilities()I
    .registers 1

    .line 1294
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    return p0
.end method

.method public blacklist getSimSlotIndex()I
    .registers 1

    .line 649
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    return p0
.end method

.method public blacklist getSubscriptionId()I
    .registers 1

    .line 630
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    return p0
.end method

.method public blacklist getSubscriptionType()I
    .registers 1

    .line 1033
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    return p0
.end method

.method public blacklist getTransferStatus()I
    .registers 1

    .line 1300
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    return p0
.end method

.method public blacklist getUiccApplicationsEnabled()I
    .registers 1

    .line 1073
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    return p0
.end method

.method public blacklist getUsageSetting()I
    .registers 1

    .line 1200
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    return p0
.end method

.method public blacklist getUserId()I
    .registers 1

    .line 1215
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    return p0
.end method

.method public blacklist getVideoTelephonyEnabled()I
    .registers 1

    .line 914
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    return p0
.end method

.method public blacklist getVoImsOptInEnabled()I
    .registers 1

    .line 1144
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    return p0
.end method

.method public blacklist getWifiCallingEnabled()I
    .registers 1

    .line 930
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    return p0
.end method

.method public blacklist getWifiCallingEnabledForRoaming()I
    .registers 1

    .line 961
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    return p0
.end method

.method public blacklist getWifiCallingMode()I
    .registers 1

    .line 938
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    return p0
.end method

.method public blacklist getWifiCallingModeForRoaming()I
    .registers 1

    .line 946
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 74

    move-object/from16 v0, p0

    .line 1584
    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    .line 1585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumber:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    .line 1586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsExtremeThreatAlertEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSevereThreatAlertEnabled:I

    .line 1587
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAmberAlertEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmergencyAlertEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAlertSoundDuration:I

    .line 1588
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mReminderInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertVibrationEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAlertSpeechEnabled:I

    .line 1589
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEtwsTestAlertEnabled:I

    .line 1590
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsAreaInfoMessageEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    .line 1591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    .line 1592
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    move-object/from16 v36, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    .line 1593
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    move-object/from16 v42, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    .line 1594
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    .line 1595
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    move-object/from16 v46, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    .line 1596
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    move-object/from16 v49, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    .line 1597
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    move-object/from16 v52, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    .line 1599
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mLastUsedTPMessageReference:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    .line 1600
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    iget-boolean v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    .line 1601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    .line 1602
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    move-object/from16 v65, v1

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    .line 1603
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    iget v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 1604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v67

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    move-object/from16 v70, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    move-object/from16 v71, v1

    iget-object v1, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    move-object/from16 v72, v1

    filled-new-array/range {v2 .. v72}, [Ljava/lang/Object;

    move-result-object v1

    .line 1584
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    .line 1607
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 1608
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 1609
    iget-object v0, v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public blacklist isActive()Z
    .registers 3

    .line 1265
    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    const/4 v1, 0x1

    if-gez v0, :cond_c

    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    if-ne p0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    return v1
.end method

.method public blacklist isCrossSimCallingEnabled()Z
    .registers 1

    .line 1096
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmbedded()Z
    .registers 1

    .line 745
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEnhanced4GModeEnabled()Z
    .registers 2

    .line 892
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isGroupDisabled()Z
    .registers 1

    .line 1258
    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    return p0
.end method

.method public blacklist isNrAdvancedCallingEnabled()Z
    .registers 2

    .line 1159
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsNrAdvancedCallingEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOpportunistic()Z
    .registers 1

    .line 971
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRcsUceEnabled()Z
    .registers 1

    .line 1081
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRemovableEmbedded()Z
    .registers 1

    .line 792
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVideoTelephonyEnabled()Z
    .registers 1

    .line 907
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVisible()Z
    .registers 4

    .line 1273
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    return v1

    .line 1278
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getOnlyNonTerrestrialNetwork()I

    move-result v0

    if-ne v0, v2, :cond_10

    return v1

    .line 1283
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v1

    :cond_1f
    return v2
.end method

.method public blacklist isVoImsOptInEnabled()Z
    .registers 1

    .line 1137
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWifiCallingEnabled()Z
    .registers 2

    .line 922
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWifiCallingEnabledForRoaming()Z
    .registers 2

    .line 954
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SubscriptionInfoInternal: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    .line 1432
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " simSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " portIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isEmbedded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRemovableEmbedded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRemovableEmbedded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isOpportunistic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " groupUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " groupOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayNameSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    .line 1444
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iconTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ehplmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hplmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cardString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    .line 1452
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nativeAccessRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    .line 1454
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " carrierConfigAccessRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    .line 1455
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " countryIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " profileClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    .line 1459
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " areUiccApplicationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " usageSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    .line 1461
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isEnhanced4GModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEnhanced4GModeEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isVideoTelephonyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVideoTelephonyEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isWifiCallingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isWifiCallingEnabledForRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsWifiCallingEnabledForRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wifiCallingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingMode:I

    .line 1466
    invoke-static {v1}, Landroid/telephony/ims/ImsMmTelManager;->wifiCallingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wifiCallingModeForRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mWifiCallingModeForRoaming:I

    .line 1468
    invoke-static {v1}, Landroid/telephony/ims/ImsMmTelManager;->wifiCallingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabledMobileDataPolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEnabledMobileDataPolicies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mImsi:Ljava/lang/String;

    .line 1470
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rcsUceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsRcsUceEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " crossSimCallingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsCrossSimCallingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rcsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mRcsConfig:[B

    .line 1473
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowedNetworkTypesForReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deviceToDeviceStatusSharingPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isVoImsOptInEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsVoImsOptInEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deviceToDeviceStatusSharingContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numberFromCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromCarrier:Ljava/lang/String;

    .line 1478
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numberFromIms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNumberFromIms:Ljava/lang/String;

    .line 1479
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSatelliteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " satellite_attach_enabled_for_carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteAttachEnabledForCarrier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getOnlyNonTerrestrialNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isGroupDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transferStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " satelliteEntitlementStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteEntitlementStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " satelliteEntitlementPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSatelliteESOSSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSatelliteProvisionedForNonIpDatagram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteProvisionedForNonIpDatagram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSatelliteEntitlementBarredPlmnsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSatelliteEntitlementDataPlanForPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSatelliteEntitlementServicesForPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSatellitePlmnsDataServicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSatellitePlmnsVoiceServicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 7

    .line 1389
    new-instance v0, Landroid/telephony/SubscriptionInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mId:I

    .line 1390
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIccId:Ljava/lang/String;

    .line 1391
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mSimSlotIndex:I

    .line 1392
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayName:Ljava/lang/String;

    .line 1393
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierName:Ljava/lang/String;

    .line 1394
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDisplayNameSource:I

    .line 1395
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIconTint:I

    .line 1396
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mDataRoaming:I

    .line 1398
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMcc:Ljava/lang/String;

    .line 1399
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mMnc:Ljava/lang/String;

    .line 1400
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    .line 1401
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v1, :cond_56

    move-object v1, v3

    goto :goto_5c

    :cond_56
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mEhplmns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_5c
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    .line 1402
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    move-object v1, v3

    goto :goto_70

    :cond_6a
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mHplmns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCountryIso:Ljava/lang/String;

    .line 1403
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsEmbedded:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_82

    move v1, v4

    goto :goto_83

    :cond_82
    move v1, v2

    .line 1404
    :goto_83
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    .line 1405
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mNativeAccessRules:[B

    array-length v5, v1

    if-nez v5, :cond_8e

    move-object v1, v3

    goto :goto_92

    .line 1406
    :cond_8e
    invoke-static {v1}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v1

    .line 1405
    :goto_92
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardString:Ljava/lang/String;

    .line 1407
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCardId:I

    .line 1408
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOpportunistic:I

    if-eqz v1, :cond_a8

    move v1, v4

    goto :goto_a9

    :cond_a8
    move v1, v2

    .line 1409
    :goto_a9
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupUuid:Ljava/lang/String;

    .line 1410
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsGroupDisabled:Z

    .line 1411
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierId:I

    .line 1412
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mProfileClass:I

    .line 1413
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mType:I

    .line 1414
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setType(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mGroupOwner:Ljava/lang/String;

    .line 1415
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mCarrierConfigAccessRules:[B

    array-length v5, v1

    if-nez v5, :cond_d7

    goto :goto_db

    .line 1417
    :cond_d7
    invoke-static {v1}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v3

    .line 1416
    :goto_db
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mAreUiccApplicationsEnabled:I

    if-eqz v1, :cond_e5

    move v1, v4

    goto :goto_e6

    :cond_e5
    move v1, v2

    .line 1418
    :goto_e6
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mPortIndex:I

    .line 1419
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mUsageSetting:I

    .line 1420
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsOnlyNonTerrestrialNetwork:I

    if-ne v1, v4, :cond_fc

    move v1, v4

    goto :goto_fd

    :cond_fc
    move v1, v2

    .line 1421
    :goto_fd
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setOnlyNonTerrestrialNetwork(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mServiceCapabilities:I

    .line 1423
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getServiceCapabilitiesSet(I)Ljava/util/Set;

    move-result-object v1

    .line 1422
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setServiceCapabilities(Ljava/util/Set;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mTransferStatus:I

    .line 1424
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo$Builder;->setTransferStatus(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->mIsSatelliteESOSSupported:I

    if-ne p0, v4, :cond_116

    move v2, v4

    .line 1425
    :cond_116
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionInfo$Builder;->setSatelliteESOSSupported(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    .line 1426
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo$Builder;->build()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method
