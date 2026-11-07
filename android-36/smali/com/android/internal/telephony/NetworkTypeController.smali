.class public Lcom/android/internal/telephony/NetworkTypeController;
.super Lcom/android/internal/telephony/StateMachine;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkTypeController$LegacyState;,
        Lcom/android/internal/telephony/NetworkTypeController$IdleState;,
        Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;,
        Lcom/android/internal/telephony/NetworkTypeController$DefaultState;,
        Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;
    }
.end annotation


# static fields
.field private static final blacklist ALL_STATES:[Ljava/lang/String;

.field public static final blacklist EVENT_UPDATE:I

.field private static final blacklist sEvents:[Ljava/lang/String;


# instance fields
.field private final blacklist mAdditionalNrAdvancedBands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field private final blacklist mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

.field private blacklist mDoesPccListIndicateIdle:Z

.field private blacklist mEnableNrAdvancedWhileRoaming:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

.field private blacklist mInVoiceCall:Z

.field private blacklist mIncludeLteForNrAdvancedThresholdBandwidth:Z

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsDeviceIdleMode:Z

.field private blacklist mIsNrAdvancedAllowedByPco:Z

.field private blacklist mIsPhysicalChannelConfig16Supported:Z

.field private blacklist mIsPhysicalChannelConfigOn:Z

.field private blacklist mIsPrimaryTimerActive:Z

.field private blacklist mIsSatelliteConstrainedData:Z

.field private blacklist mIsSatelliteNetworkCallbackRegistered:Z

.field private blacklist mIsSecondaryTimerActive:Z

.field private blacklist mIsTimerResetEnabledForLegacyStateRrcIdle:Z

.field private blacklist mIsTimerResetEnabledOnPlmnChanges:Z

.field private blacklist mIsTimerResetEnabledOnVoiceQos:Z

.field private blacklist mIsUsingUserDataForRrcDetection:Z

.field private blacklist mLastAnchorNrCellId:I

.field private blacklist mLastShownNrDueToAdvancedBand:Z

.field private final blacklist mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

.field private final blacklist mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

.field private blacklist mLteEnhancedPattern:Ljava/lang/String;

.field private blacklist mLtePlusThresholdBandwidth:I

.field private final blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNrAdvancedBandsSecondaryTimer:I

.field private blacklist mNrAdvancedCapablePcoId:I

.field private blacklist mNrAdvancedPciChangeSecondaryTimer:I

.field private blacklist mNrAdvancedThresholdBandwidth:I

.field private final blacklist mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

.field private final blacklist mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

.field private final blacklist mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

.field private blacklist mOverrideNetworkType:I

.field private blacklist mOverrideTimerRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPciChangedDuringPrimaryTimer:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhysicalChannelConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhysicalLinkStatus:I

.field private blacklist mPreviousState:Ljava/lang/String;

.field private blacklist mPrimaryCellChangedWhileIdle:Z

.field private blacklist mPrimaryTimerState:Ljava/lang/String;

.field private blacklist mRatchetPccFieldsForSameAnchorNrCell:Z

.field private blacklist mRatchetedNrBands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRatchetedNrBandwidths:I

.field private blacklist mSecondaryTimerExpireTimestamp:J

.field private blacklist mSecondaryTimerState:Ljava/lang/String;

.field private blacklist mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayInfoController(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/DisplayInfoController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTimerResetEnabledForLegacyStateRrcIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTimerResetEnabledOnVoiceQos(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDoesPccListIndicateIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAnchorNrCellId(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRatchetedNrBandwidths(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondaryTimerExpireTimestamp(Lcom/android/internal/telephony/NetworkTypeController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getEventName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getPhysicalLinkStatusFromPhysicalChannelConfig()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misAdditionalNrAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->onServiceStateChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseCarrierConfigs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBandwidthConstrainedStatus(Lcom/android/internal/telephony/NetworkTypeController;Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->updateBandwidthConstrainedStatus(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->updatePhysicalChannelConfigs(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTimers()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 95
    const-string v5, "restricted"

    const-string v6, "legacy"

    const-string v0, "connected_mmwave"

    const-string v1, "connected"

    const-string v2, "connected_rrc_idle"

    const-string v3, "not_restricted_rrc_idle"

    const-string v4, "not_restricted_rrc_con"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    const/16 v0, 0xe

    .line 128
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 130
    const-string v2, "EVENT_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 131
    const-string v2, "EVENT_QUIT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 132
    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 133
    const-string v2, "EVENT_PHYSICAL_LINK_STATUS_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 134
    const-string v2, "EVENT_PHYSICAL_CHANNEL_CONFIG_NOTIF_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 136
    const-string v2, "EVENT_CARRIER_CONFIG_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 137
    const-string v2, "EVENT_PRIMARY_TIMER_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 138
    const-string v2, "EVENT_SECONDARY_TIMER_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 139
    const-string v2, "EVENT_RADIO_OFF_OR_UNAVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 140
    const-string v2, "EVENT_PREFERRED_NETWORK_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 141
    const-string v2, "EVENT_INITIALIZE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 142
    const-string v2, "EVENT_PHYSICAL_CHANNEL_CONFIGS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 143
    const-string v2, "EVENT_DEVICE_IDLE_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 144
    const-string v2, "EVENT_QOS_SESSION_CHANGED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 14

    .line 319
    const-string v0, "NetworkTypeController"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 150
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController$1;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController$2;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$3;

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/NetworkTypeController$3;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 213
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    .line 222
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    const/4 v2, 0x1

    .line 224
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 235
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    .line 237
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    .line 238
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    const/4 v3, -0x1

    .line 239
    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 240
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    .line 247
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/NetworkTypeController$4;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 926
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    .line 1009
    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    .line 1092
    new-instance v6, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    invoke-direct {v6, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    .line 1177
    new-instance v7, Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    invoke-direct {v7, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v7, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    .line 1254
    new-instance v8, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    invoke-direct {v8, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v8, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 1339
    new-instance v9, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    invoke-direct {v9, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v9, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    .line 320
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 321
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 322
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    .line 323
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 324
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    .line 325
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 326
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 328
    new-instance p2, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    .line 329
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 330
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 331
    invoke-virtual {p0, v5, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 332
    invoke-virtual {p0, v6, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 333
    invoke-virtual {p0, v7, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 334
    invoke-virtual {p0, v8, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 335
    invoke-virtual {p0, v9, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 339
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    const/4 p1, 0x2

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    .line 506
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 507
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_85

    .line 509
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    move v9, v7

    :goto_1d
    if-ge v9, v8, :cond_85

    aget-object v10, v2, v9

    .line 510
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 511
    array-length v12, v11

    if-eq v12, v4, :cond_49

    .line 512
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon configuration, config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_82

    .line 516
    :cond_49
    aget-object v10, v11, v6

    const-string v12, "5g"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    move v10, v3

    goto :goto_78

    .line 518
    :cond_55
    aget-object v10, v11, v6

    const-string v12, "5g_plus"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    const/4 v10, 0x5

    goto :goto_78

    .line 521
    :cond_61
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    move v10, v7

    .line 523
    :goto_78
    aget-object v11, v11, v7

    new-instance v12, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v12, v11, v10}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 527
    :cond_85
    sget-object v2, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v8, v2

    move v9, v7

    :goto_89
    if-ge v9, v8, :cond_9e

    aget-object v10, v2, v9

    .line 528
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 529
    new-instance v11, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v11, v10, v7}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_89

    .line 534
    :cond_9e
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, "any"

    const-string v9, ";"

    if-nez v2, :cond_12c

    .line 536
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    move v11, v7

    :goto_b2
    if-ge v11, v10, :cond_12c

    aget-object v12, v2, v11

    .line 537
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 538
    array-length v14, v13

    if-eq v14, v3, :cond_e2

    .line 539
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid 5G icon timer configuration, config = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    :catch_db
    move/from16 v16, v4

    move/from16 v17, v6

    :cond_df
    move/from16 v18, v7

    goto :goto_123

    .line 544
    :cond_e2
    :try_start_e2
    aget-object v12, v13, v4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_e8} :catch_db

    .line 548
    aget-object v14, v13, v7

    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 549
    sget-object v14, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v15, v14

    move/from16 v16, v4

    move v4, v7

    :goto_f6
    move/from16 v17, v6

    if-ge v4, v15, :cond_df

    aget-object v6, v14, v4

    .line 550
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    move/from16 v18, v7

    .line 551
    aget-object v7, v13, v17

    invoke-virtual {v6, v7, v12}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    goto :goto_f6

    :cond_110
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    .line 554
    aget-object v4, v13, v18

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 555
    aget-object v6, v13, v17

    invoke-virtual {v4, v6, v12}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    :goto_123
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v7, v18

    goto :goto_b2

    :cond_12c
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    .line 560
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a2

    .line 562
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move/from16 v6, v18

    :goto_143
    if-ge v6, v4, :cond_1a2

    aget-object v7, v2, v6

    .line 563
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 564
    array-length v10, v9

    if-eq v10, v3, :cond_16d

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid 5G icon secondary timer configuration, config = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_19f

    .line 572
    :cond_16d
    :try_start_16d
    aget-object v7, v9, v16

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_173
    .catch Ljava/lang/NumberFormatException; {:try_start_16d .. :try_end_173} :catch_19f

    .line 576
    aget-object v10, v9, v18

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 577
    sget-object v10, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v11, v10

    move/from16 v12, v18

    :goto_180
    if-ge v12, v11, :cond_19f

    aget-object v13, v10, v12

    .line 578
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 579
    aget-object v14, v9, v17

    invoke-virtual {v13, v14, v7}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_180

    .line 582
    :cond_192
    aget-object v10, v9, v18

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 583
    aget-object v9, v9, v17

    invoke-virtual {v10, v9, v7}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    :catch_19f
    :cond_19f
    :goto_19f
    add-int/lit8 v6, v6, 0x1

    goto :goto_143

    .line 590
    :cond_1a2
    const-string v2, "connected"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 591
    const-string v3, "connected_rrc_idle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-virtual {v4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->isDefined()Z

    move-result v4

    if-nez v4, :cond_21c

    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->isDefined()Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 592
    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    iget v2, v2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    invoke-direct {v4, v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    .line 594
    iget-object v2, v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 595
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    goto :goto_1cf

    .line 597
    :cond_1ef
    iget-object v2, v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_219

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 598
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    goto :goto_1f9

    .line 600
    :cond_219
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_21c
    iput-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverrideTimerRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getCurrentOverrideNetworkType()I
    .registers 6

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    .line 619
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 620
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 624
    :goto_1d
    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    if-eqz v4, :cond_33

    if-nez v1, :cond_25

    if-eqz v2, :cond_33

    .line 626
    :cond_25
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->getNrDisplayType(Z)I

    move-result v0

    if-nez v0, :cond_32

    if-nez v2, :cond_32

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result p0

    return p0

    :cond_32
    return v0

    .line 631
    :cond_33
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 633
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result p0

    return p0

    :cond_3e
    return v3
.end method

.method private blacklist getEventName(I)Ljava/lang/String;
    .registers 2

    .line 1801
    :try_start_0
    sget-object p0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    aget-object p0, p0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 1803
    :catch_5
    const-string p0, "EVENT_NOT_DEFINED"

    return-object p0
.end method

.method private blacklist getLteDisplayType()I
    .registers 3

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 681
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 682
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    if-le v0, v1, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 686
    :goto_25
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isLteEnhancedAvailable()Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x2

    return p0

    :cond_2d
    return v0
.end method

.method private blacklist getNrDisplayType(Z)I
    .registers 7

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    .line 645
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    const-string v2, "connected_mmwave"

    if-eqz p1, :cond_26

    .line 647
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 648
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 651
    :cond_26
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_54

    const/4 v3, 0x2

    if-eq p1, v3, :cond_45

    const/4 v3, 0x3

    if-eq p1, v3, :cond_36

    goto :goto_59

    .line 653
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 654
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_3f
    const-string p1, "connected"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 659
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p1

    if-eqz p1, :cond_4e

    const-string p1, "not_restricted_rrc_con"

    goto :goto_50

    .line 660
    :cond_4e
    const-string p1, "not_restricted_rrc_idle"

    .line 659
    :goto_50
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 663
    :cond_54
    const-string p1, "restricted"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_59
    :goto_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v1

    :cond_5e
    if-ge v2, p1, :cond_77

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 669
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    if-eqz v3, :cond_5e

    .line 670
    iget v3, v3, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    if-eqz v3, :cond_5e

    return v3

    :cond_77
    return v1
.end method

.method private blacklist getPhysicalLinkStatusFromPhysicalChannelConfig()I
    .registers 2

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x2

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isAdditionalNrAdvancedBand(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    .line 1779
    :cond_f
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1780
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1781
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1772
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdditionalNrAdvancedBand: false because bands are empty; configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isBandwidthConstrainedCapabilitySupported(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 290
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x25

    .line 292
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_14

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1

    .line 294
    :catch_14
    const-string p1, "NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED not supported "

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isLte(I)Z
    .registers 2

    .line 0
    const/16 p0, 0xd

    if-eq p1, p0, :cond_b

    const/16 p0, 0x13

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLteEnhancedAvailable()Z
    .registers 6

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 696
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 697
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 698
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    move v2, v1

    :goto_21
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3b

    .line 697
    aget-object v3, p0, v2

    .line 699
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 700
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 701
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3b
    return v1
.end method

.method private blacklist isNrAdvanced()Z
    .registers 3

    .line 1733
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvancedForPccFields(ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNrAdvancedForPccFields(ILjava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1739
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    const/4 v1, 0x0

    if-lez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    if-nez v0, :cond_20

    .line 1740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isNrAdvanced: not allowed by PCO for PCO ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 1746
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    if-nez v0, :cond_32

    .line 1747
    const-string p1, "isNrAdvanced: false because NR advanced is unavailable while roaming."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 1753
    :cond_32
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    if-lez v0, :cond_57

    if-ge p1, v0, :cond_57

    .line 1755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNrAdvanced: false because bandwidths="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not meet the threshold="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 1763
    :cond_57
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrMmwave()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_64

    goto :goto_65

    :cond_64
    return v1

    :cond_65
    :goto_65
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNrConnected()Z
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrMmwave()Z
    .registers 2

    .line 1767
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrNotRestricted()Z
    .registers 2

    .line 1722
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrRestricted()Z
    .registers 2

    .line 1726
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPhysicalLinkActive()Z
    .registers 2

    .line 1790
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isUsingPhysicalChannelConfigForRrcDetection()Z
    .registers 2

    .line 1808
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist onServiceStateChanged()V
    .registers 4

    .line 1344
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1345
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnPlmnChanges:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1346
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1347
    const-string v1, "Reset any timers due to nr_timers_reset_on_plmn_change_bool"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1348
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 1350
    :cond_26
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseCarrierConfigs()V
    .registers 5

    .line 450
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 452
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_21

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v0, v1

    .line 459
    :cond_21
    const-string v1, "show_carrier_data_icon_pattern_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 461
    const-string v1, "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    .line 463
    const-string v1, "nr_timers_reset_on_plmn_change_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnPlmnChanges:Z

    .line 465
    const-string v1, "nr_timers_reset_on_voice_qos_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    .line 467
    const-string v1, "lte_plus_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    .line 469
    const-string v1, "nr_advanced_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    .line 471
    const-string v1, "include_lte_for_nr_advanced_threshold_bandwidth_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    .line 473
    const-string v1, "ratchet_nr_advanced_bandwidth_if_rrc_idle_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    .line 475
    const-string v1, "enable_nr_advanced_for_roaming_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 478
    const-string v1, "additional_nr_advanced_bands_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_87

    .line 481
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 483
    :cond_87
    const-string v1, "nr_advanced_capable_pco_id_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    .line 485
    const-string v1, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    .line 487
    const-string v1, "nr_advanced_bands_secondary_timer_seconds_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedBandsSecondaryTimer:I

    .line 489
    const-string v1, "nr_advanced_pci_change_secondary_timer_seconds_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedPciChangeSecondaryTimer:I

    .line 491
    const-string v1, "5g_icon_configuration_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    const-string v2, "5g_icon_display_grace_period_string"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    const-string v3, "5g_icon_display_secondary_grace_period_string"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/NetworkTypeController;->createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 499
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->updatePhysicalChannelConfigs(Ljava/util/List;)V

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getPhysicalLinkStatusFromPhysicalChannelConfig()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    :cond_d5
    return-void
.end method

.method private blacklist reduceSecondaryTimerIfNeeded()V
    .registers 7

    .line 1445
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_62

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedBandsSecondaryTimer:I

    if-gtz v0, :cond_9

    goto :goto_62

    .line 1447
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    if-eqz v0, :cond_4c

    .line 1449
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1452
    iget-wide v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_62

    .line 1453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due to PCI change, reduce the secondary timer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 1454
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1455
    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    add-long/2addr v2, v0

    .line 1457
    iput-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    return-void

    .line 1460
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!! Secondary timer is active, but found no rule for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private blacklist registerForAllEvents()V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreferredNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhysicalChannelConfig(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

    .line 420
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->registerForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 426
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 427
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_90

    .line 431
    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_90
    return-void
.end method

.method private blacklist resetAllTimers()V
    .registers 4

    const/4 v0, 0x7

    .line 1613
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v0, 0x8

    .line 1614
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1615
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 1616
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 1617
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    const-wide/16 v1, 0x0

    .line 1618
    iput-wide v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    .line 1619
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 1620
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 1622
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    return-void
.end method

.method private blacklist transitionToCurrentState()V
    .registers 3

    .line 1527
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_30

    .line 1529
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_30

    .line 1537
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1538
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    goto :goto_44

    .line 1541
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    goto :goto_44

    .line 1544
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    goto :goto_44

    .line 1530
    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    goto :goto_44

    .line 1532
    :cond_39
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    goto :goto_44

    .line 1535
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 1546
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1547
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 1548
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1550
    :cond_5c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method private blacklist transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V
    .registers 7

    .line 1489
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1490
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition with secondary timer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1493
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1496
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    if-eqz v2, :cond_5e

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    if-eqz v2, :cond_5e

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip secondary timer from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to in call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_b1

    .line 1499
    :cond_5e
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    if-nez v2, :cond_94

    if-eqz v1, :cond_94

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_94

    .line 1500
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v1

    .line 1501
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    if-eqz v2, :cond_7c

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedBandsSecondaryTimer:I

    if-lez v2, :cond_7c

    .line 1503
    const-string v1, "timer adjusted by nr_advanced_bands_secondary_timer_seconds_int"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    move v1, v2

    .line 1505
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s secondary timer started for state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_b2

    .line 1506
    :cond_94
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedPciChangeSecondaryTimer:I

    if-lez v1, :cond_b1

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    if-eqz v2, :cond_b1

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s secondary timer started for PCI changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v1, -0x1

    :goto_b2
    if-lez v1, :cond_cb

    .line 1513
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 1514
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1515
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    int-to-long v0, v1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    const/16 v2, 0x8

    .line 1518
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    :cond_cb
    const/4 p1, 0x0

    .line 1521
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 1522
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 1523
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V
    .registers 6

    .line 1465
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1466
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const-string v2, " to "

    if-eqz v1, :cond_3d

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition without timer from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to existing "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " primary timer."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto/16 :goto_c7

    .line 1469
    :cond_3d
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    if-eqz v1, :cond_5f

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip primary timer to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to in call"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_c7

    .line 1473
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition with primary timer from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 1476
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    if-nez v2, :cond_c7

    if-eqz v1, :cond_c7

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c7

    .line 1477
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v0

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s primary timer started for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1479
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1481
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x7

    .line 1482
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 1485
    :cond_c7
    :goto_c7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist unRegisterForAllEvents()V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreferredNetworkTypeChanged(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->unregisterForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_59

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz p0, :cond_59

    .line 445
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_59
    return-void
.end method

.method private blacklist updateBandwidthConstrainedStatus(Landroid/net/NetworkCapabilities;)V
    .registers 3

    if-eqz p1, :cond_24

    .line 302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isBandwidthConstrainedCapabilitySupported(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satellite constrained data status : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void

    .line 306
    :cond_24
    const-string p1, "capabilities is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateOverrideNetworkType()V
    .registers 2

    .line 608
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 612
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 613
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void

    .line 609
    :cond_15
    :goto_15
    const-string v0, "Skip updating override network type since timer is active."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updatePhysicalChannelConfigs(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1355
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    if-eqz v2, :cond_22

    .line 1356
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1359
    const-string v2, "Physical channel configs updated: not updating PCC fields for empty PCC list indicating RRC idle."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1361
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 1362
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 1363
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    return-void

    .line 1370
    :cond_22
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, -0x1

    if-eqz p1, :cond_80

    .line 1372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v1

    move v6, v4

    move v7, v6

    :cond_31
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/PhysicalChannelConfig;

    .line 1373
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_62

    .line 1374
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v10

    if-ne v10, v0, :cond_51

    if-ne v6, v4, :cond_51

    .line 1376
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v6

    .line 1378
    :cond_51
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v10

    add-int/2addr v8, v10

    .line 1379
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1380
    :cond_62
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_31

    .line 1381
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v10

    if-ne v10, v0, :cond_76

    if-ne v7, v4, :cond_76

    .line 1383
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v7

    .line 1385
    :cond_76
    iget-boolean v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    if-eqz v10, :cond_31

    .line 1386
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_31

    :cond_80
    move v8, v1

    move v6, v4

    move v7, v6

    :cond_83
    if-ne v6, v4, :cond_88

    if-eq v7, v4, :cond_88

    move v6, v7

    :cond_88
    if-ne v6, v4, :cond_9a

    if-nez v2, :cond_91

    .line 1400
    const-string v0, "Ignoring physical channel config fields without an anchor NR cell, either due to LTE-only configs or an unspecified cell ID."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1403
    :cond_91
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_115

    .line 1405
    :cond_9a
    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    if-ne v6, v2, :cond_b5

    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    if-eqz v4, :cond_b5

    .line 1406
    const-string v0, "Ratchet physical channel config fields since anchor NR cell is the same."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1407
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_115

    .line 1410
    :cond_b5
    iput v8, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 1411
    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    .line 1412
    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    const-string v5, " -> "

    if-eqz v4, :cond_f5

    if-eq v6, v2, :cond_f5

    .line 1414
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v2

    if-eqz v2, :cond_f5

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    if-nez v2, :cond_f5

    .line 1416
    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvancedForPccFields(ILjava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_f5

    .line 1417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow primary cell change once during RRC idle without changing state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1419
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 1420
    iput v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->reduceSecondaryTimerIfNeeded()V

    return-void

    .line 1424
    :cond_f5
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    if-eqz v0, :cond_115

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ratcheting physical channel config fields since anchor NR cell changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1430
    :cond_115
    :goto_115
    iput v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 1431
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 1432
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    .line 1433
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 1435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Physical channel configs updated: anchorNrCell="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", nrBandwidths="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", nrBands="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateTimers()V
    .registers 8

    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1557
    const-string v0, "Reset timers since NR is not allowed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1558
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void

    .line 1562
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1564
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove primary timer since primary timer state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") was reestablished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1570
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1571
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 1572
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 1573
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 1574
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void

    .line 1578
    :cond_5a
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove secondary timer since current state ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is no longer secondary timer state ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1584
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1585
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    .line 1586
    iput-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    .line 1587
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 1588
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void

    .line 1592
    :cond_98
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v1, :cond_a0

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v1, :cond_f0

    .line 1593
    :cond_a0
    const-string v1, "connected_mmwave"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1594
    const-string v0, "Reset timers since state is NR_ADVANCED."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void

    .line 1596
    :cond_b1
    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "connected_rrc_idle"

    .line 1597
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    :cond_c1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 1598
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 1599
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 1600
    const-string v0, "Reset non-NR advanced timers since state is NR connected/idle"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1601
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void

    .line 1603
    :cond_da
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    .line 1604
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_f0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_f0

    .line 1605
    const-string v0, "Reset timers since 2G and 3G don\'t need NR timers."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    :cond_f0
    return-void
.end method


# virtual methods
.method public blacklist areAnyTimersActive()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1834
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1835
    const-string p2, "NetworkTypeController: "

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1836
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1838
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1839
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSubId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOverrideTimerRules="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLteEnhancedPattern="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfigOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPrimaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPciChangedDuringPrimaryTimer="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsSecondaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerResetEnabledForLegacyStateRrcIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLtePlusThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIncludeLteForNrAdvancedThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetPccFieldsForSameAnchorNrCell="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetedNrBandwidths="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAdditionalNrAdvancedBandsList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetedNrBands="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLastAnchorNrCellId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDoesPccListIndicateIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPrimaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSecondaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreviousState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPhysicalLinkStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfig16Supported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsNrAdvancedAllowedByPco="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedCapablePcoId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsUsingUserDataForRrcDetection="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPrimaryCellChangedWhileIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEnableNrAdvancedWhileRoaming="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsDeviceIdleMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerResetEnabledOnVoiceQos="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1871
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getDataNetworkType()I
    .registers 3

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 390
    :cond_c
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0
.end method

.method public blacklist getOverrideNetworkType()I
    .registers 1

    .line 379
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return p0
.end method

.method public blacklist getSatelliteConstrainedData()Z
    .registers 1

    .line 399
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized blacklist registerForSatelliteNetwork()V
    .registers 5

    monitor-enter p0

    .line 346
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    if-nez v0, :cond_53

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    .line 348
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SatelliteDataUsageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 350
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 352
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 353
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2b

    const/16 v2, 0x25

    .line 358
    :try_start_27
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2d
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_32

    :catchall_2b
    move-exception v0

    goto :goto_55

    .line 360
    :catch_2d
    :try_start_2d
    const-string v2, "NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED not supported "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 362
    :goto_32
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 363
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    .line 364
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_4e

    .line 367
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 366
    invoke-virtual {v2, v0, v3, v1}, Landroid/net/ConnectivityManager;->registerBestMatchingNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_53

    .line 369
    :cond_4e
    const-string v0, "network callback not registered"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_2b

    .line 372
    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_2b

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTimerRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLteEnhancedPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPhysicalChannelConfigOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrimaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSecondaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNrAdvanced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
