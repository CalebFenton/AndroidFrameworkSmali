.class public Lcom/android/internal/camera/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/camera/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/camera/flags/FeatureFlags;",
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
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/camera/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/camera/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v1, Ljava/util/HashSet;

    const-string v35, "com.android.internal.camera.flags.zoom_method"

    const-string v36, ""

    const-string v2, "com.android.internal.camera.flags.ae_priority"

    const-string v3, "com.android.internal.camera.flags.analytics_24q3"

    const-string v4, "com.android.internal.camera.flags.api1_release_binderlock_before_cameraservice_disconnect"

    const-string v5, "com.android.internal.camera.flags.bump_preview_frame_space_priority"

    const-string v6, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    const-string v7, "com.android.internal.camera.flags.camera_device_setup"

    const-string v8, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    const-string v9, "com.android.internal.camera.flags.camera_heif_gainmap"

    const-string v10, "com.android.internal.camera.flags.camera_hsum_permission"

    const-string v11, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    const-string v12, "com.android.internal.camera.flags.camera_multi_client"

    const-string v13, "com.android.internal.camera.flags.camera_privacy_allowlist"

    const-string v14, "com.android.internal.camera.flags.color_temperature"

    const-string v15, "com.android.internal.camera.flags.concert_mode"

    const-string v16, "com.android.internal.camera.flags.data_delivery_permission_checks"

    const-string v17, "com.android.internal.camera.flags.depth_jpeg_extensions"

    const-string v18, "com.android.internal.camera.flags.desktop_effects"

    const-string v19, "com.android.internal.camera.flags.dumpsys_request_stream_ids"

    const-string v20, "com.android.internal.camera.flags.enable_hal_abort_from_cameraservicewatchdog"

    const-string v21, "com.android.internal.camera.flags.enable_stream_reconfiguration_for_unchanged_streams"

    const-string v22, "com.android.internal.camera.flags.extension_10_bit"

    const-string v23, "com.android.internal.camera.flags.feature_combination_baklava"

    const-string v24, "com.android.internal.camera.flags.feature_combination_query"

    const-string v25, "com.android.internal.camera.flags.fmq_metadata"

    const-string v26, "com.android.internal.camera.flags.inject_session_params"

    const-string v27, "com.android.internal.camera.flags.metadata_resize_fix"

    const-string v28, "com.android.internal.camera.flags.mirror_mode_shared_surfaces"

    const-string v29, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    const-string v30, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    const-string v31, "com.android.internal.camera.flags.multiresolution_imagereader_usage_public"

    const-string v32, "com.android.internal.camera.flags.night_mode_indicator"

    const-string v33, "com.android.internal.camera.flags.return_buffers_outside_locks"

    const-string v34, "com.android.internal.camera.flags.single_thread_executor_naming"

    filled-new-array/range {v2 .. v36}, [Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 267
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist aePriority()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.internal.camera.flags.ae_priority"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist analytics24q3()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.internal.camera.flags.analytics_24q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist api1ReleaseBinderlockBeforeCameraserviceDisconnect()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.internal.camera.flags.api1_release_binderlock_before_cameraservice_disconnect"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bumpPreviewFrameSpacePriority()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.camera.flags.bump_preview_frame_space_priority"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraAeModeLowLightBoost()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraDeviceSetup()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_device_setup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraExtensionsCharacteristicsGet()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraHeifGainmap()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_heif_gainmap"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraHsumPermission()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_hsum_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraManualFlashStrengthControl()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraMultiClient()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_multi_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraPrivacyAllowlist()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_privacy_allowlist"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist colorTemperature()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.internal.camera.flags.color_temperature"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist concertMode()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.internal.camera.flags.concert_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataDeliveryPermissionChecks()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.internal.camera.flags.data_delivery_permission_checks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist depthJpegExtensions()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.internal.camera.flags.depth_jpeg_extensions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist desktopEffects()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.internal.camera.flags.desktop_effects"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dumpsysRequestStreamIds()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.internal.camera.flags.dumpsys_request_stream_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableHalAbortFromCameraservicewatchdog()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.internal.camera.flags.enable_hal_abort_from_cameraservicewatchdog"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableStreamReconfigurationForUnchangedStreams()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.camera.flags.enable_stream_reconfiguration_for_unchanged_streams"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist extension10Bit()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.internal.camera.flags.extension_10_bit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist featureCombinationBaklava()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.internal.camera.flags.feature_combination_baklava"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist featureCombinationQuery()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.internal.camera.flags.feature_combination_query"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fmqMetadata()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.internal.camera.flags.fmq_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    const-string v33, "com.android.internal.camera.flags.single_thread_executor_naming"

    const-string v34, "com.android.internal.camera.flags.zoom_method"

    const-string v1, "com.android.internal.camera.flags.ae_priority"

    const-string v2, "com.android.internal.camera.flags.analytics_24q3"

    const-string v3, "com.android.internal.camera.flags.api1_release_binderlock_before_cameraservice_disconnect"

    const-string v4, "com.android.internal.camera.flags.bump_preview_frame_space_priority"

    const-string v5, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    const-string v6, "com.android.internal.camera.flags.camera_device_setup"

    const-string v7, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    const-string v8, "com.android.internal.camera.flags.camera_heif_gainmap"

    const-string v9, "com.android.internal.camera.flags.camera_hsum_permission"

    const-string v10, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    const-string v11, "com.android.internal.camera.flags.camera_multi_client"

    const-string v12, "com.android.internal.camera.flags.camera_privacy_allowlist"

    const-string v13, "com.android.internal.camera.flags.color_temperature"

    const-string v14, "com.android.internal.camera.flags.concert_mode"

    const-string v15, "com.android.internal.camera.flags.data_delivery_permission_checks"

    const-string v16, "com.android.internal.camera.flags.depth_jpeg_extensions"

    const-string v17, "com.android.internal.camera.flags.desktop_effects"

    const-string v18, "com.android.internal.camera.flags.dumpsys_request_stream_ids"

    const-string v19, "com.android.internal.camera.flags.enable_hal_abort_from_cameraservicewatchdog"

    const-string v20, "com.android.internal.camera.flags.enable_stream_reconfiguration_for_unchanged_streams"

    const-string v21, "com.android.internal.camera.flags.extension_10_bit"

    const-string v22, "com.android.internal.camera.flags.feature_combination_baklava"

    const-string v23, "com.android.internal.camera.flags.feature_combination_query"

    const-string v24, "com.android.internal.camera.flags.fmq_metadata"

    const-string v25, "com.android.internal.camera.flags.inject_session_params"

    const-string v26, "com.android.internal.camera.flags.metadata_resize_fix"

    const-string v27, "com.android.internal.camera.flags.mirror_mode_shared_surfaces"

    const-string v28, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    const-string v29, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    const-string v30, "com.android.internal.camera.flags.multiresolution_imagereader_usage_public"

    const-string v31, "com.android.internal.camera.flags.night_mode_indicator"

    const-string v32, "com.android.internal.camera.flags.return_buffers_outside_locks"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

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
            "Lcom/android/internal/camera/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 271
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/camera/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist injectSessionParams()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.internal.camera.flags.inject_session_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 259
    invoke-direct {p0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 260
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist metadataResizeFix()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.camera.flags.metadata_resize_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mirrorModeSharedSurfaces()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.camera.flags.mirror_mode_shared_surfaces"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiResRawReprocessing()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiresolutionImagereaderUsageConfig()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiresolutionImagereaderUsagePublic()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.internal.camera.flags.multiresolution_imagereader_usage_public"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nightModeIndicator()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.camera.flags.night_mode_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist returnBuffersOutsideLocks()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.internal.camera.flags.return_buffers_outside_locks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist singleThreadExecutorNaming()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.internal.camera.flags.single_thread_executor_naming"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist zoomMethod()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.internal.camera.flags.zoom_method"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
