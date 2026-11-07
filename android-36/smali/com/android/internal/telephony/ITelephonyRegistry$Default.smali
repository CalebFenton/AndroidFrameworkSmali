.class public Lcom/android/internal/telephony/ITelephonyRegistry$Default;
.super Ljava/lang/Object;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist addSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    .registers 9
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "subId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist notifyActiveDataSubIdChanged(I)V
    .registers 2
    .param p1, "activeDataSubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(IIIJ)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "reason"    # I
    .param p4, "allowedNetworkType"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public blacklist notifyCallForwardingChanged(Z)V
    .registers 2
    .param p1, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .registers 5
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "callNetworkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist notifyCallState(IIILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist notifyCallStateForAllSubs(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist notifyCallbackModeRestarted(IIIJ)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "durationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public blacklist notifyCallbackModeStarted(IIIJ)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "durationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public blacklist notifyCallbackModeStopped(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist notifyCarrierConfigChanged(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I
    .param p4, "specificCarrierId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public blacklist notifyCarrierNetworkChange(Z)V
    .registers 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist notifyCarrierNetworkChangeWithSubId(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p3, "privilegedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    .local p2, "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "availableServices"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnEligibleStateChanged(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "eligible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnModeChanged(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public blacklist notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public blacklist notifyCellInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public blacklist notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public blacklist notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/telephony/CellIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public blacklist notifyDataActivityForSubscriber(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist notifyDataActivityForSubscriberWithSlot(III)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist notifyDataEnabled(IIZI)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "enabled"    # Z
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist notifyDisconnectCause(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "disconnectCause"    # I
    .param p4, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist notifyEmergencyNumberList(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    .local p3, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    return-void
.end method

.method public blacklist notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "status"    # Landroid/telephony/ims/MediaQualityStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist notifyOemHookRawEventForSubscriber(II[B)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist notifyOpportunisticSubscriptionInfoChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 2
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    return-void
.end method

.method public blacklist notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "callStates"    # [I
    .param p4, "imsCallIds"    # [Ljava/lang/String;
    .param p5, "imsCallServiceTypes"    # [I
    .param p6, "imsCallTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist notifyRadioPowerStateChanged(III)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p4, "chosenPlmn"    # Ljava/lang/String;
    .param p5, "domain"    # I
    .param p6, "causeCode"    # I
    .param p7, "additionalCauseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist notifySatelliteStateChanged(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "activationState"    # I
    .param p4, "activationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist notifySimultaneousCellularCallingSubscriptionsChanged([I)V
    .registers 2
    .param p1, "subIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist notifySrvccStateChanged(II)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "lteState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public blacklist removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist removeSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    return-void
.end method
