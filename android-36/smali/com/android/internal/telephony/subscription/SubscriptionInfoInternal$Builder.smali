.class public Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfoInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlertSoundDuration:I

.field private blacklist mAllowedNetworkTypesForReasons:Ljava/lang/String;

.field private blacklist mAreUiccApplicationsEnabled:I

.field private blacklist mCardId:I

.field private blacklist mCardString:Ljava/lang/String;

.field private blacklist mCarrierConfigAccessRules:[B

.field private blacklist mCarrierId:I

.field private blacklist mCarrierName:Ljava/lang/String;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDataRoaming:I

.field private blacklist mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

.field private blacklist mDeviceToDeviceStatusSharingPreference:I

.field private blacklist mDisplayName:Ljava/lang/String;

.field private blacklist mDisplayNameSource:I

.field private blacklist mEhplmns:Ljava/lang/String;

.field private blacklist mEnabledMobileDataPolicies:Ljava/lang/String;

.field private blacklist mGroupOwner:Ljava/lang/String;

.field private blacklist mGroupUuid:Ljava/lang/String;

.field private blacklist mHplmns:Ljava/lang/String;

.field private blacklist mIccId:Ljava/lang/String;

.field private blacklist mIconTint:I

.field private blacklist mId:I

.field private blacklist mImsi:Ljava/lang/String;

.field private blacklist mIsAlertSpeechEnabled:I

.field private blacklist mIsAlertVibrationEnabled:I

.field private blacklist mIsAmberAlertEnabled:I

.field private blacklist mIsAreaInfoMessageEnabled:I

.field private blacklist mIsCrossSimCallingEnabled:I

.field private blacklist mIsEmbedded:I

.field private blacklist mIsEmergencyAlertEnabled:I

.field private blacklist mIsEnhanced4GModeEnabled:I

.field private blacklist mIsEtwsTestAlertEnabled:I

.field private blacklist mIsExtremeThreatAlertEnabled:I

.field private blacklist mIsGroupDisabled:Z

.field private blacklist mIsNrAdvancedCallingEnabled:I

.field private blacklist mIsOnlyNonTerrestrialNetwork:I

.field private blacklist mIsOpportunistic:I

.field private blacklist mIsOptOutDialogEnabled:I

.field private blacklist mIsRcsUceEnabled:I

.field private blacklist mIsRemovableEmbedded:I

.field private blacklist mIsSatelliteAttachEnabledForCarrier:I

.field private blacklist mIsSatelliteESOSSupported:I

.field private blacklist mIsSatelliteEnabled:I

.field private blacklist mIsSatelliteEntitlementStatus:I

.field private blacklist mIsSatelliteProvisionedForNonIpDatagram:I

.field private blacklist mIsSevereThreatAlertEnabled:I

.field private blacklist mIsTestAlertEnabled:I

.field private blacklist mIsVideoTelephonyEnabled:I

.field private blacklist mIsVoImsOptInEnabled:I

.field private blacklist mIsWifiCallingEnabled:I

.field private blacklist mIsWifiCallingEnabledForRoaming:I

.field private blacklist mLastUsedTPMessageReference:I

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNativeAccessRules:[B

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mNumberFromCarrier:Ljava/lang/String;

.field private blacklist mNumberFromIms:Ljava/lang/String;

.field private blacklist mPortIndex:I

.field private blacklist mProfileClass:I

.field private blacklist mRcsConfig:[B

.field private blacklist mReminderInterval:I

.field private blacklist mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementPlmns:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

.field private blacklist mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

.field private blacklist mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

.field private blacklist mServiceCapabilities:I

.field private blacklist mSimSlotIndex:I

.field private blacklist mTransferStatus:I

.field private blacklist mType:I

.field private blacklist mUsageSetting:I

.field private blacklist mUserId:I

.field private blacklist mWifiCallingMode:I

.field private blacklist mWifiCallingModeForRoaming:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUsedTPMessageReference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 2062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1620
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 1625
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 1633
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 1639
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 1646
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 1652
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    .line 1658
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 1663
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 1671
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 1676
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 1682
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 1688
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 1694
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 1700
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 1705
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 1712
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 1719
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 1728
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    const/4 v3, 0x1

    .line 1733
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 1738
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 1743
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 1748
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    const/4 v4, 0x4

    .line 1753
    iput v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 1758
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 1763
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 1768
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 1773
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 1778
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 1783
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 1788
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 1793
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 1798
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 1803
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 1808
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 1814
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 1820
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 1825
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 1830
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 1836
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 1844
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 1852
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 1858
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 1864
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1870
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 1876
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 1882
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 1888
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 1893
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 1898
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 1906
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 1911
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 1918
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 1923
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 1929
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 1934
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 1940
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 1946
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 1951
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 1957
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    const/16 v0, -0x2710

    .line 1962
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 1967
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 1972
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 1977
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    const/4 v0, -0x2

    .line 1983
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2006
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2011
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2017
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2022
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2027
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2034
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2041
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2048
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2055
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 7

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1620
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 1625
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 1633
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 1639
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 1646
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 1652
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    .line 1658
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 1663
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 1671
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 1676
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 1682
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 1688
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 1694
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 1700
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 1705
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 1712
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 1719
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 1728
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    const/4 v3, 0x1

    .line 1733
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 1738
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 1743
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 1748
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    const/4 v4, 0x4

    .line 1753
    iput v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 1758
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 1763
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 1768
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 1773
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 1778
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 1783
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 1788
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 1793
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 1798
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 1803
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 1808
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 1814
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 1820
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 1825
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 1830
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 1836
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 1844
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 1852
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 1858
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 1864
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1870
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 1876
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 1882
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 1888
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 1893
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 1898
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 1906
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 1911
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 1918
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 1923
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 1929
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 1934
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 1940
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 1946
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 1951
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 1957
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    const/16 v0, -0x2710

    .line 1962
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 1967
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 1972
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 1977
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    const/4 v0, -0x2

    .line 1983
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2006
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2011
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2017
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2022
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2027
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2034
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2041
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2048
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2055
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    .line 2071
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 2072
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 2073
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 2074
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 2075
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 2076
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    .line 2077
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 2078
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 2079
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 2080
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 2081
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 2082
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 2083
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 2084
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 2085
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 2086
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 2087
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 2088
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    .line 2089
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 2090
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 2091
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 2092
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    .line 2093
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 2094
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 2095
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 2096
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 2097
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 2098
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 2099
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 2100
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 2101
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 2102
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 2103
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 2104
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 2105
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 2106
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 2107
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 2108
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 2109
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 2110
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 2111
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 2112
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 2113
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 2114
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 2115
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 2116
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 2117
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 2118
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 2119
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 2120
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 2121
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 2122
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 2123
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 2124
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 2125
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 2126
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 2127
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 2128
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 2129
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getLastUsedTPMessageReference()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    .line 2130
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 2131
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 2132
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 2133
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    .line 2135
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2136
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    .line 2137
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    .line 2138
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    .line 2139
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2140
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2141
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2142
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2143
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2144
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2145
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2146
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2147
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .registers 3

    .line 3150
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal-IA;)V

    return-object v0
.end method

.method public blacklist setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2874
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3050
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    return-object p0
.end method

.method public blacklist setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2358
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCarrierConfigAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2406
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2739
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCarrierName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2217
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertReminderInterval(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2521
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertSoundDuration(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2509
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertSpeechEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2549
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertVibrationEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2535
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAmberAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2482
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAreaInfoMessageEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2577
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastEmergencyAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2496
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastEtwsTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2563
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastExtremeThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2454
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastOptOutDialogEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2605
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastSevereThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2468
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2591
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCountryIso(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2725
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCrossSimCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2843
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    return-object p0
.end method

.method public blacklist setDataRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2273
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    return-object p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2912
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2913
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingPreference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2886
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2202
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2231
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    return-object p0
.end method

.method public blacklist setEhplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2315
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2342
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    return-object p0
.end method

.method public blacklist setEnabledMobileDataPolicies(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2790
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2791
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEnhanced4GModeEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2618
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    return-object p0
.end method

.method public blacklist setGroupDisabled(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3065
    iput-boolean p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    return-object p0
.end method

.method public blacklist setGroupOwner(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2778
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setGroupUuid(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2711
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2712
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setHplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2329
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2173
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2244
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    return-object p0
.end method

.method public blacklist setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2159
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    return-object p0
.end method

.method public blacklist setImsi(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2804
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3140
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    return-object p0
.end method

.method public blacklist setLastUsedTPMessageReference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2988
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    return-object p0
.end method

.method public blacklist setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2287
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2301
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNativeAccessRules(Ljava/util/List;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;"
        }
    .end annotation

    .line 2387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2388
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 2389
    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    .line 2390
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    .line 2389
    invoke-static {p1}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    :cond_18
    return-object p0
.end method

.method public blacklist setNativeAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2373
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    return-object p0
.end method

.method public blacklist setNrAdvancedCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2925
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2258
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNumberFromCarrier(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2938
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNumberFromIms(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2951
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3037
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    return-object p0
.end method

.method public blacklist setOpportunistic(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2698
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    return-object p0
.end method

.method public blacklist setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2963
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    return-object p0
.end method

.method public blacklist setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2753
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    return-object p0
.end method

.method public blacklist setRcsConfig([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2855
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2856
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    return-object p0
.end method

.method public blacklist setRcsUceEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2830
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    return-object p0
.end method

.method public blacklist setRemovableEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2440
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return-object p0
.end method

.method public blacklist setRemovableEmbedded(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2423
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return-object p0
.end method

.method public blacklist setSatelliteAttachEnabledForCarrier(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3024
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    return-object p0
.end method

.method public blacklist setSatelliteESOSSupported(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3126
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    return-object p0
.end method

.method public blacklist setSatelliteEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3011
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementBarredPlmnsList(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3162
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementDataPlanForPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3175
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementPlmnServiceTypes(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3189
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3113
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3100
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    return-object p0
.end method

.method public blacklist setSatellitePlmnsDataServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3203
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatellitePlmnsVoiceServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3217
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setServiceCapabilities(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3075
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    return-object p0
.end method

.method public blacklist setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2187
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    return-object p0
.end method

.method public blacklist setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3087
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    return-object p0
.end method

.method public blacklist setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2765
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setUiccApplicationsEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2817
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    return-object p0
.end method

.method public blacklist setUsageSetting(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2975
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    return-object p0
.end method

.method public blacklist setUserId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 3000
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    return-object p0
.end method

.method public blacklist setVideoTelephonyEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2631
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    return-object p0
.end method

.method public blacklist setVoImsOptInEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2898
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    return-object p0
.end method

.method public blacklist setWifiCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2645
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    return-object p0
.end method

.method public blacklist setWifiCallingEnabledForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2686
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    return-object p0
.end method

.method public blacklist setWifiCallingMode(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2658
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    return-object p0
.end method

.method public blacklist setWifiCallingModeForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .registers 2

    .line 2672
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    return-object p0
.end method
