.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADOPT_PRIMARY_GROUP_MANAGEMENT_API:Ljava/lang/String; = "com.android.settingslib.flags.adopt_primary_group_management_api"

.field public static final blacklist FLAG_ADOPT_PRIMARY_GROUP_MANAGEMENT_API_V2:Ljava/lang/String; = "com.android.settingslib.flags.adopt_primary_group_management_api_v2"

.field public static final blacklist FLAG_ASHA_PROFILE_ACCESS_PROFILE_ENABLED_TRUE:Ljava/lang/String; = "com.android.settingslib.flags.asha_profile_access_profile_enabled_true"

.field public static final blacklist FLAG_AUDIO_SHARING_DEVELOPER_OPTION:Ljava/lang/String; = "com.android.settingslib.flags.audio_sharing_developer_option"

.field public static final blacklist FLAG_AUDIO_SHARING_HYSTERESIS_MODE_FIX:Ljava/lang/String; = "com.android.settingslib.flags.audio_sharing_hysteresis_mode_fix"

.field public static final blacklist FLAG_AUDIO_SHARING_QS_DIALOG_IMPROVEMENT:Ljava/lang/String; = "com.android.settingslib.flags.audio_sharing_qs_dialog_improvement"

.field public static final blacklist FLAG_AUDIO_STREAM_MEDIA_SERVICE_BY_RECEIVE_STATE:Ljava/lang/String; = "com.android.settingslib.flags.audio_stream_media_service_by_receive_state"

.field public static final blacklist FLAG_BLUETOOTH_QS_TILE_DIALOG_AUTO_ON_TOGGLE:Ljava/lang/String; = "com.android.settingslib.flags.bluetooth_qs_tile_dialog_auto_on_toggle"

.field public static final blacklist FLAG_DISABLE_AUDIO_SHARING_AUTO_PICK_FALLBACK_IN_UI:Ljava/lang/String; = "com.android.settingslib.flags.disable_audio_sharing_auto_pick_fallback_in_ui"

.field public static final blacklist FLAG_ENABLE_DETERMINING_ADVANCED_DETAILS_HEADER_WITH_METADATA:Ljava/lang/String; = "com.android.settingslib.flags.enable_determining_advanced_details_header_with_metadata"

.field public static final blacklist FLAG_ENABLE_DETERMINING_SPATIAL_AUDIO_ATTRIBUTES_BY_PROFILE:Ljava/lang/String; = "com.android.settingslib.flags.enable_determining_spatial_audio_attributes_by_profile"

.field public static final blacklist FLAG_ENABLE_LE_AUDIO_QR_CODE_PRIVATE_BROADCAST_SHARING:Ljava/lang/String; = "com.android.settingslib.flags.enable_le_audio_qr_code_private_broadcast_sharing"

.field public static final blacklist FLAG_ENABLE_LE_AUDIO_SHARING:Ljava/lang/String; = "com.android.settingslib.flags.enable_le_audio_sharing"

.field public static final blacklist FLAG_ENABLE_TEMPORARY_BOND_DEVICES_UI:Ljava/lang/String; = "com.android.settingslib.flags.enable_temporary_bond_devices_ui"

.field public static final blacklist FLAG_EXTREME_POWER_LOW_STATE_VULNERABILITY:Ljava/lang/String; = "com.android.settingslib.flags.extreme_power_low_state_vulnerability"

.field public static final blacklist FLAG_HEARING_DEVICES_AMBIENT_VOLUME_CONTROL:Ljava/lang/String; = "com.android.settingslib.flags.hearing_devices_ambient_volume_control"

.field public static final blacklist FLAG_HEARING_DEVICES_INPUT_ROUTING_CONTROL:Ljava/lang/String; = "com.android.settingslib.flags.hearing_devices_input_routing_control"

.field public static final blacklist FLAG_HEARING_DEVICE_SET_CONNECTION_STATUS_REPORT:Ljava/lang/String; = "com.android.settingslib.flags.hearing_device_set_connection_status_report"

.field public static final blacklist FLAG_IGNORE_A2DP_DISCONNECTION_FOR_ANDROID_AUTO:Ljava/lang/String; = "com.android.settingslib.flags.ignore_a2dp_disconnection_for_android_auto"

.field public static final blacklist FLAG_LEGACY_LE_AUDIO_SHARING:Ljava/lang/String; = "com.android.settingslib.flags.legacy_le_audio_sharing"

.field public static final blacklist FLAG_MEMBER_DEVICE_LEA_ACTIVE_STATE_SYNC_FIX:Ljava/lang/String; = "com.android.settingslib.flags.member_device_lea_active_state_sync_fix"

