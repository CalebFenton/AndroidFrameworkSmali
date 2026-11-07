.class public final Lcom/android/providers/media/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ACCESS_MEDIA_OWNER_PACKAGE_NAME_PERMISSION:Ljava/lang/String; = "com.android.providers.media.flags.access_media_owner_package_name_permission"

.field public static final blacklist FLAG_AUDIO_SAMPLE_COLUMNS:Ljava/lang/String; = "com.android.providers.media.flags.audio_sample_columns"

.field public static final blacklist FLAG_CLOUD_MEDIA_PROVIDER_SEARCH:Ljava/lang/String; = "com.android.providers.media.flags.cloud_media_provider_search"

.field public static final blacklist FLAG_ENABLE_BACKUP_AND_RESTORE:Ljava/lang/String; = "com.android.providers.media.flags.enable_backup_and_restore"

.field public static final blacklist FLAG_ENABLE_CLOUD_MEDIA_PROVIDER_CAPABILITIES:Ljava/lang/String; = "com.android.providers.media.flags.enable_cloud_media_provider_capabilities"

.field public static final blacklist FLAG_ENABLE_EMBEDDED_PHOTOPICKER:Ljava/lang/String; = "com.android.providers.media.flags.enable_embedded_photopicker"

.field public static final blacklist FLAG_ENABLE_EXCLUSION_LIST_FOR_DEFAULT_FOLDERS:Ljava/lang/String; = "com.android.providers.media.flags.enable_exclusion_list_for_default_folders"

.field public static final blacklist FLAG_ENABLE_LOCAL_MEDIA_PROVIDER_CAPABILITIES:Ljava/lang/String; = "com.android.providers.media.flags.enable_local_media_provider_capabilities"

.field public static final blacklist FLAG_ENABLE_MALICIOUS_APP_DETECTOR:Ljava/lang/String; = "com.android.providers.media.flags.enable_malicious_app_detector"

.field public static final blacklist FLAG_ENABLE_MARK_IS_FAVORITE_STATUS_API:Ljava/lang/String; = "com.android.providers.media.flags.enable_mark_is_favorite_status_api"

.field public static final blacklist FLAG_ENABLE_MARK_MEDIA_AS_FAVORITE_API:Ljava/lang/String; = "com.android.providers.media.flags.enable_mark_media_as_favorite_api"

.field public static final blacklist FLAG_ENABLE_MIME_TYPE_FIX_FOR_ANDROID_15:Ljava/lang/String; = "com.android.providers.media.flags.enable_mime_type_fix_for_android_15"

.field public static final blacklist FLAG_ENABLE_MODERN_PHOTOPICKER:Ljava/lang/String; = "com.android.providers.media.flags.enable_modern_photopicker"

.field public static final blacklist FLAG_ENABLE_OEM_METADATA:Ljava/lang/String; = "com.android.providers.media.flags.enable_oem_metadata"

.field public static final blacklist FLAG_ENABLE_OEM_METADATA_UPDATE:Ljava/lang/String; = "com.android.providers.media.flags.enable_oem_metadata_update"

.field public static final blacklist FLAG_ENABLE_PHOTOPICKER_DATESCRUBBER:Ljava/lang/String; = "com.android.providers.media.flags.enable_photopicker_datescrubber"

.field public static final blacklist FLAG_ENABLE_PHOTOPICKER_EXPRESSIVE_THEME:Ljava/lang/String; = "com.android.providers.media.flags.enable_photopicker_expressive_theme"

.field public static final blacklist FLAG_ENABLE_PHOTOPICKER_SEARCH:Ljava/lang/String; = "com.android.providers.media.flags.enable_photopicker_search"

.field public static final blacklist FLAG_ENABLE_PHOTOPICKER_TRANSCODING:Ljava/lang/String; = "com.android.providers.media.flags.enable_photopicker_transcoding"

