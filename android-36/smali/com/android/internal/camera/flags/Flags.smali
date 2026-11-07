.class public final Lcom/android/internal/camera/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags; = null

.field public static final blacklist FLAG_AE_PRIORITY:Ljava/lang/String; = "com.android.internal.camera.flags.ae_priority"

.field public static final blacklist FLAG_ANALYTICS_24Q3:Ljava/lang/String; = "com.android.internal.camera.flags.analytics_24q3"

.field public static final blacklist FLAG_API1_RELEASE_BINDERLOCK_BEFORE_CAMERASERVICE_DISCONNECT:Ljava/lang/String; = "com.android.internal.camera.flags.api1_release_binderlock_before_cameraservice_disconnect"

.field public static final blacklist FLAG_BUMP_PREVIEW_FRAME_SPACE_PRIORITY:Ljava/lang/String; = "com.android.internal.camera.flags.bump_preview_frame_space_priority"

.field public static final blacklist FLAG_CAMERA_AE_MODE_LOW_LIGHT_BOOST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

.field public static final blacklist FLAG_CAMERA_DEVICE_SETUP:Ljava/lang/String; = "com.android.internal.camera.flags.camera_device_setup"

.field public static final blacklist FLAG_CAMERA_EXTENSIONS_CHARACTERISTICS_GET:Ljava/lang/String; = "com.android.internal.camera.flags.camera_extensions_characteristics_get"

.field public static final blacklist FLAG_CAMERA_HEIF_GAINMAP:Ljava/lang/String; = "com.android.internal.camera.flags.camera_heif_gainmap"

.field public static final blacklist FLAG_CAMERA_HSUM_PERMISSION:Ljava/lang/String; = "com.android.internal.camera.flags.camera_hsum_permission"

.field public static final blacklist FLAG_CAMERA_MANUAL_FLASH_STRENGTH_CONTROL:Ljava/lang/String; = "com.android.internal.camera.flags.camera_manual_flash_strength_control"

.field public static final blacklist FLAG_CAMERA_MULTI_CLIENT:Ljava/lang/String; = "com.android.internal.camera.flags.camera_multi_client"

.field public static final blacklist FLAG_CAMERA_PRIVACY_ALLOWLIST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_privacy_allowlist"

.field public static final blacklist FLAG_COLOR_TEMPERATURE:Ljava/lang/String; = "com.android.internal.camera.flags.color_temperature"

.field public static final blacklist FLAG_CONCERT_MODE:Ljava/lang/String; = "com.android.internal.camera.flags.concert_mode"

.field public static final blacklist FLAG_DATA_DELIVERY_PERMISSION_CHECKS:Ljava/lang/String; = "com.android.internal.camera.flags.data_delivery_permission_checks"

.field public static final blacklist FLAG_DEPTH_JPEG_EXTENSIONS:Ljava/lang/String; = "com.android.internal.camera.flags.depth_jpeg_extensions"

.field public static final blacklist FLAG_DESKTOP_EFFECTS:Ljava/lang/String; = "com.android.internal.camera.flags.desktop_effects"

.field public static final blacklist FLAG_DUMPSYS_REQUEST_STREAM_IDS:Ljava/lang/String; = "com.android.internal.camera.flags.dumpsys_request_stream_ids"

.field public static final blacklist FLAG_ENABLE_HAL_ABORT_FROM_CAMERASERVICEWATCHDOG:Ljava/lang/String; = "com.android.internal.camera.flags.enable_hal_abort_from_cameraservicewatchdog"

.field public static final blacklist FLAG_ENABLE_STREAM_RECONFIGURATION_FOR_UNCHANGED_STREAMS:Ljava/lang/String; = "com.android.internal.camera.flags.enable_stream_reconfiguration_for_unchanged_streams"

.field public static final blacklist FLAG_EXTENSION_10_BIT:Ljava/lang/String; = "com.android.internal.camera.flags.extension_10_bit"

.field public static final blacklist FLAG_FEATURE_COMBINATION_BAKLAVA:Ljava/lang/String; = "com.android.internal.camera.flags.feature_combination_baklava"

.field public static final blacklist FLAG_FEATURE_COMBINATION_QUERY:Ljava/lang/String; = "com.android.internal.camera.flags.feature_combination_query"

.field public static final blacklist FLAG_FMQ_METADATA:Ljava/lang/String; = "com.android.internal.camera.flags.fmq_metadata"

.field public static final blacklist FLAG_INJECT_SESSION_PARAMS:Ljava/lang/String; = "com.android.internal.camera.flags.inject_session_params"

.field public static final blacklist FLAG_METADATA_RESIZE_FIX:Ljava/lang/String; = "com.android.internal.camera.flags.metadata_resize_fix"

.field public static final blacklist FLAG_MIRROR_MODE_SHARED_SURFACES:Ljava/lang/String; = "com.android.internal.camera.flags.mirror_mode_shared_surfaces"

.field public static final blacklist FLAG_MULTIRESOLUTION_IMAGEREADER_USAGE_CONFIG:Ljava/lang/String; = "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

.field public static final blacklist FLAG_MULTIRESOLUTION_IMAGEREADER_USAGE_PUBLIC:Ljava/lang/String; = "com.android.internal.camera.flags.multiresolution_imagereader_usage_public"

.field public static final blacklist FLAG_MULTI_RES_RAW_REPROCESSING:Ljava/lang/String; = "com.android.internal.camera.flags.multi_res_raw_reprocessing"

