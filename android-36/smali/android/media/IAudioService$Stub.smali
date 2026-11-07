.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final blacklist PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x4e

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0xc7

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xfc

.field static final blacklist TRANSACTION_addLoudnessCodecInfo:I = 0x10e

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x7c

.field static final blacklist TRANSACTION_addOnDevicesForAttributesChangedListener:I = 0xa2

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xe3

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0xc

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0xb3

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xd

.field static final greylist-max-o TRANSACTION_adjustSuggestedStreamVolume:I = 0xb7

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0xb4

.field static final blacklist TRANSACTION_adjustVolume:I = 0xb6

.field static final blacklist TRANSACTION_adjustVolumeGroupVolume:I = 0x21

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0xbf

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xda

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xf4

.field static final blacklist TRANSACTION_clearFadeManagerConfigurationForFocusLoss:I = 0x112

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0xaf

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0x104

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x67

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x8a

.field static final blacklist TRANSACTION_dispatchFocusChangeWithFade:I = 0x8b

.field static final blacklist TRANSACTION_enterAudioFocusFreezeForTest:I = 0xcc

.field static final blacklist TRANSACTION_exitAudioFocusFreezeForTest:I = 0xcd

.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0x6e

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0x14

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0x6d

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x54

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0x100

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x88

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x85

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xe8

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0xc4

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0xa5

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xff

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x25

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x1a

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0xba

.field static final blacklist TRANSACTION_getBluetoothAudioDeviceCategory:I = 0x74

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0xbc

.field static final blacklist TRANSACTION_getCsd:I = 0x6b

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x50

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xf1

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xe6

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0xb9

.field static final blacklist TRANSACTION_getDeviceVolume:I = 0x11

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0xac

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0xa0

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0xa1

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x44

.field static final blacklist TRANSACTION_getFadeManagerConfigurationForFocusLoss:I = 0x113

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0xc8

.field static final blacklist TRANSACTION_getFocusDuckedUidsForTest:I = 0xc9

.field static final blacklist TRANSACTION_getFocusFadeOutDurationForTest:I = 0xca

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x89

.field static final blacklist TRANSACTION_getFocusStack:I = 0xf9

.field static final blacklist TRANSACTION_getFocusUnmuteDelayAfterFadeOutForTest:I = 0xcb

.field static final blacklist TRANSACTION_getHalVersion:I = 0x102

.field static final blacklist TRANSACTION_getIndependentStreamTypes:I = 0x58

.field static final blacklist TRANSACTION_getInputGainIndex:I = 0x2b

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x22

.field static final blacklist TRANSACTION_getLastAudibleVolumeForVolumeGroup:I = 0x1f

.field static final blacklist TRANSACTION_getLoudnessParams:I = 0x110

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0xc5

.field static final blacklist TRANSACTION_getMaxInputGainIndex:I = 0x2c

.field static final blacklist TRANSACTION_getMinInputGainIndex:I = 0x2d

.field static final greylist-max-o TRANSACTION_getMode:I = 0x39

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xf5

.field static final blacklist TRANSACTION_getNativeInterface:I = 0x1

.field static final blacklist TRANSACTION_getNonDefaultDevicesForStrategy:I = 0x9f

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x69

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0xb0

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x9c

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x7a

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x40

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x32

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x33

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x56

.field static final blacklist TRANSACTION_getSpatializedChannelMasks:I = 0xdb

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xe2

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xd0

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xed

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xec

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x19

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x18

.field static final blacklist TRANSACTION_getStreamTypeAlias:I = 0x59

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x17

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xe7

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x24

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x3f

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x57

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x36

.field static final blacklist TRANSACTION_getVolumeController:I = 0x61

.field static final blacklist TRANSACTION_getVolumeGroupMaxVolumeIndex:I = 0x1d

.field static final blacklist TRANSACTION_getVolumeGroupMinVolumeIndex:I = 0x1e

.field static final blacklist TRANSACTION_getVolumeGroupVolumeIndex:I = 0x1c

.field static final blacklist TRANSACTION_getVolumePolicy:I = 0x81

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x8d

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0x12

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x98

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xd4

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x82

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x91

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x4c

.field static final blacklist TRANSACTION_isBluetoothAudioDeviceCategoryFixed:I = 0x75

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x4a

.field static final blacklist TRANSACTION_isBluetoothVariableLatencyEnabled:I = 0x109

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x99

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x5f

.field static final blacklist TRANSACTION_isCsdAsAFeatureAvailable:I = 0x70

.field static final blacklist TRANSACTION_isCsdAsAFeatureEnabled:I = 0x71

.field static final blacklist TRANSACTION_isCsdEnabled:I = 0x6f

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x77

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xd7

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xd6

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0xc1

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x28

.field static final blacklist TRANSACTION_isInputGainFixed:I = 0x2e

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x15

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x26

.field static final blacklist TRANSACTION_isMusicActive:I = 0xb8

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xf2

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xd2

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xd3

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xd1

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x46

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x65

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x64

.field static final blacklist TRANSACTION_isStreamMutableByUi:I = 0x66

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0x13

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x42

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x27

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x34

.field static final blacklist TRANSACTION_isVolumeControlUsingVolumeGroups:I = 0x5a

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xf0

.field static final blacklist TRANSACTION_isVolumeGroupMuted:I = 0x20

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x3c

.field static final blacklist TRANSACTION_lowerVolumeToRs1:I = 0x68

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xf3

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x62

.field static final blacklist TRANSACTION_permissionUpdateBarrier:I = 0xb

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x3a

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x3b

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x3

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x8c

.field static final blacklist TRANSACTION_playerSessionId:I = 0x9

.field static final blacklist TRANSACTION_portEvent:I = 0xa

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xea

.field static final blacklist TRANSACTION_recorderEvent:I = 0x7

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x78

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x8f

.field static final blacklist TRANSACTION_registerAudioVolumeCallback:I = 0x92

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0xb1

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0xbd

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xf8

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0x101

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xe0

.field static final blacklist TRANSACTION_registerLoudnessCodecUpdatesDispatcher:I = 0x10a

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0xce

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xf6

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x86

.field static final blacklist TRANSACTION_registerPreferredMixerAttributesDispatcher:I = 0x105

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x83

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xdc

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xd8

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xde

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xee

.field static final blacklist TRANSACTION_registerStrategyNonDefaultDevicesDispatcher:I = 0xa8

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0xa6

.field static final blacklist TRANSACTION_registerStreamAliasingDispatcher:I = 0x5b

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x5

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x8

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x3e

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xfd

.field static final blacklist TRANSACTION_removeDeviceAsNonDefaultForStrategy:I = 0x9e

.field static final blacklist TRANSACTION_removeLoudnessCodecInfo:I = 0x10f

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x7d

.field static final blacklist TRANSACTION_removeOnDevicesForAttributesChangedListener:I = 0xa3

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x9b

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xe4

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x95

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x97

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x4d

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0xc6

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xfb

.field static final blacklist TRANSACTION_sendFocusLossAndUpdate:I = 0xfa

.field static final blacklist TRANSACTION_setA2dpSuspended:I = 0x48

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xfe

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0xc3

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0xa4

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x4b

.field static final blacklist TRANSACTION_setBluetoothAudioDeviceCategory:I = 0x73

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x47

.field static final blacklist TRANSACTION_setBluetoothVariableLatencyEnabled:I = 0x108

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0xbb

.field static final blacklist TRANSACTION_setCsd:I = 0x6c

.field static final blacklist TRANSACTION_setCsdAsAFeatureEnabled:I = 0x72

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xe5

.field static final blacklist TRANSACTION_setDeviceAsNonDefaultForStrategy:I = 0x9d

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0x10

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0xab

.field static final blacklist TRANSACTION_setEnableHardening:I = 0x115

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x43

.field static final blacklist TRANSACTION_setFadeManagerConfigurationForFocusLoss:I = 0x111

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x7f

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x8e

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x76

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xd5

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0xc2

.field static final blacklist TRANSACTION_setInputGainIndex:I = 0x2a

.field static final blacklist TRANSACTION_setLeAudioSuspended:I = 0x49

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x16

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x29

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x2f

.field static final greylist-max-o TRANSACTION_setMode:I = 0x38

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0xad

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0xc0

.field static final blacklist TRANSACTION_setNotifAliasRingForTest:I = 0x5c

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x6a

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0xae

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x9a

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0x103

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x30

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x31

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x55

.field static final blacklist TRANSACTION_setRttEnabled:I = 0xaa

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xd9

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xe9

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xeb

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x45

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xe

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0xb5

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xf

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x23

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x41

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xf7

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x94

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x96

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x35

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x60

.field static final blacklist TRANSACTION_setVolumeControllerLongPressTimeoutEnabled:I = 0x63

.field static final blacklist TRANSACTION_setVolumeGroupVolumeIndex:I = 0x1b

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x80

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x5d

.field static final blacklist TRANSACTION_shouldNotificationSoundPlay:I = 0x114

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x37

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x51

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x52

.field static final blacklist TRANSACTION_startLoudnessCodecUpdates:I = 0x10c

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x5e

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x53

.field static final blacklist TRANSACTION_stopLoudnessCodecUpdates:I = 0x10d

.field static final blacklist TRANSACTION_supportsBluetoothVariableLatency:I = 0x107

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x2

.field static final blacklist TRANSACTION_trackRecorder:I = 0x6

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x3d

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x4f

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x7b

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x79

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x90

.field static final blacklist TRANSACTION_unregisterAudioVolumeCallback:I = 0x93

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0xb2

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0xbe

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xe1

.field static final blacklist TRANSACTION_unregisterLoudnessCodecUpdatesDispatcher:I = 0x10b

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0xcf

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x87

.field static final blacklist TRANSACTION_unregisterPreferredMixerAttributesDispatcher:I = 0x106

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x84

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xdd

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xdf

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xef

.field static final blacklist TRANSACTION_unregisterStrategyNonDefaultDevicesDispatcher:I = 0xa9

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0xa7

