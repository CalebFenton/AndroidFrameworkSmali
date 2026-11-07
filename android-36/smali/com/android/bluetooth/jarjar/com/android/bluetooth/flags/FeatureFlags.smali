.class public interface abstract Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# virtual methods
.method public abstract blacklist a2dpCleanupOnRemoveDevice()Z
.end method

.method public abstract blacklist a2dpIgnoreStartedWhenResponder()Z
.end method

.method public abstract blacklist a2dpLhdcApi()Z
.end method

.method public abstract blacklist a2dpSmIgnoreConnectEventsInConnectingState()Z
.end method

.method public abstract blacklist a2dpVariableAacCapability()Z
.end method

.method public abstract blacklist a2dpVersion14()Z
.end method

.method public abstract blacklist absVolumeSdpConflict()Z
.end method

.method public abstract blacklist adapterSuspendMgmt()Z
.end method

.method public abstract blacklist admRemoveHandlingWired()Z
.end method

.method public abstract blacklist advertiseThread()Z
.end method

.method public abstract blacklist aicsApi()Z
.end method

.method public abstract blacklist allowFreeLastScn()Z
.end method

.method public abstract blacklist allowGattConnectFromTheAppsWithoutMakingLeaudioDeviceActive()Z
.end method

.method public abstract blacklist allowSwitchingHidAndHogp()Z
.end method

.method public abstract blacklist androidOsIdentifier()Z
.end method

.method public abstract blacklist associateBrowseL2capRequestWithActiveControlChannel()Z
.end method

.method public abstract blacklist autoConnectOnMultipleHfpWhenNoA2dpDevice()Z
.end method

.method public abstract blacklist autoTransportPairing()Z
.end method

.method public abstract blacklist avStreamReconfigureFix()Z
.end method

.method public abstract blacklist avdtHandleSignalingOnPeerFailure()Z
.end method

.method public abstract blacklist avdtHandleSuspendCfmBadState()Z
.end method

.method public abstract blacklist avdtWaitForInitialDelayReportAsInitiator()Z
.end method

.method public abstract blacklist avdtpPreventDoubleSuspend()Z
.end method

.method public abstract blacklist avoidL2cProcessingWhileStackShutdown()Z
.end method

.method public abstract blacklist avrcp16Default()Z
.end method

.method public abstract blacklist batchScanOptimization()Z
.end method

.method public abstract blacklist bluetoothPowerTelemetry()Z
.end method

.method public abstract blacklist bondedDeviceSmpFailureHandling()Z
.end method

.method public abstract blacklist browsingRefactor()Z
.end method

.method public abstract blacklist btOffloadSocketApi()Z
.end method

.method public abstract blacklist btSocketApiL2capCid()Z
.end method

.method public abstract blacklist btaAgCmdBrsfAllowUint32()Z
.end method

.method public abstract blacklist btaAvUsePeerCodec()Z
.end method

.method public abstract blacklist btaDmDeferDeviceDiscoveryStateChangeUntilRnrComplete()Z
.end method

.method public abstract blacklist btaDmDiscCloseProperConnId()Z
.end method

.method public abstract blacklist btsecCheckControllerScSupport()Z
.end method

.method public abstract blacklist btsecCheckValidDiscoveryDatabase()Z
.end method

.method public abstract blacklist btsecCycleIrks()Z
.end method

.method public abstract blacklist callBluetoothReadyBeforeProfilesStart()Z
.end method

.method public abstract blacklist changeDefaultTrackableAdvNumber()Z
.end method

.method public abstract blacklist channelSounding()Z
.end method

.method public abstract blacklist channelSounding25q2Apis()Z
.end method

.method public abstract blacklist channelSoundingInStack()Z
.end method

.method public abstract blacklist checkPeerHfIndicator()Z
.end method

.method public abstract blacklist chooseWrongHfpCodecInSpecificConfig()Z
.end method

.method public abstract blacklist clearAuthCollisionStateOnPairingComplete()Z
.end method

.method public abstract blacklist clearPairingStateWhenNoDevrec()Z
.end method

.method public abstract blacklist closeHidIfUhidReadyTooSlow()Z
.end method

.method public abstract blacklist configureScanOnResume()Z
.end method

.method public abstract blacklist connectHapOnOtherProfileConnect()Z
.end method

.method public abstract blacklist createMetadataAfterBonding()Z
.end method

.method public abstract blacklist defaultGattTransport()Z
.end method

.method public abstract blacklist directedAdvertisingApi()Z
.end method

.method public abstract blacklist disconnectAclsByBredrDisabled()Z
.end method

.method public abstract blacklist disconnectHidChannelsSerially()Z
.end method

.method public abstract blacklist disconnectOnEncryptionFailure()Z
.end method

.method public abstract blacklist disconnectReasonForEncryptionFailure()Z
.end method

