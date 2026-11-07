.class public final Lcom/android/server/telecom/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowSystemAppsResolveVoipCalls()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist busDeviceIsASpeaker()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist businessCallComposer()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheCallEvents()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callAudioRoutingPerformanceImprovemenent()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist callDetailsIdChanges()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callSequencingCallResumeFailed()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist checkCompletedFiltersOnTimeout()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist checkDeviceTypeOnRouteChange()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cswServiceInterfaceIsNull()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disconnectSelfManagedStuckStartupCalls()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist doNotSendCallToNullIcs()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dontTimeoutDestroyedCalls()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist dontUseCommunicationDeviceTracker()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyBindingToIncallService()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist eccKeyguard()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCallAudioWatchdog()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCallExceptionAnomReports()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCallSequencing()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRespondViaSmsManagerAsync()Z
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public greylist endSessionImprovements()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enforceTransactionalExclusivity()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ensureInCarRinging()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixUserRequestBaselineRouteVideoCall()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getRingerModeAnomReport()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist keepBluetoothDevicesCacheUpdated()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist maybeDefaultSpeakerAfterUnhold()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onCallEndpointChangedIcsOnConnected()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onlyClearCommunicationDeviceOnInactive()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public greylist preventRedundantLocationPermissionGrantAndRevoke()Z
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public greylist profileUserSupport()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remapTransactionalCapabilities()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .registers 2

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolveActiveBtRoutingAndBtTimingIssue()Z
    .registers 2

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .registers 2

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .registers 2

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setMuteState()Z
    .registers 2

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
    .registers 2

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .registers 2

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomAppLabelProxyHsumAware()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .registers 2

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainUserInBlockCheck()Z
    .registers 2

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainUserInGetRespondMessageApp()Z
    .registers 2

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .registers 2

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomMetricsSupport()Z
    .registers 2

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .registers 2

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .registers 2

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .registers 2

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalCsVerifier()Z
    .registers 2

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .registers 2

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalVideoState()Z
    .registers 2

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .registers 2

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .registers 2

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public greylist updatePreferredAudioDeviceLogic()Z
    .registers 2

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .registers 2

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .registers 2

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .registers 2

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .registers 2

    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useImprovedListenerOrder()Z
    .registers 2

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .registers 2

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useStreamVoiceCallTones()Z
    .registers 2

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public greylist voipAppActionsSupport()Z
    .registers 2

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public greylist voipCallMonitorRefactor()Z
    .registers 2

    .line 591
    const/4 v0, 0x1

    return v0
.end method
