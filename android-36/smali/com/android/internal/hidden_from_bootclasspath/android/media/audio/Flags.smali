.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags; = null

.field public static final blacklist FLAG_AUTOMATIC_BT_DEVICE_TYPE:Ljava/lang/String; = "android.media.audio.automatic_bt_device_type"

.field public static final blacklist FLAG_AUTO_PUBLIC_VOLUME_API_HARDENING:Ljava/lang/String; = "android.media.audio.auto_public_volume_api_hardening"

.field public static final blacklist FLAG_CACHE_GET_STREAM_MIN_MAX_VOLUME:Ljava/lang/String; = "android.media.audio.cache_get_stream_min_max_volume"

.field public static final blacklist FLAG_CACHE_GET_STREAM_VOLUME:Ljava/lang/String; = "android.media.audio.cache_get_stream_volume"

.field public static final blacklist FLAG_CONCURRENT_AUDIO_RECORD_BYPASS_PERMISSION:Ljava/lang/String; = "android.media.audio.concurrent_audio_record_bypass_permission"

.field public static final blacklist FLAG_DEPRECATE_STREAM_BT_SCO:Ljava/lang/String; = "android.media.audio.deprecate_stream_bt_sco"

.field public static final blacklist FLAG_DOLBY_AC4_LEVEL4_ENCODING_API:Ljava/lang/String; = "android.media.audio.dolby_ac4_level4_encoding_api"

.field public static final blacklist FLAG_ENABLE_MULTICHANNEL_GROUP_DEVICE:Ljava/lang/String; = "android.media.audio.enable_multichannel_group_device"

.field public static final blacklist FLAG_ENABLE_RINGTONE_HAPTICS_CUSTOMIZATION:Ljava/lang/String; = "android.media.audio.enable_ringtone_haptics_customization"

.field public static final blacklist FLAG_FEATURE_SPATIAL_AUDIO_HEADTRACKING_LOW_LATENCY:Ljava/lang/String; = "android.media.audio.feature_spatial_audio_headtracking_low_latency"

.field public static final blacklist FLAG_FOCUS_EXCLUSIVE_WITH_RECORDING:Ljava/lang/String; = "android.media.audio.focus_exclusive_with_recording"

.field public static final blacklist FLAG_FOCUS_FREEZE_TEST_API:Ljava/lang/String; = "android.media.audio.focus_freeze_test_api"

.field public static final blacklist FLAG_FOREGROUND_AUDIO_CONTROL:Ljava/lang/String; = "android.media.audio.foreground_audio_control"

.field public static final blacklist FLAG_HARDENING_PERMISSION_API:Ljava/lang/String; = "android.media.audio.hardening_permission_api"

.field public static final blacklist FLAG_HARDENING_PERMISSION_SPA:Ljava/lang/String; = "android.media.audio.hardening_permission_spa"

.field public static final blacklist FLAG_IAMF_DEFINITIONS_API:Ljava/lang/String; = "android.media.audio.iamf_definitions_api"

.field public static final blacklist FLAG_LOUDNESS_CONFIGURATOR_API:Ljava/lang/String; = "android.media.audio.loudness_configurator_api"

.field public static final blacklist FLAG_MUTED_BY_PORT_VOLUME_API:Ljava/lang/String; = "android.media.audio.muted_by_port_volume_api"

.field public static final blacklist FLAG_MUTE_BACKGROUND_AUDIO:Ljava/lang/String; = "android.media.audio.mute_background_audio"

.field public static final blacklist FLAG_REGISTER_VOLUME_CALLBACK_API_HARDENING:Ljava/lang/String; = "android.media.audio.register_volume_callback_api_hardening"

.field public static final blacklist FLAG_RINGTONE_USER_URI_CHECK:Ljava/lang/String; = "android.media.audio.ringtone_user_uri_check"

.field public static final blacklist FLAG_ROUTED_DEVICE_IDS:Ljava/lang/String; = "android.media.audio.routed_device_ids"

.field public static final blacklist FLAG_RO_FOREGROUND_AUDIO_CONTROL:Ljava/lang/String; = "android.media.audio.ro_foreground_audio_control"

.field public static final blacklist FLAG_RO_VOLUME_RINGER_API_HARDENING:Ljava/lang/String; = "android.media.audio.ro_volume_ringer_api_hardening"

.field public static final blacklist FLAG_SCO_MANAGED_BY_AUDIO:Ljava/lang/String; = "android.media.audio.sco_managed_by_audio"

.field public static final blacklist FLAG_SONY_360RA_MPEGH_3D_FORMAT:Ljava/lang/String; = "android.media.audio.sony_360ra_mpegh_3d_format"

.field public static final blacklist FLAG_SPATIALIZER_CAPABILITIES:Ljava/lang/String; = "android.media.audio.spatializer_capabilities"

.field public static final blacklist FLAG_SPATIAL_AUDIO_SETTINGS_VERSIONING:Ljava/lang/String; = "android.media.audio.spatial_audio_settings_versioning"