.method public abstract blacklist distanceMeasurementThread()Z
.end method

.method public abstract blacklist doNotHardcodeTmapRoleMask()Z
.end method

.method public abstract blacklist donotMandateAuthAlongWithEncryption()Z
.end method

.method public abstract blacklist donotPushErrorCodeToAppWhenConnected()Z
.end method

.method public abstract blacklist donotQueueDupRnr()Z
.end method

.method public abstract blacklist donotUpdateSecFlagsOnCsrkSave()Z
.end method

.method public abstract blacklist donotValidateBondStateFromProfiles()Z
.end method

.method public abstract blacklist dontSendHciDisconnectRepeatedly()Z
.end method

.method public abstract blacklist dontSendHidSetIdle()Z
.end method

.method public abstract blacklist dsaHwTransparentCodec()Z
.end method

.method public abstract blacklist earlyIncomingHidConnection()Z
.end method

.method public abstract blacklist emptyNamesAreInvalid()Z
.end method

.method public abstract blacklist enableBatteryLevelUpdateOnlyThroughHfIndicator()Z
.end method

.method public abstract blacklist enableBleWhileDisablingAirplane()Z
.end method

.method public abstract blacklist enableHapByDefault()Z
.end method

.method public abstract blacklist encryptedAdvertisingData()Z
.end method

.method public abstract blacklist encryptionChangeBroadcast()Z
.end method

.method public abstract blacklist extendAndRandomizeRoleSwitchDelay()Z
.end method

.method public abstract blacklist fixAddDeviceProperties()Z
.end method

.method public abstract blacklist fixAvdtRconfigNotSettingL2cap()Z
.end method

.method public abstract blacklist fixBluetoothGattGettingDuplicateServices()Z
.end method

.method public abstract blacklist fixBufLenCheckForFirstKFrame()Z
.end method

.method public abstract blacklist fixExecuteWriteNoPending()Z
.end method

.method public abstract blacklist fixHfpQual19()Z
.end method

.method public abstract blacklist fixLecocSocketAvailable()Z
.end method

.method public abstract blacklist fixPrivateGattAdvertisingNotWorking()Z
.end method

.method public abstract blacklist fixScoCommandStatusHandling()Z
.end method

.method public abstract blacklist fixStartedModuleRace()Z
.end method

.method public abstract blacklist fixUnhandledBqrSubevent()Z
.end method

.method public abstract blacklist fixUnusableAdvSlotDueToMapAccess()Z
.end method

.method public abstract blacklist flossSeparateHostPrivacyAndLlprivacy()Z
.end method

.method public abstract blacklist gattCallbackOnFailure()Z
.end method

.method public abstract blacklist gattClearCacheOnFactoryReset()Z
.end method

.method public abstract blacklist gattQueueCleanupConnected()Z
.end method

.method public abstract blacklist getAllElementAttributesEmpty()Z
.end method

.method public abstract blacklist guardBondedDeviceProperties()Z
.end method

.method public abstract blacklist guestModeBond()Z
.end method

.method public abstract blacklist handleDeliverySendingFailureEvents()Z
.end method

.method public abstract blacklist hapConnectOnlyRequestedDevice()Z
.end method

.method public abstract blacklist hciVendorSpecificExtension()Z
.end method

.method public abstract blacklist hfpClientDisconnectingState()Z
.end method

.method public abstract blacklist hfpSoftwareDatapath()Z
.end method

.method public abstract blacklist hfpVolumeControlProperty()Z
.end method

.method public abstract blacklist hhStateUpdateRaceFix()Z
.end method

.method public abstract blacklist hogpReconnection()Z
.end method

.method public abstract blacklist identityAddressTypeApi()Z
.end method

.method public abstract blacklist ignoreAuthReqWhenCollisionTimerActive()Z
.end method

.method public abstract blacklist ignoreNotifyWhenAlreadyConnected()Z
.end method

.method public abstract blacklist ignoreUnrelatedCancelBond()Z
.end method

.method public abstract blacklist ignoreUnselectedHidTransportStates()Z
.end method

.method public abstract blacklist immediateEncryptionAfterPairing()Z
.end method

.method public abstract blacklist indicateRfcommConnectionCompleteAfterMsc()Z
.end method

.method public abstract blacklist initialConnParamsP1()Z
.end method

.method public abstract blacklist invalidateHciHandleOnAclRemoval()Z
.end method

.method public abstract blacklist isScoManagedByAudio()Z
.end method

.method public abstract blacklist keyMissingAsOrderedBroadcast()Z
.end method

.method public abstract blacklist keyMissingBlePeripheral()Z
.end method

.method public abstract blacklist keyMissingPublic()Z
.end method

.method public abstract blacklist killInsteadOfExit()Z
.end method

.method public abstract blacklist l2capFcsOptionFix()Z
.end method

