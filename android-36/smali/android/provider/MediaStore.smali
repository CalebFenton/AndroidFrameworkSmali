.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$MediaColumns;,
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Downloads;,
        Landroid/provider/MediaStore$DownloadColumns;,
        Landroid/provider/MediaStore$ThumbnailConstants;,
        Landroid/provider/MediaStore$PickerMediaColumns;,
        Landroid/provider/MediaStore$Match;,
        Landroid/provider/MediaStore$PickImagesTab;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS_MEDIA_OWNER_PACKAGE_NAME_PERMISSION:Ljava/lang/String; = "com.android.providers.media.permission.ACCESS_MEDIA_OWNER_PACKAGE_NAME"

.field public static final whitelist ACCESS_OEM_METADATA_PERMISSION:Ljava/lang/String; = "com.android.providers.media.permission.ACCESS_OEM_METADATA"

.field public static final whitelist ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final whitelist ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final whitelist ACTION_MOTION_PHOTO_CAPTURE:Ljava/lang/String; = "android.provider.action.MOTION_PHOTO_CAPTURE"

.field public static final whitelist ACTION_MOTION_PHOTO_CAPTURE_SECURE:Ljava/lang/String; = "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

.field public static final whitelist ACTION_PICK_IMAGES:Ljava/lang/String; = "android.provider.action.PICK_IMAGES"

.field public static final whitelist ACTION_PICK_IMAGES_SETTINGS:Ljava/lang/String; = "android.provider.action.PICK_IMAGES_SETTINGS"

.field public static final whitelist ACTION_REVIEW:Ljava/lang/String; = "android.provider.action.REVIEW"

.field public static final whitelist ACTION_REVIEW_SECURE:Ljava/lang/String; = "android.provider.action.REVIEW_SECURE"

.field public static final whitelist ACTION_USER_SELECT_IMAGES_FOR_APP:Ljava/lang/String; = "android.provider.action.USER_SELECT_IMAGES_FOR_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "media"

.field public static final whitelist AUTHORITY_LEGACY:Ljava/lang/String; = "media_legacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTHORITY_LEGACY_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTHORITY_URI:Landroid/net/Uri;

.field public static final blacklist BULK_UPDATE_OEM_METADATA_CALL:Ljava/lang/String; = "bulk_update_oem_metadata"

.field public static final blacklist CREATE_CANCELLATION_SIGNAL_CALL:Ljava/lang/String; = "create_cancellation_signal_call"

.field public static final blacklist CREATE_CANCELLATION_SIGNAL_RESULT:Ljava/lang/String; = "create_cancellation_signal_result"

.field public static final blacklist CREATE_DELETE_REQUEST_CALL:Ljava/lang/String; = "create_delete_request"

.field public static final blacklist CREATE_FAVORITE_REQUEST_CALL:Ljava/lang/String; = "create_favorite_request"

.field public static final blacklist CREATE_SURFACE_CONTROLLER:Ljava/lang/String; = "create_surface_controller"

.field public static final blacklist CREATE_TRASH_REQUEST_CALL:Ljava/lang/String; = "create_trash_request"

.field public static final blacklist CREATE_WRITE_REQUEST_CALL:Ljava/lang/String; = "create_write_request"

.field public static final blacklist DELETE_BACKED_UP_FILE_PATHS:Ljava/lang/String; = "delete_backed_up_file_paths"

.field public static final blacklist ENSURE_PROVIDERS_CALL:Ljava/lang/String; = "ensure_providers_call"

.field private static final blacklist EXCLUDE_UNRELIABLE_STORAGE_VOLUMES:J = 0x1753b002L

.field public static final blacklist EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCEPT_ORIGINAL_MEDIA_FORMAT:Ljava/lang/String; = "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

.field public static final blacklist EXTRA_ALBUM_AUTHORITY:Ljava/lang/String; = "album_authority"

.field public static final blacklist EXTRA_ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final whitelist EXTRA_BRIGHTNESS:Ljava/lang/String; = "android.provider.extra.BRIGHTNESS"

.field public static final blacklist EXTRA_CALLING_PACKAGE_UID:Ljava/lang/String; = "calling_package_uid"

.field public static final blacklist EXTRA_CLIP_DATA:Ljava/lang/String; = "clip_data"

.field public static final blacklist EXTRA_CLOUD_PROVIDER:Ljava/lang/String; = "cloud_provider"

.field public static final blacklist EXTRA_CLOUD_PROVIDER_RESULT:Ljava/lang/String; = "cloud_provider_result"

.field public static final blacklist EXTRA_CONTENT_VALUES:Ljava/lang/String; = "content_values"

.field public static final whitelist EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final blacklist EXTRA_FILE_DESCRIPTOR:Ljava/lang/String; = "file_descriptor"

.field public static final whitelist EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final whitelist EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final blacklist EXTRA_IS_STABLE_URIS_ENABLED:Ljava/lang/String; = "is_stable_uris_enabled"

.field public static final blacklist EXTRA_IS_SYSTEM_GALLERY_RESPONSE:Ljava/lang/String; = "is_system_gallery_response"

.field public static final blacklist EXTRA_IS_SYSTEM_GALLERY_UID:Ljava/lang/String; = "is_system_gallery_uid"

.field public static final blacklist EXTRA_LOCAL_ONLY:Ljava/lang/String; = "is_local_only"

.field public static final blacklist EXTRA_LOCAL_PROVIDER:Ljava/lang/String; = "local_provider"

.field public static final whitelist EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final whitelist EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final whitelist EXTRA_MEDIA_CAPABILITIES:Ljava/lang/String; = "android.provider.extra.MEDIA_CAPABILITIES"

.field public static final whitelist EXTRA_MEDIA_CAPABILITIES_UID:Ljava/lang/String; = "android.provider.extra.MEDIA_CAPABILITIES_UID"

.field public static final whitelist EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final whitelist EXTRA_MEDIA_GENRE:Ljava/lang/String; = "android.intent.extra.genre"

.field public static final whitelist EXTRA_MEDIA_PLAYLIST:Ljava/lang/String; = "android.intent.extra.playlist"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_MEDIA_RADIO_CHANNEL:Ljava/lang/String; = "android.intent.extra.radio_channel"

.field public static final whitelist EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final blacklist EXTRA_MODE:Ljava/lang/String; = "android.provider.extra.MODE"

.field public static final blacklist EXTRA_OPEN_ASSET_FILE_REQUEST:Ljava/lang/String; = "open_asset_file_request"

.field public static final blacklist EXTRA_OPEN_FILE_REQUEST:Ljava/lang/String; = "open_file_request"

