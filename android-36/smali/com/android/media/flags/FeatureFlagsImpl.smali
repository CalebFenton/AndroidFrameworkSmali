.class public final Lcom/android/media/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/media/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableSetBluetoothAd2pOnCalls()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disableTransferWhenAppsDoNotSupport()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAudioInputDeviceRoutingAndVolumeControl()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableAudioPoliciesDeviceAndBluetoothController()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBuiltInSpeakerRouteSuitabilityStatuses()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCrossUserRoutingInMediaRouter2()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFixForEmptySystemRoutesCrash()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFullScanWithMediaContentControl()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableGetTransferableRoutes()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMediaRoute2InfoProviderPackageName()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMirroringInMediaRouter2()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMr2ServiceNonMainBgThread()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNewMediaRoute2InfoTypes()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNewWiredMediaRoute2InfoTypes()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNotifyingActivityManagerWithMediaSessionStatusChange()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableNullSessionInMediaBrowserService()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOutputSwitcherDeviceGrouping()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOutputSwitcherPersonalAudioSharing()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableOutputSwitcherRedesign()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableOutputSwitcherSessionGrouping()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePreventionOfKeepAliveRouteProviders()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePreventionOfManagerScansWhenNoAppsScan()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivilegedRoutingForMediaRoutingControl()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRlpCallbacksInMediaRouter2()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRouteVisibilityControlApi()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableScreenOffScanning()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSuggestedDeviceApi()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableUseOfSingletonAudioManagerRouteController()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableWaitingStateForSystemSessionCreationRequest()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixOutputMediaItemListIndexOutOfBoundsException()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method
