.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAccessFilename:Z

.field private mBaseUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 328
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 329
    const-string/jumbo v1, "_id"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 330
    const-string/jumbo v1, "_data AS local_filename"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 331
    const-string/jumbo v1, "mediaprovider_uri"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 332
    const-string/jumbo v1, "destination"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 333
    const-string/jumbo v1, "title"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 334
    const-string/jumbo v1, "description"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 335
    const-string/jumbo v1, "uri"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 336
    const-string/jumbo v1, "status"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 337
    const-string/jumbo v1, "hint"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 338
    const-string/jumbo v1, "mimetype AS media_type"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 339
    const-string/jumbo v1, "total_bytes AS total_size"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 340
    const-string/jumbo v1, "lastmod AS last_modified_timestamp"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 341
    const-string/jumbo v1, "current_bytes AS bytes_so_far"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 342
    const-string/jumbo v1, "allow_write"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 347
    const-string/jumbo v1, "\'placeholder\' AS local_uri"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 348
    const-string/jumbo v1, "\'placeholder\' AS reason"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 328
    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    #@6e
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 971
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@5
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@7
    .line 978
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@d
    .line 979
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    #@13
    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v0

    #@17
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@19
    const/16 v1, 0x18

    #@1b
    if-ge v0, v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    :goto_0
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    #@20
    .line 977
    return-void

    #@21
    .line 983
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1297
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1185
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 1186
    const-string/jumbo v2, "download_manager_max_bytes_over_mobile"

    #@7
    .line 1185
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    #@a
    move-result-wide v2

    #@b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 1187
    :catch_0
    move-exception v0

    #@11
    .line 1188
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1281
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 1282
    const-string/jumbo v2, "download_manager_recommended_max_bytes_over_mobile"

    #@7
    .line 1281
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    #@a
    move-result-wide v2

    #@b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 1283
    :catch_0
    move-exception v0

    #@11
    .line 1284
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .param p0, "ids"    # [J

    #@0
    .prologue
    .line 1452
    array-length v2, p0

    #@1
    new-array v1, v2, [Ljava/lang/String;

    #@3
    .line 1453
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1454
    aget-wide v2, p0, v0

    #@9
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    .line 1453
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1456
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    #@0
    .prologue
    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1436
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1437
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_1

    #@f
    .line 1438
    if-lez v0, :cond_0

    #@11
    .line 1439
    const-string/jumbo v2, "OR "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1441
    :cond_0
    const-string/jumbo v2, "_id"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1442
    const-string/jumbo v2, " = ? "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1437
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1444
    :cond_1
    const-string/jumbo v2, ")"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 1445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1291
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " can\'t be null"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1416
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    #@0
    .prologue
    .line 1326
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move-object/from16 v4, p4

    #@9
    move-object/from16 v5, p5

    #@b
    move-wide/from16 v6, p6

    #@d
    move/from16 v8, p8

    #@f
    .line 1325
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1357
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object/from16 v4, p4

    #@7
    move-object/from16 v5, p5

    #@9
    move-wide/from16 v6, p6

    #@b
    move/from16 v8, p8

    #@d
    move-object/from16 v10, p9

    #@f
    move-object/from16 v11, p10

    #@11
    .line 1356
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    #@14
    move-result-wide v0

    #@15
    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z

    #@0
    .prologue
    .line 1365
    const/4 v10, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object/from16 v4, p4

    #@8
    move-object/from16 v5, p5

    #@a
    move-wide/from16 v6, p6

    #@c
    move/from16 v8, p8

    #@e
    move/from16 v9, p9

    #@10
    .line 1364
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 8
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

    #@0
    .prologue
    .line 1373
    const-string/jumbo v5, "title"

    #@3
    invoke-static {v5, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1374
    const-string/jumbo v5, "description"

    #@9
    invoke-static {v5, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1375
    const-string/jumbo v5, "path"

    #@f
    invoke-static {v5, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1376
    const-string/jumbo v5, "mimeType"

    #@15
    invoke-static {v5, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1377
    const-wide/16 v6, 0x0

    #@1a
    cmp-long v5, p6, v6

    #@1c
    if-gez v5, :cond_0

    #@1e
    .line 1378
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v6, " invalid value for param: totalBytes"

    #@23
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 1383
    :cond_0
    if-eqz p10, :cond_2

    #@29
    .line 1384
    new-instance v3, Landroid/app/DownloadManager$Request;

    #@2b
    move-object/from16 v0, p10

    #@2d
    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    #@30
    .line 1388
    .local v3, "request":Landroid/app/DownloadManager$Request;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    #@3b
    .line 1391
    if-eqz p11, :cond_1

    #@3d
    .line 1392
    const-string/jumbo v5, "Referer"

    #@40
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v3, v5, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    #@47
    .line 1394
    :cond_1
    const/4 v5, 0x0

    #@48
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    #@4b
    move-result-object v4

    #@4c
    .line 1395
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "destination"

    #@4f
    .line 1396
    const/4 v6, 0x6

    #@50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v6

    #@54
    .line 1395
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@57
    .line 1397
    const-string/jumbo v5, "_data"

    #@5a
    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 1398
    const-string/jumbo v5, "status"

    #@60
    const/16 v6, 0xc8

    #@62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@69
    .line 1399
    const-string/jumbo v5, "total_bytes"

    #@6c
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@73
    .line 1400
    const-string/jumbo v6, "scanned"

    #@76
    .line 1401
    if-eqz p3, :cond_3

    #@78
    const/4 v5, 0x0

    #@79
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v5

    #@7d
    .line 1400
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@80
    .line 1403
    const-string/jumbo v6, "visibility"

    #@83
    if-eqz p8, :cond_4

    #@85
    .line 1404
    const/4 v5, 0x3

    #@86
    .line 1403
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@8d
    .line 1405
    const-string/jumbo v6, "allow_write"

    #@90
    if-eqz p9, :cond_5

    #@92
    const/4 v5, 0x1

    #@93
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@9a
    .line 1406
    iget-object v5, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@9c
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@9e
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@a1
    move-result-object v2

    #@a2
    .line 1407
    .local v2, "downloadUri":Landroid/net/Uri;
    if-nez v2, :cond_6

    #@a4
    .line 1408
    const-wide/16 v6, -0x1

    #@a6
    return-wide v6

    #@a7
    .line 1386
    .end local v2    # "downloadUri":Landroid/net/Uri;
    .end local v3    # "request":Landroid/app/DownloadManager$Request;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v3, Landroid/app/DownloadManager$Request;

    #@a9
    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    #@ac
    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    #@af
    .restart local v3    # "request":Landroid/app/DownloadManager$Request;
    goto :goto_0

    #@b0
    .line 1402
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x2

    #@b1
    goto :goto_1

    #@b2
    .line 1404
    :cond_4
    const/4 v5, 0x2

    #@b3
    goto :goto_2

    #@b4
    .line 1405
    :cond_5
    const/4 v5, 0x0

    #@b5
    goto :goto_3

    #@b6
    .line 1410
    .restart local v2    # "downloadUri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@bd
    move-result-wide v6

    #@be
    return-wide v6
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    #@0
    .prologue
    .line 1013
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    #@5
    move-result-object v1

    #@6
    .line 1014
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@8
    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@a
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    .line 1015
    .local v0, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@15
    move-result-wide v2

    #@16
    .line 1016
    .local v2, "id":J
    return-wide v2
.end method

.method public varargs forceDownload([J)V
    .locals 5
    .param p1, "ids"    # [J

    #@0
    .prologue
    .line 1168
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 1169
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    #@8
    const/16 v2, 0xbe

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@11
    .line 1170
    const-string/jumbo v1, "control"

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c
    .line 1171
    const-string/jumbo v1, "bypass_recommended_size_limit"

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@27
    .line 1172
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@29
    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@2b
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@36
    .line 1167
    return-void
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1428
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1113
    new-instance v2, Landroid/app/DownloadManager$Query;

    #@3
    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [J

    #@9
    const/4 v4, 0x0

    #@a
    aput-wide p1, v3, v4

    #@c
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    #@f
    move-result-object v1

    #@10
    .line 1114
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    #@11
    .line 1116
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 1117
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@17
    .line 1124
    if-eqz v0, :cond_0

    #@19
    .line 1125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1c
    .line 1118
    :cond_0
    return-object v5

    #@1d
    .line 1120
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 1121
    const-string/jumbo v2, "media_type"

    #@26
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@29
    move-result v2

    #@2a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v2

    #@2e
    .line 1124
    if-eqz v0, :cond_2

    #@30
    .line 1125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@33
    .line 1121
    :cond_2
    return-object v2

    #@34
    .line 1124
    :cond_3
    if-eqz v0, :cond_4

    #@36
    .line 1125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@39
    .line 1129
    :cond_4
    return-object v5

    #@3a
    .line 1123
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@3b
    .line 1124
    if-eqz v0, :cond_5

    #@3d
    .line 1125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@40
    .line 1123
    :cond_5
    throw v2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 7
    .param p1, "id"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1082
    new-instance v3, Landroid/app/DownloadManager$Query;

    #@3
    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    #@6
    const/4 v4, 0x1

    #@7
    new-array v4, v4, [J

    #@9
    const/4 v5, 0x0

    #@a
    aput-wide p1, v4, v5

    #@c
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    #@f
    move-result-object v1

    #@10
    .line 1083
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    #@11
    .line 1085
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 1086
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@17
    .line 1096
    if-eqz v0, :cond_0

    #@19
    .line 1097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1c
    .line 1087
    :cond_0
    return-object v6

    #@1d
    .line 1089
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 1090
    const-string/jumbo v3, "status"

    #@26
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@29
    move-result v3

    #@2a
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    #@2d
    move-result v2

    #@2e
    .line 1091
    .local v2, "status":I
    const/16 v3, 0x8

    #@30
    if-ne v3, v2, :cond_3

    #@32
    .line 1092
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    #@34
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-object v3

    #@38
    .line 1096
    if-eqz v0, :cond_2

    #@3a
    .line 1097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@3d
    .line 1092
    :cond_2
    return-object v3

    #@3e
    .line 1096
    .end local v2    # "status":I
    :cond_3
    if-eqz v0, :cond_4

    #@40
    .line 1097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@43
    .line 1101
    :cond_4
    return-object v6

    #@44
    .line 1095
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    #@45
    .line 1096
    if-eqz v0, :cond_5

    #@47
    .line 1097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@4a
    .line 1095
    :cond_5
    throw v3
.end method

.method public varargs markRowDeleted([J)I
    .locals 4
    .param p1, "ids"    # [J

    #@0
    .prologue
    .line 1029
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_1

    #@5
    .line 1031
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "input param \'ids\' can\'t be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1033
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@10
    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@12
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1069
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "r"

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 5
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1055
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@3
    sget-object v2, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    #@5
    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@7
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    #@a
    move-result-object v0

    #@b
    .line 1056
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@d
    .line 1057
    return-object v4

    #@e
    .line 1059
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    #@10
    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@12
    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    #@14
    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    #@17
    return-object v1
.end method

.method public varargs remove([J)I
    .locals 1
    .param p1, "ids"    # [J

    #@0
    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1202
    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    #@3
    move-result v13

    #@4
    if-nez v13, :cond_0

    #@6
    .line 1203
    new-instance v13, Ljava/lang/SecurityException;

    #@8
    new-instance v14, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    move-object/from16 v0, p4

    #@f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v14

    #@13
    const-string/jumbo v15, " is not a valid filename"

    #@16
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v14

    #@1a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v14

    #@1e
    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@21
    throw v13

    #@22
    .line 1206
    :cond_0
    new-instance v13, Landroid/app/DownloadManager$Query;

    #@24
    invoke-direct {v13}, Landroid/app/DownloadManager$Query;-><init>()V

    #@27
    const/4 v14, 0x1

    #@28
    new-array v14, v14, [J

    #@2a
    const/4 v15, 0x0

    #@2b
    aput-wide p2, v14, v15

    #@2d
    invoke-virtual {v13, v14}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    #@30
    move-result-object v10

    #@31
    .line 1207
    .local v10, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x0

    #@32
    .line 1208
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    #@33
    .line 1209
    .local v8, "oldDisplayName":Ljava/lang/String;
    const/4 v7, 0x0

    #@34
    .line 1211
    .local v7, "mimeType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v4

    #@3a
    .line 1212
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_2

    #@3c
    .line 1213
    const/4 v13, 0x0

    #@3d
    .line 1224
    if-eqz v4, :cond_1

    #@3f
    .line 1225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@42
    .line 1213
    :cond_1
    return v13

    #@43
    .line 1215
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    #@46
    move-result v13

    #@47
    if-eqz v13, :cond_5

    #@49
    .line 1216
    const-string/jumbo v13, "status"

    #@4c
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@4f
    move-result v13

    #@50
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result v11

    #@54
    .line 1217
    .local v11, "status":I
    const/16 v13, 0x8

    #@56
    if-eq v13, v11, :cond_4

    #@58
    .line 1218
    const/4 v13, 0x0

    #@59
    .line 1224
    if-eqz v4, :cond_3

    #@5b
    .line 1225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@5e
    .line 1218
    :cond_3
    return v13

    #@5f
    .line 1220
    :cond_4
    :try_start_2
    const-string/jumbo v13, "title"

    #@62
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@65
    move-result v13

    #@66
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    .line 1221
    .local v8, "oldDisplayName":Ljava/lang/String;
    const-string/jumbo v13, "media_type"

    #@6d
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@70
    move-result v13

    #@71
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    move-result-object v7

    #@75
    .line 1224
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "oldDisplayName":Ljava/lang/String;
    .end local v11    # "status":I
    :cond_5
    if-eqz v4, :cond_6

    #@77
    .line 1225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@7a
    .line 1229
    :cond_6
    if-eqz v8, :cond_7

    #@7c
    if-nez v7, :cond_9

    #@7e
    .line 1230
    :cond_7
    new-instance v13, Ljava/lang/IllegalStateException;

    #@80
    .line 1231
    new-instance v14, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v15, "Document with id "

    #@88
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v14

    #@8c
    move-wide/from16 v0, p2

    #@8e
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@91
    move-result-object v14

    #@92
    const-string/jumbo v15, " does not exist"

    #@95
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v14

    #@99
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v14

    #@9d
    .line 1230
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v13

    #@a1
    .line 1223
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v13

    #@a2
    .line 1224
    if-eqz v4, :cond_8

    #@a4
    .line 1225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@a7
    .line 1223
    :cond_8
    throw v13

    #@a8
    .line 1235
    .end local v7    # "mimeType":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_9
    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@aa
    .line 1234
    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@ad
    move-result-object v9

    #@ae
    .line 1237
    .local v9, "parent":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@b0
    invoke-direct {v3, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b3
    .line 1238
    .local v3, "before":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@b5
    move-object/from16 v0, p4

    #@b7
    invoke-direct {v2, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ba
    .line 1240
    .local v2, "after":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@bd
    move-result v13

    #@be
    if-eqz v13, :cond_a

    #@c0
    .line 1241
    new-instance v13, Ljava/lang/IllegalStateException;

    #@c2
    new-instance v14, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v15, "Already exists "

    #@ca
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v14

    #@ce
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v14

    #@d2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d9
    throw v13

    #@da
    .line 1243
    :cond_a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@dd
    move-result v13

    #@de
    if-nez v13, :cond_b

    #@e0
    .line 1244
    new-instance v13, Ljava/lang/IllegalStateException;

    #@e2
    new-instance v14, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v15, "Failed to rename to "

    #@ea
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v14

    #@ee
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v14

    #@f2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v14

    #@f6
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f9
    throw v13

    #@fa
    .line 1248
    :cond_b
    const-string/jumbo v13, "image/"

    #@fd
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@100
    move-result v13

    #@101
    if-eqz v13, :cond_c

    #@103
    .line 1249
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@106
    move-result-object v13

    #@107
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@109
    .line 1250
    const-string/jumbo v15, "_data=?"

    #@10c
    .line 1251
    const/16 v16, 0x1

    #@10e
    move/from16 v0, v16

    #@110
    new-array v0, v0, [Ljava/lang/String;

    #@112
    move-object/from16 v16, v0

    #@114
    .line 1252
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@117
    move-result-object v17

    #@118
    const/16 v18, 0x0

    #@11a
    aput-object v17, v16, v18

    #@11c
    .line 1249
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@11f
    .line 1255
    new-instance v6, Landroid/content/Intent;

    #@121
    const-string/jumbo v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    #@124
    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@127
    .line 1256
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@12a
    move-result-object v13

    #@12b
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@12e
    .line 1257
    move-object/from16 v0, p1

    #@130
    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@133
    .line 1260
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_c
    new-instance v12, Landroid/content/ContentValues;

    #@135
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    #@138
    .line 1261
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "title"

    #@13b
    move-object/from16 v0, p4

    #@13d
    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@140
    .line 1262
    const-string/jumbo v13, "_data"

    #@143
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@146
    move-result-object v14

    #@147
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@14a
    .line 1263
    const-string/jumbo v13, "mediaprovider_uri"

    #@14d
    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    #@150
    .line 1264
    const/4 v13, 0x1

    #@151
    new-array v5, v13, [J

    #@153
    const/4 v13, 0x0

    #@154
    aput-wide p2, v5, v13

    #@156
    .line 1266
    .local v5, "ids":[J
    move-object/from16 v0, p0

    #@158
    iget-object v13, v0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v14, v0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@15e
    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@161
    move-result-object v15

    #@162
    .line 1267
    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@165
    move-result-object v16

    #@166
    .line 1266
    move-object/from16 v0, v16

    #@168
    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@16b
    move-result v13

    #@16c
    .line 1267
    const/4 v14, 0x1

    #@16d
    .line 1266
    if-ne v13, v14, :cond_d

    #@16f
    const/4 v13, 0x1

    #@170
    :goto_0
    return v13

    #@171
    :cond_d
    const/4 v13, 0x0

    #@172
    goto :goto_0
.end method

.method public varargs restartDownload([J)V
    .locals 8
    .param p1, "ids"    # [J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1139
    new-instance v3, Landroid/app/DownloadManager$Query;

    #@3
    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    #@6
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    #@d
    move-result-object v0

    #@e
    .line 1141
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@11
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1142
    const-string/jumbo v3, "status"

    #@1a
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1d
    move-result v3

    #@1e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    #@21
    move-result v1

    #@22
    .line 1143
    .local v1, "status":I
    const/16 v3, 0x8

    #@24
    if-eq v1, v3, :cond_0

    #@26
    const/16 v3, 0x10

    #@28
    if-eq v1, v3, :cond_0

    #@2a
    .line 1144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Cannot restart incomplete download: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 1145
    const-string/jumbo v5, "_id"

    #@3b
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3e
    move-result v5

    #@3f
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    #@42
    move-result-wide v6

    #@43
    .line 1144
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1148
    .end local v1    # "status":I
    :catchall_0
    move-exception v3

    #@50
    .line 1149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@53
    .line 1148
    throw v3

    #@54
    .line 1141
    .restart local v1    # "status":I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1149
    .end local v1    # "status":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@5b
    .line 1152
    new-instance v2, Landroid/content/ContentValues;

    #@5d
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@60
    .line 1153
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "current_bytes"

    #@63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6a
    .line 1154
    const-string/jumbo v3, "total_bytes"

    #@6d
    const/4 v4, -0x1

    #@6e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@75
    .line 1155
    const-string/jumbo v3, "_data"

    #@78
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    #@7b
    .line 1156
    const-string/jumbo v3, "status"

    #@7e
    const/16 v4, 0xbe

    #@80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@87
    .line 1157
    const-string/jumbo v3, "numfailed"

    #@8a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@91
    .line 1158
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@93
    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@95
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@a0
    .line 1138
    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    #@0
    .prologue
    .line 992
    if-eqz p1, :cond_0

    #@2
    .line 993
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    #@4
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@6
    .line 991
    :goto_0
    return-void

    #@7
    .line 995
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@9
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@b
    goto :goto_0
.end method

.method public setAccessFilename(Z)V
    .locals 0
    .param p1, "accessFilename"    # Z

    #@0
    .prologue
    .line 1001
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    #@2
    .line 1000
    return-void
.end method