.field public static final whitelist EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final whitelist EXTRA_PICKER_PRE_SELECTION_URIS:Ljava/lang/String; = "android.provider.extra.PICKER_PRE_SELECTION_URIS"

.field public static final whitelist EXTRA_PICK_IMAGES_ACCENT_COLOR:Ljava/lang/String; = "android.provider.extra.PICK_IMAGES_ACCENT_COLOR"

.field public static final whitelist EXTRA_PICK_IMAGES_IN_ORDER:Ljava/lang/String; = "android.provider.extra.PICK_IMAGES_IN_ORDER"

.field public static final whitelist EXTRA_PICK_IMAGES_LAUNCH_TAB:Ljava/lang/String; = "android.provider.extra.PICK_IMAGES_LAUNCH_TAB"

.field public static final whitelist EXTRA_PICK_IMAGES_MAX:Ljava/lang/String; = "android.provider.extra.PICK_IMAGES_MAX"

.field public static final blacklist EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final whitelist EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final whitelist EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final whitelist EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final blacklist EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final blacklist EXTRA_URI_LIST:Ljava/lang/String; = "uri_list"

.field public static final blacklist EXTRA_URI_PERMISSIONS:Ljava/lang/String; = "uriPermissions"

.field public static final whitelist EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final blacklist FINISH_LEGACY_MIGRATION_CALL:Ljava/lang/String; = "finish_legacy_migration"

.field public static final blacklist GET_BACKUP_FILES:Ljava/lang/String; = "get_backup_files"

.field public static final blacklist GET_CLOUD_PROVIDER_CALL:Ljava/lang/String; = "get_cloud_provider"

.field public static final blacklist GET_CLOUD_PROVIDER_DETAILS:Ljava/lang/String; = "get_cloud_provider_details"

.field public static final blacklist GET_CLOUD_PROVIDER_DETAILS_RESULT:Ljava/lang/String; = "get_cloud_provider_details_result"

.field public static final blacklist GET_CLOUD_PROVIDER_LABEL_CALL:Ljava/lang/String; = "get_cloud_provider_label"

.field public static final blacklist GET_CLOUD_PROVIDER_RESULT:Ljava/lang/String; = "get_cloud_provider_result"

.field public static final blacklist GET_DOCUMENT_URI_CALL:Ljava/lang/String; = "get_document_uri"

.field public static final blacklist GET_GENERATION_CALL:Ljava/lang/String; = "get_generation"

.field public static final blacklist GET_MEDIA_URI_CALL:Ljava/lang/String; = "get_media_uri"

.field public static final blacklist GET_OWNER_PACKAGE_NAME:Ljava/lang/String; = "get_owner_package_name"

.field public static final blacklist GET_RECOVERY_DATA:Ljava/lang/String; = "get_recovery_data"

.field public static final blacklist GET_REDACTED_MEDIA_URI_CALL:Ljava/lang/String; = "get_redacted_media_uri"

.field public static final blacklist GET_REDACTED_MEDIA_URI_LIST_CALL:Ljava/lang/String; = "get_redacted_media_uri_list"

.field public static final blacklist GET_VERSION_CALL:Ljava/lang/String; = "get_version"

.field public static final blacklist GRANT_MEDIA_READ_FOR_PACKAGE_CALL:Ljava/lang/String; = "grant_media_read_for_package"

.field public static final whitelist INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final whitelist INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final whitelist INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final whitelist INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final whitelist INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final whitelist INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final whitelist INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final blacklist IS_CURRENT_CLOUD_PROVIDER_CALL:Ljava/lang/String; = "is_current_cloud_provider"

.field public static final blacklist IS_SUPPORTED_CLOUD_PROVIDER_CALL:Ljava/lang/String; = "is_supported_cloud_provider"

.field public static final blacklist IS_SYSTEM_GALLERY_CALL:Ljava/lang/String; = "is_system_gallery"

.field private static final blacklist LOCAL_PICKER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.providers.media.photopicker"

.field public static final blacklist MARK_MEDIA_AS_FAVORITE:Ljava/lang/String; = "mark_media_as_favorite"

.field public static final whitelist MATCH_DEFAULT:I = 0x0

.field public static final whitelist MATCH_EXCLUDE:I = 0x2

.field public static final whitelist MATCH_INCLUDE:I = 0x1

.field public static final whitelist MATCH_ONLY:I = 0x3

.field public static final whitelist MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final whitelist MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final whitelist META_DATA_REVIEW_GALLERY_PREWARM_SERVICE:Ljava/lang/String; = "android.media.review_gallery_prewarm_service"

.field public static final whitelist META_DATA_STILL_IMAGE_CAMERA_PREWARM_SERVICE:Ljava/lang/String; = "android.media.still_image_camera_preview_service"

.field public static final blacklist MY_UID:I

.field public static final blacklist MY_USER_ID:I

.field public static final blacklist NOTIFY_CLOUD_MEDIA_CHANGED_EVENT_CALL:Ljava/lang/String; = "notify_cloud_media_changed_event"

.field public static final blacklist OPEN_ASSET_FILE_CALL:Ljava/lang/String; = "open_asset_file_call"

.field public static final blacklist OPEN_FILE_CALL:Ljava/lang/String; = "open_file_call"

.field public static final greylist-max-o PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field public static final blacklist PARAM_INCLUDE_PENDING:Ljava/lang/String; = "includePending"

.field public static final blacklist PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final blacklist PARAM_PROGRESS:Ljava/lang/String; = "progress"

.field public static final blacklist PARAM_REQUIRE_ORIGINAL:Ljava/lang/String; = "requireOriginal"

.field private static final blacklist PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

.field public static final blacklist PER_USER_RANGE:I = 0x186a0

.field public static final blacklist PICKER_GET_SEARCH_PROVIDERS_CALL:Ljava/lang/String; = "picker_internal_get_search_providers"

.field public static final blacklist PICKER_INTERNAL_SEARCH_MEDIA_INIT_CALL:Ljava/lang/String; = "picker_internal_search_media_init"

.field public static final blacklist PICKER_MEDIA_INIT_CALL:Ljava/lang/String; = "picker_media_init"

.field public static final blacklist PICKER_MEDIA_IN_MEDIA_SET_INIT_CALL:Ljava/lang/String; = "picker_media_in_media_set_init"

.field public static final blacklist PICKER_MEDIA_SETS_INIT_CALL:Ljava/lang/String; = "picker_media_sets_init_call"

.field public static final blacklist PICKER_TRANSCODE_CALL:Ljava/lang/String; = "picker_transcode"

.field public static final blacklist PICKER_TRANSCODE_RESULT:Ljava/lang/String; = "picker_transcode_result"

.field private static final blacklist PICK_IMAGES_MAX_LIMIT:I = 0x64

