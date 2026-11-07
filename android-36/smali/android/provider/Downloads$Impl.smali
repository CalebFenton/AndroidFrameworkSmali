.class public final Landroid/provider/Downloads$Impl;
.super Ljava/lang/Object;
.source "Downloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Downloads$Impl$RequestHeaders;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field public static final greylist-max-o ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final greylist ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o AUTHORITY:Ljava/lang/String; = "downloads"

.field public static final greylist-max-r COLUMN_ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types"

.field public static final greylist-max-o COLUMN_ALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final greylist-max-r COLUMN_ALLOW_ROAMING:Ljava/lang/String; = "allow_roaming"

.field public static final greylist-max-o COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final greylist-max-o COLUMN_APP_DATA:Ljava/lang/String; = "entity"

.field public static final greylist-max-o COLUMN_BYPASS_RECOMMENDED_SIZE_LIMIT:Ljava/lang/String; = "bypass_recommended_size_limit"

.field public static final greylist-max-o COLUMN_CONTROL:Ljava/lang/String; = "control"

.field public static final greylist-max-r COLUMN_COOKIE_DATA:Ljava/lang/String; = "cookiedata"

.field public static final greylist-max-o COLUMN_CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final greylist-max-r COLUMN_DELETED:Ljava/lang/String; = "deleted"

.field public static final greylist-max-r COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final greylist-max-r COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final greylist-max-o COLUMN_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final greylist-max-o COLUMN_FAILED_CONNECTIONS:Ljava/lang/String; = "numfailed"

.field public static final greylist-max-r COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final greylist-max-o COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field public static final greylist-max-r COLUMN_IS_PUBLIC_API:Ljava/lang/String; = "is_public_api"

.field public static final greylist-max-r COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI:Ljava/lang/String; = "is_visible_in_downloads_ui"

.field public static final greylist-max-o COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final greylist-max-o COLUMN_LAST_UPDATESRC:Ljava/lang/String; = "lastUpdateSrc"

.field public static final greylist-max-o COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final blacklist COLUMN_MEDIASTORE_URI:Ljava/lang/String; = "mediastore_uri"

.field public static final greylist-max-r COLUMN_MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final greylist-max-r COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final greylist-max-r COLUMN_NOTIFICATION_CLASS:Ljava/lang/String; = "notificationclass"

.field public static final greylist-max-r COLUMN_NOTIFICATION_EXTRAS:Ljava/lang/String; = "notificationextras"

.field public static final greylist-max-r COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field public static final greylist-max-o COLUMN_NO_INTEGRITY:Ljava/lang/String; = "no_integrity"

.field public static final greylist-max-o COLUMN_OTHER_UID:Ljava/lang/String; = "otheruid"

.field public static final greylist-max-r COLUMN_REFERER:Ljava/lang/String; = "referer"

.field public static final greylist-max-o COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final greylist-max-r COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final greylist-max-o COLUMN_TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final greylist-max-r COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final greylist-max-o COLUMN_USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final greylist-max-r COLUMN_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final greylist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o CONTROL_PAUSED:I = 0x1

.field public static final greylist-max-o CONTROL_RUN:I = 0x0

.field public static final greylist-max-o DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final greylist-max-o DESTINATION_CACHE_PARTITION_NOROAMING:I = 0x3

.field public static final greylist-max-r DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final greylist-max-o DESTINATION_EXTERNAL:I = 0x0

.field public static final greylist-max-r DESTINATION_FILE_URI:I = 0x4

.field public static final greylist-max-o DESTINATION_NON_DOWNLOADMANAGER_DOWNLOAD:I = 0x6

.field public static final greylist-max-o DESTINATION_SYSTEMCACHE_PARTITION:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_REQUIRES_CHARGING:I = 0x1

.field public static final greylist-max-o FLAG_REQUIRES_DEVICE_IDLE:I = 0x2

.field public static final greylist-max-o LAST_UPDATESRC_DONT_NOTIFY_DOWNLOADSVC:I = 0x1

.field public static final greylist-max-o LAST_UPDATESRC_NOT_RELEVANT:I = 0x0

.field public static final blacklist MEDIA_NOT_SCANNABLE:I = 0x2

.field public static final blacklist MEDIA_NOT_SCANNED:I = 0x0

.field public static final blacklist MEDIA_SCANNED:I = 0x1

.field public static final greylist-max-o MIN_ARTIFICIAL_ERROR_STATUS:I = 0x1e8

.field public static final greylist-max-o PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER"

.field public static final greylist-max-o PERMISSION_ACCESS_ADVANCED:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

.field public static final greylist-max-o PERMISSION_ACCESS_ALL:Ljava/lang/String; = "android.permission.ACCESS_ALL_DOWNLOADS"

.field public static final greylist-max-o PERMISSION_CACHE:Ljava/lang/String; = "android.permission.ACCESS_CACHE_FILESYSTEM"

.field public static final greylist-max-o PERMISSION_CACHE_NON_PURGEABLE:Ljava/lang/String; = "android.permission.DOWNLOAD_CACHE_NON_PURGEABLE"

.field public static final greylist-max-o PERMISSION_NO_NOTIFICATION:Ljava/lang/String; = "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

.field public static final greylist-max-o PERMISSION_SEND_INTENTS:Ljava/lang/String; = "android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

.field public static final greylist PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

.field public static final greylist-max-o PUBLICLY_ACCESSIBLE_DOWNLOADS_URI_SEGMENT:Ljava/lang/String; = "public_downloads"

.field public static final greylist-max-o STATUS_BAD_REQUEST:I = 0x190

.field public static final greylist-max-o STATUS_BLOCKED:I = 0x1f2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATUS_CANCELED:I = 0x1ea