.field static final blacklist TRANSACTION_updateMixingRulesForPolicy:I = 0x7e


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 9499
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    .line 9505
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    .line 9523
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    .line 9529
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9535
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9541
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    .line 9547
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    .line 9892
    const-string v2, "android.permission.QUERY_AUDIO_STATE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    .line 9906
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    .line 9912
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    nop

    .line 1030
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1029
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/IAudioService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1031
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1019
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1020
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1021
    if-eqz p1, :cond_d

    .line 1024
    iput-object p1, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1025
    return-void

    .line 1022
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1038
    if-nez p0, :cond_4

    .line 1039
    const/4 v0, 0x0

    return-object v0

    .line 1041
    :cond_4
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1042
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    .line 1043
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 1045
    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1054
    packed-switch p0, :pswitch_data_344

    .line 2166
    const/4 v0, 0x0

    return-object v0

    .line 2162
    :pswitch_5
    const-string v0, "setEnableHardening"

    return-object v0

    .line 2158
    :pswitch_8
    const-string v0, "shouldNotificationSoundPlay"

    return-object v0

    .line 2154
    :pswitch_b
    const-string v0, "getFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2150
    :pswitch_e
    const-string v0, "clearFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2146
    :pswitch_11
    const-string v0, "setFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2142
    :pswitch_14
    const-string v0, "getLoudnessParams"

    return-object v0

    .line 2138
    :pswitch_17
    const-string v0, "removeLoudnessCodecInfo"

    return-object v0

    .line 2134
    :pswitch_1a
    const-string v0, "addLoudnessCodecInfo"

    return-object v0

    .line 2130
    :pswitch_1d
    const-string v0, "stopLoudnessCodecUpdates"

    return-object v0

    .line 2126
    :pswitch_20
    const-string v0, "startLoudnessCodecUpdates"

    return-object v0

    .line 2122
    :pswitch_23
    const-string v0, "unregisterLoudnessCodecUpdatesDispatcher"

    return-object v0

    .line 2118
    :pswitch_26
    const-string v0, "registerLoudnessCodecUpdatesDispatcher"

    return-object v0

    .line 2114
    :pswitch_29
    const-string v0, "isBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2110
    :pswitch_2c
    const-string v0, "setBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2106
    :pswitch_2f
    const-string v0, "supportsBluetoothVariableLatency"

    return-object v0

    .line 2102
    :pswitch_32
    const-string v0, "unregisterPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2098
    :pswitch_35
    const-string v0, "registerPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2094
    :pswitch_38
    const-string v0, "clearPreferredMixerAttributes"

    return-object v0

    .line 2090
    :pswitch_3b
    const-string v0, "setPreferredMixerAttributes"

    return-object v0

    .line 2086
    :pswitch_3e
    const-string v0, "getHalVersion"

    return-object v0

    .line 2082
    :pswitch_41
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 2078
    :pswitch_44
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 2074
    :pswitch_47
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 2070
    :pswitch_4a
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 2066
    :pswitch_4d
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 2062
    :pswitch_50
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 2058
    :pswitch_53
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 2054
    :pswitch_56
    const-string v0, "sendFocusLossAndUpdate"

    return-object v0

    .line 2050
    :pswitch_59
    const-string v0, "getFocusStack"

    return-object v0

    .line 2046
    :pswitch_5c
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 2042
    :pswitch_5f
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    .line 2038
    :pswitch_62
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 2034
    :pswitch_65
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 2030
    :pswitch_68
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 2026
    :pswitch_6b
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 2022
    :pswitch_6e
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 2018
    :pswitch_71
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 2014
    :pswitch_74
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 2010
    :pswitch_77
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 2006
    :pswitch_7a
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 2002
    :pswitch_7d
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1998
    :pswitch_80
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1994
    :pswitch_83
    const-string v0, "setSpatializerParameter"

    return-object v0

    .line 1990
    :pswitch_86
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1986
    :pswitch_89
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1982
    :pswitch_8c
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1978
    :pswitch_8f
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1974
    :pswitch_92
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1970
    :pswitch_95
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1966
    :pswitch_98
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1962
    :pswitch_9b
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1958
    :pswitch_9e
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1954
    :pswitch_a1
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1950
    :pswitch_a4
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1946
    :pswitch_a7
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1942
    :pswitch_aa
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1938
    :pswitch_ad
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1934
    :pswitch_b0
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1930
    :pswitch_b3
    const-string v0, "getSpatializedChannelMasks"

    return-object v0

    .line 1926
    :pswitch_b6
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1922
    :pswitch_b9
    const-string v0, "setSpatializerEnabled"

    return-object v0

    .line 1918
    :pswitch_bc
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1914
    :pswitch_bf
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1910
    :pswitch_c2
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1906
    :pswitch_c5
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1902
    :pswitch_c8
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1898
    :pswitch_cb
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1894
    :pswitch_ce
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1890
    :pswitch_d1
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1886
    :pswitch_d4
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1882
    :pswitch_d7
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    .line 1878
    :pswitch_da
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1874
    :pswitch_dd
    const-string v0, "exitAudioFocusFreezeForTest"

    return-object v0

    .line 1870
    :pswitch_e0
    const-string v0, "enterAudioFocusFreezeForTest"

    return-object v0

    .line 1866
    :pswitch_e3
    const-string v0, "getFocusUnmuteDelayAfterFadeOutForTest"

    return-object v0

    .line 1862
    :pswitch_e6
    const-string v0, "getFocusFadeOutDurationForTest"

    return-object v0

    .line 1858
    :pswitch_e9
    const-string v0, "getFocusDuckedUidsForTest"

    return-object v0

    .line 1854
    :pswitch_ec
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1850
    :pswitch_ef
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1846
    :pswitch_f2
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1842
    :pswitch_f5
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1838
    :pswitch_f8
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1834
    :pswitch_fb
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1830
    :pswitch_fe
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1826
    :pswitch_101
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1822
    :pswitch_104
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1818
    :pswitch_107
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1814
    :pswitch_10a
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1810
    :pswitch_10d
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1806
    :pswitch_110
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1802
    :pswitch_113
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1798
    :pswitch_116
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1794
    :pswitch_119
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1790
    :pswitch_11c
    const-string v0, "isMusicActive"

    return-object v0

    .line 1786
    :pswitch_11f
    const-string v0, "adjustSuggestedStreamVolume"

    return-object v0

    .line 1782
    :pswitch_122
    const-string v0, "adjustVolume"

    return-object v0

    .line 1778
    :pswitch_125
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    .line 1774
    :pswitch_128
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1770
    :pswitch_12b
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1766
    :pswitch_12e
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1762
    :pswitch_131
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1758
    :pswitch_134
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1754
    :pswitch_137
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1750
    :pswitch_13a
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1746
    :pswitch_13d
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1742
    :pswitch_140
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1738
    :pswitch_143
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1734
    :pswitch_146
    const-string v0, "setRttEnabled"

    return-object v0

    .line 1730
    :pswitch_149
    const-string v0, "unregisterStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1726
    :pswitch_14c
    const-string v0, "registerStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1722
    :pswitch_14f
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1718
    :pswitch_152
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1714
    :pswitch_155
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1710
    :pswitch_158
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1706
    :pswitch_15b
    const-string v0, "removeOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1702
    :pswitch_15e
    const-string v0, "addOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1698
    :pswitch_161
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1694
    :pswitch_164
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1690
    :pswitch_167
    const-string v0, "getNonDefaultDevicesForStrategy"

    return-object v0

    .line 1686
    :pswitch_16a
    const-string v0, "removeDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1682
    :pswitch_16d
    const-string v0, "setDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1678
    :pswitch_170
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1674
    :pswitch_173
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1670
    :pswitch_176
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1666
    :pswitch_179
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1662
    :pswitch_17c
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1658
    :pswitch_17f
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1654
    :pswitch_182
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1650
    :pswitch_185
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1646
    :pswitch_188
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    .line 1642
    :pswitch_18b
    const-string v0, "unregisterAudioVolumeCallback"

    return-object v0

    .line 1638
    :pswitch_18e
    const-string v0, "registerAudioVolumeCallback"

    return-object v0

    .line 1634
    :pswitch_191
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1630
    :pswitch_194
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1626
    :pswitch_197
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1622
    :pswitch_19a
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1618
    :pswitch_19d
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1614
    :pswitch_1a0
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1610
    :pswitch_1a3
    const-string v0, "dispatchFocusChangeWithFade"

    return-object v0

    .line 1606
    :pswitch_1a6
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1602
    :pswitch_1a9
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1598
    :pswitch_1ac
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1594
    :pswitch_1af
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1590
    :pswitch_1b2
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1586
    :pswitch_1b5
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1582
    :pswitch_1b8
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    .line 1578
    :pswitch_1bb
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1574
    :pswitch_1be
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1570
    :pswitch_1c1
    const-string v0, "getVolumePolicy"

    return-object v0

    .line 1566
    :pswitch_1c4
    const-string v0, "setVolumePolicy"

    return-object v0

    .line 1562
    :pswitch_1c7
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1558
    :pswitch_1ca
    const-string v0, "updateMixingRulesForPolicy"

    return-object v0

    .line 1554
    :pswitch_1cd
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1550
    :pswitch_1d0
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1546
    :pswitch_1d3
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    .line 1542
    :pswitch_1d6
    const-string v0, "getRegisteredPolicyMixes"

    return-object v0

    .line 1538
    :pswitch_1d9
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1534
    :pswitch_1dc
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1530
    :pswitch_1df
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1526
    :pswitch_1e2
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1522
    :pswitch_1e5
    const-string v0, "isBluetoothAudioDeviceCategoryFixed"

    return-object v0

    .line 1518
    :pswitch_1e8
    const-string v0, "getBluetoothAudioDeviceCategory"

    return-object v0

    .line 1514
    :pswitch_1eb
    const-string v0, "setBluetoothAudioDeviceCategory"

    return-object v0

    .line 1510
    :pswitch_1ee
    const-string v0, "setCsdAsAFeatureEnabled"

    return-object v0

    .line 1506
    :pswitch_1f1
    const-string v0, "isCsdAsAFeatureEnabled"

    return-object v0

    .line 1502
    :pswitch_1f4
    const-string v0, "isCsdAsAFeatureAvailable"

    return-object v0

    .line 1498
    :pswitch_1f7
    const-string v0, "isCsdEnabled"

    return-object v0

    .line 1494
    :pswitch_1fa
    const-string v0, "forceComputeCsdOnAllDevices"

    return-object v0

    .line 1490
    :pswitch_1fd
    const-string v0, "forceUseFrameworkMel"

    return-object v0

    .line 1486
    :pswitch_200
    const-string v0, "setCsd"

    return-object v0

    .line 1482
    :pswitch_203
    const-string v0, "getCsd"

    return-object v0

    .line 1478
    :pswitch_206
    const-string v0, "setOutputRs2UpperBound"

    return-object v0

    .line 1474
    :pswitch_209
    const-string v0, "getOutputRs2UpperBound"

    return-object v0

    .line 1470
    :pswitch_20c
    const-string v0, "lowerVolumeToRs1"

    return-object v0

    .line 1466
    :pswitch_20f
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1462
    :pswitch_212
    const-string v0, "isStreamMutableByUi"

    return-object v0

    .line 1458
    :pswitch_215
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1454
    :pswitch_218
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1450
    :pswitch_21b
    const-string v0, "setVolumeControllerLongPressTimeoutEnabled"

    return-object v0

    .line 1446
    :pswitch_21e
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1442
    :pswitch_221
    const-string v0, "getVolumeController"

    return-object v0

    .line 1438
    :pswitch_224
    const-string v0, "setVolumeController"

    return-object v0

    .line 1434
    :pswitch_227
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1430
    :pswitch_22a
    const-string v0, "startWatchingRoutes"

    return-object v0

    .line 1426
    :pswitch_22d
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1422
    :pswitch_230
    const-string v0, "setNotifAliasRingForTest"

    return-object v0

    .line 1418
    :pswitch_233
    const-string v0, "registerStreamAliasingDispatcher"

    return-object v0

    .line 1414
    :pswitch_236
    const-string v0, "isVolumeControlUsingVolumeGroups"

    return-object v0

    .line 1410
    :pswitch_239
    const-string v0, "getStreamTypeAlias"

    return-object v0

    .line 1406
    :pswitch_23c
    const-string v0, "getIndependentStreamTypes"

    return-object v0

    .line 1402
    :pswitch_23f
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1398
    :pswitch_242
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1394
    :pswitch_245
    const-string v0, "setRingtonePlayer"

    return-object v0

    .line 1390
    :pswitch_248
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1386
    :pswitch_24b
    const-string v0, "stopBluetoothSco"

    return-object v0

    .line 1382
    :pswitch_24e
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1378
    :pswitch_251
    const-string v0, "startBluetoothSco"

    return-object v0

    .line 1374
    :pswitch_254
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1370
    :pswitch_257
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1366
    :pswitch_25a
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1362
    :pswitch_25d
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1358
    :pswitch_260
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1354
    :pswitch_263
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1350
    :pswitch_266
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1346
    :pswitch_269
    const-string v0, "setLeAudioSuspended"

    return-object v0

    .line 1342
    :pswitch_26c
    const-string v0, "setA2dpSuspended"

    return-object v0

    .line 1338
    :pswitch_26f
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1334
    :pswitch_272
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1330
    :pswitch_275
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    .line 1326
    :pswitch_278
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1322
    :pswitch_27b
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1318
    :pswitch_27e
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 1314
    :pswitch_281
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    .line 1310
    :pswitch_284
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 1306
    :pswitch_287
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 1302
    :pswitch_28a
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 1298
    :pswitch_28d
    const-string v0, "unloadSoundEffects"

    return-object v0

    .line 1294
    :pswitch_290
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 1290
    :pswitch_293
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 1286
    :pswitch_296
    const-string v0, "playSoundEffect"

    return-object v0

    .line 1282
    :pswitch_299
    const-string v0, "getMode"

    return-object v0

    .line 1278
    :pswitch_29c
    const-string v0, "setMode"

    return-object v0

    .line 1274
    :pswitch_29f
    const-string v0, "shouldVibrate"

    return-object v0

    .line 1270
    :pswitch_2a2
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 1266
    :pswitch_2a5
    const-string v0, "setVibrateSetting"

    return-object v0

    .line 1262
    :pswitch_2a8
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 1258
    :pswitch_2ab
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 1254
    :pswitch_2ae
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 1250
    :pswitch_2b1
    const-string v0, "setRingerModeInternal"

    return-object v0

    .line 1246
    :pswitch_2b4
    const-string v0, "setRingerModeExternal"

    return-object v0

    .line 1242
    :pswitch_2b7
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 1238
    :pswitch_2ba
    const-string v0, "isInputGainFixed"

    return-object v0

    .line 1234
    :pswitch_2bd
    const-string v0, "getMinInputGainIndex"

    return-object v0

    .line 1230
    :pswitch_2c0
    const-string v0, "getMaxInputGainIndex"

    return-object v0

    .line 1226
    :pswitch_2c3
    const-string v0, "getInputGainIndex"

    return-object v0

    .line 1222
    :pswitch_2c6
    const-string v0, "setInputGainIndex"

    return-object v0

    .line 1218
    :pswitch_2c9
    const-string v0, "setMicrophoneMute"

    return-object v0

    .line 1214
    :pswitch_2cc
    const-string v0, "isHotwordStreamSupported"

    return-object v0

    .line 1210
    :pswitch_2cf
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 1206
    :pswitch_2d2
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 1202
    :pswitch_2d5
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 1198
    :pswitch_2d8
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 1194
    :pswitch_2db
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    .line 1190
    :pswitch_2de
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 1186
    :pswitch_2e1
    const-string v0, "adjustVolumeGroupVolume"

    return-object v0

    .line 1182
    :pswitch_2e4
    const-string v0, "isVolumeGroupMuted"

    return-object v0

    .line 1178
    :pswitch_2e7
    const-string v0, "getLastAudibleVolumeForVolumeGroup"

    return-object v0

    .line 1174
    :pswitch_2ea
    const-string v0, "getVolumeGroupMinVolumeIndex"

    return-object v0

    .line 1170
    :pswitch_2ed
    const-string v0, "getVolumeGroupMaxVolumeIndex"

    return-object v0

    .line 1166
    :pswitch_2f0
    const-string v0, "getVolumeGroupVolumeIndex"

    return-object v0

    .line 1162
    :pswitch_2f3
    const-string v0, "setVolumeGroupVolumeIndex"

    return-object v0

    .line 1158
    :pswitch_2f6
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 1154
    :pswitch_2f9
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 1150
    :pswitch_2fc
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 1146
    :pswitch_2ff
    const-string v0, "getStreamVolume"

    return-object v0

    .line 1142
    :pswitch_302
    const-string v0, "setMasterMute"

    return-object v0

    .line 1138
    :pswitch_305
    const-string v0, "isMasterMute"

    return-object v0

    .line 1134
    :pswitch_308
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 1130
    :pswitch_30b
    const-string v0, "isStreamMute"

    return-object v0

    .line 1126
    :pswitch_30e
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 1122
    :pswitch_311
    const-string v0, "getDeviceVolume"

    return-object v0

    .line 1118
    :pswitch_314
    const-string v0, "setDeviceVolume"

    return-object v0

    .line 1114
    :pswitch_317
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 1110
    :pswitch_31a
    const-string v0, "setStreamVolume"

    return-object v0

    .line 1106
    :pswitch_31d
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 1102
    :pswitch_320
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 1098
    :pswitch_323
    const-string v0, "permissionUpdateBarrier"

    return-object v0

    .line 1094
    :pswitch_326
    const-string v0, "portEvent"

    return-object v0

    .line 1090
    :pswitch_329
    const-string v0, "playerSessionId"

    return-object v0

    .line 1086
    :pswitch_32c
    const-string v0, "releaseRecorder"

    return-object v0

    .line 1082
    :pswitch_32f
    const-string v0, "recorderEvent"

    return-object v0

    .line 1078
    :pswitch_332
    const-string v0, "trackRecorder"

    return-object v0

    .line 1074
    :pswitch_335
    const-string v0, "releasePlayer"

    return-object v0

    .line 1070
    :pswitch_338
    const-string v0, "playerEvent"

    return-object v0

    .line 1066
    :pswitch_33b
    const-string v0, "playerAttributes"

    return-object v0

    .line 1062
    :pswitch_33e
    const-string v0, "trackPlayer"

    return-object v0

    .line 1058
    :pswitch_341
    const-string v0, "getNativeInterface"

    return-object v0

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_341
        :pswitch_33e
        :pswitch_33b
        :pswitch_338
        :pswitch_335
        :pswitch_332
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_326
        :pswitch_323
        :pswitch_320
        :pswitch_31d
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
        :pswitch_305
        :pswitch_302
        :pswitch_2ff
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_2cf
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bd
        :pswitch_2ba
        :pswitch_2b7
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9662
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    .line 9664
    .local v2, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 9666
    .local v3, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 9668
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v5

    .line 9670
    .local v5, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 9672
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9674
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9676
    .local v8, "_arg6":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9678
    .local v9, "_arg7":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v10

    .line 9680
    .local v10, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9681
    .local v11, "_arg9":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9682
    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 9683
    .local v0, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9684
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9685
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9958
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    .line 9960
    .local v2, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 9962
    .local v3, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 9964
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v5

    .line 9966
    .local v5, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 9968
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9970
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9972
    .local v8, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9974
    .local v9, "_arg7":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9975
    .local v10, "_arg8":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9976
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    .line 9977
    .local v0, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9978
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9979
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected blacklist addAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10173
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10174
    return-void