.field public static final whitelist PICK_IMAGES_TAB_ALBUMS:I = 0x0

.field public static final whitelist PICK_IMAGES_TAB_IMAGES:I = 0x1

.field public static final blacklist QUERY_ARG_ALBUM_AUTHORITY:Ljava/lang/String; = "android:query-arg-album_authority"

.field public static final blacklist QUERY_ARG_ALBUM_ID:Ljava/lang/String; = "android:query-arg-album_id"

.field public static final blacklist QUERY_ARG_ALLOW_MOVEMENT:Ljava/lang/String; = "android:query-arg-allow-movement"

.field public static final whitelist QUERY_ARG_DEFER_SCAN:Ljava/lang/String; = "android:query-arg-defer-scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUERY_ARG_INCLUDE_RECENTLY_UNMOUNTED_VOLUMES:Ljava/lang/String; = "android:query-arg-recently-unmounted-volumes"

.field public static final whitelist QUERY_ARG_LATEST_SELECTION_ONLY:Ljava/lang/String; = "android:query-arg-latest-selection-only"

.field public static final whitelist QUERY_ARG_MATCH_FAVORITE:Ljava/lang/String; = "android:query-arg-match-favorite"

.field public static final whitelist QUERY_ARG_MATCH_PENDING:Ljava/lang/String; = "android:query-arg-match-pending"

.field public static final whitelist QUERY_ARG_MATCH_TRASHED:Ljava/lang/String; = "android:query-arg-match-trashed"

.field public static final whitelist QUERY_ARG_MEDIA_STANDARD_SORT_ORDER:Ljava/lang/String; = "android:query-arg-media-standard-sort-order"

.field public static final blacklist QUERY_ARG_MIME_TYPE:Ljava/lang/String; = "android:query-arg-mime_type"

.field public static final blacklist QUERY_ARG_REDACTED_URI:Ljava/lang/String; = "android:query-arg-redacted-uri"

.field public static final whitelist QUERY_ARG_RELATED_URI:Ljava/lang/String; = "android:query-arg-related-uri"

.field public static final blacklist QUERY_ARG_SIZE_BYTES:Ljava/lang/String; = "android:query-arg-size_bytes"

.field public static final blacklist READ_BACKUP:Ljava/lang/String; = "read_backup"

.field public static final blacklist REMOVE_RECOVERY_DATA:Ljava/lang/String; = "remove_recovery_data"

.field public static final blacklist RESOLVE_PLAYLIST_MEMBERS_CALL:Ljava/lang/String; = "resolve_playlist_members"

.field public static final blacklist REVOKED_ALL_READ_GRANTS_FOR_PACKAGE_CALL:Ljava/lang/String; = "revoke_all_media_grants_for_package"

.field public static final blacklist REVOKE_READ_GRANT_FOR_PACKAGE_CALL:Ljava/lang/String; = "revoke_media_read_for_package"

.field public static final blacklist RUN_IDLE_MAINTENANCE_CALL:Ljava/lang/String; = "run_idle_maintenance"

.field public static final blacklist RUN_IDLE_MAINTENANCE_FOR_STABLE_URIS:Ljava/lang/String; = "idle_maintenance_for_stable_uris"

.field public static final blacklist SCAN_FILE_CALL:Ljava/lang/String; = "scan_file"

.field public static final blacklist SCAN_VOLUME_CALL:Ljava/lang/String; = "scan_volume"

.field public static final blacklist SET_CLOUD_PROVIDER_CALL:Ljava/lang/String; = "set_cloud_provider"

.field public static final blacklist SET_CLOUD_PROVIDER_RESULT:Ljava/lang/String; = "set_cloud_provider_result"

.field public static final blacklist SET_STABLE_URIS_FLAG:Ljava/lang/String; = "set_stable_uris_flag"

.field public static final blacklist START_LEGACY_MIGRATION_CALL:Ljava/lang/String; = "start_legacy_migration"

.field public static final blacklist SYNC_PROVIDERS_CALL:Ljava/lang/String; = "sync_providers"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaStore"

.field public static final whitelist UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final blacklist UPDATE_OEM_METADATA_PERMISSION:Ljava/lang/String; = "com.android.providers.media.permission.UPDATE_OEM_METADATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USES_FUSE_PASSTHROUGH:Ljava/lang/String; = "uses_fuse_passthrough"

.field public static final blacklist USES_FUSE_PASSTHROUGH_RESULT:Ljava/lang/String; = "uses_fuse_passthrough_result"

.field public static final blacklist VOLUME_DEMO:Ljava/lang/String; = "demo"

.field public static final whitelist VOLUME_EXTERNAL:Ljava/lang/String; = "external"

.field public static final whitelist VOLUME_EXTERNAL_PRIMARY:Ljava/lang/String; = "external_primary"

.field public static final whitelist VOLUME_INTERNAL:Ljava/lang/String; = "internal"