.field public static final greylist-max-o STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final greylist-max-o STATUS_DEVICE_NOT_FOUND_ERROR:I = 0xc7

.field public static final greylist-max-o STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final greylist-max-o STATUS_FILE_ERROR:I = 0x1ec

.field public static final greylist-max-o STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final greylist-max-o STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final greylist-max-o STATUS_INSUFFICIENT_SPACE_ERROR:I = 0xc6

.field public static final greylist-max-o STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final greylist-max-o STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final greylist-max-o STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final greylist-max-o STATUS_PENDING:I = 0xbe

.field public static final greylist-max-o STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final greylist-max-o STATUS_QUEUED_FOR_WIFI:I = 0xc4

.field public static final greylist-max-o STATUS_RUNNING:I = 0xc0

.field public static final greylist-max-o STATUS_SUCCESS:I = 0xc8

.field public static final greylist-max-o STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final greylist-max-o STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final greylist-max-o STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final greylist-max-o STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final greylist-max-o STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final greylist-max-o STATUS_WAITING_TO_RETRY:I = 0xc2

.field public static final greylist-max-o VISIBILITY_HIDDEN:I = 0x2

.field public static final greylist-max-o VISIBILITY_VISIBLE:I = 0x0

.field public static final greylist-max-o VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final greylist-max-o _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    nop

    .line 95
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    nop

    .line 103
    const-string v0, "content://downloads/all_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 113
    nop

    .line 114
    const-string v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    .line 113
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r isNotificationToBeDisplayed(I)Z
    .registers 3
    .param p0, "visibility"    # I

    .line 605
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static greylist-max-o isStatusClientError(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 587
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist isStatusCompleted(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 615
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x190

    if-lt p0, v0, :cond_12

    const/16 v0, 0x258

    if-ge p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static greylist isStatusError(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 580
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o isStatusInformational(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 564
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o isStatusServerError(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 594
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist isStatusSuccess(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 572
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o statusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .line 779
    sparse-switch p0, :sswitch_data_50

    .line 804
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 803
    :sswitch_8
    const-string v0, "BLOCKED"

    return-object v0

    .line 802
    :sswitch_b
    const-string v0, "TOO_MANY_REDIRECTS"

    return-object v0

    .line 801
    :sswitch_e
    const-string v0, "HTTP_EXCEPTION"

    return-object v0

    .line 800
    :sswitch_11
    const-string v0, "HTTP_DATA_ERROR"

    return-object v0

    .line 799
    :sswitch_14
    const-string v0, "UNHANDLED_HTTP_CODE"

    return-object v0

    .line 798
    :sswitch_17
    const-string v0, "UNHANDLED_REDIRECT"

    return-object v0

    .line 797
    :sswitch_1a
    const-string v0, "FILE_ERROR"

    return-object v0

    .line 796
    :sswitch_1d
    const-string v0, "UNKNOWN_ERROR"

    return-object v0

    .line 795
    :sswitch_20
    const-string v0, "CANCELED"

    return-object v0

    .line 794
    :sswitch_23
    const-string v0, "CANNOT_RESUME"

    return-object v0

    .line 793
    :sswitch_26
    const-string v0, "FILE_ALREADY_EXISTS_ERROR"

    return-object v0

    .line 792
    :sswitch_29
    const-string v0, "PRECONDITION_FAILED"

    return-object v0

    .line 791
    :sswitch_2c
    const-string v0, "LENGTH_REQUIRED"

    return-object v0

    .line 790
    :sswitch_2f
    const-string v0, "NOT_ACCEPTABLE"

    return-object v0

    .line 789
    :sswitch_32
    const-string v0, "BAD_REQUEST"

    return-object v0

    .line 788
    :sswitch_35
    const-string v0, "SUCCESS"

    return-object v0

    .line 787
    :sswitch_38
    const-string v0, "DEVICE_NOT_FOUND_ERROR"

    return-object v0

    .line 786
    :sswitch_3b
    const-string v0, "INSUFFICIENT_SPACE_ERROR"

    return-object v0

    .line 785
    :sswitch_3e
    const-string v0, "QUEUED_FOR_WIFI"

    return-object v0

    .line 784
    :sswitch_41
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 783
    :sswitch_44
    const-string v0, "WAITING_TO_RETRY"

    return-object v0

    .line 782
    :sswitch_47
    const-string v0, "PAUSED_BY_APP"

    return-object v0

    .line 781
    :sswitch_4a
    const-string v0, "RUNNING"

    return-object v0

    .line 780
    :sswitch_4d
    const-string v0, "PENDING"

    return-object v0

    :sswitch_data_50
    .sparse-switch
        0xbe -> :sswitch_4d
        0xc0 -> :sswitch_4a
        0xc1 -> :sswitch_47
        0xc2 -> :sswitch_44
        0xc3 -> :sswitch_41
        0xc4 -> :sswitch_3e
        0xc6 -> :sswitch_3b
        0xc7 -> :sswitch_38
        0xc8 -> :sswitch_35
        0x190 -> :sswitch_32
        0x196 -> :sswitch_2f
        0x19b -> :sswitch_2c
        0x19c -> :sswitch_29
        0x1e8 -> :sswitch_26
        0x1e9 -> :sswitch_23
        0x1ea -> :sswitch_20
        0x1eb -> :sswitch_1d
        0x1ec -> :sswitch_1a
        0x1ed -> :sswitch_17
        0x1ee -> :sswitch_14
        0x1ef -> :sswitch_11
        0x1f0 -> :sswitch_e
        0x1f1 -> :sswitch_b
        0x1f2 -> :sswitch_8
    .end sparse-switch
.end method
