.class public interface abstract Lcom/android/server/telecom/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# virtual methods
.method public abstract greylist addCallUriForMissedCalls()Z
.end method

.method public abstract greylist allowSystemAppsResolveVoipCalls()Z
.end method

.method public abstract greylist associatedUserRefactorForWorkProfile()Z
.end method

.method public abstract greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
.end method

.method public abstract greylist busDeviceIsASpeaker()Z
.end method

.method public abstract greylist businessCallComposer()Z
.end method

.method public abstract greylist cacheCallAudioCallbacks()Z
.end method

.method public abstract greylist cacheCallEvents()Z
.end method

.method public abstract greylist callAudioCommunicationDeviceRefactor()Z
.end method

.method public abstract greylist callAudioRoutingPerformanceImprovemenent()Z
.end method

.method public abstract greylist callDetailsIdChanges()Z
.end method

.method public abstract greylist callSequencingCallResumeFailed()Z
.end method

.method public abstract greylist cancelRemovalOnEmergencyRedial()Z
.end method

.method public abstract greylist checkCompletedFiltersOnTimeout()Z
.end method

.method public abstract greylist checkDeviceTypeOnRouteChange()Z
.end method

.method public abstract greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
.end method

.method public abstract greylist communicationDeviceProtectedByLock()Z
.end method

.method public abstract greylist cswServiceInterfaceIsNull()Z
.end method

.method public abstract greylist disconnectSelfManagedStuckStartupCalls()Z
.end method

.method public abstract greylist doNotSendCallToNullIcs()Z
.end method

.method public abstract greylist dontTimeoutDestroyedCalls()Z
.end method

.method public abstract greylist dontUseCommunicationDeviceTracker()Z
.end method

.method public abstract greylist earlyBindingToIncallService()Z
.end method

.method public abstract greylist earlyUpdateInternalCallAudioState()Z
.end method

.method public abstract greylist eccKeyguard()Z
.end method

.method public abstract greylist enableCallAudioWatchdog()Z
.end method

.method public abstract greylist enableCallExceptionAnomReports()Z
.end method

.method public abstract greylist enableCallSequencing()Z
.end method

.method public abstract greylist enableRespondViaSmsManagerAsync()Z
.end method

.method public abstract greylist endSessionImprovements()Z
.end method

.method public abstract greylist enforceTransactionalExclusivity()Z
.end method

.method public abstract greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
.end method

.method public abstract greylist ensureInCarRinging()Z
.end method

.method public abstract greylist fixAudioFlickerForOutgoingCalls()Z
.end method

.method public abstract greylist fixUserRequestBaselineRouteVideoCall()Z
.end method

.method public abstract greylist genAnomReportOnFocusTimeout()Z
.end method

.method public abstract greylist getLastKnownCellIdentity()Z
.end method

.method public abstract greylist getRegisteredPhoneAccounts()Z
.end method

.method public abstract greylist getRingerModeAnomReport()Z
.end method

.method public abstract greylist ignoreAutoRouteToWatchDevice()Z
.end method

.method public abstract greylist isNewOutgoingCallBroadcastUnblocking()Z
.end method

.method public abstract greylist keepBluetoothDevicesCacheUpdated()Z
.end method

.method public abstract greylist maybeDefaultSpeakerAfterUnhold()Z
.end method

.method public abstract greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
.end method

.method public abstract greylist onCallEndpointChangedIcsOnConnected()Z
.end method

.method public abstract greylist onlyClearCommunicationDeviceOnInactive()Z
.end method

.method public abstract greylist onlyUpdateTelephonyOnValidSubIds()Z
.end method

.method public abstract greylist postponeRegisterToLeaudio()Z
.end method

.method public abstract greylist preventRedundantLocationPermissionGrantAndRevoke()Z
.end method

.method public abstract greylist profileUserSupport()Z
.end method

.method public abstract greylist remapTransactionalCapabilities()Z
.end method

.method public abstract greylist resetMuteWhenEnteringQuiescentBtRoute()Z
.end method

.method public abstract greylist resolveActiveBtRoutingAndBtTimingIssue()Z
.end method

.method public abstract greylist resolveSwitchingBtDevicesComputation()Z
.end method

.method public abstract greylist separatelyBindToBtIncallService()Z
.end method

.method public abstract greylist setAudioModeBeforeAbandonFocus()Z
.end method

.method public abstract greylist setMuteState()Z
.end method

.method public abstract greylist setRemoteConnectionCallId()Z
.end method

.method public abstract greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
.end method

.method public abstract greylist skipFilterPhoneAccountPerformDndFilter()Z
.end method

.method public abstract greylist telecomAppLabelProxyHsumAware()Z
.end method

.method public abstract greylist telecomLogExternalWearableCalls()Z
.end method

.method public abstract greylist telecomMainUserInBlockCheck()Z
.end method

.method public abstract greylist telecomMainUserInGetRespondMessageApp()Z
.end method

.method public abstract greylist telecomMainlineBlockedNumbersManager()Z
.end method

.method public abstract greylist telecomMetricsSupport()Z
.end method

.method public abstract greylist telecomResolveHiddenDependencies()Z
.end method

.method public abstract greylist telecomSkipLogBasedOnExtra()Z
.end method

.method public abstract greylist telephonyHasDefaultButTelecomDoesNot()Z
.end method

.method public abstract greylist transactionalCsVerifier()Z
.end method

.method public abstract greylist transactionalHoldDisconnectsUnholdable()Z
.end method

.method public abstract greylist transactionalVideoState()Z
.end method

.method public abstract greylist transitRouteBeforeAudioDisconnectBt()Z
.end method

.method public abstract greylist unregisterUnresolvableAccounts()Z
.end method

.method public abstract greylist updatePreferredAudioDeviceLogic()Z
.end method

.method public abstract greylist updateRouteMaskWhenBtConnected()Z
.end method

.method public abstract greylist updatedRcsCallCountTracking()Z
.end method

.method public abstract greylist useActualAddressToEnterConnectingState()Z
.end method

.method public abstract greylist useDeviceProvidedSerializedRingerVibration()Z
.end method

.method public abstract greylist useImprovedListenerOrder()Z
.end method

.method public abstract greylist useRefactoredAudioRouteSwitching()Z
.end method

.method public abstract greylist useStreamVoiceCallTones()Z
.end method

.method public abstract greylist voipAppActionsSupport()Z
.end method

.method public abstract greylist voipCallMonitorRefactor()Z
.end method
