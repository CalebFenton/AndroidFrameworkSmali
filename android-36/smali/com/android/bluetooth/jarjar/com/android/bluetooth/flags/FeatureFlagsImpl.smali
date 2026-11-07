.class public final Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist a2dpCleanupOnRemoveDevice()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist a2dpIgnoreStartedWhenResponder()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist a2dpLhdcApi()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist a2dpSmIgnoreConnectEventsInConnectingState()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist a2dpVariableAacCapability()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist a2dpVersion14()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist absVolumeSdpConflict()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist adapterSuspendMgmt()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist admRemoveHandlingWired()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist advertiseThread()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aicsApi()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowFreeLastScn()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowGattConnectFromTheAppsWithoutMakingLeaudioDeviceActive()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowSwitchingHidAndHogp()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist androidOsIdentifier()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist associateBrowseL2capRequestWithActiveControlChannel()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autoConnectOnMultipleHfpWhenNoA2dpDevice()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autoTransportPairing()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist avStreamReconfigureFix()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist avdtHandleSignalingOnPeerFailure()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist avdtHandleSuspendCfmBadState()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist avdtWaitForInitialDelayReportAsInitiator()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist avdtpPreventDoubleSuspend()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist avoidL2cProcessingWhileStackShutdown()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist avrcp16Default()Z
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist batchScanOptimization()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist bluetoothPowerTelemetry()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bondedDeviceSmpFailureHandling()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist browsingRefactor()Z
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist btOffloadSocketApi()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist btSocketApiL2capCid()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist btaAgCmdBrsfAllowUint32()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist btaAvUsePeerCodec()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist btaDmDeferDeviceDiscoveryStateChangeUntilRnrComplete()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist btaDmDiscCloseProperConnId()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist btsecCheckControllerScSupport()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist btsecCheckValidDiscoveryDatabase()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist btsecCycleIrks()Z
    .registers 2

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist callBluetoothReadyBeforeProfilesStart()Z
    .registers 2

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist changeDefaultTrackableAdvNumber()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist channelSounding()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist channelSounding25q2Apis()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist channelSoundingInStack()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkPeerHfIndicator()Z
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist chooseWrongHfpCodecInSpecificConfig()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearAuthCollisionStateOnPairingComplete()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearPairingStateWhenNoDevrec()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist closeHidIfUhidReadyTooSlow()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist configureScanOnResume()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist connectHapOnOtherProfileConnect()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist createMetadataAfterBonding()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist defaultGattTransport()Z
    .registers 2

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist directedAdvertisingApi()Z
    .registers 2

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disconnectAclsByBredrDisabled()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disconnectHidChannelsSerially()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disconnectOnEncryptionFailure()Z
    .registers 2

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disconnectReasonForEncryptionFailure()Z
    .registers 2

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist distanceMeasurementThread()Z
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doNotHardcodeTmapRoleMask()Z
    .registers 2

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist donotMandateAuthAlongWithEncryption()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist donotPushErrorCodeToAppWhenConnected()Z
    .registers 2

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist donotQueueDupRnr()Z
    .registers 2

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist donotUpdateSecFlagsOnCsrkSave()Z
    .registers 2

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist donotValidateBondStateFromProfiles()Z
    .registers 2

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dontSendHciDisconnectRepeatedly()Z
    .registers 2

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dontSendHidSetIdle()Z
    .registers 2

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dsaHwTransparentCodec()Z
    .registers 2

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist earlyIncomingHidConnection()Z
    .registers 2

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist emptyNamesAreInvalid()Z
    .registers 2

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableBatteryLevelUpdateOnlyThroughHfIndicator()Z
    .registers 2

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableBleWhileDisablingAirplane()Z
    .registers 2

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableHapByDefault()Z
    .registers 2

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist encryptedAdvertisingData()Z
    .registers 2

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist encryptionChangeBroadcast()Z
    .registers 2

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendAndRandomizeRoleSwitchDelay()Z
    .registers 2

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixAddDeviceProperties()Z
    .registers 2

    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixAvdtRconfigNotSettingL2cap()Z
    .registers 2

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixBluetoothGattGettingDuplicateServices()Z
    .registers 2

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixBufLenCheckForFirstKFrame()Z
    .registers 2

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixExecuteWriteNoPending()Z
    .registers 2

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixHfpQual19()Z
    .registers 2

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixLecocSocketAvailable()Z
    .registers 2

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixPrivateGattAdvertisingNotWorking()Z
    .registers 2

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixScoCommandStatusHandling()Z
    .registers 2

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixStartedModuleRace()Z
    .registers 2

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixUnhandledBqrSubevent()Z
    .registers 2

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixUnusableAdvSlotDueToMapAccess()Z
    .registers 2

    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist flossSeparateHostPrivacyAndLlprivacy()Z
    .registers 2

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gattCallbackOnFailure()Z
    .registers 2

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gattClearCacheOnFactoryReset()Z
    .registers 2

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gattQueueCleanupConnected()Z
    .registers 2

    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAllElementAttributesEmpty()Z
    .registers 2

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist guardBondedDeviceProperties()Z
    .registers 2

    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist guestModeBond()Z
    .registers 2

    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist handleDeliverySendingFailureEvents()Z
    .registers 2

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hapConnectOnlyRequestedDevice()Z
    .registers 2

    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hciVendorSpecificExtension()Z
    .registers 2

    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hfpClientDisconnectingState()Z
    .registers 2

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hfpSoftwareDatapath()Z
    .registers 2

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hfpVolumeControlProperty()Z
    .registers 2

    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hhStateUpdateRaceFix()Z
    .registers 2

    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hogpReconnection()Z
    .registers 2

    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist identityAddressTypeApi()Z
    .registers 2

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreAuthReqWhenCollisionTimerActive()Z
    .registers 2

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ignoreNotifyWhenAlreadyConnected()Z
    .registers 2

    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreUnrelatedCancelBond()Z
    .registers 2

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ignoreUnselectedHidTransportStates()Z
    .registers 2

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist immediateEncryptionAfterPairing()Z
    .registers 2

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist indicateRfcommConnectionCompleteAfterMsc()Z
    .registers 2

    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initialConnParamsP1()Z
    .registers 2

    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invalidateHciHandleOnAclRemoval()Z
    .registers 2

    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScoManagedByAudio()Z
    .registers 2

    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyMissingAsOrderedBroadcast()Z
    .registers 2

    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyMissingBlePeripheral()Z
    .registers 2

    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyMissingPublic()Z
    .registers 2

    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist killInsteadOfExit()Z
    .registers 2

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist l2capFcsOptionFix()Z
    .registers 2

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist l2capTxCompleteCbInfo()Z
    .registers 2

    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leAppearanceAfterCtkd()Z
    .registers 2

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leAseReadMultipleVariable()Z
    .registers 2

    .line 843
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leDisconnectNotificationHandling()Z
    .registers 2

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leEncOnReconnect()Z
    .registers 2

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leEncryptionRefreshFailureHandling()Z
    .registers 2

    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leImplAckPauseDisarmed()Z
    .registers 2

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist lePeripheralEncFailure()Z
    .registers 2

    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leScanMsftSupport()Z
    .registers 2

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leScanRemoveNonOnewayBinderCalls()Z
    .registers 2

    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leSubrateApi()Z
    .registers 2

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leaudioAddAicsSupport()Z
    .registers 2

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioAddOpusCodecType()Z
    .registers 2

    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioAllowLeaudioOnlyDevices()Z
    .registers 2

    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBassScanWithInternalScanController()Z
    .registers 2

    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBigDependsOnAudioState()Z
    .registers 2

    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastApiGetLocalMetadata()Z
    .registers 2

    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastApiManagePrimaryGroup()Z
    .registers 2

    .line 948
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastMonitorSourceSyncStatus()Z
    .registers 2

    .line 955
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastPreventResumeInterruption()Z
    .registers 2

    .line 962
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastPrimaryGroupSelection()Z
    .registers 2

    .line 969
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastReceiveStateProcessingRefactor()Z
    .registers 2

    .line 976
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastResyncHelper()Z
    .registers 2

    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioBroadcastVolumeControlForConnectedDevices()Z
    .registers 2

    .line 990
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioConfigProfileEnabling()Z
    .registers 2

    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leaudioDevOptionsRespectProfileSysprops()Z
    .registers 2

    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leaudioDisableBroadcastForHapDevice()Z
    .registers 2

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leaudioGmapClient()Z
    .registers 2

    .line 1018
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioMonitorUnicastSourceWhenManagedByBroadcastDelegator()Z
    .registers 2

    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioMonoLocationErrataApi()Z
    .registers 2

    .line 1032
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioMultipleVocsInstancesApi()Z
    .registers 2

    .line 1039
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioSetCodecConfigPreference()Z
    .registers 2

    .line 1046
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioSmIgnoreConnectEventsInConnectingState()Z
    .registers 2

    .line 1053
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioSortScansToSyncByFails()Z
    .registers 2

    .line 1060
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioStopUpdatedToNotAvailableContextStream()Z
    .registers 2

    .line 1067
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioUseAggressiveParams()Z
    .registers 2

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist leaudioUseAudioRecordingListener()Z
    .registers 2

    .line 1081
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist maintainCallIndexAfterConference()Z
    .registers 2

    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist metadataApiInactiveAudioDeviceUponConnection()Z
    .registers 2

    .line 1095
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist metadataApiMicrophoneForCallEnabled()Z
    .registers 2

    .line 1102
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist msftAddrTrackingQuirk()Z
    .registers 2

    .line 1109
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nonConferenceCallHangup()Z
    .registers 2

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nonZeroLocalIrk()Z
    .registers 2

    .line 1123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nrpaNonConnectableAdv()Z
    .registers 2

    .line 1130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onlyStartScanDuringBleOn()Z
    .registers 2

    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oppCheckContentUriPermissions()Z
    .registers 2

    .line 1144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oppDevicePickerExtraIntentApis()Z
    .registers 2

    .line 1151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oppRemoveEmptyGroupNotification()Z
    .registers 2

    .line 1158
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oppSetInsetsForEdgeToEdge()Z
    .registers 2

    .line 1165
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist pbapCleanupUseHandler()Z
    .registers 2

    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pbapClientContactsCaching()Z
    .registers 2

    .line 1179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pbapClientStorageRefactor()Z
    .registers 2

    .line 1186
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist pbapLimitCallLog()Z
    .registers 2

    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pendingHidConnectionCancellation()Z
    .registers 2

    .line 1200
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist peripheralAuthReq()Z
    .registers 2

    .line 1207
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist phyToNative()Z
    .registers 2

    .line 1214
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventConcurrentConnParamUpdates()Z
    .registers 2

    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventDuplicateUuidIntent()Z
    .registers 2

    .line 1228
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventServiceConnectionsOnRemoveBond()Z
    .registers 2

    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist queueDisRequests()Z
    .registers 2

    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readLeAppearance()Z
    .registers 2

    .line 1249
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist refactorSavingMessagesAndMetadata()Z
    .registers 2

    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeDeviceInMainThread()Z
    .registers 2

    .line 1263
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeDupPairingResponseInOobPairing()Z
    .registers 2

    .line 1270
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removePendingHidConnection()Z
    .registers 2

    .line 1277
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetSecurityFlagsOnPairingFailure()Z
    .registers 2

    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rfcommAlwaysDiscInitiatorInDiscWaitUa()Z
    .registers 2

    .line 1291
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rfcommCancelOngoingSdpOnClose()Z
    .registers 2

    .line 1298
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rfcommFixMuxCollisionHandling()Z
    .registers 2

    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rnrDirectlyCallGapOverLe()Z
    .registers 2

    .line 1312
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rnrStoreDeviceType()Z
    .registers 2

    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rnrValidatePageScanRepetitionMode()Z
    .registers 2

    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rpaOffloadToBtController()Z
    .registers 2

    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rssiScanFilter()Z
    .registers 2

    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist runBleAudioTicksInWorkerThread()Z
    .registers 2

    .line 1347
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist runClockRecoveryInWorkerThread()Z
    .registers 2

    .line 1354
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sameHandlerForAllModules()Z
    .registers 2

    .line 1361
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist savePeerCsrkAfterLtkGen()Z
    .registers 2

    .line 1368
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scanControllerThread()Z
    .registers 2

    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scanResultsInMainThread()Z
    .registers 2

    .line 1382
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scoStateMachineCleanup()Z
    .registers 2

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist secDontClearKeysOnEncryptionErr()Z
    .registers 2

    .line 1396
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendOppDevicePickerExtraIntent()Z
    .registers 2

    .line 1403
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist separateServiceStorage()Z
    .registers 2

    .line 1410
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAddressedPlayer()Z
    .registers 2

    .line 1417
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setComponentAvailableFix()Z
    .registers 2

    .line 1424
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMaxDataLengthForLecoc()Z
    .registers 2

    .line 1431
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist settingsCanControlHapPreset()Z
    .registers 2

    .line 1438
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist signalConnectingOnFocusGain()Z
    .registers 2

    .line 1445
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist simplerHidConnectionPolicy()Z
    .registers 2

    .line 1452
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist skipUnknownRobustCaching()Z
    .registers 2

    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist smpConnectionStatusHandlingWhenNoAcl()Z
    .registers 2

    .line 1466
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist snoopLoggerRecreateLogsDirectory()Z
    .registers 2

    .line 1473
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist snoopLoggerTracing()Z
    .registers 2

    .line 1480
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist socketSettingsApi()Z
    .registers 2

    .line 1487
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stackSdpDetectNilPropertyType()Z
    .registers 2

    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startDiscoverServiceChanged()Z
    .registers 2

    .line 1501
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportBluetoothQualityReportV6()Z
    .registers 2

    .line 1508
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportMetadataDeviceTypesApis()Z
    .registers 2

    .line 1515
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportRemoteDeviceMetadata()Z
    .registers 2

    .line 1522
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist systemServerMessenger()Z
    .registers 2

    .line 1529
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist systemServerRemoveExtraThreadJump()Z
    .registers 2

    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist temporaryPairingTracking()Z
    .registers 2

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist triggerSecProcOnIncAccessReq()Z
    .registers 2

    .line 1550
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist uncachePlayerWhenBrowsedPlayerChanges()Z
    .registers 2

    .line 1557
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unixFileSocketCreationFailure()Z
    .registers 2

    .line 1564
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unregisterGattClientDisconnected()Z
    .registers 2

    .line 1571
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unrelatedDeviceSmpCancellation()Z
    .registers 2

    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateOppLauncherUserChanged()Z
    .registers 2

    .line 1585
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateScoStateCorrectlyOnRfcommDisconnectDuringCodecNego()Z
    .registers 2

    .line 1592
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist upgradeTempBondingOnAuthReq()Z
    .registers 2

    .line 1599
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useEntireMessageHandle()Z
    .registers 2

    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vcpAllowSetSameVolumeIfPending()Z
    .registers 2

    .line 1613
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vcpDeviceVolumeApiImprovements()Z
    .registers 2

    .line 1620
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vcpMuteUnmute()Z
    .registers 2

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vupForPendingConnection()Z
    .registers 2

    .line 1634
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist waitForLeaDiscOnLeAclStat()Z
    .registers 2

    .line 1641
    const/4 v0, 0x0

    return v0
.end method