.method public abstract blacklist l2capTxCompleteCbInfo()Z
.end method

.method public abstract blacklist leAppearanceAfterCtkd()Z
.end method

.method public abstract blacklist leAseReadMultipleVariable()Z
.end method

.method public abstract blacklist leDisconnectNotificationHandling()Z
.end method

.method public abstract blacklist leEncOnReconnect()Z
.end method

.method public abstract blacklist leEncryptionRefreshFailureHandling()Z
.end method

.method public abstract blacklist leImplAckPauseDisarmed()Z
.end method

.method public abstract blacklist lePeripheralEncFailure()Z
.end method

.method public abstract blacklist leScanMsftSupport()Z
.end method

.method public abstract blacklist leScanRemoveNonOnewayBinderCalls()Z
.end method

.method public abstract blacklist leSubrateApi()Z
.end method

.method public abstract blacklist leaudioAddAicsSupport()Z
.end method

.method public abstract blacklist leaudioAddOpusCodecType()Z
.end method

.method public abstract blacklist leaudioAllowLeaudioOnlyDevices()Z
.end method

.method public abstract blacklist leaudioBassScanWithInternalScanController()Z
.end method

.method public abstract blacklist leaudioBigDependsOnAudioState()Z
.end method

.method public abstract blacklist leaudioBroadcastApiGetLocalMetadata()Z
.end method

.method public abstract blacklist leaudioBroadcastApiManagePrimaryGroup()Z
.end method

.method public abstract blacklist leaudioBroadcastMonitorSourceSyncStatus()Z
.end method

.method public abstract blacklist leaudioBroadcastPreventResumeInterruption()Z
.end method

.method public abstract blacklist leaudioBroadcastPrimaryGroupSelection()Z
.end method

.method public abstract blacklist leaudioBroadcastReceiveStateProcessingRefactor()Z
.end method

.method public abstract blacklist leaudioBroadcastResyncHelper()Z
.end method

.method public abstract blacklist leaudioBroadcastVolumeControlForConnectedDevices()Z
.end method

.method public abstract blacklist leaudioConfigProfileEnabling()Z
.end method

.method public abstract blacklist leaudioDevOptionsRespectProfileSysprops()Z
.end method

.method public abstract blacklist leaudioDisableBroadcastForHapDevice()Z
.end method

.method public abstract blacklist leaudioGmapClient()Z
.end method

.method public abstract blacklist leaudioMonitorUnicastSourceWhenManagedByBroadcastDelegator()Z
.end method

.method public abstract blacklist leaudioMonoLocationErrataApi()Z
.end method

.method public abstract blacklist leaudioMultipleVocsInstancesApi()Z
.end method

.method public abstract blacklist leaudioSetCodecConfigPreference()Z
.end method

.method public abstract blacklist leaudioSmIgnoreConnectEventsInConnectingState()Z
.end method

.method public abstract blacklist leaudioSortScansToSyncByFails()Z
.end method

.method public abstract blacklist leaudioStopUpdatedToNotAvailableContextStream()Z
.end method

.method public abstract blacklist leaudioUseAggressiveParams()Z
.end method

.method public abstract blacklist leaudioUseAudioRecordingListener()Z
.end method

.method public abstract blacklist maintainCallIndexAfterConference()Z
.end method

.method public abstract blacklist metadataApiInactiveAudioDeviceUponConnection()Z
.end method

.method public abstract blacklist metadataApiMicrophoneForCallEnabled()Z
.end method

.method public abstract blacklist msftAddrTrackingQuirk()Z
.end method

.method public abstract blacklist nonConferenceCallHangup()Z
.end method

.method public abstract blacklist nonZeroLocalIrk()Z
.end method

.method public abstract blacklist nrpaNonConnectableAdv()Z
.end method

.method public abstract blacklist onlyStartScanDuringBleOn()Z
.end method

.method public abstract blacklist oppCheckContentUriPermissions()Z
.end method

.method public abstract blacklist oppDevicePickerExtraIntentApis()Z
.end method

.method public abstract blacklist oppRemoveEmptyGroupNotification()Z
.end method

.method public abstract blacklist oppSetInsetsForEdgeToEdge()Z
.end method

.method public abstract blacklist pbapCleanupUseHandler()Z
.end method

.method public abstract blacklist pbapClientContactsCaching()Z
.end method

.method public abstract blacklist pbapClientStorageRefactor()Z
.end method

.method public abstract blacklist pbapLimitCallLog()Z
.end method

.method public abstract blacklist pendingHidConnectionCancellation()Z
.end method

.method public abstract blacklist peripheralAuthReq()Z
.end method

.method public abstract blacklist phyToNative()Z
.end method

.method public abstract blacklist preventConcurrentConnParamUpdates()Z
.end method