.field public static final blacklist FLAG_ENABLE_STABLE_URIS_FOR_EXTERNAL_PRIMARY_VOLUME:Ljava/lang/String; = "com.android.providers.media.flags.enable_stable_uris_for_external_primary_volume"

.field public static final blacklist FLAG_ENABLE_STABLE_URIS_FOR_PUBLIC_VOLUME:Ljava/lang/String; = "com.android.providers.media.flags.enable_stable_uris_for_public_volume"

.field public static final blacklist FLAG_ENABLE_UNICODE_CHECK:Ljava/lang/String; = "com.android.providers.media.flags.enable_unicode_check"

.field public static final blacklist FLAG_EXCLUDE_UNRELIABLE_VOLUMES:Ljava/lang/String; = "com.android.providers.media.flags.exclude_unreliable_volumes"

.field public static final blacklist FLAG_INDEX_MEDIA_LATITUDE_LONGITUDE:Ljava/lang/String; = "com.android.providers.media.flags.index_media_latitude_longitude"

.field public static final blacklist FLAG_INFERRED_MEDIA_DATE:Ljava/lang/String; = "com.android.providers.media.flags.inferred_media_date"

.field public static final blacklist FLAG_MEDIA_COGNITION_SERVICE:Ljava/lang/String; = "com.android.providers.media.flags.media_cognition_service"

.field public static final blacklist FLAG_MEDIA_STORE_OPEN_FILE:Ljava/lang/String; = "com.android.providers.media.flags.media_store_open_file"

.field public static final blacklist FLAG_MOTION_PHOTO_INTENT:Ljava/lang/String; = "com.android.providers.media.flags.motion_photo_intent"

.field public static final blacklist FLAG_PICKER_ACCENT_COLOR:Ljava/lang/String; = "com.android.providers.media.flags.picker_accent_color"

.field public static final blacklist FLAG_PICKER_DEFAULT_TAB:Ljava/lang/String; = "com.android.providers.media.flags.picker_default_tab"

.field public static final blacklist FLAG_PICKER_PRE_SELECTION_EXTRA:Ljava/lang/String; = "com.android.providers.media.flags.picker_pre_selection_extra"

.field public static final blacklist FLAG_PICKER_RECENT_SELECTION:Ljava/lang/String; = "com.android.providers.media.flags.picker_recent_selection"

.field public static final blacklist FLAG_PICK_ORDERED_IMAGES:Ljava/lang/String; = "com.android.providers.media.flags.pick_ordered_images"

.field public static final blacklist FLAG_REVOKE_ACCESS_OWNED_PHOTOS:Ljava/lang/String; = "com.android.providers.media.flags.revoke_access_owned_photos"

.field public static final blacklist FLAG_VERSION_LOCKDOWN:Ljava/lang/String; = "com.android.providers.media.flags.version_lockdown"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 323
    new-instance v0, Lcom/android/providers/media/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/providers/media/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist accessMediaOwnerPackageNamePermission()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->accessMediaOwnerPackageNamePermission()Z

    move-result v0

    return v0
.end method

.method public static greylist audioSampleColumns()Z
    .registers 1

    .line 89
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->audioSampleColumns()Z

    move-result v0

    return v0
.end method

.method public static greylist cloudMediaProviderSearch()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->cloudMediaProviderSearch()Z

    move-result v0

    return v0
.end method

.method public static greylist enableBackupAndRestore()Z
    .registers 1

    .line 103
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableBackupAndRestore()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCloudMediaProviderCapabilities()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableCloudMediaProviderCapabilities()Z

    move-result v0

    return v0
.end method

.method public static greylist enableEmbeddedPhotopicker()Z
    .registers 1

    .line 117
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableEmbeddedPhotopicker()Z

    move-result v0

    return v0
.end method

.method public static greylist enableExclusionListForDefaultFolders()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableExclusionListForDefaultFolders()Z

    move-result v0

    return v0
.end method