.field public static final blacklist FLAG_NIGHT_MODE_INDICATOR:Ljava/lang/String; = "com.android.internal.camera.flags.night_mode_indicator"

.field public static final blacklist FLAG_RETURN_BUFFERS_OUTSIDE_LOCKS:Ljava/lang/String; = "com.android.internal.camera.flags.return_buffers_outside_locks"

.field public static final blacklist FLAG_SINGLE_THREAD_EXECUTOR_NAMING:Ljava/lang/String; = "com.android.internal.camera.flags.single_thread_executor_naming"

.field public static final blacklist FLAG_ZOOM_METHOD:Ljava/lang/String; = "com.android.internal.camera.flags.zoom_method"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 314
    new-instance v0, Lcom/android/internal/camera/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist aePriority()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->aePriority()Z

    move-result v0

    return v0
.end method

.method public static greylist analytics24q3()Z
    .registers 1

    .line 87
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->analytics24q3()Z

    move-result v0

    return v0
.end method

.method public static greylist api1ReleaseBinderlockBeforeCameraserviceDisconnect()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->api1ReleaseBinderlockBeforeCameraserviceDisconnect()Z

    move-result v0

    return v0
.end method

.method public static greylist bumpPreviewFrameSpacePriority()Z
    .registers 1

    .line 101
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->bumpPreviewFrameSpacePriority()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraAeModeLowLightBoost()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraAeModeLowLightBoost()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraDeviceSetup()Z
    .registers 1

    .line 115
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraDeviceSetup()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraExtensionsCharacteristicsGet()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraExtensionsCharacteristicsGet()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraHeifGainmap()Z
    .registers 1

    .line 129
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraHeifGainmap()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraHsumPermission()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraHsumPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraManualFlashStrengthControl()Z
    .registers 1

    .line 143
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraManualFlashStrengthControl()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraMultiClient()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraMultiClient()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraPrivacyAllowlist()Z
    .registers 1

    .line 157
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraPrivacyAllowlist()Z

    move-result v0

    return v0
.end method

.method public static greylist colorTemperature()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->colorTemperature()Z

    move-result v0

    return v0
.end method

.method public static greylist concertMode()Z
    .registers 1

    .line 171
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->concertMode()Z

    move-result v0

    return v0
.end method

.method public static greylist dataDeliveryPermissionChecks()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->dataDeliveryPermissionChecks()Z

    move-result v0

    return v0
.end method

.method public static greylist depthJpegExtensions()Z
    .registers 1

    .line 185
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->depthJpegExtensions()Z

    move-result v0

    return v0
.end method

.method public static greylist desktopEffects()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->desktopEffects()Z

    move-result v0

    return v0
.end method

.method public static greylist dumpsysRequestStreamIds()Z
    .registers 1

    .line 199
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->dumpsysRequestStreamIds()Z

    move-result v0

    return v0
.end method

.method public static greylist enableHalAbortFromCameraservicewatchdog()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->enableHalAbortFromCameraservicewatchdog()Z

    move-result v0

    return v0
.end method

.method public static greylist enableStreamReconfigurationForUnchangedStreams()Z
    .registers 1

    .line 213
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->enableStreamReconfigurationForUnchangedStreams()Z

    move-result v0

    return v0
.end method

.method public static greylist extension10Bit()Z
    .registers 1

    .line 220
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->extension10Bit()Z

    move-result v0

    return v0
.end method

.method public static greylist featureCombinationBaklava()Z
    .registers 1

    .line 227
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->featureCombinationBaklava()Z

    move-result v0

    return v0
.end method

.method public static greylist featureCombinationQuery()Z
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->featureCombinationQuery()Z

    move-result v0

    return v0
.end method

.method public static greylist fmqMetadata()Z
    .registers 1

    .line 241
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->fmqMetadata()Z

    move-result v0

    return v0
.end method

.method public static greylist injectSessionParams()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->injectSessionParams()Z

    move-result v0

    return v0
.end method

.method public static greylist metadataResizeFix()Z
    .registers 1

    .line 255
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->metadataResizeFix()Z

    move-result v0

    return v0
.end method

.method public static greylist mirrorModeSharedSurfaces()Z
    .registers 1

    .line 262
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->mirrorModeSharedSurfaces()Z

    move-result v0

    return v0
.end method

.method public static greylist multiResRawReprocessing()Z
    .registers 1

    .line 269
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->multiResRawReprocessing()Z

    move-result v0

    return v0
.end method

.method public static greylist multiresolutionImagereaderUsageConfig()Z
    .registers 1

    .line 276
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->multiresolutionImagereaderUsageConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist multiresolutionImagereaderUsagePublic()Z
    .registers 1

    .line 283
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->multiresolutionImagereaderUsagePublic()Z

    move-result v0

    return v0
.end method

.method public static greylist nightModeIndicator()Z
    .registers 1

    .line 290
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->nightModeIndicator()Z

    move-result v0

    return v0
.end method

.method public static greylist returnBuffersOutsideLocks()Z
    .registers 1

    .line 297
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->returnBuffersOutsideLocks()Z

    move-result v0

    return v0
.end method

.method public static greylist singleThreadExecutorNaming()Z
    .registers 1

    .line 304
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->singleThreadExecutorNaming()Z

    move-result v0

    return v0
.end method

.method public static greylist zoomMethod()Z
    .registers 1

    .line 311
    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->zoomMethod()Z

    move-result v0

    return v0
.end method