.end method

.method protected blacklist addOnDevicesForAttributesChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9895
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9896
    return-void
.end method

.method protected blacklist addSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10072
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10073
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1049
    return-object p0
.end method

.method protected blacklist clearFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10231
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10232
    return-void
.end method

.method protected blacklist clearPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9926
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9927
    return-void
.end method

.method protected blacklist dispatchFocusChangeWithFade_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9839
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9840
    return-void
.end method

.method protected blacklist enterAudioFocusFreezeForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10001
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10002
    return-void
.end method

.method protected blacklist exitAudioFocusFreezeForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10006
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10007
    return-void
.end method

.method protected blacklist forceComputeCsdOnAllDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9774
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9775
    return-void
.end method

.method protected blacklist forceUseFrameworkMel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9769
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9770
    return-void
.end method

.method protected blacklist getActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10193
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10194
    return-void
.end method

.method protected blacklist getActualHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10097
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10098
    return-void
.end method

.method protected blacklist getAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10188
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10189
    return-void
.end method

.method protected blacklist getAudioProductStrategies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9577
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9578
    return-void
.end method

.method protected blacklist getAudioVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9526
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9527
    return-void
.end method

.method protected blacklist getBluetoothAudioDeviceCategory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9804
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9805
    return-void
.end method

.method protected blacklist getCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9759
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9760
    return-void
.end method

.method protected blacklist getDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10087
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10088
    return-void
.end method

.method protected blacklist getDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9915
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9916
    return-void
.end method

.method protected blacklist getDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9508
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9509
    return-void
.end method

.method protected blacklist getFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10236
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10237
    return-void
.end method

.method protected blacklist getFocusDuckedUidsForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9986
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9987
    return-void
.end method

.method protected blacklist getFocusFadeOutDurationForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9991
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9992
    return-void
.end method

.method protected blacklist getFocusStack_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10158
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10159
    return-void
.end method

.method protected blacklist getFocusUnmuteDelayAfterFadeOutForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9996
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9997
    return-void
.end method

.method protected blacklist getIndependentStreamTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9704
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9705
    return-void
.end method

.method protected blacklist getInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9599
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9600
    return-void
.end method

.method protected blacklist getLastAudibleStreamVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9562
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9563
    return-void
.end method

.method protected blacklist getLastAudibleVolumeForVolumeGroup_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9555
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9556
    return-void
.end method

.method protected blacklist getMaxInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9604
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9605
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 10251
    const/16 v0, 0x114

    return v0
.end method

.method protected blacklist getMinInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9609
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9610
    return-void
.end method

.method protected blacklist getMutingExpectedDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10146
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10147
    return-void
.end method

.method protected blacklist getNonDefaultDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9887
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9888
    return-void
.end method

.method protected blacklist getOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9749
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9750
    return-void
.end method

.method protected blacklist getPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9931
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9932
    return-void
.end method

.method protected blacklist getPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9872
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9873
    return-void
.end method

.method protected blacklist getSpatializerCompatibleAudioDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10067
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10068
    return-void
.end method

.method protected blacklist getSpatializerOutput_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10122
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10123
    return-void
.end method

.method protected blacklist getSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10117
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10118
    return-void
.end method

.method protected blacklist getStreamTypeAlias_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9709
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9710
    return-void
.end method

.method protected blacklist getSupportedHeadTrackingModes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10092
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10093
    return-void
.end method

.method protected blacklist getSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9572
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9573
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2173
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getVolumeGroupMaxVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9544
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9545
    return-void
.end method

.method protected blacklist getVolumeGroupMinVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9550
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9551
    return-void
.end method

.method protected blacklist getVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9538
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9539
    return-void
.end method

.method protected blacklist handleBluetoothActiveDeviceChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9845
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9846
    return-void
.end method

.method protected blacklist hasHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10021
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10022
    return-void
.end method

.method protected blacklist isBluetoothAudioDeviceCategoryFixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9809
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9810
    return-void
