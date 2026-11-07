.class public Lcom/android/internal/telephony/ITelephony$Default;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3427
    return-void
.end method

.method public blacklist addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2674
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 3838
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "nafUrl"    # Landroid/net/Uri;
    .param p4, "securityProtocol"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .param p5, "forceBootStrapping"    # Z
    .param p6, "callback"    # Landroid/telephony/IBootstrapAuthenticationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    return-void
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2462
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist carrierActionReportDefaultNetworkStatus(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1749
    return-void
.end method

.method public blacklist carrierActionResetAll(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    return-void
.end method

.method public blacklist carrierActionSetRadioEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    return-void
.end method

.method public blacklist changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkCarrierPrivilegesForPackage(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearCarrierImsServiceOverride(I)Z
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearDomainSelectionServiceOverride()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3531
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearRadioPowerOffForReason(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2737
    return-void
.end method

.method public blacklist clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2692
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 3
    .param p2, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3775
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    return-void
.end method

.method public blacklist deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3045
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist disableDataConnectivity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableIms(I)V
    .registers 2
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    return-void
.end method

.method public blacklist disableLocationUpdates()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public blacklist disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    return-void
.end method

.method public blacklist doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDataConnectivity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableIms(I)V
    .registers 2
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    return-void
.end method

.method public blacklist enableLocationUpdates()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public blacklist enableModemForSlot(IZ)Z
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableVideoCalling(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    return-void
.end method

.method public blacklist enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    return-void
.end method

.method public blacklist enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subIdResult"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2395
    return-void
.end method

.method public blacklist factoryReset(ILjava/lang/String;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    return-void
.end method

.method public blacklist getActivePhoneType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivePhoneTypeForSlot(I)I
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAidForAppType(II)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1646
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedNetworkTypesBitmask(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedNetworkTypesForReason(II)J
    .registers 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAttachRestrictionReasonsForCarrier(I)[I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3449
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBoundGbaService(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBoundImsServicePackage(IZI)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "isCarrierImsService"    # Z
    .param p3, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCallComposerStatus(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callForwardingReason"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    return-void
.end method

.method public blacklist getCallState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1767
    return-void
.end method

.method public blacklist getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2656
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCardIdForDefaultEuicc(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1863
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I
    .registers 3
    .param p1, "carrierIdentifier"    # Landroid/service/carrier/CarrierIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3799
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierIdFromMccMnc(ILjava/lang/String;Z)I
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "isSubscriptionMccMnc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierIdListVersion(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierPrivilegeStatus(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierPrivilegeStatusForUid(II)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V
    .registers 3
    .param p1, "internalCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    return-void
.end method

.method public blacklist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "logicalSlotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2839
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierSingleRegistrationEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2623
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaMdn(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaMin(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaPrlVersion(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaRoamingMode(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaSubscriptionMode(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCellBroadcastIdRanges(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2921
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactFromEab(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2651
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentPackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDataActivationState(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataActivity()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataActivityForSubId(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataStateForSubId(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "updateIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2868
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1374
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceSingleRegistrationEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2598
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1456
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceUceEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyCallbackMode(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyNumberDbVersion(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2472
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEsn(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGbaReleaseTime(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2556
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHalVersion(I)I
    .registers 3
    .param p1, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsFeatureValidationOverride(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2633
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    return-void
.end method

.method public blacklist getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    return-void
.end method

.method public blacklist getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2086
    return-void
.end method

.method public blacklist getImsProvisioningInt(II)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2246
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsProvisioningStatusForCapability(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2232
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsProvisioningString(II)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2251
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsRegTechnologyForMmTel(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2791
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastUcePidfXmlShell(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2709
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2700
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1191
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getManualNetworkSelectionPlmn(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getManufacturerCodeForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1443
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMmsUAProfUrl(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2408
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMmsUserAgent(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2403
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2641
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2801
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkSelectionMode(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2042
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackagesWithCarrierPrivileges(I)Ljava/util/List;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1563
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1466
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2741
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRadioAccessFamily(ILjava/lang/String;)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRadioHalVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2057
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRcsProvisioningStatusForCapability(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRcsSingleRegistrationTestModeEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2589
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSatelliteDataOptimizedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3809
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSatelliteDataSupportMode(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3824
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSatelliteDisallowedReasons()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3142
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSatellitePlmnsForCarrier(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3611
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "carrierId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3415
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSignalStrength(I)Landroid/telephony/SignalStrength;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1851
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSimLocaleForSubscriber(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSimStateForSlotIndex(I)I
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2877
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlicingConfig(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2765
    return-void
.end method

.method public blacklist getSlotsMapping(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionCarrierId(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionCarrierName(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriptionSpecificCarrierId(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionSpecificCarrierName(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1713
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSelectionChannels(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2383
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTelephonyHistograms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTestEuiccUiComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3752
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTypeAllocationCodeForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1888
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoWiFiModeSetting(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoWiFiRoamingModeSetting(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceActivationState(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handlePinMmi(Ljava/lang/String;)Z
    .registers 3
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "ussdRequest"    # Ljava/lang/String;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist hasIccCard()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIccCardUsingSlotIndex(I)Z
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 9
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 3
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAdvancedCallingSettingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAospDomainSelectionService()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3539
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApnMetered(II)Z
    .registers 4
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApplicationOnUicc(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2364
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAvailable(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCapable(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCellularIdentifierDisclosureNotificationsEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3571
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConcurrentVoiceAndDataAllowed(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossSimCallingEnabledByUser(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataConnectivityPossible(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabledForApn(IILjava/lang/String;)Z
    .registers 5
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabledForReason(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataRoamingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1937
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDomainSelectionSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2934
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHearingAidCompatibilitySupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIccLockEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2427
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImsRegistered(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInEmergencySmsMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManualNetworkSelectionAllowed(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p3, "capability"    # I
    .param p4, "transportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    return-void
.end method

.method public blacklist isMobileDataPolicyEnabled(II)Z
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2415
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2368
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMvnoMatched(IILjava/lang/String;)Z
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "mvnoType"    # I
    .param p3, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2387
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNrDualConnectivityEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2510
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNullCipherAndIntegrityPreferenceEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2916
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNullCipherNotificationsEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3598
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPremiumCapabilityAvailableForPurchase(II)Z
    .registers 4
    .param p1, "capability"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2769
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProvisioningRequiredForCapability(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2810
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2520
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOn(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnForSubscriber(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRcsProvisioningRequiredForCapability(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2819
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRcsVolteSingleRegistrationCapable(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2568
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2856
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRttSupported(I)Z
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTetheringApnRequiredForSubscriber(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTtyModeSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTtyOverVolteEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserDataEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoTelephonyAvailable(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNrEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2490
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoWiFiRoamingSettingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoWiFiSettingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVtSettingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiCallingAvailable(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needMobileRadioShutdown()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needsOtaServiceProvisioning()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyOtaEmergencyNumberDbInstalled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2284
    return-void
.end method

.method public blacklist notifyRcsAutoConfigurationReceived(I[BZ)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "config"    # [B
    .param p3, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2424
    return-void
.end method

.method public blacklist nvReadItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist nvWriteCdmaPrl([B)Z
    .registers 3
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;)Z
    .registers 4
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideCarrierRoamingNtnEligibilityChanged(ZZ)Z
    .registers 4
    .param p1, "status"    # Z
    .param p2, "resetRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3764
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideConfigDataVersion(ZI)Z
    .registers 4
    .param p1, "reset"    # Z
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3410
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V
    .registers 7
    .param p1, "dropboxTag"    # Ljava/lang/String;
    .param p2, "enableLogcat"    # Z
    .param p3, "logcatStartTimestampMillis"    # J
    .param p5, "enableTelecomDump"    # Z
    .param p6, "enableTelephonyDump"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    return-void
.end method

.method public blacklist pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3122
    return-void
.end method

.method public blacklist prepareForUnattendedReboot()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2757
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 3
    .param p2, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3717
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    return-void
.end method

.method public blacklist provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;
    .registers 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "provisionData"    # [B
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3031
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2774
    return-void
.end method

.method public blacklist rebootModem(I)Z
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshUiccProfile(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2035
    return-void
.end method

.method public blacklist registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    return-void
.end method

.method public blacklist registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I
    .registers 3
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3491
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3643
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I
    .registers 3
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3473
    return-void
.end method

.method public blacklist registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3151
    return-void
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I
    .registers 3
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3084
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I
    .registers 3
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3055
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3622
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I
    .registers 3
    .param p1, "callback"    # Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3207
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2071
    return-void
.end method

.method public blacklist registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2212
    return-void
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2063
    return-void
.end method

.method public blacklist registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "feature"    # I
    .param p3, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    return-void
.end method

.method public blacklist registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2090
    return-void
.end method

.method public blacklist registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    return-void
.end method

.method public blacklist registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2573
    return-void
.end method

.method public blacklist removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3438
    return-void
.end method

.method public blacklist removeContactFromEab(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "contacts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2683
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeUceRequestDisallowedStatus(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    return-void
.end method

.method public blacklist requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    return-void
.end method

.method public blacklist requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3171
    return-void
.end method

.method public blacklist requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2972
    return-void
.end method

.method public blacklist requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2963
    return-void
.end method

.method public blacklist requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3074
    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2990
    return-void
.end method

.method public blacklist requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    return-void
.end method

.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "binder"    # Landroid/os/IBinder;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestNtnSignalStrength(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3459
    return-void
.end method

.method public blacklist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    .registers 6
    .param p1, "range"    # Landroid/telephony/PhoneNumberRange;
    .param p2, "timeoutMillis"    # J
    .param p4, "callback"    # Lcom/android/internal/telephony/INumberVerificationCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    return-void
.end method

.method public blacklist requestRadioPowerOffForReason(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3180
    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2999
    return-void
.end method

.method public blacklist requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3707
    return-void
.end method

.method public blacklist requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 5
    .param p1, "enableSatellite"    # Z
    .param p2, "enableDemoMode"    # Z
    .param p3, "isEmergency"    # Z
    .param p4, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2954
    return-void
.end method

.method public blacklist requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3687
    return-void
.end method

.method public blacklist requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3697
    return-void
.end method

.method public blacklist requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3198
    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3189
    return-void
.end method

.method public blacklist requestUserActivityNotification()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2440
    return-void
.end method

.method public blacklist resetIms(I)V
    .registers 2
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    return-void
.end method

.method public blacklist resetModemConfig(I)Z
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2292
    return-void
.end method

.method public blacklist sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 5
    .param p1, "datagramType"    # I
    .param p2, "datagram"    # Landroid/telephony/satellite/SatelliteDatagram;
    .param p3, "needFullScreenPointingUI"    # Z
    .param p4, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3134
    return-void
.end method

.method public blacklist sendDeviceToDeviceMessage(II)V
    .registers 3
    .param p1, "message"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2608
    return-void
.end method

.method public blacklist sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "inputCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "thermalMitigationRequest"    # Landroid/telephony/ThermalMitigationRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    return-void
.end method

.method public blacklist setActiveDeviceToDeviceTransport(Ljava/lang/String;)V
    .registers 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2612
    return-void
.end method

.method public blacklist setAdvancedCallingSettingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 3
    .param p1, "carrierRestrictionRules"    # Landroid/telephony/CarrierRestrictionRules;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAllowedNetworkTypesForReason(IIJ)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "allowedNetworkTypes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBoundGbaServiceOverride(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBoundImsServiceOverride(IIZ[ILjava/lang/String;)Z
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "userId"    # I
    .param p3, "isCarrierService"    # Z
    .param p4, "featureTypes"    # [I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallComposerStatus(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callForwardingInfo"    # Landroid/telephony/CallForwardingInfo;
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    return-void
.end method

.method public blacklist setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    return-void
.end method

.method public blacklist setCapabilitiesRequestTimeout(IJ)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "timeoutAfterMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2725
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "carrierServicePackage"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2023
    return-void
.end method

.method public blacklist setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2603
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "iccid"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "plmn"    # Ljava/lang/String;
    .param p8, "spn"    # Ljava/lang/String;
    .param p9, "carrierPrivilegeRules"    # Ljava/lang/String;
    .param p10, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2007
    return-void
.end method

.method public blacklist setCdmaRoamingMode(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCdmaSubscriptionMode(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "subId"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Lcom/android/internal/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2926
    .local p2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 3
    .param p1, "rateInMillis"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    return-void
.end method

.method public blacklist setCepEnabled(Z)V
    .registers 2
    .param p1, "isCepEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    return-void
.end method

.method public blacklist setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z
    .registers 8
    .param p1, "reset"    # Z
    .param p3, "cachedNetworkCountryCodes"    # Ljava/util/Map;
    .param p4, "locationCountryCode"    # Ljava/lang/String;
    .param p5, "locationCountryCodeTimestampNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3347
    .local p2, "currentNetworkCountryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCrossSimCallingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2144
    return-void
.end method

.method public blacklist setDataActivationState(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    return-void
.end method

.method public blacklist setDataEnabledForReason(IIZLjava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "enable"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    return-void
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1947
    return-void
.end method

.method public blacklist setDatagramControllerBooleanConfig(ZIZ)Z
    .registers 5
    .param p1, "reset"    # Z
    .param p2, "booleanType"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3664
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDatagramControllerTimeoutDuration(ZIJ)Z
    .registers 6
    .param p1, "reset"    # Z
    .param p2, "timeoutType"    # I
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3308
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 2
    .param p1, "isAligned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3228
    return-void
.end method

.method public blacklist setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V
    .registers 2
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2594
    return-void
.end method

.method public blacklist setDeviceToDeviceForceEnabled(Z)V
    .registers 2
    .param p1, "isForceEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2619
    return-void
.end method

.method public blacklist setDeviceUceEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2666
    return-void
.end method

.method public blacklist setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3523
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEmergencyCallToSatelliteHandoverType(II)Z
    .registers 4
    .param p1, "handoverType"    # I
    .param p2, "delaySeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3336
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEnableCellularIdentifierDisclosureNotifications(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3558
    return-void
.end method

.method public blacklist setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1828
    .local p3, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGbaReleaseTimeOverride(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2551
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setIccLockEnabled(IZLjava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsFeatureValidationOverride(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2628
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsProvisioningInt(III)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsProvisioningStatusForCapability(IIIZ)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2228
    return-void
.end method

.method public blacklist setImsProvisioningString(IILjava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsRegistrationState(Z)V
    .registers 2
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    return-void
.end method

.method public blacklist setIsSatelliteCommunicationAllowedForCurrentLocationCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3675
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMobileDataPolicyEnabled(IIZ)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2412
    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2796
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiSimCarrierRestriction(Z)V
    .registers 2
    .param p1, "isMultiSimCarrierRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2304
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "operatorInfo"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persisSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setNrDualConnectivityState(II)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "nrDualConnectivityState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setNtnSmsSupported(Z)V
    .registers 2
    .param p1, "ntnSmsSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3787
    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2906
    return-void
.end method

.method public blacklist setNullCipherNotificationsEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3585
    return-void
.end method

.method public blacklist setOemEnabledSatelliteProvisionStatus(ZZ)Z
    .registers 4
    .param p1, "reset"    # Z
    .param p2, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadio(Z)Z
    .registers 3
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadioForSubscriber(IZ)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadioPower(Z)Z
    .registers 3
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2561
    return-void
.end method

.method public blacklist setRcsProvisioningStatusForCapability(IIIZ)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2242
    return-void
.end method

.method public blacklist setRcsSingleRegistrationTestModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    return-void
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    .registers 3
    .param p1, "isDefault"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2848
    return-void
.end method

.method public blacklist setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRttCapabilitySetting(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    return-void
.end method

.method public blacklist setSatelliteAccessAllowedForSubscriptions(Ljava/lang/String;)Z
    .registers 3
    .param p1, "subIdListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteAccessControlOverlayConfigs(ZZLjava/lang/String;JLjava/util/List;Ljava/lang/String;)Z
    .registers 9
    .param p1, "reset"    # Z
    .param p2, "isAllowed"    # Z
    .param p3, "s2CellFile"    # Ljava/lang/String;
    .param p4, "locationFreshDurationNanos"    # J
    .param p7, "satelliteAccessConfigurationFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    .local p6, "satelliteCountryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteControllerTimeoutDuration(ZIJ)Z
    .registers 6
    .param p1, "reset"    # Z
    .param p2, "timeoutType"    # I
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteIgnoreCellularServiceState(Z)Z
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteIgnorePlmnListFromStorage(Z)Z
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3834
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteListeningTimeoutDuration(J)Z
    .registers 4
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3263
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3297
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteServicePackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "provisioned"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSatelliteSubscriberIdListChangedIntentComponent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3733
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setShouldSendDatagramToModemInDemoMode(Z)Z
    .registers 3
    .param p1, "shouldSendToModemInDemoMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3515
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2733
    return-void
.end method

.method public blacklist setSimPowerStateForSlot(II)V
    .registers 3
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    return-void
.end method

.method public blacklist setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1801
    return-void
.end method

.method public blacklist setSimSlotMapping(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1927
    .local p1, "slotMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSupportDisableSatelliteWhileEnableInProgress(ZZ)Z
    .registers 4
    .param p1, "reset"    # Z
    .param p2, "supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3285
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 4
    .param p2, "subId"    # I
    .param p3, "resultCallback"    # Lcom/android/internal/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;I",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2380
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    return-void
.end method

.method public blacklist setTestEuiccUiComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3743
    return-void
.end method

.method public blacklist setTnScanningSupport(ZZZ)Z
    .registers 5
    .param p1, "reset"    # Z
    .param p2, "concurrentTnScanningSupported"    # Z
    .param p3, "tnScanningDuringSatelliteSessionAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3387
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoNrEnabled(IZ)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2482
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoWiFiModeSetting(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2169
    return-void
.end method

.method public blacklist setVoWiFiNonPersistent(IZI)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "isCapable"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2160
    return-void
.end method

.method public blacklist setVoWiFiRoamingModeSetting(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    return-void
.end method

.method public blacklist setVoWiFiRoamingSettingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2156
    return-void
.end method

.method public blacklist setVoWiFiSettingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2135
    return-void
.end method

.method public blacklist setVoiceActivationState(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    return-void
.end method

.method public blacklist setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceServiceStateOverride(IZLjava/lang/String;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "hasService"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2827
    return-void
.end method

.method public blacklist setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1531
    return-void
.end method

.method public blacklist setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    return-void
.end method

.method public blacklist setVtSettingEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    return-void
.end method

.method public blacklist showSwitchToManagedProfileDialog()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2399
    return-void
.end method

.method public blacklist shutdownMobileRadios()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    return-void
.end method

.method public blacklist startEmergencyCallbackMode()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2266
    return-void
.end method

.method public blacklist startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 3
    .param p1, "resultCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3008
    return-void
.end method

.method public blacklist stopNetworkScan(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "scanId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 962
    return-void
.end method

.method public blacklist stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 3
    .param p1, "resultCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3017
    return-void
.end method

.method public blacklist supplyPinForSubscriber(ILjava/lang/String;)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist switchMultiSimConfig(I)V
    .registers 2
    .param p1, "numOfSims"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2325
    return-void
.end method

.method public blacklist switchSlots([I)Z
    .registers 3
    .param p1, "physicalSlots"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleRadioOnOff()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist toggleRadioOnOffForSubscriber(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist triggerRcsReconfiguration(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    return-void
.end method

.method public blacklist unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    return-void
.end method

.method public blacklist unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3502
    return-void
.end method

.method public blacklist unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3654
    return-void
.end method

.method public blacklist unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3114
    return-void
.end method

.method public blacklist unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3094
    return-void
.end method

.method public blacklist unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3483
    return-void
.end method

.method public blacklist unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3160
    return-void
.end method

.method public blacklist unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3065
    return-void
.end method

.method public blacklist unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3632
    return-void
.end method

.method public blacklist unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    return-void
.end method

.method public blacklist unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2078
    return-void
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    return-void
.end method

.method public blacklist unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2216
    return-void
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2067
    return-void
.end method

.method public blacklist unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2782
    return-void
.end method

.method public blacklist unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    return-void
.end method

.method public blacklist unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2577
    return-void
.end method

.method public blacklist updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 3
    .param p1, "action"    # I
    .param p2, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "otaParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    return-void
.end method

.method public blacklist updateServiceLocation()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    return-void
.end method

.method public blacklist updateServiceLocationWithPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    return-void
.end method

.method public blacklist userActivity()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    return-void
.end method