.field public static final blacklist FLAG_SPEAKER_CLEANUP_USAGE:Ljava/lang/String; = "android.media.audio.speaker_cleanup_usage"

.field public static final blacklist FLAG_SPEAKER_LAYOUT_API:Ljava/lang/String; = "android.media.audio.speaker_layout_api"

.field public static final blacklist FLAG_SUPPORTED_DEVICE_TYPES_API:Ljava/lang/String; = "android.media.audio.supported_device_types_api"

.field public static final blacklist FLAG_UNIFY_ABSOLUTE_VOLUME_MANAGEMENT:Ljava/lang/String; = "android.media.audio.unify_absolute_volume_management"

.field public static final blacklist FLAG_VOLUME_RINGER_API_HARDENING:Ljava/lang/String; = "android.media.audio.volume_ringer_api_hardening"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 305
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist autoPublicVolumeApiHardening()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->autoPublicVolumeApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist automaticBtDeviceType()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->automaticBtDeviceType()Z

    move-result v0

    return v0
.end method

.method public static blacklist cacheGetStreamMinMaxVolume()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->cacheGetStreamMinMaxVolume()Z

    move-result v0

    return v0
.end method

.method public static blacklist cacheGetStreamVolume()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->cacheGetStreamVolume()Z

    move-result v0

    return v0
.end method

.method public static blacklist concurrentAudioRecordBypassPermission()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->concurrentAudioRecordBypassPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateStreamBtSco()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->deprecateStreamBtSco()Z

    move-result v0

    return v0
.end method

.method public static blacklist dolbyAc4Level4EncodingApi()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->dolbyAc4Level4EncodingApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMultichannelGroupDevice()Z
    .registers 1

    .line 127
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->enableMultichannelGroupDevice()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRingtoneHapticsCustomization()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    return v0
.end method

.method public static blacklist featureSpatialAudioHeadtrackingLowLatency()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->featureSpatialAudioHeadtrackingLowLatency()Z

    move-result v0

    return v0
.end method

.method public static blacklist focusExclusiveWithRecording()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->focusExclusiveWithRecording()Z

    move-result v0

    return v0
.end method

.method public static blacklist focusFreezeTestApi()Z
    .registers 1

    .line 155
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->focusFreezeTestApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist foregroundAudioControl()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->foregroundAudioControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist hardeningPermissionApi()Z
    .registers 1

    .line 169
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->hardeningPermissionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist hardeningPermissionSpa()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->hardeningPermissionSpa()Z

    move-result v0

    return v0
.end method

.method public static blacklist iamfDefinitionsApi()Z
    .registers 1

    .line 183
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->iamfDefinitionsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist loudnessConfiguratorApi()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->loudnessConfiguratorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist muteBackgroundAudio()Z
    .registers 1

    .line 197
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->muteBackgroundAudio()Z

    move-result v0

    return v0
.end method

.method public static blacklist mutedByPortVolumeApi()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->mutedByPortVolumeApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerVolumeCallbackApiHardening()Z
    .registers 1

    .line 211
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->registerVolumeCallbackApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist ringtoneUserUriCheck()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->ringtoneUserUriCheck()Z

    move-result v0

    return v0
.end method

.method public static blacklist roForegroundAudioControl()Z
    .registers 1

    .line 225
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->roForegroundAudioControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist roVolumeRingerApiHardening()Z
    .registers 1

    .line 232
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->roVolumeRingerApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist routedDeviceIds()Z
    .registers 1

    .line 239
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->routedDeviceIds()Z

    move-result v0

    return v0
.end method

.method public static blacklist scoManagedByAudio()Z
    .registers 1

    .line 246
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->scoManagedByAudio()Z

    move-result v0

    return v0
.end method

.method public static blacklist sony360raMpegh3dFormat()Z
    .registers 1

    .line 253
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->sony360raMpegh3dFormat()Z

    move-result v0

    return v0
.end method

.method public static blacklist spatialAudioSettingsVersioning()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->spatialAudioSettingsVersioning()Z

    move-result v0

    return v0
.end method

.method public static blacklist spatializerCapabilities()Z
    .registers 1

    .line 267
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->spatializerCapabilities()Z

    move-result v0

    return v0
.end method

.method public static blacklist speakerCleanupUsage()Z
    .registers 1

    .line 274
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->speakerCleanupUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist speakerLayoutApi()Z
    .registers 1

    .line 281
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->speakerLayoutApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportedDeviceTypesApi()Z
    .registers 1

    .line 288
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->supportedDeviceTypesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist unifyAbsoluteVolumeManagement()Z
    .registers 1

    .line 295
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->unifyAbsoluteVolumeManagement()Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeRingerApiHardening()Z
    .registers 1

    .line 302
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->volumeRingerApiHardening()Z

    move-result v0

    return v0
.end method