.method public abstract blacklist preventDuplicateUuidIntent()Z
.end method

.method public abstract blacklist preventServiceConnectionsOnRemoveBond()Z
.end method

.method public abstract blacklist queueDisRequests()Z
.end method

.method public abstract blacklist readLeAppearance()Z
.end method

.method public abstract blacklist refactorSavingMessagesAndMetadata()Z
.end method

.method public abstract blacklist removeDeviceInMainThread()Z
.end method

.method public abstract blacklist removeDupPairingResponseInOobPairing()Z
.end method

.method public abstract blacklist removePendingHidConnection()Z
.end method

.method public abstract blacklist resetSecurityFlagsOnPairingFailure()Z
.end method

.method public abstract blacklist rfcommAlwaysDiscInitiatorInDiscWaitUa()Z
.end method

.method public abstract blacklist rfcommCancelOngoingSdpOnClose()Z
.end method

.method public abstract blacklist rfcommFixMuxCollisionHandling()Z
.end method

.method public abstract blacklist rnrDirectlyCallGapOverLe()Z
.end method

.method public abstract blacklist rnrStoreDeviceType()Z
.end method

.method public abstract blacklist rnrValidatePageScanRepetitionMode()Z
.end method

.method public abstract blacklist rpaOffloadToBtController()Z
.end method

.method public abstract blacklist rssiScanFilter()Z
.end method

.method public abstract blacklist runBleAudioTicksInWorkerThread()Z
.end method

.method public abstract blacklist runClockRecoveryInWorkerThread()Z
.end method

.method public abstract blacklist sameHandlerForAllModules()Z
.end method

.method public abstract blacklist savePeerCsrkAfterLtkGen()Z
.end method

.method public abstract blacklist scanControllerThread()Z
.end method

.method public abstract blacklist scanResultsInMainThread()Z
.end method

.method public abstract blacklist scoStateMachineCleanup()Z
.end method

.method public abstract blacklist secDontClearKeysOnEncryptionErr()Z
.end method

.method public abstract blacklist sendOppDevicePickerExtraIntent()Z
.end method

.method public abstract blacklist separateServiceStorage()Z
.end method

.method public abstract blacklist setAddressedPlayer()Z
.end method

.method public abstract blacklist setComponentAvailableFix()Z
.end method

.method public abstract blacklist setMaxDataLengthForLecoc()Z
.end method

.method public abstract blacklist settingsCanControlHapPreset()Z
.end method

.method public abstract blacklist signalConnectingOnFocusGain()Z
.end method

.method public abstract blacklist simplerHidConnectionPolicy()Z
.end method

.method public abstract blacklist skipUnknownRobustCaching()Z
.end method

.method public abstract blacklist smpConnectionStatusHandlingWhenNoAcl()Z
.end method

.method public abstract blacklist snoopLoggerRecreateLogsDirectory()Z
.end method

.method public abstract blacklist snoopLoggerTracing()Z
.end method

.method public abstract blacklist socketSettingsApi()Z
.end method

.method public abstract blacklist stackSdpDetectNilPropertyType()Z
.end method

.method public abstract blacklist startDiscoverServiceChanged()Z
.end method

.method public abstract blacklist supportBluetoothQualityReportV6()Z
.end method

.method public abstract blacklist supportMetadataDeviceTypesApis()Z
.end method

.method public abstract blacklist supportRemoteDeviceMetadata()Z
.end method

.method public abstract blacklist systemServerMessenger()Z
.end method

.method public abstract blacklist systemServerRemoveExtraThreadJump()Z
.end method

.method public abstract blacklist temporaryPairingTracking()Z
.end method

.method public abstract blacklist triggerSecProcOnIncAccessReq()Z
.end method

.method public abstract blacklist uncachePlayerWhenBrowsedPlayerChanges()Z
.end method

.method public abstract blacklist unixFileSocketCreationFailure()Z
.end method

.method public abstract blacklist unregisterGattClientDisconnected()Z
.end method

.method public abstract blacklist unrelatedDeviceSmpCancellation()Z
.end method

.method public abstract blacklist updateOppLauncherUserChanged()Z
.end method

.method public abstract blacklist updateScoStateCorrectlyOnRfcommDisconnectDuringCodecNego()Z
.end method

.method public abstract blacklist upgradeTempBondingOnAuthReq()Z
.end method

.method public abstract blacklist useEntireMessageHandle()Z
.end method

.method public abstract blacklist vcpAllowSetSameVolumeIfPending()Z
.end method

.method public abstract blacklist vcpDeviceVolumeApiImprovements()Z
.end method

.method public abstract blacklist vcpMuteUnmute()Z
.end method

.method public abstract blacklist vupForPendingConnection()Z
.end method

.method public abstract blacklist waitForLeaDiscOnLeAclStat()Z
.end method
