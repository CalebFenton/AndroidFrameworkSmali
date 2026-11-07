.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ACTIVITY_CONTROL_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.activity_control_api"

.field public static final blacklist FLAG_CAMERA_MULTIPLE_INPUT_STREAMS:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_multiple_input_streams"

.field public static final blacklist FLAG_CAMERA_TIMESTAMP_FROM_SURFACE:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

.field public static final blacklist FLAG_CORRECT_VIRTUAL_DISPLAY_POWER_STATE:Ljava/lang/String; = "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

.field public static final blacklist FLAG_DEFAULT_DEVICE_CAMERA_ACCESS_POLICY:Ljava/lang/String; = "android.companion.virtualdevice.flags.default_device_camera_access_policy"

.field public static final blacklist FLAG_DEVICE_AWARE_DISPLAY_POWER:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_display_power"

.field public static final blacklist FLAG_DEVICE_AWARE_SETTINGS_OVERRIDE:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_settings_override"

.field public static final blacklist FLAG_DISPLAY_POWER_MANAGER_APIS:Ljava/lang/String; = "android.companion.virtualdevice.flags.display_power_manager_apis"

.field public static final blacklist FLAG_ENABLE_LIMITED_VDM_ROLE:Ljava/lang/String; = "android.companion.virtualdevice.flags.enable_limited_vdm_role"

.field public static final blacklist FLAG_ENFORCE_REMOTE_DEVICE_OPT_OUT_ON_ALL_VIRTUAL_DISPLAYS:Ljava/lang/String; = "android.companion.virtualdevice.flags.enforce_remote_device_opt_out_on_all_virtual_displays"

.field public static final blacklist FLAG_EXTERNAL_VIRTUAL_CAMERAS:Ljava/lang/String; = "android.companion.virtualdevice.flags.external_virtual_cameras"

.field public static final blacklist FLAG_HIGH_RESOLUTION_SCROLL:Ljava/lang/String; = "android.companion.virtualdevice.flags.high_resolution_scroll"

.field public static final blacklist FLAG_MIGRATE_VIEWCONFIGURATION_CONSTANTS_TO_RESOURCES:Ljava/lang/String; = "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

.field public static final blacklist FLAG_NOTIFICATIONS_FOR_DEVICE_STREAMING:Ljava/lang/String; = "android.companion.virtualdevice.flags.notifications_for_device_streaming"

.field public static final blacklist FLAG_STATUS_BAR_AND_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.status_bar_and_insets"

.field public static final blacklist FLAG_VDM_SETTINGS:Ljava/lang/String; = "android.companion.virtualdevice.flags.vdm_settings"

.field public static final blacklist FLAG_VIEWCONFIGURATION_APIS:Ljava/lang/String; = "android.companion.virtualdevice.flags.viewconfiguration_apis"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_insets"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_ROTATION_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_rotation_api"

.field public static final blacklist FLAG_VIRTUAL_ROTARY:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_rotary"

.field public static final blacklist FLAG_VIRTUAL_SENSOR_ADDITIONAL_INFO:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_sensor_additional_info"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activityControlApi()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->activityControlApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraMultipleInputStreams()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraMultipleInputStreams()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraTimestampFromSurface()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraTimestampFromSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist correctVirtualDisplayPowerState()Z
    .registers 1

    .line 75
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->correctVirtualDisplayPowerState()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultDeviceCameraAccessPolicy()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->defaultDeviceCameraAccessPolicy()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareDisplayPower()Z
    .registers 1

    .line 89
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareDisplayPower()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareSettingsOverride()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareSettingsOverride()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayPowerManagerApis()Z
    .registers 1

    .line 103
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->displayPowerManagerApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLimitedVdmRole()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enableLimitedVdmRole()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceRemoteDeviceOptOutOnAllVirtualDisplays()Z
    .registers 1

    .line 117
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enforceRemoteDeviceOptOutOnAllVirtualDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist externalVirtualCameras()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->externalVirtualCameras()Z

    move-result v0

    return v0
.end method

.method public static blacklist highResolutionScroll()Z
    .registers 1

    .line 131
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->highResolutionScroll()Z

    move-result v0

    return v0
.end method

.method public static blacklist migrateViewconfigurationConstantsToResources()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationsForDeviceStreaming()Z
    .registers 1

    .line 145
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->notificationsForDeviceStreaming()Z

    move-result v0

    return v0
.end method

.method public static blacklist statusBarAndInsets()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->statusBarAndInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmSettings()Z
    .registers 1

    .line 159
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->vdmSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist viewconfigurationApis()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->viewconfigurationApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayInsets()Z
    .registers 1

    .line 173
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayRotationApi()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayRotationApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualRotary()Z
    .registers 1

    .line 187
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualRotary()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualSensorAdditionalInfo()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualSensorAdditionalInfo()Z

    move-result v0

    return v0
.end method
