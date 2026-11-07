.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$Request;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$CursorTranslator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final whitelist ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final whitelist ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final greylist-max-o COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final whitelist COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final whitelist COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final blacklist COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final blacklist COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final whitelist COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final whitelist COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final whitelist COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final whitelist COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final blacklist COLUMN_MEDIASTORE_URI:Ljava/lang/String; = "mediastore_uri"

.field public static final whitelist COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final whitelist COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final whitelist COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final whitelist COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final whitelist COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final greylist-max-o ERROR_BLOCKED:I = 0x3f2

.field public static final whitelist ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final whitelist ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final whitelist ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final whitelist ERROR_FILE_ERROR:I = 0x3e9

.field public static final whitelist ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final whitelist ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final whitelist ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final whitelist ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final whitelist ERROR_UNKNOWN:I = 0x3e8

.field public static final whitelist EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final whitelist EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final whitelist INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final greylist-max-o NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final whitelist PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final whitelist PAUSED_UNKNOWN:I = 0x4

.field public static final whitelist PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final whitelist PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final whitelist STATUS_FAILED:I = 0x10

.field public static final whitelist STATUS_PAUSED:I = 0x4

.field public static final whitelist STATUS_PENDING:I = 0x1

.field public static final whitelist STATUS_RUNNING:I = 0x2

.field public static final whitelist STATUS_SUCCESSFUL:I = 0x8

.field public static final greylist-max-r UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mAccessFilename:Z

.field private greylist-max-o mBaseUri:Landroid/net/Uri;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 75
    nop

    .line 355
    const-string/jumbo v15, "local_uri"

    const-string/jumbo v16, "reason"

    const-string v1, "_id"

    const-string/jumbo v2, "local_filename"

    const-string/jumbo v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string/jumbo v5, "title"

    const-string v6, "description"

    const-string/jumbo v7, "uri"

    const-string/jumbo v8, "status"

    const-string/jumbo v9, "hint"

    const-string/jumbo v10, "media_type"

    const-string/jumbo v11, "total_size"

    const-string/jumbo v12, "last_modified_timestamp"

    const-string v13, "bytes_so_far"

    const-string v14, "allow_write"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1056
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1057
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1061
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1062
    return-void
.end method