.end method

.method protected blacklist isBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10214
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10215
    return-void
.end method

.method protected blacklist isCsdAsAFeatureAvailable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9784
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9785
    return-void
.end method

.method protected blacklist isCsdAsAFeatureEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9789
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9790
    return-void
.end method

.method protected blacklist isCsdEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9779
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9780
    return-void
.end method

.method protected blacklist isHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10031
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10032
    return-void
.end method

.method protected blacklist isHotwordStreamSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9588
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9589
    return-void
.end method

.method protected blacklist isInputGainFixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9614
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9615
    return-void
.end method

.method protected blacklist isPstnCallAudioInterceptable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10139
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CALL_AUDIO_INTERCEPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10140
    return-void
.end method

.method protected blacklist isSpatializerAvailableForDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10016
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10017
    return-void
.end method

.method protected blacklist isUltrasoundSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9583
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_ULTRASOUND"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9584
    return-void
.end method

.method protected blacklist isVolumeControlUsingVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9714
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9715
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.media.IAudioService"

    .line 2178
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    const v1, 0xffffff

    if-gt v9, v1, :cond_13

    .line 2179
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    :cond_13
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1c

    .line 2182
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2183
    return v13

    .line 2185
    :cond_1c
    packed-switch v9, :pswitch_data_14b0

    .line 4878
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 4870
    :pswitch_24
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4871
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4872
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setEnableHardening(Z)V

    .line 4873
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4874
    goto/16 :goto_14af

    .line 4860
    .end local v1    # "_arg0":Z
    :pswitch_33
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4861
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4862
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v2

    .line 4863
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4864
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4865
    goto/16 :goto_14af

    .line 4852
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Z
    :pswitch_4a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 4853
    .local v1, "_result":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4854
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4855
    goto/16 :goto_14af

    .line 4845
    .end local v1    # "_result":Landroid/media/FadeManagerConfiguration;
    :pswitch_56
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v1

    .line 4846
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4847
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4848
    goto/16 :goto_14af

    .line 4836
    .end local v1    # "_result":I
    :pswitch_62
    sget-object v1, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FadeManagerConfiguration;

    .line 4837
    .local v1, "_arg0":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4838
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result v2

    .line 4839
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4840
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4841
    goto/16 :goto_14af

    .line 4826
    .end local v1    # "_arg0":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "_result":I
    :pswitch_79
    sget-object v1, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/LoudnessCodecInfo;

    .line 4827
    .local v1, "_arg0":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4828
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 4829
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4830
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4831
    goto/16 :goto_14af

    .line 4815
    .end local v1    # "_arg0":Landroid/media/LoudnessCodecInfo;
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_90
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4817
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/LoudnessCodecInfo;

    .line 4818
    .local v2, "_arg1":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4819
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    .line 4820
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4821
    goto/16 :goto_14af

    .line 4802
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/LoudnessCodecInfo;
    :pswitch_a7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4804
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4806
    .local v2, "_arg1":I
    sget-object v3, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/LoudnessCodecInfo;

    .line 4807
    .local v3, "_arg2":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4808
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    .line 4809
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4810
    goto/16 :goto_14af

    .line 4793
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/LoudnessCodecInfo;
    :pswitch_c2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4794
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4795
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopLoudnessCodecUpdates(I)V

    .line 4796
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4797
    goto/16 :goto_14af

    .line 4784
    .end local v1    # "_arg0":I
    :pswitch_d1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4785
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4786
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startLoudnessCodecUpdates(I)V

    .line 4787
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4788
    goto/16 :goto_14af

    .line 4775
    .end local v1    # "_arg0":I
    :pswitch_e0
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4776
    .local v1, "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4777
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4778
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    goto/16 :goto_14af

    .line 4766
    .end local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    :pswitch_f3
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4767
    .restart local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4768
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4769
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4770
    goto/16 :goto_14af

    .line 4758
    .end local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    :pswitch_106
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothVariableLatencyEnabled()Z

    move-result v1

    .line 4759
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4760
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4761
    goto/16 :goto_14af

    .line 4750
    .end local v1    # "_result":Z
    :pswitch_112
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4751
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4752
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothVariableLatencyEnabled(Z)V

    .line 4753
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4754
    goto/16 :goto_14af

    .line 4742
    .end local v1    # "_arg0":Z
    :pswitch_121
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->supportsBluetoothVariableLatency()Z

    move-result v1

    .line 4743
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4744
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4745
    goto/16 :goto_14af

    .line 4735
    .end local v1    # "_result":Z
    :pswitch_12d
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4736
    .local v1, "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4737
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4738
    goto/16 :goto_14af

    .line 4726
    .end local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_13d
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4727
    .restart local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4728
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4729
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4730
    goto/16 :goto_14af

    .line 4714
    .end local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_150
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4716
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4717
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4718
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v3

    .line 4719
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4720
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4721
    goto/16 :goto_14af

    .line 4700
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_16b
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4702
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4704
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMixerAttributes;

    .line 4705
    .local v3, "_arg2":Landroid/media/AudioMixerAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4706
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v4

    .line 4707
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4708
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4709
    goto/16 :goto_14af

    .line 4692
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/AudioMixerAttributes;
    .end local v4    # "_result":I
    :pswitch_18e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v1

    .line 4693
    .local v1, "_result":Landroid/media/AudioHalVersionInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4694
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4695
    goto/16 :goto_14af

    .line 4672
    .end local v1    # "_result":Landroid/media/AudioHalVersionInfo;
    :pswitch_19a
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4674
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v2

    .line 4676
    .local v2, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4678
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 4680
    .local v4, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v5, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4682
    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4684
    .local v6, "_arg5":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4685
    .local v7, "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4686
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 4687
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4688
    goto/16 :goto_14af

    .line 4664
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/media/AudioDeviceAttributes;
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    :pswitch_1cc
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v1

    .line 4665
    .local v1, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4666
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4667
    goto/16 :goto_14af

    .line 4657
    .end local v1    # "_result":[I
    :pswitch_1d8
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v1

    .line 4658
    .restart local v1    # "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4659
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4660
    goto/16 :goto_14af

    .line 4649
    .end local v1    # "_result":[I
    :pswitch_1e4
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4650
    .local v1, "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4651
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 4652
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4653
    goto/16 :goto_14af

    .line 4640
    .end local v1    # "_arg0":[I
    :pswitch_1f3
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4641
    .restart local v1    # "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4642
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 4643
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4644
    goto/16 :goto_14af

    .line 4631
    .end local v1    # "_arg0":[I
    :pswitch_202
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4632
    .restart local v1    # "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4633
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 4634
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4635
    goto/16 :goto_14af

    .line 4619
    .end local v1    # "_arg0":[I
    :pswitch_211
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4621
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 4622
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4623
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v3

    .line 4624
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4625
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4626
    goto/16 :goto_14af

    .line 4609
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":Z
    :pswitch_230
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4611
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 4612
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4613
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 4614
    goto/16 :goto_14af

    .line 4601
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_248
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v1

    .line 4602
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4603
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4604
    goto/16 :goto_14af

    .line 4591
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_254
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4593
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v2

    .line 4594
    .local v2, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4595
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 4596
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4597
    goto/16 :goto_14af

    .line 4580
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_26b
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4582
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4583
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4584
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 4585
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4586
    goto/16 :goto_14af

    .line 4569
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":Z
    :pswitch_282
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v1

    .line 4571
    .local v1, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4572
    .restart local v2    # "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4573
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 4574
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4575
    goto/16 :goto_14af

    .line 4561
    .end local v1    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v2    # "_arg1":Z
    :pswitch_299
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 4562
    .local v1, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4563
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4564
    goto/16 :goto_14af

    .line 4554
    .end local v1    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_2a5
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4555
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4556
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 4557
    goto/16 :goto_14af

    .line 4542
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_2b5
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4544
    .local v1, "_arg0":[I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 4546
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4547
    .local v3, "_arg2":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4548
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 4549
    goto/16 :goto_14af

    .line 4534
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":J
    :pswitch_2cd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v1

    .line 4535
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4536
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4537
    goto/16 :goto_14af

    .line 4527
    .end local v1    # "_result":Z
    :pswitch_2d9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v1

    .line 4528
    .local v1, "_result":Landroid/media/VolumeInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4529
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4530
    goto/16 :goto_14af

    .line 4520
    .end local v1    # "_result":Landroid/media/VolumeInfo;
    :pswitch_2e5
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v1

    .line 4521
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4522
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4523
    goto/16 :goto_14af

    .line 4512
    .end local v1    # "_result":Z
    :pswitch_2f1
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4513
    .local v1, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4514
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4515
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4516
    goto/16 :goto_14af

    .line 4503
    .end local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_304
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4504
    .restart local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4505
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4506
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4507
    goto/16 :goto_14af

    .line 4495
    .end local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_317
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v1

    .line 4496
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4498
    goto/16 :goto_14af

    .line 4484
    .end local v1    # "_result":I
    :pswitch_323
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4486
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4487
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4488
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 4489
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4490
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4491
    goto/16 :goto_14af

    .line 4473
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_339
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4475
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4476
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4477
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 4478
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4479
    goto/16 :goto_14af

    .line 4467
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_34c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 4468
    goto/16 :goto_14af

    .line 4460
    :pswitch_351
    invoke-virtual {v10}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 4461
    .local v1, "_arg0":[F
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4462
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 4463
    goto/16 :goto_14af

    .line 4452
    .end local v1    # "_arg0":[F
    :pswitch_35d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v1

    .line 4453
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4454
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    goto/16 :goto_14af

    .line 4445
    .end local v1    # "_result":I
    :pswitch_369
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v1

    .line 4446
    .local v1, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4448
    goto/16 :goto_14af

    .line 4438
    .end local v1    # "_result":[I
    :pswitch_375
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v1

    .line 4439
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4440
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4441
    goto/16 :goto_14af

    .line 4430
    .end local v1    # "_result":I
    :pswitch_381
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4431
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4432
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 4433
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4434
    goto/16 :goto_14af

    .line 4421
    .end local v1    # "_arg0":I
    :pswitch_390
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4422
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4423
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4424
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4425
    goto/16 :goto_14af

    .line 4412
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_3a3
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4413
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4414
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4415
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4416
    goto/16 :goto_14af

    .line 4404
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_3b6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v1

    .line 4405
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4407
    goto/16 :goto_14af

    .line 4396
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_3c2
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4397
    .local v1, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4398
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4399
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4400
    goto/16 :goto_14af

    .line 4387
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_3d5
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4388
    .restart local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4389
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4390
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4391
    goto/16 :goto_14af

    .line 4378
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_3e8
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4379
    .local v1, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4380
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4381
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4382
    goto/16 :goto_14af

    .line 4369
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_3fb
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4370
    .restart local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4371
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4372
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4373
    goto/16 :goto_14af

    .line 4360
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_40e
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4361
    .local v1, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4362
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4363
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4364
    goto/16 :goto_14af

    .line 4351
    .end local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_421
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4352
    .restart local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4353
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4354
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4355
    goto/16 :goto_14af

    .line 4343
    .end local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_434
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v1

    .line 4344
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4345
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4346
    goto/16 :goto_14af

    .line 4332
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_440
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4334
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    sget-object v2, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    .line 4335
    .local v2, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4336
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v3

    .line 4337
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4339
    goto/16 :goto_14af

    .line 4323
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/AudioFormat;
    .end local v3    # "_result":Z
    :pswitch_45f
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4324
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4325
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 4326
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4327
    goto/16 :goto_14af

    .line 4312
    .end local v1    # "_arg0":Z
    :pswitch_46e
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v1

    .line 4314
    .local v1, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4315
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4316
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 4317
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4318
    goto/16 :goto_14af

    .line 4304
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v2    # "_arg1":Z
    :pswitch_485
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v1

    .line 4305
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4306
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4307
    goto/16 :goto_14af

    .line 4295
    .end local v1    # "_result":Z
    :pswitch_491
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4296
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4297
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4298
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4299
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4300
    goto/16 :goto_14af

    .line 4284
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_4a8
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4286
    .local v1, "_arg0":Z
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 4287
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4288
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 4289
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    goto/16 :goto_14af

    .line 4274
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_4bf
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4275
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4276
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4277
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4278
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4279
    goto/16 :goto_14af

    .line 4264
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_4d6
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4265
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4266
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4267
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4269
    goto/16 :goto_14af

    .line 4256
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_4ed
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v1

    .line 4257
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4258
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4259
    goto/16 :goto_14af

    .line 4249
    .end local v1    # "_result":Z
    :pswitch_4f9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v1

    .line 4250
    .restart local v1    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4251
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4252
    goto/16 :goto_14af

    .line 4242
    .end local v1    # "_result":Z
    :pswitch_505
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v1

    .line 4243
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4245
    goto/16 :goto_14af

    .line 4235
    .end local v1    # "_result":I
    :pswitch_511
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4236
    .local v1, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4237
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4238
    goto/16 :goto_14af

    .line 4226
    .end local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_521
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4227
    .restart local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4228
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4229
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4230
    goto/16 :goto_14af

    .line 4216
    .end local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_534
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4217
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4218
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z

    move-result v2

    .line 4219
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4220
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4221
    goto/16 :goto_14af

    .line 4204
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_547
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4206
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 4207
    .local v2, "_arg1":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4208
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z

    move-result v3

    .line 4209
    .restart local v3    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4210
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4211
    goto/16 :goto_14af

    .line 4196
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    .end local v3    # "_result":Z
    :pswitch_55e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusUnmuteDelayAfterFadeOutForTest()J

    move-result-wide v1

    .line 4197
    .local v1, "_result":J
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4198
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4199
    goto/16 :goto_14af

    .line 4189
    .end local v1    # "_result":J
    :pswitch_56a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusFadeOutDurationForTest()J

    move-result-wide v1

    .line 4190
    .restart local v1    # "_result":J
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4191
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4192
    goto/16 :goto_14af

    .line 4182
    .end local v1    # "_result":J
    :pswitch_576
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusDuckedUidsForTest()Ljava/util/List;

    move-result-object v1

    .line 4183
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4184
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4185
    goto/16 :goto_14af

    .line 4173
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_582
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4174
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4175
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v2

    .line 4176
    .local v2, "_result":J
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4177
    invoke-virtual {v11, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4178
    goto/16 :goto_14af

    .line 4157
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":J
    :pswitch_599
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 4159
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4161
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 4163
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4164
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4165
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v5

    .line 4166
    .local v5, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4167
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    goto/16 :goto_14af

    .line 4152
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_5c0
    invoke-direct {p0, v10, v11}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4143
    :pswitch_5c5
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4144
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4145
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v2

    .line 4146
    .local v2, "_result":J
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4147
    invoke-virtual {v11, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4148
    goto/16 :goto_14af

    .line 4133
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":J
    :pswitch_5dc
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4134
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4135
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v2

    .line 4136
    .restart local v2    # "_result":J
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4137
    invoke-virtual {v11, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4138
    goto/16 :goto_14af

    .line 4121
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":J
    :pswitch_5f3
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4123
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4124
    .local v2, "_arg1":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4125
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v4

    .line 4126
    .local v4, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4127
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4128
    goto/16 :goto_14af

    .line 4113
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :pswitch_60e
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4114
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4115
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 4116
    goto/16 :goto_14af

    .line 4105
    .end local v1    # "_arg0":Z
    :pswitch_61a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v1

    .line 4106
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4107
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4108
    goto/16 :goto_14af

    .line 4098
    .end local v1    # "_result":Z
    :pswitch_626
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4099
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4100
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 4101
    goto/16 :goto_14af

    .line 4090
    .end local v1    # "_arg0":Z
    :pswitch_632
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v1

    .line 4091
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4092
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4093
    goto/16 :goto_14af

    .line 4083
    .end local v1    # "_result":Z
    :pswitch_63e
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4084
    .local v1, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4085
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4086
    goto/16 :goto_14af

    .line 4074
    .end local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_64e
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4075
    .restart local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4076
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4077
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4078
    goto/16 :goto_14af

    .line 4066
    .end local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_661
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v1

    .line 4067
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4068
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4069
    goto/16 :goto_14af

    .line 4053
    .end local v1    # "_result":I
    :pswitch_66d
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4055
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4057
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 4058
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4059
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 4060
    .restart local v4    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4061
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4062
    goto/16 :goto_14af

    .line 4045
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_68c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v1

    .line 4046
    .local v1, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4047
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4048
    goto/16 :goto_14af

    .line 4036
    .end local v1    # "_result":[I
    :pswitch_698
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4037
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4038
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v2

    .line 4039
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4040
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4041
    goto/16 :goto_14af

    .line 4026
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_6ab
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4027
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4028
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v2

    .line 4029
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 4030
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4031
    goto/16 :goto_14af

    .line 4014
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_6be
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4016
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4018
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4019
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4020
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 4021
    goto/16 :goto_14af

    .line 4004
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_6d2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4006
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4007
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 4009
    goto/16 :goto_14af

    .line 3982
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_6e2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3984
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3986
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3988
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3990
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3992
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3994
    .local v6, "_arg5":I
    sget-object v7, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 3996
    .local v7, "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3997
    .local v8, "_arg7":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3998
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3999
    goto/16 :goto_14af

    .line 3960
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_70f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3962
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3964
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3966
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3968
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3970
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3972
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 3974
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3975
    .restart local v8    # "_arg7":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3976
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3977
    goto/16 :goto_14af

    .line 3938
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_73d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3940
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3942
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3944
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3946
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3948
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3950
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 3952
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3953
    .restart local v8    # "_arg7":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3954
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3955
    goto/16 :goto_14af

    .line 3930
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_76b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 3931
    .local v1, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3932
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3933
    goto/16 :goto_14af

    .line 3921
    .end local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_77b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 3922
    .restart local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3923
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3924
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3925
    goto/16 :goto_14af

    .line 3911
    .end local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_78e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3912
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3913
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v2

    .line 3914
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3915
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3916
    goto/16 :goto_14af

    .line 3901
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_7a1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3902
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3903
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v2

    .line 3904
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3905
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3906
    goto/16 :goto_14af

    .line 3889
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_7b4
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3891
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3892
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3893
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v3

    .line 3894
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3895
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3896
    goto/16 :goto_14af

    .line 3881
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v3    # "_result":I
    :pswitch_7cd
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3882
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3883
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 3884
    goto/16 :goto_14af

    .line 3871
    .end local v1    # "_arg0":Z
    :pswitch_7d9
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3872
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3873
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 3874
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3875
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3876
    goto/16 :goto_14af

    .line 3858
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_7f0
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3860
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3862
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3863
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3864
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3865
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    goto/16 :goto_14af

    .line 3850
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_80b
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3851
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3852
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 3853
    goto/16 :goto_14af

    .line 3842
    .end local v1    # "_arg0":Z
    :pswitch_817
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3843
    .local v1, "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3844
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3845
    goto/16 :goto_14af

    .line 3833
    .end local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_827
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3834
    .restart local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3835
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3836
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3837
    goto/16 :goto_14af

    .line 3825
    .end local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_83a
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3826
    .local v1, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3827
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3828
    goto/16 :goto_14af

    .line 3816
    .end local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_84a
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3817
    .restart local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3818
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3819
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3820
    goto/16 :goto_14af

    .line 3808
    .end local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_85d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v1

    .line 3809
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3810
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    goto/16 :goto_14af

    .line 3799
    .end local v1    # "_result":I
    :pswitch_869
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3800
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3801
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v2

    .line 3802
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3803
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    goto/16 :goto_14af

    .line 3791
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_87c
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v1

    .line 3792
    .local v1, "_arg0":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3793
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V

    .line 3794
    goto/16 :goto_14af

    .line 3780
    .end local v1    # "_arg0":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_88c
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3782
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v2

    .line 3783
    .local v2, "_arg1":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3784
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    .line 3785
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3786
    goto/16 :goto_14af

    .line 3770
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_8a7
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3771
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3772
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v2

    .line 3773
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3774
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3775
    goto/16 :goto_14af

    .line 3760
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8be
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3761
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3762
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v2

    .line 3763
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3764
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3765
    goto/16 :goto_14af

    .line 3750
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8d5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3751
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3752
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v2

    .line 3753
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3754
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3755
    goto/16 :goto_14af

    .line 3738
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8e8
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3740
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 3741
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3742
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v3

    .line 3743
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3744
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3745
    goto/16 :goto_14af

    .line 3726
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_result":I
    :pswitch_903
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3728
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 3729
    .restart local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3730
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v3

    .line 3731
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3732
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3733
    goto/16 :goto_14af

    .line 3716
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_result":I
    :pswitch_91e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3717
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3718
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v2

    .line 3719
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3720
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3721
    goto/16 :goto_14af

    .line 3706
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_931
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3707
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3708
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v2

    .line 3709
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3711
    goto/16 :goto_14af

    .line 3694
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_944
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3696
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3697
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3698
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v3

    .line 3699
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3700
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3701
    goto/16 :goto_14af

    .line 3686
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v3    # "_result":I
    :pswitch_95d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v1

    .line 3687
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3688
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3689
    goto/16 :goto_14af

    .line 3677
    .end local v1    # "_result":Z
    :pswitch_969
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3678
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3679
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v2

    .line 3680
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3681
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3682
    goto/16 :goto_14af

    .line 3665
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_result":Z
    :pswitch_980
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3667
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3668
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3669
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3

    .line 3670
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3671
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3672
    goto/16 :goto_14af

    .line 3649
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_99b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3651
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3653
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 3655
    .local v3, "_arg2":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 3656
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3657
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v5

    .line 3658
    .local v5, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3659
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3660
    goto/16 :goto_14af

    .line 3637
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_9be
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3639
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3640
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3641
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3

    .line 3642
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3643
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3644
    goto/16 :goto_14af

    .line 3621
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_9d9
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3623
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3625
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 3627
    .local v3, "_arg2":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 3628
    .restart local v4    # "_arg3":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3629
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v5

    .line 3630
    .restart local v5    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3631
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    goto/16 :goto_14af

    .line 3613
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_9fc
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    move-result-object v1

    .line 3614
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3615
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    .line 3616
    goto/16 :goto_14af

    .line 3604
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
    :pswitch_a0c
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    move-result-object v1

    .line 3605
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3606
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    .line 3607
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3608
    goto/16 :goto_14af

    .line 3596
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
    :pswitch_a1f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v1

    .line 3597
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3598
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3599
    goto/16 :goto_14af

    .line 3589
    .end local v1    # "_result":Z
    :pswitch_a2b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3590
    .local v1, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3591
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3592
    goto/16 :goto_14af

    .line 3580
    .end local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_a3b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3581
    .restart local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3582
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3583
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3584
    goto/16 :goto_14af

    .line 3568
    .end local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_a4e
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3570
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3572
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3573
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3574
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3575
    goto/16 :goto_14af

    .line 3555
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_a6a
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3557
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 3559
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/BluetoothProfileConnectionInfo;

    .line 3560
    .local v3, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3561
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 3562
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3563
    goto/16 :goto_14af

    .line 3545
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_a8d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3547
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3548
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3549
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 3550
    goto/16 :goto_14af

    .line 3527
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_a9d
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3529
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3531
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3533
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3535
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    sget-object v5, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/FadeManagerConfiguration;

    .line 3536
    .local v5, "_arg4":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3537
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I

    move-result v6

    .line 3538
    .local v6, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3539
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3540
    goto/16 :goto_14af

    .line 3513
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local v5    # "_arg4":Landroid/media/FadeManagerConfiguration;
    .end local v6    # "_result":I
    :pswitch_acf
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3515
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3517
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3518
    .restart local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3519
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 3520
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3521
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    goto/16 :goto_14af

    .line 3501
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_result":I
    :pswitch_af2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3503
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3504
    .local v2, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3505
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    .line 3506
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3507
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3508
    goto/16 :goto_14af

    .line 3493
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioAttributes;
    .end local v3    # "_result":I
    :pswitch_b0d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1

    .line 3494
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3495
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3496
    goto/16 :goto_14af

    .line 3486
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_b19
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3487
    .local v1, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3488
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3489
    goto/16 :goto_14af

    .line 3477
    .end local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_b29
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3478
    .restart local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3479
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3480
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    goto/16 :goto_14af

    .line 3469
    .end local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_b3c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1

    .line 3470
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3471
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3472
    goto/16 :goto_14af

    .line 3462
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_b48
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3463
    .local v1, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3464
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3465
    goto/16 :goto_14af

    .line 3453
    .end local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_b58
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3454
    .restart local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3455
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3456
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3457
    goto/16 :goto_14af

    .line 3445
    .end local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_b6b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v1

    .line 3446
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3447
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3448
    goto/16 :goto_14af

    .line 3438
    .end local v1    # "_result":Z
    :pswitch_b77
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getVolumePolicy()Landroid/media/VolumePolicy;

    move-result-object v1

    .line 3439
    .local v1, "_result":Landroid/media/VolumePolicy;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3440
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3441
    goto/16 :goto_14af

    .line 3430
    .end local v1    # "_result":Landroid/media/VolumePolicy;
    :pswitch_b83
    sget-object v1, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumePolicy;

    .line 3431
    .local v1, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3432
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 3433
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3434
    goto/16 :goto_14af

    .line 3418
    .end local v1    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_b96
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3420
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3421
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3422
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3423
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3424
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    goto/16 :goto_14af

    .line 3404
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_bb1
    sget-object v1, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audiopolicy/AudioMix;

    .line 3406
    .local v1, "_arg0":[Landroid/media/audiopolicy/AudioMix;
    sget-object v2, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audiopolicy/AudioMixingRule;

    .line 3408
    .local v2, "_arg1":[Landroid/media/audiopolicy/AudioMixingRule;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3409
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3410
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 3411
    .restart local v4    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3412
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3413
    goto/16 :goto_14af

    .line 3392
    .end local v1    # "_arg0":[Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "_arg1":[Landroid/media/audiopolicy/AudioMixingRule;
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_result":I
    :pswitch_bd8
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3394
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3395
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3396
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3397
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3398
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3399
    goto/16 :goto_14af

    .line 3380
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_bf7
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3382
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3383
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3384
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3385
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3386
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3387
    goto/16 :goto_14af

    .line 3371
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_c16
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3372
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3374
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    goto/16 :goto_14af

    .line 3363
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_c29
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v1

    .line 3364
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3365
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3366
    goto/16 :goto_14af

    .line 3356
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :pswitch_c35
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3357
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3358
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3359
    goto/16 :goto_14af

    .line 3332
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_c45
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3334
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3336
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3338
    .local v3, "_arg2":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3340
    .local v4, "_arg3":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3342
    .local v5, "_arg4":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 3344
    .local v6, "_arg5":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v7

    .line 3346
    .local v7, "_arg6":Landroid/media/projection/IMediaProjection;
    sget-object v8, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/AttributionSource;

    .line 3347
    .local v8, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3348
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v14

    .line 3349
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3350
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3351
    goto/16 :goto_14af

    .line 3324
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/media/projection/IMediaProjection;
    .end local v8    # "_arg7":Landroid/content/AttributionSource;
    .end local v14    # "_result":Ljava/lang/String;
    :pswitch_c85
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v1

    .line 3325
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3326
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3327
    goto/16 :goto_14af

    .line 3315
    .end local v1    # "_result":Z
    :pswitch_c91
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3316
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v2

    .line 3318
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    goto/16 :goto_14af

    .line 3305
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :pswitch_ca4
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3306
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result v2

    .line 3308
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3310
    goto/16 :goto_14af

    .line 3295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_cb7
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3296
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3297
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v2

    .line 3298
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    goto/16 :goto_14af

    .line 3283
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_cca
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3285
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3286
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3287
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    move-result v3

    .line 3288
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3289
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3290
    goto/16 :goto_14af

    .line 3275
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_ce1
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3276
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3277
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setCsdAsAFeatureEnabled(Z)V

    .line 3278
    goto/16 :goto_14af

    .line 3267
    .end local v1    # "_arg0":Z
    :pswitch_ced
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureEnabled()Z

    move-result v1

    .line 3268
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3270
    goto/16 :goto_14af

    .line 3260
    .end local v1    # "_result":Z
    :pswitch_cf9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureAvailable()Z

    move-result v1

    .line 3261
    .restart local v1    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3263
    goto/16 :goto_14af

    .line 3253
    .end local v1    # "_result":Z
    :pswitch_d05
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdEnabled()Z

    move-result v1

    .line 3254
    .restart local v1    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3255
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3256
    goto/16 :goto_14af

    .line 3246
    .end local v1    # "_result":Z
    :pswitch_d11
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3247
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3248
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 3249
    goto/16 :goto_14af

    .line 3238
    .end local v1    # "_arg0":Z
    :pswitch_d1d
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3239
    .restart local v1    # "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3240
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->forceUseFrameworkMel(Z)V

    .line 3241
    goto/16 :goto_14af

    .line 3230
    .end local v1    # "_arg0":Z
    :pswitch_d29
    invoke-virtual {v10}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3231
    .local v1, "_arg0":F
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3232
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setCsd(F)V

    .line 3233
    goto/16 :goto_14af

    .line 3222
    .end local v1    # "_arg0":F
    :pswitch_d35
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCsd()F

    move-result v1

    .line 3223
    .local v1, "_result":F
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3224
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3225
    goto/16 :goto_14af

    .line 3215
    .end local v1    # "_result":F
    :pswitch_d41
    invoke-virtual {v10}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3216
    .local v1, "_arg0":F
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3217
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setOutputRs2UpperBound(F)V

    .line 3218
    goto/16 :goto_14af

    .line 3207
    .end local v1    # "_arg0":F
    :pswitch_d4d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getOutputRs2UpperBound()F

    move-result v1

    .line 3208
    .local v1, "_result":F
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3210
    goto/16 :goto_14af

    .line 3200
    .end local v1    # "_result":F
    :pswitch_d59
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3201
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3202
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->lowerVolumeToRs1(Ljava/lang/String;)V

    .line 3203
    goto/16 :goto_14af

    .line 3191
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d65
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3192
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3193
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3195
    goto/16 :goto_14af

    .line 3181
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d74
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3182
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3183
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMutableByUi(I)Z

    move-result v2

    .line 3184
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3185
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3186
    goto/16 :goto_14af

    .line 3171
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d87
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3172
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v2

    .line 3174
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3175
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3176
    goto/16 :goto_14af

    .line 3161
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d9a
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3162
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3163
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    .line 3164
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3165
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3166
    goto/16 :goto_14af

    .line 3153
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_dad
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3154
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3155
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeControllerLongPressTimeoutEnabled(Z)V

    .line 3156
    goto/16 :goto_14af

    .line 3142
    .end local v1    # "_arg0":Z
    :pswitch_db9
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3144
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3145
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3146
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 3147
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3148
    goto/16 :goto_14af

    .line 3134
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    .end local v2    # "_arg1":Z
    :pswitch_dd0
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v1

    .line 3135
    .local v1, "_result":Landroid/media/IVolumeController;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3137
    goto/16 :goto_14af

    .line 3126
    .end local v1    # "_result":Landroid/media/IVolumeController;
    :pswitch_ddc
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3127
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3128
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 3129
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3130
    goto/16 :goto_14af

    .line 3118
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_def
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v1

    .line 3119
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3120
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3121
    goto/16 :goto_14af

    .line 3109
    .end local v1    # "_result":Z
    :pswitch_dfb
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 3110
    .local v1, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3111
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v2

    .line 3112
    .local v2, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3114
    goto/16 :goto_14af

    .line 3096
    .end local v1    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v2    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_e12
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3098
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3100
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3101
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3102
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3103
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3104
    goto/16 :goto_14af

    .line 3087
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_e2d
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3088
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3089
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setNotifAliasRingForTest(Z)V

    .line 3090
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3091
    goto/16 :goto_14af

    .line 3076
    .end local v1    # "_arg0":Z
    :pswitch_e3c
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStreamAliasingDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStreamAliasingDispatcher;

    move-result-object v1

    .line 3078
    .local v1, "_arg0":Landroid/media/IStreamAliasingDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3079
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3080
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V

    .line 3081
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3082
    goto/16 :goto_14af

    .line 3068
    .end local v1    # "_arg0":Landroid/media/IStreamAliasingDispatcher;
    .end local v2    # "_arg1":Z
    :pswitch_e53
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeControlUsingVolumeGroups()Z

    move-result v1

    .line 3069
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3070
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3071
    goto/16 :goto_14af

    .line 3059
    .end local v1    # "_result":Z
    :pswitch_e5f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3060
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3061
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamTypeAlias(I)I

    move-result v2

    .line 3062
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    goto/16 :goto_14af

    .line 3051
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_e72
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v1

    .line 3052
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3053
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3054
    goto/16 :goto_14af

    .line 3044
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_e7e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v1

    .line 3045
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3046
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    goto/16 :goto_14af

    .line 3037
    .end local v1    # "_result":I
    :pswitch_e8a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 3038
    .local v1, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3040
    goto/16 :goto_14af

    .line 3029
    .end local v1    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_e96
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 3030
    .local v1, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3031
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 3032
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3033
    goto/16 :goto_14af

    .line 3018
    .end local v1    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_ea9
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3020
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3021
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3022
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 3023
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    goto/16 :goto_14af

    .line 3007
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_ebc
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3009
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 3010
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3011
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3012
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3013
    goto/16 :goto_14af

    .line 2996
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_ed3
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2998
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2999
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3000
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3001
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    goto/16 :goto_14af

    .line 2983
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_eea
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2985
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2987
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2988
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2989
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    .line 2990
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2991
    goto/16 :goto_14af

    .line 2975
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_f05
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v1

    .line 2976
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2977
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2978
    goto/16 :goto_14af

    .line 2967
    .end local v1    # "_result":I
    :pswitch_f11
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2968
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    goto/16 :goto_14af

    .line 2951
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_f20
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 2953
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2955
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 2957
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2958
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2959
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v5

    .line 2960
    .local v5, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2961
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2962
    goto/16 :goto_14af

    .line 2946
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_f47
    invoke-direct {p0, v10, v11}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2939
    :pswitch_f4c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v1

    .line 2940
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2942
    goto/16 :goto_14af

    .line 2931
    .end local v1    # "_result":Z
    :pswitch_f58
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2932
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2933
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2934
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2935
    goto/16 :goto_14af

    .line 2923
    .end local v1    # "_arg0":Z
    :pswitch_f67
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v1

    .line 2924
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2925
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2926
    goto/16 :goto_14af

    .line 2915
    .end local v1    # "_result":Z
    :pswitch_f73
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2916
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2917
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setLeAudioSuspended(Z)V

    .line 2918
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2919
    goto/16 :goto_14af

    .line 2906
    .end local v1    # "_arg0":Z
    :pswitch_f82
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2907
    .restart local v1    # "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2908
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setA2dpSuspended(Z)V

    .line 2909
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2910
    goto/16 :goto_14af

    .line 2897
    .end local v1    # "_arg0":Z
    :pswitch_f91
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2898
    .restart local v1    # "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2900
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2901
    goto/16 :goto_14af

    .line 2889
    .end local v1    # "_arg0":Z
    :pswitch_fa0
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v1

    .line 2890
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2892
    goto/16 :goto_14af

    .line 2877
    .end local v1    # "_result":Z
    :pswitch_fac
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2879
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2881
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2882
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;ZLandroid/content/AttributionSource;)V

    .line 2884
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2885
    goto/16 :goto_14af

    .line 2867
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_fc7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2868
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2869
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v2

    .line 2870
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2871
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2872
    goto/16 :goto_14af

    .line 2857
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_fda
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2858
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2859
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v2

    .line 2860
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2861
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2862
    goto/16 :goto_14af

    .line 2847
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_fed
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2848
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2849
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v2

    .line 2850
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2851
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2852
    goto/16 :goto_14af

    .line 2835
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1000
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2837
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2838
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2839
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v3

    .line 2840
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2842
    goto/16 :goto_14af

    .line 2827
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_1017
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v1

    .line 2828
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2829
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2830
    goto/16 :goto_14af

    .line 2820
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_1023
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v1

    .line 2821
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2823
    goto/16 :goto_14af

    .line 2815
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_102f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2816
    goto/16 :goto_14af

    .line 2810
    :pswitch_1034
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2811
    goto/16 :goto_14af

    .line 2803
    :pswitch_1039
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v1

    .line 2804
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2806
    goto/16 :goto_14af

    .line 2794
    .end local v1    # "_result":Z
    :pswitch_1045
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2796
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 2797
    .local v2, "_arg1":F
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2798
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2799
    goto/16 :goto_14af

    .line 2784
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    :pswitch_1055
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2786
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2787
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2788
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2789
    goto/16 :goto_14af

    .line 2776
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1065
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v1

    .line 2777
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    goto/16 :goto_14af

    .line 2764
    .end local v1    # "_result":I
    :pswitch_1071
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2766
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2768
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2769
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2770
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    goto/16 :goto_14af

    .line 2754
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_1088
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2755
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2756
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v2

    .line 2757
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2759
    goto/16 :goto_14af

    .line 2744
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_109b
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2745
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2746
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v2

    .line 2747
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2748
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    goto/16 :goto_14af

    .line 2733
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_10ae
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2735
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2736
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2737
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2738
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    goto/16 :goto_14af

    .line 2723
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_10c1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2724
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v2

    .line 2726
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2728
    goto/16 :goto_14af

    .line 2715
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_10d4
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v1

    .line 2716
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2717
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2718
    goto/16 :goto_14af

    .line 2708
    .end local v1    # "_result":I
    :pswitch_10e0
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v1

    .line 2709
    .restart local v1    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2711
    goto/16 :goto_14af

    .line 2698
    .end local v1    # "_result":I
    :pswitch_10ec
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2700
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2701
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2702
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2703
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2704
    goto/16 :goto_14af

    .line 2687
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_10ff
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2689
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2690
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2691
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2692
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    goto/16 :goto_14af

    .line 2679
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1112
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2680
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2681
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2682
    goto/16 :goto_14af

    .line 2669
    .end local v1    # "_arg0":Z
    :pswitch_111e
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2670
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2671
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 2672
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2673
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2674
    goto/16 :goto_14af

    .line 2661
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_1135
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMinInputGainIndex()I

    move-result v1

    .line 2662
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2663
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2664
    goto/16 :goto_14af

    .line 2654
    .end local v1    # "_result":I
    :pswitch_1141
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMaxInputGainIndex()I

    move-result v1

    .line 2655
    .restart local v1    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2657
    goto/16 :goto_14af

    .line 2645
    .end local v1    # "_result":I
    :pswitch_114d
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2646
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2647
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 2648
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    goto/16 :goto_14af

    .line 2634
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_1164
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2636
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2637
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2638
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V

    .line 2639
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    goto/16 :goto_14af

    .line 2619
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    :pswitch_117b
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2621
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2623
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2625
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2626
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2627
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2628
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2629
    goto/16 :goto_14af

    .line 2609
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1196
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2610
    .restart local v1    # "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v2

    .line 2612
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2614
    goto/16 :goto_14af

    .line 2601
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_11a9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v1

    .line 2602
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2604
    goto/16 :goto_14af

    .line 2594
    .end local v1    # "_result":Z
    :pswitch_11b5
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v1

    .line 2595
    .restart local v1    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2597
    goto/16 :goto_14af

    .line 2587
    .end local v1    # "_result":Z
    :pswitch_11c1
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    .line 2588
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2589
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2590
    goto/16 :goto_14af

    .line 2580
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_11cd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v1

    .line 2581
    .local v1, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2582
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2583
    goto/16 :goto_14af

    .line 2572
    .end local v1    # "_result":[I
    :pswitch_11d9
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2573
    .local v1, "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 2575
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    goto/16 :goto_14af

    .line 2562
    .end local v1    # "_arg0":[I
    :pswitch_11e8
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2563
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2564
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 2565
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2566
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2567
    goto/16 :goto_14af

    .line 2547
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_11fb
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2549
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2551
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2553
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2554
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustVolumeGroupVolume(IIILjava/lang/String;)V

    .line 2556
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    goto/16 :goto_14af

    .line 2537
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1216
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2538
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2539
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isVolumeGroupMuted(I)Z

    move-result v2

    .line 2540
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2541
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2542
    goto/16 :goto_14af

    .line 2527
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1229
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2528
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2529
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v2

    .line 2530
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    goto/16 :goto_14af

    .line 2517
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_123c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2518
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2519
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMinVolumeIndex(I)I

    move-result v2

    .line 2520
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    goto/16 :goto_14af

    .line 2507
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_124f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2508
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2509
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v2

    .line 2510
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2512
    goto/16 :goto_14af

    .line 2497
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1262
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2498
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupVolumeIndex(I)I

    move-result v2

    .line 2500
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2502
    goto/16 :goto_14af

    .line 2480
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1275
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2482
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2484
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2486
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2488
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2489
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2490
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2492
    goto/16 :goto_14af

    .line 2472
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_1295
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v1

    .line 2473
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2475
    goto/16 :goto_14af

    .line 2463
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_12a1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2464
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2465
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v2

    .line 2466
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2468
    goto/16 :goto_14af

    .line 2453
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_12b4
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2454
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2455
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v2

    .line 2456
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2458
    goto/16 :goto_14af

    .line 2443
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_12c7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2444
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2445
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v2

    .line 2446
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2448
    goto/16 :goto_14af

    .line 2426
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_12da
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2428
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2430
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2432
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2434
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2435
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2436
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 2437
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2438
    goto/16 :goto_14af

    .line 2418
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_12fa
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v1

    .line 2419
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2421
    goto/16 :goto_14af

    .line 2408
    .end local v1    # "_result":Z
    :pswitch_1306
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2410
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2411
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2412
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2413
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    goto/16 :goto_14af

    .line 2398
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_1319
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2399
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2400
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v2

    .line 2401
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2403
    goto/16 :goto_14af

    .line 2384
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_132c
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 2386
    .local v1, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2388
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2390
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2391
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2392
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2393
    goto/16 :goto_14af

    .line 2370
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1348
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2372
    .local v1, "_arg0":Landroid/media/VolumeInfo;
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2374
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2375
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2376
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v4

    .line 2377
    .local v4, "_result":Landroid/media/VolumeInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2378
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2379
    goto/16 :goto_14af

    .line 2357
    .end local v1    # "_arg0":Landroid/media/VolumeInfo;
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/media/VolumeInfo;
    :pswitch_136b
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2359
    .restart local v1    # "_arg0":Landroid/media/VolumeInfo;
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2361
    .restart local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2362
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2363
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2365
    goto/16 :goto_14af

    .line 2340
    .end local v1    # "_arg0":Landroid/media/VolumeInfo;
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_138a
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2342
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2344
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2346
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2348
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2349
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2350
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2351
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    goto/16 :goto_14af

    .line 2325
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_13aa
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2327
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2329
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2331
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2332
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2333
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 2334
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    goto/16 :goto_14af

    .line 2308
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_13c5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2310
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2312
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2314
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2316
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2317
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2318
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2320
    goto/16 :goto_14af

    .line 2293
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_13e5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2295
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2297
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2299
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2300
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2301
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 2302
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2303
    goto/16 :goto_14af

    .line 2286
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1400
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->permissionUpdateBarrier()V

    .line 2287
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    goto/16 :goto_14af

    .line 2275
    :pswitch_1408
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2277
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2279
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 2280
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2281
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->portEvent(IILandroid/os/PersistableBundle;)V

    .line 2282
    goto/16 :goto_14af

    .line 2265
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1420
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2267
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2268
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2269
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 2270
    goto/16 :goto_14af

    .line 2257
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1430
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2258
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2259
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 2260
    goto/16 :goto_14af

    .line 2247
    .end local v1    # "_arg0":I
    :pswitch_143c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2249
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2250
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 2252
    goto :goto_14af

    .line 2237
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_144b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2238
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v2

    .line 2240
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    goto :goto_14af

    .line 2229
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_145d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2230
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2231
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 2232
    goto :goto_14af

    .line 2217
    .end local v1    # "_arg0":I
    :pswitch_1468
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2219
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2221
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 2222
    .local v3, "_arg2":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2223
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->playerEvent(II[I)V

    .line 2224
    goto :goto_14af

    .line 2207
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    :pswitch_147b
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2209
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2210
    .local v2, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 2212
    goto :goto_14af

    .line 2197
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_148e
    sget-object v1, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerBase$PlayerIdCard;

    .line 2198
    .local v1, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v2

    .line 2200
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    goto :goto_14af

    .line 2189
    .end local v1    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v2    # "_result":I
    :pswitch_14a4
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getNativeInterface()Landroid/media/IAudioManagerNative;

    move-result-object v1

    .line 2190
    .local v1, "_result":Landroid/media/IAudioManagerNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2192
    nop

    .line 4881
    .end local v1    # "_result":Landroid/media/IAudioManagerNative;
    :goto_14af
    return v13

    :pswitch_data_14b0
    .packed-switch 0x1
        :pswitch_14a4
        :pswitch_148e
        :pswitch_147b
        :pswitch_1468
        :pswitch_145d
        :pswitch_144b
        :pswitch_143c
        :pswitch_1430
        :pswitch_1420
        :pswitch_1408
        :pswitch_1400
        :pswitch_13e5
        :pswitch_13c5
        :pswitch_13aa
        :pswitch_138a
        :pswitch_136b
        :pswitch_1348
        :pswitch_132c
        :pswitch_1319
        :pswitch_1306
        :pswitch_12fa
        :pswitch_12da
        :pswitch_12c7
        :pswitch_12b4
        :pswitch_12a1
        :pswitch_1295
        :pswitch_1275
        :pswitch_1262
        :pswitch_124f
        :pswitch_123c
        :pswitch_1229
        :pswitch_1216
        :pswitch_11fb
        :pswitch_11e8
        :pswitch_11d9
        :pswitch_11cd
        :pswitch_11c1
        :pswitch_11b5
        :pswitch_11a9
        :pswitch_1196
        :pswitch_117b
        :pswitch_1164
        :pswitch_114d
        :pswitch_1141
        :pswitch_1135
        :pswitch_111e
        :pswitch_1112
        :pswitch_10ff
        :pswitch_10ec
        :pswitch_10e0
        :pswitch_10d4
        :pswitch_10c1
        :pswitch_10ae
        :pswitch_109b
        :pswitch_1088
        :pswitch_1071
        :pswitch_1065
        :pswitch_1055
        :pswitch_1045
        :pswitch_1039
        :pswitch_1034
        :pswitch_102f
        :pswitch_1023
        :pswitch_1017
        :pswitch_1000
        :pswitch_fed
        :pswitch_fda
        :pswitch_fc7
        :pswitch_fac
        :pswitch_fa0
        :pswitch_f91
        :pswitch_f82
        :pswitch_f73
        :pswitch_f67
        :pswitch_f58
        :pswitch_f4c
        :pswitch_f47
        :pswitch_f20
        :pswitch_f11
        :pswitch_f05
        :pswitch_eea
        :pswitch_ed3
        :pswitch_ebc
        :pswitch_ea9
        :pswitch_e96
        :pswitch_e8a
        :pswitch_e7e
        :pswitch_e72
        :pswitch_e5f
        :pswitch_e53
        :pswitch_e3c
        :pswitch_e2d
        :pswitch_e12
        :pswitch_dfb
        :pswitch_def
        :pswitch_ddc
        :pswitch_dd0
        :pswitch_db9
        :pswitch_dad
        :pswitch_d9a
        :pswitch_d87
        :pswitch_d74
        :pswitch_d65
        :pswitch_d59
        :pswitch_d4d
        :pswitch_d41
        :pswitch_d35
        :pswitch_d29
        :pswitch_d1d
        :pswitch_d11
        :pswitch_d05
        :pswitch_cf9
        :pswitch_ced
        :pswitch_ce1
        :pswitch_cca
        :pswitch_cb7
        :pswitch_ca4
        :pswitch_c91
        :pswitch_c85
        :pswitch_c45
        :pswitch_c35
        :pswitch_c29
        :pswitch_c16
        :pswitch_bf7
        :pswitch_bd8
        :pswitch_bb1
        :pswitch_b96
        :pswitch_b83
        :pswitch_b77
        :pswitch_b6b
        :pswitch_b58
        :pswitch_b48
        :pswitch_b3c
        :pswitch_b29
        :pswitch_b19
        :pswitch_b0d
        :pswitch_af2
        :pswitch_acf
        :pswitch_a9d
        :pswitch_a8d
        :pswitch_a6a
        :pswitch_a4e
        :pswitch_a3b
        :pswitch_a2b
        :pswitch_a1f
        :pswitch_a0c
        :pswitch_9fc
        :pswitch_9d9
        :pswitch_9be
        :pswitch_99b
        :pswitch_980
        :pswitch_969
        :pswitch_95d
        :pswitch_944
        :pswitch_931
        :pswitch_91e
        :pswitch_903
        :pswitch_8e8
        :pswitch_8d5
        :pswitch_8be
        :pswitch_8a7
        :pswitch_88c
        :pswitch_87c
        :pswitch_869
        :pswitch_85d
        :pswitch_84a
        :pswitch_83a
        :pswitch_827
        :pswitch_817
        :pswitch_80b
        :pswitch_7f0
        :pswitch_7d9
        :pswitch_7cd
        :pswitch_7b4
        :pswitch_7a1
        :pswitch_78e
        :pswitch_77b
        :pswitch_76b
        :pswitch_73d
        :pswitch_70f
        :pswitch_6e2
        :pswitch_6d2
        :pswitch_6be
        :pswitch_6ab
        :pswitch_698
        :pswitch_68c
        :pswitch_66d
        :pswitch_661
        :pswitch_64e
        :pswitch_63e
        :pswitch_632
        :pswitch_626
        :pswitch_61a
        :pswitch_60e
        :pswitch_5f3
        :pswitch_5dc
        :pswitch_5c5
        :pswitch_5c0
        :pswitch_599
        :pswitch_582
        :pswitch_576
        :pswitch_56a
        :pswitch_55e
        :pswitch_547
        :pswitch_534
        :pswitch_521
        :pswitch_511
        :pswitch_505
        :pswitch_4f9
        :pswitch_4ed
        :pswitch_4d6
        :pswitch_4bf
        :pswitch_4a8
        :pswitch_491
        :pswitch_485
        :pswitch_46e
        :pswitch_45f
        :pswitch_440
        :pswitch_434
        :pswitch_421
        :pswitch_40e
        :pswitch_3fb
        :pswitch_3e8
        :pswitch_3d5
        :pswitch_3c2
        :pswitch_3b6
        :pswitch_3a3
        :pswitch_390
        :pswitch_381
        :pswitch_375
        :pswitch_369
        :pswitch_35d
        :pswitch_351
        :pswitch_34c
        :pswitch_339
        :pswitch_323
        :pswitch_317
        :pswitch_304
        :pswitch_2f1
        :pswitch_2e5
        :pswitch_2d9
        :pswitch_2cd
        :pswitch_2b5
        :pswitch_2a5
        :pswitch_299
        :pswitch_282
        :pswitch_26b
        :pswitch_254
        :pswitch_248
        :pswitch_230
        :pswitch_211
        :pswitch_202
        :pswitch_1f3
        :pswitch_1e4
        :pswitch_1d8
        :pswitch_1cc
        :pswitch_19a
        :pswitch_18e
        :pswitch_16b
        :pswitch_150
        :pswitch_13d
        :pswitch_12d
        :pswitch_121
        :pswitch_112
        :pswitch_106
        :pswitch_f3
        :pswitch_e0
        :pswitch_d1
        :pswitch_c2
        :pswitch_a7
        :pswitch_90
        :pswitch_79
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist recenterHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10107
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10108
    return-void
.end method

.method protected blacklist registerHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10057
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10058
    return-void
.end method

.method protected blacklist registerMuteAwaitConnectionDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10151
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10152
    return-void
.end method

.method protected blacklist registerSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10047
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10048
    return-void
.end method

.method protected blacklist registerSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10127
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10128
    return-void
.end method

.method protected blacklist registerStreamAliasingDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9719
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9720
    return-void
.end method

.method protected blacklist removeAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10178
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10179
    return-void
.end method

.method protected blacklist removeDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9882
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9883
    return-void
.end method

.method protected blacklist removePreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9867
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9868
    return-void
.end method

.method protected blacklist removeSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10077
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10078
    return-void
.end method

.method protected blacklist sendFocusLossAndUpdate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10163
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10164
    return-void
.end method

.method protected blacklist sendFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10168
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10169
    return-void
.end method

.method protected blacklist setA2dpSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9648
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9649
    return-void
.end method

.method protected blacklist setActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10183
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10184
    return-void
.end method

.method protected blacklist setBluetoothAudioDeviceCategory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9799
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9800
    return-void
.end method

.method protected blacklist setBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10209
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10210
    return-void
.end method

.method protected blacklist setCsdAsAFeatureEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9794
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9795
    return-void
.end method

.method protected blacklist setCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9764
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9765
    return-void
.end method

.method protected blacklist setDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10082
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10083
    return-void
.end method

.method protected blacklist setDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9877
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9878
    return-void
.end method

.method protected blacklist setDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9909
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9910
    return-void
.end method

.method protected blacklist setDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9502
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9503
    return-void
.end method

.method protected blacklist setEnableHardening_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10246
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10247
    return-void
.end method

.method protected blacklist setEncodedSurroundMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9639
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9640
    return-void
.end method

.method protected blacklist setFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10226
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10227
    return-void
.end method

.method protected blacklist setHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10026
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10027
    return-void
.end method

.method protected blacklist setInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9594
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9595
    return-void
.end method

.method protected blacklist setLeAudioSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9653
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9654
    return-void
.end method

.method protected blacklist setMasterMute_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9517
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9518
    return-void
.end method

.method protected blacklist setMultiAudioFocusEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9920
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9921
    return-void
.end method

.method protected blacklist setNotifAliasRingForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9724
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9725
    return-void
.end method

.method protected blacklist setOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9754
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9755
    return-void
.end method

.method protected blacklist setPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9862
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9863
    return-void
.end method

.method protected blacklist setRingtonePlayer_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9697
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMOTE_AUDIO_PLAYBACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9698
    return-void
.end method

.method protected blacklist setSpatializerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10038
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10039
    return-void
.end method

.method protected blacklist setSpatializerGlobalTransform_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10102
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10103
    return-void
.end method

.method protected blacklist setSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10112
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10113
    return-void
.end method

.method protected blacklist setSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9567
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9568
    return-void
.end method

.method protected blacklist setVolumeControllerLongPressTimeoutEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9739
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9740
    return-void
.end method

.method protected blacklist setVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9532
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9533
    return-void
.end method

.method protected blacklist setWiredDeviceConnectionState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9729
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9730
    return-void
.end method

.method protected blacklist shouldNotificationSoundPlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10241
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10242
    return-void
.end method

.method protected blacklist supportsBluetoothVariableLatency_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10204
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10205
    return-void
.end method

.method protected blacklist unregisterHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10062
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10063
    return-void
.end method

.method protected blacklist unregisterSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10052
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10053
    return-void
.end method

.method protected blacklist unregisterSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10132
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10133
    return-void
.end method

.method protected blacklist updateMixingRulesForPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9822
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9823
    return-void
.end method
