.class public interface abstract Lcom/android/internal/telephony/PhoneNotifier;
.super Ljava/lang/Object;
.source "PhoneNotifier.java"


# virtual methods
.method public abstract blacklist notifyAllowedNetworkTypesChanged(Lcom/android/internal/telephony/Phone;IJ)V
.end method

.method public abstract blacklist notifyBarringInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
.end method

.method public abstract blacklist notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V
.end method

.method public abstract blacklist notifyCallbackModeRestarted(Lcom/android/internal/telephony/Phone;IJ)V
.end method

.method public abstract blacklist notifyCallbackModeStarted(Lcom/android/internal/telephony/Phone;IJ)V
.end method

.method public abstract blacklist notifyCallbackModeStopped(Lcom/android/internal/telephony/Phone;II)V
.end method

.method public abstract blacklist notifyCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/Phone;[I)V
.end method

.method public abstract blacklist notifyCarrierRoamingNtnEligibleStateChanged(Lcom/android/internal/telephony/Phone;Z)V
.end method

.method public abstract blacklist notifyCarrierRoamingNtnModeChanged(Lcom/android/internal/telephony/Phone;Z)V
.end method

.method public abstract blacklist notifyCarrierRoamingNtnSignalStrengthChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/NtnSignalStrength;)V
.end method

.method public abstract blacklist notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;)V
.end method

.method public abstract blacklist notifyCellularIdentifierDisclosedChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellularIdentifierDisclosure;)V
.end method

.method public abstract blacklist notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract blacklist notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V
.end method

.method public abstract blacklist notifyDataEnabled(Lcom/android/internal/telephony/Phone;ZI)V
.end method

.method public abstract blacklist notifyDisconnectCause(Lcom/android/internal/telephony/Phone;II)V
.end method

.method public abstract blacklist notifyDisplayInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/TelephonyDisplayInfo;)V
.end method

.method public abstract blacklist notifyEmergencyNumberList(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract blacklist notifyLinkCapacityEstimateChanged(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist notifyMediaQualityStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/MediaQualityStatus;)V
.end method

.method public abstract greylist notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyOutgoingEmergencySms(Lcom/android/internal/telephony/Phone;Landroid/telephony/emergency/EmergencyNumber;)V
.end method

.method public abstract blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
.end method

.method public abstract blacklist notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyPhysicalChannelConfig(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist notifyPreciseCallState(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;[I[I)V
.end method

.method public abstract blacklist notifyRadioPowerStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract blacklist notifyRegistrationFailed(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
.end method

.method public abstract blacklist notifySecurityAlgorithmsChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/SecurityAlgorithmUpdate;)V
.end method

.method public abstract blacklist notifyServiceState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V
.end method

.method public abstract greylist notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract blacklist notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
.end method

.method public abstract blacklist notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method