.method private static blacklist extractDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 1611
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1612
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 1613
    return-object p0

    .line 1615
    :cond_e
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1616
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1618
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 1628
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1629
    :cond_4
    invoke-static {p0}, Landroid/app/DownloadManager;->extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1631
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1632
    .local v1, "lastDot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 1633
    return-object v0

    .line 1635
    :cond_12
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1406
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1307
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 1309
    :catch_f
    move-exception v0

    .line 1310
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1390
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 1392
    :catch_f
    move-exception v0

    .line 1393
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static greylist-max-r getWhereArgsForIds([J)[Ljava/lang/String;
    .registers 3
    .param p0, "ids"    # [J

    .line 1680
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 1681
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "ids"    # [J
    .param p1, "args"    # [Ljava/lang/String;

    .line 1689
    nop

    .line 1690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 1691
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1690
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1693
    .end local v0    # "i":I
    :cond_10
    return-object p1
.end method

.method static greylist-max-r getWhereClauseForIds([J)Ljava/lang/String;
    .registers 4
    .param p0, "ids"    # [J

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1663
    .local v0, "whereClause":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 1665
    if-lez v1, :cond_15

    .line 1666
    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    :cond_15
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1671
    .end local v1    # "i":I
    :cond_22
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isActiveNetworkExpensive(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist resolveMimeType(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 1594
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DownloadManager;->extractFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    if-nez v0, :cond_d

    return-object v1

    .line 1597
    :cond_d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1598
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1599
    .local v2, "mimeType":Ljava/lang/String;
    if-nez v2, :cond_1e

    return-object v1

    .line 1601
    :cond_1e
    return-object v2
.end method

.method private static greylist-max-o validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 1643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1646
    return-void

    .line 1644
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .registers 21
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1449
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v9

    return-wide v9
.end method

.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 25
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1495
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v12

    return-wide v12
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .registers 22
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1520
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v10

    return-wide v10
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .param p10, "uri"    # Landroid/net/Uri;
    .param p11, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1546
    move-object/from16 v0, p10

    const-string/jumbo v1, "title"

    invoke-static {v1, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string v1, "description"

    invoke-static {v1, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string/jumbo v1, "path"

    invoke-static {v1, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v1, "mimeType"

    invoke-static {v1, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-ltz v1, :cond_be

    .line 1556
    if-eqz v0, :cond_27

    .line 1557
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .local v1, "request":Landroid/app/DownloadManager$Request;
    goto :goto_2f

    .line 1559
    .end local v1    # "request":Landroid/app/DownloadManager$Request;
    :cond_27
    new-instance v1, Landroid/app/DownloadManager$Request;

    const-string/jumbo v2, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 1561
    .restart local v1    # "request":Landroid/app/DownloadManager$Request;
    :goto_2f
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v2

    .line 1562
    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v2

    .line 1563
    invoke-virtual {v2, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1564
    if-eqz p11, :cond_45

    .line 1565
    const-string v2, "Referer"

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1567
    :cond_45
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1568
    .local v2, "values":Landroid/content/ContentValues;
    nop

    .line 1569
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1568
    const-string v4, "destination"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1570
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/DownloadManager;->resolveMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1573
    const-string/jumbo v3, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1574
    nop

    .line 1575
    const/4 v3, 0x2

    if-eqz p3, :cond_85

    const/4 v4, 0x0

    goto :goto_86

    .line 1576
    :cond_85
    move v4, v3

    .line 1575
    :goto_86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1574
    const-string/jumbo v5, "scanned"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1577
    if-eqz p8, :cond_94

    .line 1578
    const/4 v3, 0x3

    goto :goto_95

    :cond_94
    nop

    .line 1577
    :goto_95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "visibility"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "allow_write"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1580
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1581
    .local v3, "downloadUri":Landroid/net/Uri;
    if-nez v3, :cond_b5

    .line 1582
    const-wide/16 v4, -0x1

    return-wide v4

    .line 1584
    :cond_b5
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 1551
    .end local v1    # "request":Landroid/app/DownloadManager$Request;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "downloadUri":Landroid/net/Uri;
    :cond_be
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " invalid value for param: totalBytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist enqueue(Landroid/app/DownloadManager$Request;)J
    .registers 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .line 1124
    iget-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1125
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1126
    .local v1, "downloadUri":Landroid/net/Uri;
    if-nez v1, :cond_13

    .line 1128
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1131
    :cond_13
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1132
    .local v2, "id":J
    return-wide v2
.end method

.method public varargs blacklist forceDownload([J)V
    .registers 7
    .param p1, "ids"    # [J

    .line 1290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1291
    .local v0, "values":Landroid/content/ContentValues;
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1293
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bypass_recommended_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1295
    return-void
.end method

.method public greylist-max-o getDownloadUri(J)Landroid/net/Uri;
    .registers 4
    .param p1, "id"    # J

    .line 1654
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # J

    .line 1234
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1235
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1237
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_10
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    move-object v1, v2

    .line 1238
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 1239
    nop

    .line 1245
    if-eqz v1, :cond_1e

    .line 1246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1239
    :cond_1e
    return-object v2

    .line 1241
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1242
    const-string/jumbo v2, "media_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3c

    .line 1245
    if-eqz v1, :cond_35

    .line 1246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1242
    :cond_35
    return-object v2

    .line 1245
    :cond_36
    if-eqz v1, :cond_3b

    .line 1246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1250
    :cond_3b
    return-object v2

    .line 1245
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_42

    .line 1246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_42
    throw v2
.end method

.method public whitelist getUriForDownloadedFile(J)Landroid/net/Uri;
    .registers 8
    .param p1, "id"    # J

    .line 1203
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1204
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1206
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_10
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_46

    move-object v1, v2

    .line 1207
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 1208
    nop

    .line 1217
    if-eqz v1, :cond_1e

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_1e
    return-object v2

    .line 1210
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1211
    const-string/jumbo v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1212
    .local v3, "status":I
    const/16 v4, 0x8

    if-ne v4, v3, :cond_40

    .line 1213
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_46

    .line 1217
    if-eqz v1, :cond_3f

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1213
    :cond_3f
    return-object v2

    .line 1217
    .end local v3    # "status":I
    :cond_40
    if-eqz v1, :cond_45

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1222
    :cond_45
    return-object v2

    .line 1217
    :catchall_46
    move-exception v2

    if-eqz v1, :cond_4c

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1220
    :cond_4c
    throw v2
.end method

.method public varargs blacklist markRowDeleted([J)I
    .registers 6
    .param p1, "ids"    # [J

    .line 1145
    if-eqz p1, :cond_16

    array-length v0, p1

    if-eqz v0, :cond_16

    .line 1149
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1147
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onMediaStoreDownloadsDeleted(Landroid/util/LongSparseArray;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1096
    .local p1, "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1097
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_57

    .line 1098
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1099
    .local v1, "callExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 1100
    .local v2, "ids":[J
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1101
    .local v3, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1f
    if-ltz v4, :cond_32

    .line 1102
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 1103
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1101
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 1105
    .end local v4    # "i":I
    :cond_32
    const-string/jumbo v4, "ids"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1106
    const-string/jumbo v4, "mime_types"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v4, "mediastore_downloads_deleted"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_4b

    .line 1110
    .end local v1    # "callExtras":Landroid/os/Bundle;
    .end local v2    # "ids":[J
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    if-eqz v0, :cond_4a

    :try_start_47
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_57

    .line 1112
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_4a
    goto :goto_58

    .line 1096
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_4b
    move-exception v1

    if-eqz v0, :cond_56

    :try_start_4e
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v2

    :try_start_53
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :cond_56
    :goto_56
    throw v1
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_57} :catch_57

    .line 1110
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :catch_57
    move-exception v0

    .line 1113
    :goto_58
    return-void
.end method

.method public whitelist openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .registers 3
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .line 1171
    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "query"    # Landroid/app/DownloadManager$Query;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1177
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_c

    .line 1178
    const/4 v1, 0x0

    return-object v1

    .line 1180
    :cond_c
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs whitelist remove([J)I
    .registers 3
    .param p1, "ids"    # [J

    .line 1161
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o rename(Landroid/content/Context;JLjava/lang/String;)Z
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    .line 1324
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static {v4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 1329
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    .line 1330
    .local v6, "query":Landroid/app/DownloadManager$Query;
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v8

    .line 1331
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_15a

    .line 1334
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 1335
    const-string/jumbo v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1336
    .local v0, "status":I
    const/16 v9, 0x8

    if-ne v0, v9, :cond_121

    .line 1340
    const-string/jumbo v9, "local_filename"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1341
    .local v9, "filePath":Ljava/lang/String;
    if-eqz v9, :cond_104

    .line 1344
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_4c
    .catchall {:try_start_21 .. :try_end_4c} :catchall_157

    if-eqz v10, :cond_e7

    .line 1348
    .end local v0    # "status":I
    nop

    .line 1351
    if-eqz v8, :cond_54

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1353
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, "before":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1356
    .local v8, "after":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_ce

    .line 1359
    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 1366
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v0}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1367
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v8}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1369
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1370
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "title"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v11, "_data"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v11, "mediaprovider_uri"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1373
    new-array v11, v5, [J

    aput-wide v2, v11, v7

    .line 1375
    .local v11, "ids":[J
    iget-object v12, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1376
    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v15

    .line 1375
    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-ne v12, v5, :cond_a9

    goto :goto_aa

    :cond_a9
    move v5, v7

    :goto_aa
    return v5

    .line 1360
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v11    # "ids":[J
    :cond_ab
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename file from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1357
    :cond_ce
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File already exists: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1345
    .local v0, "status":I
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_e7
    :try_start_e7
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloaded file doesn\'t exist anymore: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1346
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1342
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_104
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download doesn\'t have a valid file path: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1343
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1337
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_121
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download is not completed yet: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1338
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1349
    .end local v0    # "status":I
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_13e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0

    .line 1330
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :catchall_157
    move-exception v0

    move-object v5, v0

    goto :goto_173

    .line 1332
    :cond_15a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing cursor for download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0
    :try_end_173
    .catchall {:try_start_e7 .. :try_end_173} :catchall_157

    .line 1330
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :goto_173
    if-eqz v8, :cond_17d

    :try_start_175
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_179

    goto :goto_17d

    :catchall_179
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17d
    :goto_17d
    throw v5

    .line 1325
    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_17e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid filename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs greylist restartDownload([J)V
    .registers 8
    .param p1, "ids"    # [J

    .line 1261
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1263
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_97

    const-string/jumbo v2, "status"

    if-nez v1, :cond_51

    .line 1264
    :try_start_19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1265
    .local v1, "status":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2a

    goto :goto_4d

    .line 1266
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot restart incomplete download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    .line 1267
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "ids":[J
    throw v2

    .line 1263
    .end local v1    # "status":I
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "ids":[J
    :cond_4d
    :goto_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_97

    goto :goto_10

    .line 1271
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1272
    nop

    .line 1274
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "total_bytes"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    const-string v3, "_data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1278
    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string/jumbo v2, "numfailed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    iget-object v2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1271
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_97
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1272
    throw v1
.end method

.method public greylist setAccessAllDownloads(Z)V
    .registers 3
    .param p1, "accessAllDownloads"    # Z

    .line 1071
    if-eqz p1, :cond_7

    .line 1072
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_b

    .line 1074
    :cond_7
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1076
    :goto_b
    return-void
.end method

.method public greylist-max-p setAccessFilename(Z)V
    .registers 2
    .param p1, "accessFilename"    # Z

    .line 1081
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1082
    return-void
.end method
