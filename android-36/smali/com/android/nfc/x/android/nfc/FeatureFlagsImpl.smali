.class public final Lcom/android/nfc/x/android/nfc/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/nfc/x/android/nfc/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableCardEmulationEuicc()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNfcCharging()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableNfcMainline()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNfcReaderOption()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNfcSetDiscoveryTech()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNfcUserRestriction()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableTagDetectionBroadcasts()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nfcActionManageServicesSettings()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nfcApduServiceInfoConstructor()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nfcAssociatedRoleServices()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcCheckTagIntentPreference()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcEventListener()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcObserveMode()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcObserveModeStShim()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcOemExtension()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcOverrideRecoverRoutingTable()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcPersistLog()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcReadPollingLoop()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcReadPollingLoopStShim()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcSetDefaultDiscTech()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcSetServiceEnabledForCategoryOther()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcStateChange()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcVendorCmd()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nfcWatchdog()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method
