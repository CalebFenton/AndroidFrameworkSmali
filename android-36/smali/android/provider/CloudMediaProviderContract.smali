.class public final Landroid/provider/CloudMediaProviderContract;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CloudMediaProviderContract$SearchSuggestionType;,
        Landroid/provider/CloudMediaProviderContract$SearchSuggestionColumns;,
        Landroid/provider/CloudMediaProviderContract$MediaCategoryType;,
        Landroid/provider/CloudMediaProviderContract$MediaCategoryColumns;,
        Landroid/provider/CloudMediaProviderContract$MediaSetColumns;,
        Landroid/provider/CloudMediaProviderContract$SortOrder;,
        Landroid/provider/CloudMediaProviderContract$MediaCollectionInfo;,
        Landroid/provider/CloudMediaProviderContract$AlbumColumns;,
        Landroid/provider/CloudMediaProviderContract$MediaColumns;,
        Landroid/provider/CloudMediaProviderContract$Capabilities;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_ALBUM_ID:Ljava/lang/String; = "android.provider.extra.ALBUM_ID"

.field public static final blacklist EXTRA_ASYNC_CONTENT_PROVIDER:Ljava/lang/String; = "android.provider.extra.ASYNC_CONTENT_PROVIDER"

.field public static final blacklist EXTRA_AUTHORITY:Ljava/lang/String; = "android.provider.extra.authority"

.field public static final blacklist EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "android.provider.extra.error_message"

.field public static final blacklist EXTRA_FILE_DESCRIPTOR:Ljava/lang/String; = "android.provider.extra.file_descriptor"

.field public static final whitelist EXTRA_LOOPING_PLAYBACK_ENABLED:Ljava/lang/String; = "android.provider.extra.LOOPING_PLAYBACK_ENABLED"

.field public static final blacklist EXTRA_MEDIASTORE_THUMB:Ljava/lang/String; = "android.provider.extra.MEDIASTORE_THUMB"

.field public static final whitelist EXTRA_MEDIA_COLLECTION_ID:Ljava/lang/String; = "android.provider.extra.MEDIA_COLLECTION_ID"

.field public static final whitelist EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.provider.extra.PAGE_SIZE"

.field public static final whitelist EXTRA_PAGE_TOKEN:Ljava/lang/String; = "android.provider.extra.PAGE_TOKEN"

.field public static final whitelist EXTRA_PREVIEW_THUMBNAIL:Ljava/lang/String; = "android.provider.extra.PREVIEW_THUMBNAIL"

.field public static final blacklist EXTRA_PROVIDER_CAPABILITIES:Ljava/lang/String; = "android.provider.extra.PROVIDER_CAPABILITIES"

.field public static final blacklist EXTRA_SIZE_LIMIT_BYTES:Ljava/lang/String; = "android.provider.extra.EXTRA_SIZE_LIMIT_BYTES"

.field public static final whitelist EXTRA_SORT_ORDER:Ljava/lang/String; = "android.provider.extra.SORT_ORDER"

.field public static final blacklist EXTRA_SURFACE_CONTROLLER:Ljava/lang/String; = "android.provider.extra.SURFACE_CONTROLLER"

.field public static final whitelist EXTRA_SURFACE_CONTROLLER_AUDIO_MUTE_ENABLED:Ljava/lang/String; = "android.provider.extra.SURFACE_CONTROLLER_AUDIO_MUTE_ENABLED"

.field public static final blacklist EXTRA_SURFACE_STATE_CALLBACK:Ljava/lang/String; = "android.provider.extra.SURFACE_STATE_CALLBACK"

.field public static final whitelist EXTRA_SYNC_GENERATION:Ljava/lang/String; = "android.provider.extra.SYNC_GENERATION"

.field public static final blacklist KEY_MEDIA_CATEGORY_ID:Ljava/lang/String; = "media_category_id"

.field public static final blacklist KEY_MEDIA_SET_ID:Ljava/lang/String; = "media_set_id"

