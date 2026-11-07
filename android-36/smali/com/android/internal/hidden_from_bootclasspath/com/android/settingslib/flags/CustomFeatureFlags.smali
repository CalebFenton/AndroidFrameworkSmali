.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;",
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
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v1, Ljava/util/HashSet;

    const-string v28, "com.android.settingslib.flags.write_system_preference_permission_enabled"

    const-string v29, ""

    const-string v2, "com.android.settingslib.flags.adopt_primary_group_management_api"

    const-string v3, "com.android.settingslib.flags.adopt_primary_group_management_api_v2"

    const-string v4, "com.android.settingslib.flags.asha_profile_access_profile_enabled_true"

    const-string v5, "com.android.settingslib.flags.audio_sharing_developer_option"

    const-string v6, "com.android.settingslib.flags.audio_sharing_hysteresis_mode_fix"

    const-string v7, "com.android.settingslib.flags.audio_sharing_qs_dialog_improvement"

    const-string v8, "com.android.settingslib.flags.audio_stream_media_service_by_receive_state"

    const-string v9, "com.android.settingslib.flags.bluetooth_qs_tile_dialog_auto_on_toggle"

    const-string v10, "com.android.settingslib.flags.disable_audio_sharing_auto_pick_fallback_in_ui"

    const-string v11, "com.android.settingslib.flags.enable_determining_advanced_details_header_with_metadata"

    const-string v12, "com.android.settingslib.flags.enable_determining_spatial_audio_attributes_by_profile"

    const-string v13, "com.android.settingslib.flags.enable_le_audio_qr_code_private_broadcast_sharing"

    const-string v14, "com.android.settingslib.flags.enable_le_audio_sharing"

    const-string v15, "com.android.settingslib.flags.enable_temporary_bond_devices_ui"

    const-string v16, "com.android.settingslib.flags.extreme_power_low_state_vulnerability"

    const-string v17, "com.android.settingslib.flags.hearing_device_set_connection_status_report"

    const-string v18, "com.android.settingslib.flags.hearing_devices_ambient_volume_control"

    const-string v19, "com.android.settingslib.flags.hearing_devices_input_routing_control"

    const-string v20, "com.android.settingslib.flags.ignore_a2dp_disconnection_for_android_auto"

    const-string v21, "com.android.settingslib.flags.legacy_le_audio_sharing"

    const-string v22, "com.android.settingslib.flags.member_device_lea_active_state_sync_fix"

    const-string v23, "com.android.settingslib.flags.new_status_bar_icons"

    const-string v24, "com.android.settingslib.flags.promote_audio_sharing_for_second_auto_connected_lea_device"

    const-string v25, "com.android.settingslib.flags.settings_catalyst"

    const-string v26, "com.android.settingslib.flags.settings_preference_write_consent_enabled"

    const-string v27, "com.android.settingslib.flags.volume_dialog_audio_sharing_fix"

    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist adoptPrimaryGroupManagementApi()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.settingslib.flags.adopt_primary_group_management_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adoptPrimaryGroupManagementApiV2()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.settingslib.flags.adopt_primary_group_management_api_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ashaProfileAccessProfileEnabledTrue()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.settingslib.flags.asha_profile_access_profile_enabled_true"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioSharingDeveloperOption()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.settingslib.flags.audio_sharing_developer_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioSharingHysteresisModeFix()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.settingslib.flags.audio_sharing_hysteresis_mode_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioSharingQsDialogImprovement()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.settingslib.flags.audio_sharing_qs_dialog_improvement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioStreamMediaServiceByReceiveState()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.settingslib.flags.audio_stream_media_service_by_receive_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bluetoothQsTileDialogAutoOnToggle()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.settingslib.flags.bluetooth_qs_tile_dialog_auto_on_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableAudioSharingAutoPickFallbackInUi()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.settingslib.flags.disable_audio_sharing_auto_pick_fallback_in_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeterminingAdvancedDetailsHeaderWithMetadata()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.settingslib.flags.enable_determining_advanced_details_header_with_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeterminingSpatialAudioAttributesByProfile()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.settingslib.flags.enable_determining_spatial_audio_attributes_by_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLeAudioQrCodePrivateBroadcastSharing()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.settingslib.flags.enable_le_audio_qr_code_private_broadcast_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLeAudioSharing()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.settingslib.flags.enable_le_audio_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTemporaryBondDevicesUi()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.settingslib.flags.enable_temporary_bond_devices_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist extremePowerLowStateVulnerability()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.settingslib.flags.extreme_power_low_state_vulnerability"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    const-string v26, "com.android.settingslib.flags.volume_dialog_audio_sharing_fix"

    const-string v27, "com.android.settingslib.flags.write_system_preference_permission_enabled"

    const-string v1, "com.android.settingslib.flags.adopt_primary_group_management_api"

    const-string v2, "com.android.settingslib.flags.adopt_primary_group_management_api_v2"

    const-string v3, "com.android.settingslib.flags.asha_profile_access_profile_enabled_true"

    const-string v4, "com.android.settingslib.flags.audio_sharing_developer_option"

    const-string v5, "com.android.settingslib.flags.audio_sharing_hysteresis_mode_fix"

    const-string v6, "com.android.settingslib.flags.audio_sharing_qs_dialog_improvement"

    const-string v7, "com.android.settingslib.flags.audio_stream_media_service_by_receive_state"

    const-string v8, "com.android.settingslib.flags.bluetooth_qs_tile_dialog_auto_on_toggle"

    const-string v9, "com.android.settingslib.flags.disable_audio_sharing_auto_pick_fallback_in_ui"

    const-string v10, "com.android.settingslib.flags.enable_determining_advanced_details_header_with_metadata"

    const-string v11, "com.android.settingslib.flags.enable_determining_spatial_audio_attributes_by_profile"

    const-string v12, "com.android.settingslib.flags.enable_le_audio_qr_code_private_broadcast_sharing"

    const-string v13, "com.android.settingslib.flags.enable_le_audio_sharing"

    const-string v14, "com.android.settingslib.flags.enable_temporary_bond_devices_ui"

    const-string v15, "com.android.settingslib.flags.extreme_power_low_state_vulnerability"

    const-string v16, "com.android.settingslib.flags.hearing_device_set_connection_status_report"

    const-string v17, "com.android.settingslib.flags.hearing_devices_ambient_volume_control"

    const-string v18, "com.android.settingslib.flags.hearing_devices_input_routing_control"

    const-string v19, "com.android.settingslib.flags.ignore_a2dp_disconnection_for_android_auto"

    const-string v20, "com.android.settingslib.flags.legacy_le_audio_sharing"

    const-string v21, "com.android.settingslib.flags.member_device_lea_active_state_sync_fix"

    const-string v22, "com.android.settingslib.flags.new_status_bar_icons"

    const-string v23, "com.android.settingslib.flags.promote_audio_sharing_for_second_auto_connected_lea_device"

    const-string v24, "com.android.settingslib.flags.settings_catalyst"

    const-string v25, "com.android.settingslib.flags.settings_preference_write_consent_enabled"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 222
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hearingDeviceSetConnectionStatusReport()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.settingslib.flags.hearing_device_set_connection_status_report"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hearingDevicesAmbientVolumeControl()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.settingslib.flags.hearing_devices_ambient_volume_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hearingDevicesInputRoutingControl()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.settingslib.flags.hearing_devices_input_routing_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreA2dpDisconnectionForAndroidAuto()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.settingslib.flags.ignore_a2dp_disconnection_for_android_auto"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 210
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 211
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist legacyLeAudioSharing()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settingslib.flags.legacy_le_audio_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist memberDeviceLeaActiveStateSyncFix()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.settingslib.flags.member_device_lea_active_state_sync_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist newStatusBarIcons()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settingslib.flags.new_status_bar_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist promoteAudioSharingForSecondAutoConnectedLeaDevice()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.settingslib.flags.promote_audio_sharing_for_second_auto_connected_lea_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist settingsCatalyst()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.settingslib.flags.settings_catalyst"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist settingsPreferenceWriteConsentEnabled()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.settingslib.flags.settings_preference_write_consent_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist volumeDialogAudioSharingFix()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.settingslib.flags.volume_dialog_audio_sharing_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist writeSystemPreferencePermissionEnabled()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.settingslib.flags.write_system_preference_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
