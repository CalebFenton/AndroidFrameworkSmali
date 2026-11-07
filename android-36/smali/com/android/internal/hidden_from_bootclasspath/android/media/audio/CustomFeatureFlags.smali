.class public Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v1, Ljava/util/HashSet;

    const-string v34, "android.media.audio.volume_ringer_api_hardening"

    const-string v35, ""

    const-string v2, "android.media.audio.auto_public_volume_api_hardening"

    const-string v3, "android.media.audio.automatic_bt_device_type"

    const-string v4, "android.media.audio.cache_get_stream_min_max_volume"

    const-string v5, "android.media.audio.cache_get_stream_volume"

    const-string v6, "android.media.audio.concurrent_audio_record_bypass_permission"

    const-string v7, "android.media.audio.deprecate_stream_bt_sco"

    const-string v8, "android.media.audio.dolby_ac4_level4_encoding_api"

    const-string v9, "android.media.audio.enable_multichannel_group_device"

    const-string v10, "android.media.audio.enable_ringtone_haptics_customization"

    const-string v11, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v12, "android.media.audio.focus_exclusive_with_recording"

    const-string v13, "android.media.audio.focus_freeze_test_api"

    const-string v14, "android.media.audio.foreground_audio_control"

    const-string v15, "android.media.audio.hardening_permission_api"

    const-string v16, "android.media.audio.hardening_permission_spa"

    const-string v17, "android.media.audio.iamf_definitions_api"

    const-string v18, "android.media.audio.loudness_configurator_api"

    const-string v19, "android.media.audio.mute_background_audio"

    const-string v20, "android.media.audio.muted_by_port_volume_api"

    const-string v21, "android.media.audio.register_volume_callback_api_hardening"

    const-string v22, "android.media.audio.ringtone_user_uri_check"

    const-string v23, "android.media.audio.ro_foreground_audio_control"

    const-string v24, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v25, "android.media.audio.routed_device_ids"

    const-string v26, "android.media.audio.sco_managed_by_audio"

    const-string v27, "android.media.audio.sony_360ra_mpegh_3d_format"

    const-string v28, "android.media.audio.spatial_audio_settings_versioning"

    const-string v29, "android.media.audio.spatializer_capabilities"

    const-string v30, "android.media.audio.speaker_cleanup_usage"

    const-string v31, "android.media.audio.speaker_layout_api"

    const-string v32, "android.media.audio.supported_device_types_api"

    const-string v33, "android.media.audio.unify_absolute_volume_management"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 260
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist autoPublicVolumeApiHardening()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.audio.auto_public_volume_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist automaticBtDeviceType()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.media.audio.automatic_bt_device_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheGetStreamMinMaxVolume()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.media.audio.cache_get_stream_min_max_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheGetStreamVolume()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.media.audio.cache_get_stream_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist concurrentAudioRecordBypassPermission()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.media.audio.concurrent_audio_record_bypass_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateStreamBtSco()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.media.audio.deprecate_stream_bt_sco"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dolbyAc4Level4EncodingApi()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.media.audio.dolby_ac4_level4_encoding_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultichannelGroupDevice()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.audio.enable_multichannel_group_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRingtoneHapticsCustomization()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.media.audio.enable_ringtone_haptics_customization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist featureSpatialAudioHeadtrackingLowLatency()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist focusExclusiveWithRecording()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.media.audio.focus_exclusive_with_recording"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist focusFreezeTestApi()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.media.audio.focus_freeze_test_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist foregroundAudioControl()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.media.audio.foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    const-string v32, "android.media.audio.unify_absolute_volume_management"

    const-string v33, "android.media.audio.volume_ringer_api_hardening"

    const-string v1, "android.media.audio.auto_public_volume_api_hardening"

    const-string v2, "android.media.audio.automatic_bt_device_type"

    const-string v3, "android.media.audio.cache_get_stream_min_max_volume"

    const-string v4, "android.media.audio.cache_get_stream_volume"

    const-string v5, "android.media.audio.concurrent_audio_record_bypass_permission"

    const-string v6, "android.media.audio.deprecate_stream_bt_sco"

    const-string v7, "android.media.audio.dolby_ac4_level4_encoding_api"

    const-string v8, "android.media.audio.enable_multichannel_group_device"

    const-string v9, "android.media.audio.enable_ringtone_haptics_customization"

    const-string v10, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v11, "android.media.audio.focus_exclusive_with_recording"

    const-string v12, "android.media.audio.focus_freeze_test_api"

    const-string v13, "android.media.audio.foreground_audio_control"

    const-string v14, "android.media.audio.hardening_permission_api"

    const-string v15, "android.media.audio.hardening_permission_spa"

    const-string v16, "android.media.audio.iamf_definitions_api"

    const-string v17, "android.media.audio.loudness_configurator_api"

    const-string v18, "android.media.audio.mute_background_audio"

    const-string v19, "android.media.audio.muted_by_port_volume_api"

    const-string v20, "android.media.audio.register_volume_callback_api_hardening"

    const-string v21, "android.media.audio.ringtone_user_uri_check"

    const-string v22, "android.media.audio.ro_foreground_audio_control"

    const-string v23, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v24, "android.media.audio.routed_device_ids"

    const-string v25, "android.media.audio.sco_managed_by_audio"

    const-string v26, "android.media.audio.sony_360ra_mpegh_3d_format"

    const-string v27, "android.media.audio.spatial_audio_settings_versioning"

    const-string v28, "android.media.audio.spatializer_capabilities"

    const-string v29, "android.media.audio.speaker_cleanup_usage"

    const-string v30, "android.media.audio.speaker_layout_api"

    const-string v31, "android.media.audio.supported_device_types_api"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 264
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hardeningPermissionApi()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.media.audio.hardening_permission_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hardeningPermissionSpa()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.media.audio.hardening_permission_spa"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist iamfDefinitionsApi()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.media.audio.iamf_definitions_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loudnessConfiguratorApi()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.audio.loudness_configurator_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist muteBackgroundAudio()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.media.audio.mute_background_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mutedByPortVolumeApi()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.media.audio.muted_by_port_volume_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerVolumeCallbackApiHardening()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.audio.register_volume_callback_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ringtoneUserUriCheck()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.media.audio.ringtone_user_uri_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist roForegroundAudioControl()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.media.audio.ro_foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist roVolumeRingerApiHardening()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.media.audio.ro_volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist routedDeviceIds()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.audio.routed_device_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scoManagedByAudio()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.audio.sco_managed_by_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sony360raMpegh3dFormat()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.media.audio.sony_360ra_mpegh_3d_format"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist spatialAudioSettingsVersioning()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.media.audio.spatial_audio_settings_versioning"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist spatializerCapabilities()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.media.audio.spatializer_capabilities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist speakerCleanupUsage()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.audio.speaker_cleanup_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist speakerLayoutApi()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.media.audio.speaker_layout_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportedDeviceTypesApi()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.media.audio.supported_device_types_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unifyAbsoluteVolumeManagement()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.media.audio.unify_absolute_volume_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist volumeRingerApiHardening()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.media.audio.volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