.field public static final blacklist KEY_PARENT_CATEGORY_ID:Ljava/lang/String; = "parent_category_id"

.field public static final blacklist KEY_PREFIX_TEXT:Ljava/lang/String; = "prefix_text"

.field public static final blacklist KEY_SEARCH_TEXT:Ljava/lang/String; = "search_text"

.field public static final whitelist MANAGE_CLOUD_MEDIA_PROVIDERS_PERMISSION:Ljava/lang/String; = "com.android.providers.media.permission.MANAGE_CLOUD_MEDIA_PROVIDERS"

.field public static final whitelist MEDIA_CATEGORY_TYPE_PEOPLE_AND_PETS:Ljava/lang/String; = "com.android.providers.media.MEDIA_CATEGORY_TYPE_PEOPLE_AND_PETS"

.field public static final blacklist MEDIA_CATEGORY_TYPE_USER_ALBUMS:Ljava/lang/String; = "com.android.providers.media.MEDIA_CATEGORY_TYPE_USER_ALBUMS"

.field public static final blacklist METHOD_CREATE_SURFACE_CONTROLLER:Ljava/lang/String; = "android:createSurfaceController"

.field public static final blacklist METHOD_GET_ASYNC_CONTENT_PROVIDER:Ljava/lang/String; = "android:getAsyncContentProvider"

.field public static final blacklist METHOD_GET_CAPABILITIES:Ljava/lang/String; = "android:getCapabilities"

.field public static final blacklist METHOD_GET_MEDIA_COLLECTION_INFO:Ljava/lang/String; = "android:getMediaCollectionInfo"

.field public static final whitelist PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.CLOUD_MEDIA_PROVIDER"

.field public static final whitelist SEARCH_SUGGESTION_ALBUM:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_ALBUM"

.field public static final whitelist SEARCH_SUGGESTION_DATE:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_DATE"

.field public static final whitelist SEARCH_SUGGESTION_FACE:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_FACE"

.field public static final blacklist SEARCH_SUGGESTION_FAVORITES_ALBUM:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_FAVORITES_ALBUM"

.field public static final blacklist SEARCH_SUGGESTION_HISTORY:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_HISTORY"

.field public static final whitelist SEARCH_SUGGESTION_LOCATION:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_LOCATION"

.field public static final blacklist SEARCH_SUGGESTION_SCREENSHOTS_ALBUM:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_SCREENSHOTS_ALBUM"

.field public static final whitelist SEARCH_SUGGESTION_TEXT:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_TEXT"

.field public static final blacklist SEARCH_SUGGESTION_VIDEOS_ALBUM:Ljava/lang/String; = "com.android.providers.media.SEARCH_SUGGESTION_VIDEOS_ALBUM"

.field public static final whitelist SORT_ORDER_DESC_DATE_TAKEN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CloudMediaProviderContract"

.field public static final blacklist URI_PATH_ALBUM:Ljava/lang/String; = "album"

.field public static final blacklist URI_PATH_DELETED_MEDIA:Ljava/lang/String; = "deleted_media"

.field public static final blacklist URI_PATH_MEDIA:Ljava/lang/String; = "media"

.field public static final blacklist URI_PATH_MEDIA_CATEGORY:Ljava/lang/String; = "media_category"

.field public static final blacklist URI_PATH_MEDIA_COLLECTION_INFO:Ljava/lang/String; = "media_collection_info"

.field public static final blacklist URI_PATH_MEDIA_IN_MEDIA_SET:Ljava/lang/String; = "query_media_in_media_set"

.field public static final blacklist URI_PATH_MEDIA_SET:Ljava/lang/String; = "media_set"

.field public static final blacklist URI_PATH_SEARCH_MEDIA:Ljava/lang/String; = "search_media"

.field public static final blacklist URI_PATH_SEARCH_SUGGESTION:Ljava/lang/String; = "search_suggestion"

.field public static final blacklist URI_PATH_SURFACE_CONTROLLER:Ljava/lang/String; = "surface_controller"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