.method public static greylist enableLocalMediaProviderCapabilities()Z
    .registers 1

    .line 131
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableLocalMediaProviderCapabilities()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMaliciousAppDetector()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableMaliciousAppDetector()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMarkIsFavoriteStatusApi()Z
    .registers 1

    .line 145
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableMarkIsFavoriteStatusApi()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMarkMediaAsFavoriteApi()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableMarkMediaAsFavoriteApi()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMimeTypeFixForAndroid15()Z
    .registers 1

    .line 159
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableMimeTypeFixForAndroid15()Z

    move-result v0

    return v0
.end method

.method public static greylist enableModernPhotopicker()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableModernPhotopicker()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOemMetadata()Z
    .registers 1

    .line 173
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableOemMetadata()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOemMetadataUpdate()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableOemMetadataUpdate()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePhotopickerDatescrubber()Z
    .registers 1

    .line 187
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enablePhotopickerDatescrubber()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePhotopickerExpressiveTheme()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enablePhotopickerExpressiveTheme()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePhotopickerSearch()Z
    .registers 1

    .line 201
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enablePhotopickerSearch()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePhotopickerTranscoding()Z
    .registers 1

    .line 208
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enablePhotopickerTranscoding()Z

    move-result v0

    return v0
.end method

.method public static greylist enableStableUrisForExternalPrimaryVolume()Z
    .registers 1

    .line 215
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableStableUrisForExternalPrimaryVolume()Z

    move-result v0

    return v0
.end method

.method public static greylist enableStableUrisForPublicVolume()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableStableUrisForPublicVolume()Z

    move-result v0

    return v0
.end method

.method public static greylist enableUnicodeCheck()Z
    .registers 1

    .line 229
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->enableUnicodeCheck()Z

    move-result v0

    return v0
.end method

.method public static greylist excludeUnreliableVolumes()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->excludeUnreliableVolumes()Z

    move-result v0

    return v0
.end method

.method public static greylist indexMediaLatitudeLongitude()Z
    .registers 1

    .line 243
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->indexMediaLatitudeLongitude()Z

    move-result v0

    return v0
.end method

.method public static greylist inferredMediaDate()Z
    .registers 1

    .line 250
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->inferredMediaDate()Z

    move-result v0

    return v0
.end method

.method public static greylist mediaCognitionService()Z
    .registers 1

    .line 257
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->mediaCognitionService()Z

    move-result v0

    return v0
.end method

.method public static greylist mediaStoreOpenFile()Z
    .registers 1

    .line 264
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->mediaStoreOpenFile()Z

    move-result v0

    return v0
.end method

.method public static greylist motionPhotoIntent()Z
    .registers 1

    .line 271
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->motionPhotoIntent()Z

    move-result v0

    return v0
.end method

.method public static greylist pickOrderedImages()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->pickOrderedImages()Z

    move-result v0

    return v0
.end method

.method public static greylist pickerAccentColor()Z
    .registers 1

    .line 285
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->pickerAccentColor()Z

    move-result v0

    return v0
.end method

.method public static greylist pickerDefaultTab()Z
    .registers 1

    .line 292
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->pickerDefaultTab()Z

    move-result v0

    return v0
.end method

.method public static greylist pickerPreSelectionExtra()Z
    .registers 1

    .line 299
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->pickerPreSelectionExtra()Z

    move-result v0

    return v0
.end method

.method public static greylist pickerRecentSelection()Z
    .registers 1

    .line 306
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->pickerRecentSelection()Z

    move-result v0

    return v0
.end method

.method public static greylist revokeAccessOwnedPhotos()Z
    .registers 1

    .line 313
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->revokeAccessOwnedPhotos()Z

    move-result v0

    return v0
.end method

.method public static greylist versionLockdown()Z
    .registers 1

    .line 320
    sget-object v0, Lcom/android/providers/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/providers/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/providers/media/flags/FeatureFlags;->versionLockdown()Z

    move-result v0

    return v0
.end method
