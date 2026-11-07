.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# instance fields
.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "telephony_registry"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public static blacklist convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .registers 2

    .line 383
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_10
    const/4 p0, 0x7

    return p0

    :pswitch_12
    const/4 p0, 0x6

    return p0

    :pswitch_14
    const/4 p0, 0x5

    return p0

    :pswitch_16
    const/4 p0, 0x4

    return p0

    :pswitch_18
    const/4 p0, 0x3

    return p0

    :pswitch_1a
    const/4 p0, 0x2

    return p0

    :pswitch_1c
    const/4 p0, 0x1

    return p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public blacklist notifyAllowedNetworkTypesChanged(Lcom/android/internal/telephony/Phone;IJ)V
    .registers 11

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyAllowedNetworkTypesChanged(IIIJ)V

    return-void
.end method

.method public blacklist notifyBarringInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
    .registers 4

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    return-void
.end method

.method public blacklist notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCallForwardingChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCFActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "DefaultPhoneNotifier"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result p1

    .line 133
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyCallForwardingChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V
    .registers 5

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCallQualityChanged(IILandroid/telephony/CallQuality;I)V

    return-void
.end method

.method public blacklist notifyCallbackModeRestarted(Lcom/android/internal/telephony/Phone;IJ)V
    .registers 11

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 323
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeRestarted(IIIJ)V

    return-void
.end method

.method public blacklist notifyCallbackModeStarted(Lcom/android/internal/telephony/Phone;IJ)V
    .registers 11

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 315
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 314
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeStarted(IIIJ)V

    return-void
.end method

.method public blacklist notifyCallbackModeStopped(Lcom/android/internal/telephony/Phone;II)V
    .registers 5

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 332
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeStopped(IIII)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/Phone;[I)V
    .registers 3

    .line 350
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 350
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnEligibleStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .registers 3

    .line 343
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 344
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnEligibleStateChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnModeChanged(Lcom/android/internal/telephony/Phone;Z)V
    .registers 3

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnModeChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnSignalStrengthChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3

    .line 357
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method public blacklist notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellInfoChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;)V
    .registers 3

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellLocation(ILandroid/telephony/CellIdentity;)V

    return-void
.end method

.method public blacklist notifyCellularIdentifierDisclosedChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 4

    .line 374
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 374
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method public blacklist notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 207
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivationStateChanged(III)V

    return-void
.end method

.method public blacklist notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 144
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataActivityState()I

    move-result p1

    .line 143
    invoke-virtual {p0, v1, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivityChanged(III)V

    return-void
.end method

.method public blacklist notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 149
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist notifyDataEnabled(Lcom/android/internal/telephony/Phone;ZI)V
    .registers 5

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDataEnabled(IIZI)V

    return-void
.end method

.method public blacklist notifyDisconnectCause(Lcom/android/internal/telephony/Phone;II)V
    .registers 5

    .line 191
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDisconnectCause(IIII)V

    return-void
.end method

.method public blacklist notifyDisplayInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public blacklist notifyEmergencyNumberList(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyEmergencyNumberList(II)V

    return-void
.end method

.method public blacklist notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 300
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyMediaQualityStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 4

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 261
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 260
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public blacklist notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result p1

    .line 123
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyMessageWaitingChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyOutgoingEmergencySms(Lcom/android/internal/telephony/Phone;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 4

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 247
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public blacklist notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 77
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eqz v0, :cond_1d

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 82
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 84
    :cond_1d
    const-string v0, ""

    :goto_1f
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result p1

    .line 84
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyCallStateChanged(IIILjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyPhysicalChannelConfig(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 280
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyPreciseCallState(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;[I[I)V
    .registers 15

    .line 177
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 178
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 179
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    if-eqz v2, :cond_3e

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    .line 184
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    .line 185
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/telephony/TelephonyRegistryManager;->notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V

    :cond_3e
    return-void
.end method

.method public blacklist notifyRadioPowerStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyRadioPowerStateChanged(III)V

    return-void
.end method

.method public blacklist notifyRegistrationFailed(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyRegistryManager;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public blacklist notifySecurityAlgorithmsChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 4

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 365
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method public blacklist notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 90
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public blacklist notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V
    .registers 7

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServiceStateForSubId: mRegistryMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phondId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DefaultPhoneNotifier"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_46

    .line 100
    new-instance p2, Landroid/telephony/ServiceState;

    invoke-direct {p2}, Landroid/telephony/ServiceState;-><init>()V

    .line 101
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 103
    :cond_46
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, v0, p3, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    return-void
.end method

.method public blacklist notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 115
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    return-void
.end method

.method public blacklist notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 3

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySrvccStateChanged(II)V

    return-void
.end method

.method public blacklist notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .registers 4

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 219
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyUserMobileDataStateChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 213
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyVoiceActivationStateChanged(III)V

    return-void
.end method