.field public static final blacklist WAIT_FOR_IDLE_CALL:Ljava/lang/String; = "wait_for_idle"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    nop

    .line 120
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    .line 144
    nop

    .line 145
    const-string v0, "content://media_legacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore;->AUTHORITY_LEGACY_URI:Landroid/net/Uri;

    .line 453
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Landroid/provider/MediaStore;->MY_USER_ID:I

    .line 455
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Landroid/provider/MediaStore;->MY_UID:I

    .line 2871
    const-string v0, "(?i)^/storage/([^/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore;->PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bulkUpdateOemMetadataInNextScan(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5786
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5787
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_28

    .line 5788
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5789
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "bulk_update_oem_metadata"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1c

    .line 5790
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_28

    .line 5792
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_1a
    nop

    .line 5793
    return-void

    .line 5787
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_27

    :try_start_1f
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_27
    :goto_27
    throw v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_28

    .line 5790
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_28
    move-exception v1

    .line 5791
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "callingAuthority"    # Ljava/lang/String;

    .line 5680
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/MediaStore;->callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static blacklist callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "callingAuthority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 5685
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5686
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5687
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5689
    const-string v0, "media"

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5690
    .local v0, "out":Landroid/os/Bundle;
    const-string v1, "cloud_provider_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist canManageMedia(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 5603
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5604
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5605
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5606
    .local v1, "uid":I
    const-string v2, "android.permission.MANAGE_MEDIA"

    .line 5608
    .local v2, "permission":Ljava/lang/String;
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 5609
    .local v3, "appOps":Landroid/app/AppOpsManager;
    const-string v4, "android.permission.MANAGE_MEDIA"

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 5612
    .local v5, "opMode":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_50

    .line 5622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown AppOpsManager mode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MediaStore"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    return v7

    .line 5614
    :pswitch_3f
    nop

    .line 5615
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 5614
    invoke-virtual {p0, v4, v8, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v6, v7

    :goto_4c
    return v6

    .line 5620
    :pswitch_4d
    return v7

    .line 5617
    :pswitch_4e
    return v6

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_3f
    .end packed-switch
.end method

.method public static blacklist checkArgumentVolumeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 5106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 5110
    invoke-static {p0}, Landroid/provider/MediaStore;->isKnownVolume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 5113
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 5114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5115
    .local v1, "c":C
    const/16 v2, 0x61

    if-gt v2, v1, :cond_20

    const/16 v2, 0x66

    if-le v1, v2, :cond_2d

    :cond_20
    const/16 v2, 0x30

    if-gt v2, v1, :cond_28

    const/16 v2, 0x39

    if-le v1, v2, :cond_2d

    :cond_28
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_30

    .line 5116
    nop

    .line 5113
    .end local v1    # "c":C
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 5118
    .restart local v1    # "c":C
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid volume name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5121
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_49
    return-object p0

    .line 5107
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1766
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string v0, "create_delete_request"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/MediaStore;->createRequest(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;Landroid/content/ContentValues;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFavoriteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1684
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_favorite"

    if-eqz p2, :cond_12

    .line 1686
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1a

    .line 1688
    :cond_12
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    :goto_1a
    const-string v1, "create_favorite_request"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/MediaStore;->createRequest(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;Landroid/content/ContentValues;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createRemoteCancellationSignalIfNeeded(Landroid/content/ContentProviderClient;Landroid/os/CancellationSignal;)Landroid/provider/IMPCancellationSignal;
    .registers 6
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5036
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 5037
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 5038
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5039
    .local v1, "in":Landroid/os/Bundle;
    const-string v2, "create_cancellation_signal_call"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5040
    .local v0, "out":Landroid/os/Bundle;
    nop

    .line 5042
    const-string v2, "create_cancellation_signal_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 5041
    invoke-static {v2}, Landroid/provider/IMPCancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/IMPCancellationSignal;

    move-result-object v2

    .line 5043
    .local v2, "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    new-instance v3, Landroid/provider/MediaStore$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/provider/MediaStore$$ExternalSyntheticLambda0;-><init>(Landroid/provider/IMPCancellationSignal;)V

    invoke-virtual {p1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 5050
    return-object v2

    .line 5052
    .end local v0    # "out":Landroid/os/Bundle;
    .end local v1    # "in":Landroid/os/Bundle;
    .end local v2    # "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    :cond_25
    return-object v0
.end method

.method private static blacklist createRequest(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;Landroid/content/ContentValues;)Landroid/app/PendingIntent;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ContentValues;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1532
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1536
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1537
    .local v1, "clipData":Landroid/content/ClipData;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1538
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_15

    .line 1541
    :cond_2a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1542
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "clip_data"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1543
    const-string v4, "content_values"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1544
    const-string v4, "media"

    invoke-virtual {p0, v4, p1, v2, v3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    return-object v2
.end method

.method public static whitelist createTrashRequest(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1638
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1639
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_trashed"

    if-eqz p2, :cond_12

    .line 1640
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1a

    .line 1642
    :cond_12
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1644
    :goto_1a
    const-string v1, "create_trash_request"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/MediaStore;->createRequest(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;Landroid/content/ContentValues;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createWriteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1598
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string v0, "create_write_request"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/MediaStore;->createRequest(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;Landroid/content/ContentValues;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist deleteBackedUpFilePaths(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 5516
    const-string v0, "delete_backed_up_file_paths"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5517
    return-void
.end method

.method public static blacklist finishLegacyMigration(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 1524
    :try_start_0
    const-string v0, "media_legacy"

    const-string v1, "finish_legacy_migration"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1527
    goto :goto_11

    .line 1525
    :catch_9
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaStore"

    const-string v2, "Failed to deliver legacy migration event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public static blacklist getBackupFiles(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5525
    const/4 v0, 0x0

    const-string v1, "media"

    const-string v2, "get_backup_files"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5526
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getCurrentCloudProvider(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5695
    :try_start_0
    const-string v0, "media"

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_25

    .line 5696
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_6
    const-string v1, "get_cloud_provider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 5698
    .local v1, "out":Landroid/os/Bundle;
    const-string v2, "get_cloud_provider_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_19

    .line 5699
    if-eqz v0, :cond_18

    :try_start_15
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_25

    .line 5698
    :cond_18
    return-object v2

    .line 5695
    .end local v1    # "out":Landroid/os/Bundle;
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    :cond_24
    :goto_24
    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_25

    .line 5699
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    :catch_25
    move-exception v0

    .line 5700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .line 5247
    const-string v0, "uri"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5248
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v2

    .line 5250
    .local v2, "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    :try_start_a
    const-string v3, "media"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_41

    .line 5251
    .local v3, "client":Landroid/content/ContentProviderClient;
    :try_start_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5252
    .local v4, "in":Landroid/os/Bundle;
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5253
    const-string v5, "uriPermissions"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5254
    const-string v5, "get_document_uri"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 5255
    .local v5, "out":Landroid/os/Bundle;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_35

    .line 5256
    if-eqz v3, :cond_34

    :try_start_31
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_41

    .line 5255
    :cond_34
    return-object v0

    .line 5250
    .end local v4    # "in":Landroid/os/Bundle;
    .end local v5    # "out":Landroid/os/Bundle;
    :catchall_35
    move-exception v0

    if-eqz v3, :cond_40

    :try_start_38
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "mediaUri":Landroid/net/Uri;
    :cond_40
    :goto_40
    throw v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_41

    .line 5256
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "mediaUri":Landroid/net/Uri;
    :catch_41
    move-exception v0

    .line 5257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4746
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4747
    .local v0, "sm":Landroid/os/storage/StorageManager;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4748
    .local v1, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 4749
    .local v3, "sv":Landroid/os/storage/StorageVolume;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Examining volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4750
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4749
    const-string v5, "MediaStore"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c0

    :cond_64
    goto :goto_79

    :sswitch_65
    const-string v6, "mounted_ro"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    const/4 v4, 0x1

    goto :goto_7a

    :sswitch_6f
    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    const/4 v4, 0x0

    goto :goto_7a

    :goto_79
    const/4 v4, -0x1

    :goto_7a
    packed-switch v4, :pswitch_data_ca

    goto :goto_bd

    .line 4754
    :pswitch_7e
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v4

    .line 4755
    .local v4, "volumeName":Ljava/lang/String;
    if-eqz v4, :cond_bd

    .line 4756
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v6

    .line 4757
    .local v6, "directory":Ljava/io/File;
    invoke-static {}, Landroid/provider/MediaStore;->shouldExcludeUnReliableStorageVolumes()Z

    move-result v7

    if-eqz v7, :cond_b9

    if-eqz v6, :cond_b9

    .line 4759
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b9

    .line 4760
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 4761
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skipping unreliable volume : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 4763
    :cond_b9
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4765
    .end local v6    # "directory":Ljava/io/File;
    :goto_bc
    nop

    .line 4769
    .end local v3    # "sv":Landroid/os/storage/StorageVolume;
    .end local v4    # "volumeName":Ljava/lang/String;
    :cond_bd
    :goto_bd
    goto/16 :goto_15

    .line 4770
    :cond_bf
    return-object v1

    :sswitch_data_c0
    .sparse-switch
        0x4a15a678 -> :sswitch_6f
        0x4d789964 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
    .end packed-switch
.end method

.method public static blacklist getGeneration(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .registers 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 5220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5221
    .local v0, "in":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5222
    const-string v1, "get_generation"

    const/4 v2, 0x0

    const-string v3, "media"

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 5223
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_1c

    .line 5228
    const-string v2, "android.intent.extra.INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 5224
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get generation for volume \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. The ContentResolver call returned null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist getGeneration(Landroid/content/Context;Ljava/lang/String;)J
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 5214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore;->getGeneration(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getIncludePending(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1426
    const-string v0, "includePending"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist getMediaScannerUri()Landroid/net/Uri;
    .registers 2

    .line 5128
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media_scanner"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getMediaUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "documentUri"    # Landroid/net/Uri;

    .line 5280
    const-string v0, "uri"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5281
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v2

    .line 5283
    .local v2, "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    :try_start_a
    const-string v3, "media"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_41

    .line 5284
    .local v3, "client":Landroid/content/ContentProviderClient;
    :try_start_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5285
    .local v4, "in":Landroid/os/Bundle;
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5286
    const-string v5, "uriPermissions"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5287
    const-string v5, "get_media_uri"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 5288
    .local v5, "out":Landroid/os/Bundle;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_35

    .line 5289
    if-eqz v3, :cond_34

    :try_start_31
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_41

    .line 5288
    :cond_34
    return-object v0

    .line 5283
    .end local v4    # "in":Landroid/os/Bundle;
    .end local v5    # "out":Landroid/os/Bundle;
    :catchall_35
    move-exception v0

    if-eqz v3, :cond_40

    :try_start_38
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "documentUri":Landroid/net/Uri;
    :cond_40
    :goto_40
    throw v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_41

    .line 5289
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "documentUri":Landroid/net/Uri;
    :catch_41
    move-exception v0

    .line 5290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist getOriginalMediaFormatFileDescriptor(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1481
    .local v0, "input":Landroid/os/Bundle;
    const-string v1, "file_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1483
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Files;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1484
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1483
    return-object v1
.end method

.method public static blacklist getOwnerPackageName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "ownerId"    # I

    .line 5504
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "media"

    const-string v3, "get_owner_package_name"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5506
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getPickImagesMaxLimit()I
    .registers 1

    .line 1026
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getRecentExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5068
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 5069
    .local v0, "sm":Landroid/os/storage/StorageManager;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5070
    .local v1, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getRecentStorageVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 5071
    .local v3, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v4

    .line 5072
    .local v4, "volumeName":Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 5073
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5075
    .end local v3    # "sv":Landroid/os/storage/StorageVolume;
    .end local v4    # "volumeName":Ljava/lang/String;
    :cond_2a
    goto :goto_15

    .line 5076
    :cond_2b
    return-object v1
.end method

.method public static blacklist getRecoveryData(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5535
    const/4 v0, 0x0

    const-string v1, "media"

    const-string v2, "get_recovery_data"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5536
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getRedactedUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 5382
    const-string v0, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 5383
    .local v1, "authority":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_3d

    .line 5384
    .local v2, "client":Landroid/content/ContentProviderClient;
    :try_start_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5385
    .local v3, "in":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 5390
    .local v4, "userId":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/MediaStore;->maybeRemoveUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5391
    const-string v5, "get_redacted_media_uri"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 5393
    .local v5, "out":Landroid/os/Bundle;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0, v4}, Landroid/provider/MediaStore;->maybeAddUserId(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_31

    .line 5394
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_3d

    .line 5393
    :cond_30
    return-object v0

    .line 5383
    .end local v3    # "in":Landroid/os/Bundle;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "out":Landroid/os/Bundle;
    :catchall_31
    move-exception v0

    if-eqz v2, :cond_3c

    :try_start_34
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v3

    :try_start_39
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "authority":Ljava/lang/String;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3c
    :goto_3c
    throw v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 5394
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_3d
    move-exception v0

    .line 5395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getRedactedUri(Landroid/content/ContentResolver;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 5436
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v0, "uri_list"

    invoke-static {p1}, Landroid/provider/MediaStore;->verifyUrisBelongToSingleUserId(Ljava/util/List;)V

    .line 5437
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 5438
    .local v2, "authority":Ljava/lang/String;
    :try_start_10
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_4e

    .line 5439
    .local v3, "client":Landroid/content/ContentProviderClient;
    :try_start_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 5440
    .local v1, "userId":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5445
    .local v4, "in":Landroid/os/Bundle;
    nop

    .line 5446
    invoke-static {p1}, Landroid/provider/MediaStore;->maybeRemoveUserId(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5445
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5447
    const-string v5, "get_redacted_media_uri_list"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 5449
    .local v5, "out":Landroid/os/Bundle;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->maybeAddUserId(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_42

    .line 5450
    if-eqz v3, :cond_41

    :try_start_3e
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_4e

    .line 5449
    :cond_41
    return-object v0

    .line 5438
    .end local v1    # "userId":Ljava/lang/String;
    .end local v4    # "in":Landroid/os/Bundle;
    .end local v5    # "out":Landroid/os/Bundle;
    :catchall_42
    move-exception v0

    if-eqz v3, :cond_4d

    :try_start_45
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v1

    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "authority":Ljava/lang/String;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4d
    :goto_4d
    throw v0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4e} :catch_4e

    .line 5450
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_4e
    move-exception v0

    .line 5451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getRequireOriginal(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1456
    const-string v0, "requireOriginal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist getUserIdFromUri(Landroid/net/Uri;)I
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 5332
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 5333
    .local v0, "userId":Ljava/lang/String;
    if-nez v0, :cond_9

    sget v1, Landroid/provider/MediaStore;->MY_USER_ID:I

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_d
    return v1
.end method

.method public static whitelist getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 5158
    const-string v0, "external_primary"

    invoke-static {p0, v0}, Landroid/provider/MediaStore;->getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 5175
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5176
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_6
    const-string v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_31

    .line 5177
    .local v2, "client":Landroid/content/ContentProviderClient;
    :try_start_c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5178
    .local v3, "in":Landroid/os/Bundle;
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5179
    const-string v4, "get_version"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 5180
    .local v4, "out":Landroid/os/Bundle;
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_25

    .line 5181
    if-eqz v2, :cond_24

    :try_start_21
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_31

    .line 5180
    :cond_24
    return-object v0

    .line 5176
    .end local v3    # "in":Landroid/os/Bundle;
    .end local v4    # "out":Landroid/os/Bundle;
    :catchall_25
    move-exception v0

    if-eqz v2, :cond_30

    :try_start_28
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "volumeName":Ljava/lang/String;
    :cond_30
    :goto_30
    throw v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_31} :catch_31

    .line 5181
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "volumeName":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 5182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .line 5083
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 5084
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_52

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_26

    :sswitch_1b
    const-string v2, "media_legacy"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_26

    :goto_25
    const/4 v1, -0x1

    :goto_26
    packed-switch v1, :pswitch_data_5c

    goto :goto_39

    .line 5087
    :pswitch_2a
    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39

    .line 5088
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 5092
    :cond_39
    :goto_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing volume name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_52
    .sparse-switch
        -0x293677c -> :sswitch_1b
        0x62f6fe4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public static blacklist getVolumeName(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2886
    sget-object v0, Landroid/provider/MediaStore;->PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2887
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2888
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 2889
    .local v1, "volumeName":Ljava/lang/String;
    const-string v2, "emulated"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2890
    const-string v2, "external_primary"

    return-object v2

    .line 2892
    :cond_20
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2895
    .end local v1    # "volumeName":Ljava/lang/String;
    :cond_27
    const-string v1, "internal"

    return-object v1
.end method

.method public static blacklist grantMediaReadForPackage(Landroid/content/Context;ILjava/util/List;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 5712
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5713
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_37

    .line 5714
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5715
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5716
    const-string v3, "uri_list"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5717
    const-string v3, "grant_media_read_for_package"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2b

    .line 5720
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_29

    :try_start_26
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_37

    .line 5722
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_29
    nop

    .line 5723
    return-void

    .line 5713
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :catchall_2b
    move-exception v2

    if-eqz v1, :cond_36

    :try_start_2e
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v3

    :try_start_33
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageUid":I
    .end local p2    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_36
    :goto_36
    throw v2
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_37

    .line 5720
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageUid":I
    .restart local p2    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_37
    move-exception v1

    .line 5721
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist isCurrentCloudMediaProviderAuthority(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;

    .line 5637
    const-string v0, "is_current_cloud_provider"

    invoke-static {p0, v0, p1}, Landroid/provider/MediaStore;->callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCurrentSystemGallery(Landroid/content/ContentResolver;ILjava/lang/String;)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5310
    .local v0, "in":Landroid/os/Bundle;
    const-string v1, "is_system_gallery_uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5311
    const-string v1, "media"

    const-string v2, "is_system_gallery"

    invoke-virtual {p0, v1, v2, p2, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 5312
    .local v1, "out":Landroid/os/Bundle;
    const-string v2, "is_system_gallery_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static blacklist isKnownVolume(Ljava/lang/String;)Z
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 5097
    const-string v0, "internal"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5098
    :cond_a
    const-string v0, "external"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 5099
    :cond_13
    const-string v0, "external_primary"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 5100
    :cond_1c
    const-string v0, "demo"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    .line 5101
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isNonCloudPickerUri(Landroid/net/Uri;)Z
    .registers 7
    .param p0, "uri"    # Landroid/net/Uri;

    .line 5018
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 5019
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v2, "media"

    const-string v3, "picker/#/*/media/*"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5020
    const-string v3, "picker_get_content/#/*/media/*"

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5021
    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v1, :cond_2d

    .line 5022
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.providers.media.photopicker"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    nop

    .line 5021
    :goto_2e
    return v4
.end method

.method public static whitelist isSupportedCloudMediaProviderAuthority(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;

    .line 5650
    const-string v0, "is_supported_cloud_provider"

    invoke-static {p0, v0, p1}, Landroid/provider/MediaStore;->callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createRemoteCancellationSignalIfNeeded$0(Landroid/provider/IMPCancellationSignal;)V
    .registers 2
    .param p0, "remoteCancellationSignal"    # Landroid/provider/IMPCancellationSignal;

    .line 5045
    :try_start_0
    invoke-interface {p0}, Landroid/provider/IMPCancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5048
    goto :goto_5

    .line 5046
    :catch_4
    move-exception v0

    .line 5049
    :goto_5
    return-void
.end method

.method public static whitelist markIsFavoriteStatus(Landroid/content/ContentResolver;Ljava/util/Collection;Z)V
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "areFavorites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .line 1710
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1714
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_favorite"

    if-eqz p2, :cond_18

    .line 1715
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    .line 1717
    :cond_18
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    :goto_20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1720
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1721
    .local v2, "clipData":Landroid/content/ClipData;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1722
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2f

    .line 1725
    :cond_44
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1726
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "clip_data"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1727
    const-string v5, "content_values"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1728
    const-string v5, "media"

    const-string v6, "mark_media_as_favorite"

    invoke-virtual {p0, v5, v6, v3, v4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1729
    return-void
.end method

.method private static blacklist maybeAddUserId(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # Ljava/lang/String;

    .line 5338
    if-nez p1, :cond_3

    .line 5339
    return-object p0

    .line 5342
    :cond_3
    nop

    .line 5343
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5342
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist maybeAddUserId(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 5348
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez p1, :cond_3

    .line 5349
    return-object p0

    .line 5352
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5353
    .local v0, "newUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5354
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/provider/MediaStore;->maybeAddUserId(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5355
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_c

    .line 5356
    :cond_20
    return-object v0
.end method

.method private static blacklist maybeRemoveUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 5316
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 5318
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5319
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5320
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist maybeRemoveUserId(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 5324
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5325
    .local v0, "newUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5326
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/MediaStore;->maybeRemoveUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5327
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 5328
    :cond_1d
    return-object v0
.end method

.method public static whitelist notifyCloudMediaChangedEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "currentMediaCollectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 5669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5670
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.provider.extra.MEDIA_COLLECTION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5672
    const-string v1, "notify_cloud_media_changed_event"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/MediaStore;->callForCloudProvider(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5676
    return-void

    .line 5674
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to notify cloud media changed event"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4899
    const-string v0, "resolver"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4900
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4901
    const-string v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4903
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4904
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4908
    invoke-static {p1}, Landroid/provider/MediaStore;->isNonCloudPickerUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4910
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 4913
    :cond_32
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_42

    .line 4918
    const-string v0, "*/*"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p3}, Landroid/provider/MediaStore;->openTypedAssetFileDescriptorInternal(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 4914
    :cond_42
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoPicker Uris can only be accessed to read. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4905
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be a media URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist openFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4813
    const-string v0, "resolver"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4814
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4815
    const-string v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4817
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 4818
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 4822
    invoke-static {p1}, Landroid/provider/MediaStore;->isNonCloudPickerUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4824
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 4827
    :cond_32
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x10000000

    if-ne v0, v2, :cond_a8

    .line 4832
    const/4 v0, 0x0

    :try_start_3b
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3f} :catch_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3b .. :try_end_3f} :catch_88
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3f} :catch_81
    .catchall {:try_start_3b .. :try_end_3f} :catchall_7f

    .line 4833
    .local v1, "client":Landroid/content/ContentProviderClient;
    nop

    .line 4834
    :try_start_40
    invoke-static {v1, p3}, Landroid/provider/MediaStore;->createRemoteCancellationSignalIfNeeded(Landroid/content/ContentProviderClient;Landroid/os/CancellationSignal;)Landroid/provider/IMPCancellationSignal;

    move-result-object v2

    .line 4835
    .local v2, "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4837
    .local v3, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v4, Landroid/provider/MediaStore$1;

    invoke-direct {v4, v3}, Landroid/provider/MediaStore$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 4849
    .local v4, "callback":Landroid/provider/IOpenFileCallback;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4850
    .local v5, "in":Landroid/os/Bundle;
    const-string v6, "open_file_request"

    new-instance v7, Landroid/provider/OpenFileRequest;

    invoke-direct {v7, p1, v4, v2}, Landroid/provider/OpenFileRequest;-><init>(Landroid/net/Uri;Landroid/provider/IOpenFileCallback;Landroid/provider/IMPCancellationSignal;)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4852
    const-string v6, "open_file_call"

    invoke-virtual {v1, v6, v0, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4854
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_73

    .line 4855
    if-eqz v1, :cond_6d

    :try_start_6a
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6d} :catch_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6a .. :try_end_6d} :catch_88
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_81
    .catchall {:try_start_6a .. :try_end_6d} :catchall_7f

    .line 4864
    :cond_6d
    if-eqz p3, :cond_72

    .line 4865
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 4854
    :cond_72
    return-object v6

    .line 4832
    .end local v2    # "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    .end local v3    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/ParcelFileDescriptor;>;"
    .end local v4    # "callback":Landroid/provider/IOpenFileCallback;
    .end local v5    # "in":Landroid/os/Bundle;
    :catchall_73
    move-exception v2

    if-eqz v1, :cond_7e

    :try_start_76
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v3

    :try_start_7b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_7e
    :goto_7e
    throw v2
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7f} :catch_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7b .. :try_end_7f} :catch_88
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7f} :catch_81
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    .line 4864
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_7f
    move-exception v1

    goto :goto_a2

    .line 4861
    :catch_81
    move-exception v1

    .line 4862
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_82
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2

    .line 4857
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_88
    move-exception v1

    .line 4858
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Landroid/provider/ParcelableException;

    .line 4859
    .local v2, "pe":Landroid/provider/ParcelableException;
    invoke-static {v2}, Landroid/provider/MediaStore;->rethrowParcelableExceptionForOpenFile(Landroid/provider/ParcelableException;)V

    .line 4860
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/provider/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3

    .line 4855
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "pe":Landroid/provider/ParcelableException;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_9c
    move-exception v1

    .line 4856
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_a2
    .catchall {:try_start_82 .. :try_end_a2} :catchall_7f

    .line 4864
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_a2
    if-eqz p3, :cond_a7

    .line 4865
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 4867
    :cond_a7
    throw v1

    .line 4828
    :cond_a8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoPicker Uris can only be accessed to read. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4819
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be a media URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist openTypedAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4955
    const-string v0, "resolver"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4956
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4957
    const-string v0, "mimeType"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4959
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4960
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4964
    invoke-static {p1}, Landroid/provider/MediaStore;->isNonCloudPickerUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4966
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 4969
    :cond_32
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/MediaStore;->openTypedAssetFileDescriptorInternal(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 4961
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be a media URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist openTypedAssetFileDescriptorInternal(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4978
    const/4 v1, 0x0

    :try_start_1
    const-string v0, "media"

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_87
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_7} :catch_6f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_64
    .catchall {:try_start_1 .. :try_end_7} :catchall_5e

    move-object v2, v0

    .line 4979
    .local v2, "client":Landroid/content/ContentProviderClient;
    nop

    .line 4980
    :try_start_9
    invoke-static {v2, p4}, Landroid/provider/MediaStore;->createRemoteCancellationSignalIfNeeded(Landroid/content/ContentProviderClient;Landroid/os/CancellationSignal;)Landroid/provider/IMPCancellationSignal;

    move-result-object v0

    move-object v8, v0

    .line 4981
    .local v8, "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4983
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/res/AssetFileDescriptor;>;"
    new-instance v7, Landroid/provider/MediaStore$2;

    invoke-direct {v7, v0}, Landroid/provider/MediaStore$2;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 4995
    .local v7, "callback":Landroid/provider/IOpenAssetFileCallback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v9, v3

    .line 4996
    .local v9, "in":Landroid/os/Bundle;
    const-string v10, "open_asset_file_request"

    new-instance v3, Landroid/provider/OpenAssetFileRequest;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_44

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .local v4, "uri":Landroid/net/Uri;
    .local v5, "mimeType":Ljava/lang/String;
    .local v6, "opts":Landroid/os/Bundle;
    :try_start_25
    invoke-direct/range {v3 .. v8}, Landroid/provider/OpenAssetFileRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/provider/IOpenAssetFileCallback;Landroid/provider/IMPCancellationSignal;)V

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4999
    const-string p1, "open_asset_file_call"

    invoke-virtual {v2, p1, v1, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5001
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_41

    .line 5002
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_5b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_38 .. :try_end_3b} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_55
    .catchall {:try_start_38 .. :try_end_3b} :catchall_91

    .line 5011
    :cond_3b
    if-eqz p4, :cond_40

    .line 5012
    invoke-virtual {p4, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 5001
    :cond_40
    return-object p1

    .line 4978
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/res/AssetFileDescriptor;>;"
    .end local v7    # "callback":Landroid/provider/IOpenAssetFileCallback;
    .end local v8    # "remoteCancellationSignal":Landroid/provider/IMPCancellationSignal;
    .end local v9    # "in":Landroid/os/Bundle;
    :catchall_41
    move-exception v0

    move-object p1, v0

    goto :goto_49

    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catchall_44
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    :goto_49
    if-eqz v2, :cond_54

    :try_start_4b
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_54

    :catchall_4f
    move-exception v0

    move-object p2, v0

    :try_start_51
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_54
    :goto_54
    throw p1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_55} :catch_5b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_51 .. :try_end_55} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_55} :catch_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_91

    .line 5008
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_55
    move-exception v0

    move-object p1, v0

    goto :goto_69

    .line 5004
    :catch_58
    move-exception v0

    move-object p1, v0

    goto :goto_74

    .line 5002
    :catch_5b
    move-exception v0

    move-object p1, v0

    goto :goto_8c

    .line 5011
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catchall_5e
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    goto :goto_93

    .line 5008
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catch_64
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 5009
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .local p1, "e":Ljava/lang/InterruptedException;
    :goto_69
    :try_start_69
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw p2

    .line 5004
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .local p1, "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_6f
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 5005
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .local p1, "e":Ljava/util/concurrent/ExecutionException;
    :goto_74
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Landroid/provider/ParcelableException;

    .line 5006
    .local p2, "pe":Landroid/provider/ParcelableException;
    invoke-static {p2}, Landroid/provider/MediaStore;->rethrowParcelableExceptionForOpenFile(Landroid/provider/ParcelableException;)V

    .line 5007
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Landroid/provider/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw p3

    .line 5002
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .local p1, "uri":Landroid/net/Uri;
    .local p2, "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_87
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 5003
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_8c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw p2
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_91

    .line 5011
    .end local p1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_91
    move-exception v0

    move-object p1, v0

    :goto_93
    if-eqz p4, :cond_98

    .line 5012
    invoke-virtual {p4, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 5014
    :cond_98
    throw p1
.end method

.method public static blacklist readBackup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 5492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5493
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "_data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5494
    const-string v1, "media"

    const-string v2, "read_backup"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 5495
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist removeRecoveryData(Landroid/content/ContentResolver;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5545
    const-string v0, "remove_recovery_data"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5546
    return-void
.end method

.method public static blacklist resolvePlaylistMembers(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "playlistUri"    # Landroid/net/Uri;

    .line 5458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5459
    .local v0, "in":Landroid/os/Bundle;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5460
    const-string v1, "resolve_playlist_members"

    const/4 v2, 0x0

    const-string v3, "media"

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5461
    return-void
.end method

.method private static blacklist rethrowParcelableExceptionForOpenFile(Landroid/provider/ParcelableException;)V
    .registers 2
    .param p0, "exception"    # Landroid/provider/ParcelableException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 5027
    const-class v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0, v0}, Landroid/provider/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 5028
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v0}, Landroid/provider/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 5029
    const-class v0, Ljava/lang/SecurityException;

    invoke-virtual {p0, v0}, Landroid/provider/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 5030
    const-class v0, Landroid/os/OperationCanceledException;

    invoke-virtual {p0, v0}, Landroid/provider/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 5031
    return-void
.end method

.method public static blacklist revokeAllMediaReadForPackages(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageUid"    # I

    .line 5733
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5734
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_33

    .line 5735
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5736
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5739
    const-string v3, "revoke_all_media_grants_for_package"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5740
    const-string v3, "revoke_media_read_for_package"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_27

    .line 5743
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_33

    .line 5745
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_25
    nop

    .line 5746
    return-void

    .line 5734
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :catchall_27
    move-exception v2

    if-eqz v1, :cond_32

    :try_start_2a
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageUid":I
    :cond_32
    :goto_32
    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_33

    .line 5743
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageUid":I
    :catch_33
    move-exception v1

    .line 5744
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist revokeMediaReadForPackages(Landroid/content/Context;ILjava/util/List;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 5756
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5757
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5758
    return-void

    .line 5760
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5761
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_e
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_41

    .line 5762
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_14
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5763
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5764
    const-string v3, "uri_list"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5765
    const-string v3, "revoke_media_read_for_package"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_35

    .line 5768
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_41

    .line 5770
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_33
    nop

    .line 5771
    return-void

    .line 5761
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :catchall_35
    move-exception v2

    if-eqz v1, :cond_40

    :try_start_38
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v3

    :try_start_3d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageUid":I
    .end local p2    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_40
    :goto_40
    throw v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_41

    .line 5768
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageUid":I
    .restart local p2    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_41
    move-exception v1

    .line 5769
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist rewriteToLegacy(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1496
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media_legacy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist runIdleMaintenance(Landroid/content/ContentResolver;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5465
    const-string v0, "run_idle_maintenance"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5466
    return-void
.end method

.method public static blacklist runIdleMaintenanceForStableUris(Landroid/content/ContentResolver;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 5482
    const-string v0, "idle_maintenance_for_stable_uris"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5483
    return-void
.end method

.method public static whitelist scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5570
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "media"

    const-string v3, "scan_file"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5571
    .local v0, "out":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    return-object v1
.end method

.method public static whitelist scanVolume(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5582
    const-string v0, "scan_volume"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5583
    return-void
.end method

.method public static blacklist setIncludePending(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .registers 3
    .param p0, "uriBuilder"    # Landroid/net/Uri$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1420
    const-string v0, "includePending"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1414
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1446
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "requireOriginal"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setStableUrisFlag(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "isEnabled"    # Z

    .line 5471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5472
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "is_stable_uris_enabled"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5473
    const-string v1, "media"

    const-string v2, "set_stable_uris_flag"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5474
    return-void
.end method

.method private static blacklist shouldExcludeUnReliableStorageVolumes()Z
    .registers 2

    .line 4777
    const-wide/32 v0, 0x1753b002

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4778
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->excludeUnreliableVolumes()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 4777
    :goto_12
    return v0
.end method

.method public static blacklist startLegacyMigration(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 1508
    :try_start_0
    const-string v0, "media_legacy"

    const-string v1, "start_legacy_migration"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1511
    goto :goto_11

    .line 1509
    :catch_9
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaStore"

    const-string v2, "Failed to deliver legacy migration event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method private static blacklist verifyUrisBelongToSingleUserId(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 5400
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/MediaStore;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 5401
    .local v0, "userId":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5402
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/MediaStore;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    if-ne v0, v3, :cond_22

    .line 5406
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_f

    .line 5403
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "All the uris should belong to a single user-id"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5407
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2a
    return-void
.end method

.method public static whitelist waitForIdle(Landroid/content/ContentResolver;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5557
    const-string v0, "wait_for_idle"

    const/4 v1, 0x0

    const-string v2, "media"

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5558
    return-void
.end method