.field public static final blacklist FLAG_NEW_STATUS_BAR_ICONS:Ljava/lang/String; = "com.android.settingslib.flags.new_status_bar_icons"

.field public static final blacklist FLAG_PROMOTE_AUDIO_SHARING_FOR_SECOND_AUTO_CONNECTED_LEA_DEVICE:Ljava/lang/String; = "com.android.settingslib.flags.promote_audio_sharing_for_second_auto_connected_lea_device"

.field public static final blacklist FLAG_SETTINGS_CATALYST:Ljava/lang/String; = "com.android.settingslib.flags.settings_catalyst"

.field public static final blacklist FLAG_SETTINGS_PREFERENCE_WRITE_CONSENT_ENABLED:Ljava/lang/String; = "com.android.settingslib.flags.settings_preference_write_consent_enabled"

.field public static final blacklist FLAG_VOLUME_DIALOG_AUDIO_SHARING_FIX:Ljava/lang/String; = "com.android.settingslib.flags.volume_dialog_audio_sharing_fix"

.field public static final blacklist FLAG_WRITE_SYSTEM_PREFERENCE_PERMISSION_ENABLED:Ljava/lang/String; = "com.android.settingslib.flags.write_system_preference_permission_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adoptPrimaryGroupManagementApi()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->adoptPrimaryGroupManagementApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist adoptPrimaryGroupManagementApiV2()Z
    .registers 1

    .line 73
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->adoptPrimaryGroupManagementApiV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist ashaProfileAccessProfileEnabledTrue()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->ashaProfileAccessProfileEnabledTrue()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioSharingDeveloperOption()Z
    .registers 1

    .line 87
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->audioSharingDeveloperOption()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioSharingHysteresisModeFix()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->audioSharingHysteresisModeFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioSharingQsDialogImprovement()Z
    .registers 1

    .line 101
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->audioSharingQsDialogImprovement()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioStreamMediaServiceByReceiveState()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->audioStreamMediaServiceByReceiveState()Z

    move-result v0

    return v0
.end method

.method public static blacklist bluetoothQsTileDialogAutoOnToggle()Z
    .registers 1

    .line 115
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->bluetoothQsTileDialogAutoOnToggle()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableAudioSharingAutoPickFallbackInUi()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->disableAudioSharingAutoPickFallbackInUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDeterminingAdvancedDetailsHeaderWithMetadata()Z
    .registers 1

    .line 129
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->enableDeterminingAdvancedDetailsHeaderWithMetadata()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDeterminingSpatialAudioAttributesByProfile()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->enableDeterminingSpatialAudioAttributesByProfile()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLeAudioQrCodePrivateBroadcastSharing()Z
    .registers 1

    .line 143
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->enableLeAudioQrCodePrivateBroadcastSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLeAudioSharing()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->enableLeAudioSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTemporaryBondDevicesUi()Z
    .registers 1

    .line 157
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->enableTemporaryBondDevicesUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist extremePowerLowStateVulnerability()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->extremePowerLowStateVulnerability()Z

    move-result v0

    return v0
.end method

.method public static blacklist hearingDeviceSetConnectionStatusReport()Z
    .registers 1

    .line 171
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->hearingDeviceSetConnectionStatusReport()Z

    move-result v0

    return v0
.end method

.method public static blacklist hearingDevicesAmbientVolumeControl()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->hearingDevicesAmbientVolumeControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist hearingDevicesInputRoutingControl()Z
    .registers 1

    .line 185
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->hearingDevicesInputRoutingControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreA2dpDisconnectionForAndroidAuto()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->ignoreA2dpDisconnectionForAndroidAuto()Z

    move-result v0

    return v0
.end method

.method public static blacklist legacyLeAudioSharing()Z
    .registers 1

    .line 199
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->legacyLeAudioSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist memberDeviceLeaActiveStateSyncFix()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->memberDeviceLeaActiveStateSyncFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist newStatusBarIcons()Z
    .registers 1

    .line 213
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->newStatusBarIcons()Z

    move-result v0

    return v0
.end method

.method public static blacklist promoteAudioSharingForSecondAutoConnectedLeaDevice()Z
    .registers 1

    .line 220
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->promoteAudioSharingForSecondAutoConnectedLeaDevice()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsCatalyst()Z
    .registers 1

    .line 227
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->settingsCatalyst()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsPreferenceWriteConsentEnabled()Z
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->settingsPreferenceWriteConsentEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeDialogAudioSharingFix()Z
    .registers 1

    .line 241
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->volumeDialogAudioSharingFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist writeSystemPreferencePermissionEnabled()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/FeatureFlags;->writeSystemPreferencePermissionEnabled()Z

    move-result v0

    return v0
.end method
