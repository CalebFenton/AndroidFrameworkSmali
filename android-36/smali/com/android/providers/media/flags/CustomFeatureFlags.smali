.class public Lcom/android/providers/media/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/providers/media/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/providers/media/flags/FeatureFlags;",
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
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/providers/media/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/providers/media/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v1, Ljava/util/HashSet;

    const-string v36, "com.android.providers.media.flags.version_lockdown"

    const-string v37, ""

    const-string v2, "com.android.providers.media.flags.access_media_owner_package_name_permission"

    const-string v3, "com.android.providers.media.flags.audio_sample_columns"

    const-string v4, "com.android.providers.media.flags.cloud_media_provider_search"

    const-string v5, "com.android.providers.media.flags.enable_backup_and_restore"

    const-string v6, "com.android.providers.media.flags.enable_cloud_media_provider_capabilities"

    const-string v7, "com.android.providers.media.flags.enable_embedded_photopicker"

    const-string v8, "com.android.providers.media.flags.enable_exclusion_list_for_default_folders"

    const-string v9, "com.android.providers.media.flags.enable_local_media_provider_capabilities"

    const-string v10, "com.android.providers.media.flags.enable_malicious_app_detector"

    const-string v11, "com.android.providers.media.flags.enable_mark_is_favorite_status_api"

    const-string v12, "com.android.providers.media.flags.enable_mark_media_as_favorite_api"

    const-string v13, "com.android.providers.media.flags.enable_mime_type_fix_for_android_15"

    const-string v14, "com.android.providers.media.flags.enable_modern_photopicker"

    const-string v15, "com.android.providers.media.flags.enable_oem_metadata"

    const-string v16, "com.android.providers.media.flags.enable_oem_metadata_update"

    const-string v17, "com.android.providers.media.flags.enable_photopicker_datescrubber"

    const-string v18, "com.android.providers.media.flags.enable_photopicker_expressive_theme"

    const-string v19, "com.android.providers.media.flags.enable_photopicker_search"

    const-string v20, "com.android.providers.media.flags.enable_photopicker_transcoding"

    const-string v21, "com.android.providers.media.flags.enable_stable_uris_for_external_primary_volume"

    const-string v22, "com.android.providers.media.flags.enable_stable_uris_for_public_volume"

    const-string v23, "com.android.providers.media.flags.enable_unicode_check"

    const-string v24, "com.android.providers.media.flags.exclude_unreliable_volumes"

    const-string v25, "com.android.providers.media.flags.index_media_latitude_longitude"

    const-string v26, "com.android.providers.media.flags.inferred_media_date"

    const-string v27, "com.android.providers.media.flags.media_cognition_service"

    const-string v28, "com.android.providers.media.flags.media_store_open_file"

    const-string v29, "com.android.providers.media.flags.motion_photo_intent"

    const-string v30, "com.android.providers.media.flags.pick_ordered_images"

    const-string v31, "com.android.providers.media.flags.picker_accent_color"

    const-string v32, "com.android.providers.media.flags.picker_default_tab"

    const-string v33, "com.android.providers.media.flags.picker_pre_selection_extra"

    const-string v34, "com.android.providers.media.flags.picker_recent_selection"

    const-string v35, "com.android.providers.media.flags.revoke_access_owned_photos"

    filled-new-array/range {v2 .. v37}, [Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/providers/media/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/providers/media/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 274
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist accessMediaOwnerPackageNamePermission()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.providers.media.flags.access_media_owner_package_name_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist audioSampleColumns()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.providers.media.flags.audio_sample_columns"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cloudMediaProviderSearch()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.providers.media.flags.cloud_media_provider_search"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableBackupAndRestore()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_backup_and_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCloudMediaProviderCapabilities()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_cloud_media_provider_capabilities"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableEmbeddedPhotopicker()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_embedded_photopicker"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableExclusionListForDefaultFolders()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_exclusion_list_for_default_folders"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableLocalMediaProviderCapabilities()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_local_media_provider_capabilities"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMaliciousAppDetector()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_malicious_app_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMarkIsFavoriteStatusApi()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_mark_is_favorite_status_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMarkMediaAsFavoriteApi()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_mark_media_as_favorite_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMimeTypeFixForAndroid15()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_mime_type_fix_for_android_15"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableModernPhotopicker()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_modern_photopicker"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOemMetadata()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_oem_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOemMetadataUpdate()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_oem_metadata_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePhotopickerDatescrubber()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_photopicker_datescrubber"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePhotopickerExpressiveTheme()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_photopicker_expressive_theme"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePhotopickerSearch()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_photopicker_search"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePhotopickerTranscoding()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_photopicker_transcoding"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableStableUrisForExternalPrimaryVolume()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_stable_uris_for_external_primary_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableStableUrisForPublicVolume()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_stable_uris_for_public_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUnicodeCheck()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.providers.media.flags.enable_unicode_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist excludeUnreliableVolumes()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.providers.media.flags.exclude_unreliable_volumes"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    const-string v34, "com.android.providers.media.flags.revoke_access_owned_photos"

    const-string v35, "com.android.providers.media.flags.version_lockdown"

    const-string v1, "com.android.providers.media.flags.access_media_owner_package_name_permission"

    const-string v2, "com.android.providers.media.flags.audio_sample_columns"

    const-string v3, "com.android.providers.media.flags.cloud_media_provider_search"

    const-string v4, "com.android.providers.media.flags.enable_backup_and_restore"

    const-string v5, "com.android.providers.media.flags.enable_cloud_media_provider_capabilities"

    const-string v6, "com.android.providers.media.flags.enable_embedded_photopicker"

    const-string v7, "com.android.providers.media.flags.enable_exclusion_list_for_default_folders"

    const-string v8, "com.android.providers.media.flags.enable_local_media_provider_capabilities"

    const-string v9, "com.android.providers.media.flags.enable_malicious_app_detector"

    const-string v10, "com.android.providers.media.flags.enable_mark_is_favorite_status_api"

    const-string v11, "com.android.providers.media.flags.enable_mark_media_as_favorite_api"

    const-string v12, "com.android.providers.media.flags.enable_mime_type_fix_for_android_15"

    const-string v13, "com.android.providers.media.flags.enable_modern_photopicker"

    const-string v14, "com.android.providers.media.flags.enable_oem_metadata"

    const-string v15, "com.android.providers.media.flags.enable_oem_metadata_update"

    const-string v16, "com.android.providers.media.flags.enable_photopicker_datescrubber"

    const-string v17, "com.android.providers.media.flags.enable_photopicker_expressive_theme"

    const-string v18, "com.android.providers.media.flags.enable_photopicker_search"

    const-string v19, "com.android.providers.media.flags.enable_photopicker_transcoding"

    const-string v20, "com.android.providers.media.flags.enable_stable_uris_for_external_primary_volume"

    const-string v21, "com.android.providers.media.flags.enable_stable_uris_for_public_volume"

    const-string v22, "com.android.providers.media.flags.enable_unicode_check"

    const-string v23, "com.android.providers.media.flags.exclude_unreliable_volumes"

    const-string v24, "com.android.providers.media.flags.index_media_latitude_longitude"

    const-string v25, "com.android.providers.media.flags.inferred_media_date"

    const-string v26, "com.android.providers.media.flags.media_cognition_service"

    const-string v27, "com.android.providers.media.flags.media_store_open_file"

    const-string v28, "com.android.providers.media.flags.motion_photo_intent"

    const-string v29, "com.android.providers.media.flags.pick_ordered_images"

    const-string v30, "com.android.providers.media.flags.picker_accent_color"

    const-string v31, "com.android.providers.media.flags.picker_default_tab"

    const-string v32, "com.android.providers.media.flags.picker_pre_selection_extra"

    const-string v33, "com.android.providers.media.flags.picker_recent_selection"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

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
            "Lcom/android/providers/media/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 278
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/providers/media/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/providers/media/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist indexMediaLatitudeLongitude()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.providers.media.flags.index_media_latitude_longitude"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inferredMediaDate()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.providers.media.flags.inferred_media_date"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/providers/media/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    invoke-direct {p0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist mediaCognitionService()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.providers.media.flags.media_cognition_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mediaStoreOpenFile()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.providers.media.flags.media_store_open_file"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist motionPhotoIntent()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.providers.media.flags.motion_photo_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pickOrderedImages()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.providers.media.flags.pick_ordered_images"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pickerAccentColor()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.providers.media.flags.picker_accent_color"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pickerDefaultTab()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.providers.media.flags.picker_default_tab"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pickerPreSelectionExtra()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.providers.media.flags.picker_pre_selection_extra"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pickerRecentSelection()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.media.flags.picker_recent_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist revokeAccessOwnedPhotos()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.providers.media.flags.revoke_access_owned_photos"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist versionLockdown()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/providers/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.providers.media.flags.version_lockdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
