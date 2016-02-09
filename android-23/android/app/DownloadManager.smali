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
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"

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
.field private mBaseUri:Landroid/net/Uri;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 314
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 315
    const-string/jumbo v1, "_id"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 316
    const-string/jumbo v1, "_data AS local_filename"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 317
    const-string/jumbo v1, "mediaprovider_uri"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 318
    const-string/jumbo v1, "destination"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 319
    const-string/jumbo v1, "title"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 320
    const-string/jumbo v1, "description"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 321
    const-string/jumbo v1, "uri"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 322
    const-string/jumbo v1, "status"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 323
    const-string/jumbo v1, "hint"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 324
    const-string/jumbo v1, "mimetype AS media_type"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 325
    const-string/jumbo v1, "total_bytes AS total_size"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 326
    const-string/jumbo v1, "lastmod AS last_modified_timestamp"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 327
    const-string/jumbo v1, "current_bytes AS bytes_so_far"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 328
    const-string/jumbo v1, "allow_write"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 333
    const-string/jumbo v1, "\'placeholder\' AS local_uri"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 334
    const-string/jumbo v1, "\'placeholder\' AS reason"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 314
    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    #@6e
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 913
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@5
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@7
    .line 919
    iput-object p1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@9
    .line 920
    iput-object p2, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    #@b
    .line 918
    return-void
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1146
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 1113
    const-string/jumbo v2, "download_manager_max_bytes_over_mobile"

    #@7
    .line 1112
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
    .line 1114
    :catch_0
    move-exception v0

    #@11
    .line 1115
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
    .line 1130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 1131
    const-string/jumbo v2, "download_manager_recommended_max_bytes_over_mobile"

    #@7
    .line 1130
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
    .line 1132
    :catch_0
    move-exception v0

    #@11
    .line 1133
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
    .line 1254
    array-length v2, p0

    #@1
    new-array v1, v2, [Ljava/lang/String;

    #@3
    .line 1255
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1256
    aget-wide v2, p0, v0

    #@9
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    .line 1255
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1258
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    #@0
    .prologue
    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1238
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1239
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_1

    #@f
    .line 1240
    if-lez v0, :cond_0

    #@11
    .line 1241
    const-string/jumbo v2, "OR "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1243
    :cond_0
    const-string/jumbo v2, "_id"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1244
    const-string/jumbo v2, " = ? "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1239
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1246
    :cond_1
    const-string/jumbo v2, ")"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 1247
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
    .line 1140
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
    .line 1219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1220
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
    .line 1218
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    #@0
    .prologue
    .line 1175
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
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-wide/from16 v6, p6

    #@9
    move/from16 v8, p8

    #@b
    .line 1174
    invoke-virtual/range {v0 .. v9}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 6
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
    .line 1183
    const-string/jumbo v3, "title"

    #@3
    invoke-static {v3, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1184
    const-string/jumbo v3, "description"

    #@9
    invoke-static {v3, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1185
    const-string/jumbo v3, "path"

    #@f
    invoke-static {v3, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1186
    const-string/jumbo v3, "mimeType"

    #@15
    invoke-static {v3, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1187
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v3, p6, v4

    #@1c
    if-gez v3, :cond_0

    #@1e
    .line 1188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, " invalid value for param: totalBytes"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 1192
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    #@29
    const-string/jumbo v4, "non-dwnldmngr-download-dont-retry2download"

    #@2c
    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    #@3a
    move-result-object v1

    #@3b
    .line 1196
    .local v1, "request":Landroid/app/DownloadManager$Request;
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    #@3f
    move-result-object v2

    #@40
    .line 1197
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "destination"

    #@43
    .line 1198
    const/4 v4, 0x6

    #@44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v4

    #@48
    .line 1197
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@4b
    .line 1199
    const-string/jumbo v3, "_data"

    #@4e
    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 1200
    const-string/jumbo v3, "status"

    #@54
    const/16 v4, 0xc8

    #@56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5d
    .line 1201
    const-string/jumbo v3, "total_bytes"

    #@60
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@67
    .line 1202
    const-string/jumbo v4, "scanned"

    #@6a
    .line 1203
    if-eqz p3, :cond_1

    #@6c
    const/4 v3, 0x0

    #@6d
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v3

    #@71
    .line 1202
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@74
    .line 1205
    const-string/jumbo v4, "visibility"

    #@77
    if-eqz p8, :cond_2

    #@79
    .line 1206
    const/4 v3, 0x3

    #@7a
    .line 1205
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@81
    .line 1207
    const-string/jumbo v4, "allow_write"

    #@84
    if-eqz p9, :cond_3

    #@86
    const/4 v3, 0x1

    #@87
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@8e
    .line 1208
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@90
    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@92
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@95
    move-result-object v0

    #@96
    .line 1209
    .local v0, "downloadUri":Landroid/net/Uri;
    if-nez v0, :cond_4

    #@98
    .line 1210
    const-wide/16 v4, -0x1

    #@9a
    return-wide v4

    #@9b
    .line 1204
    .end local v0    # "downloadUri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x2

    #@9c
    goto :goto_0

    #@9d
    .line 1206
    :cond_2
    const/4 v3, 0x2

    #@9e
    goto :goto_1

    #@9f
    .line 1207
    :cond_3
    const/4 v3, 0x0

    #@a0
    goto :goto_2

    #@a1
    .line 1212
    .restart local v0    # "downloadUri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@a8
    move-result-wide v4

    #@a9
    return-wide v4
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    #@0
    .prologue
    .line 945
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    #@5
    move-result-object v1

    #@6
    .line 946
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@8
    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@a
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    .line 947
    .local v0, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@15
    move-result-wide v2

    #@16
    .line 948
    .local v2, "id":J
    return-wide v2
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1230
    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

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
    .line 1054
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
    .line 1055
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    #@11
    .line 1057
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 1058
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@17
    .line 1065
    if-eqz v0, :cond_0

    #@19
    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1c
    .line 1059
    :cond_0
    return-object v5

    #@1d
    .line 1061
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 1062
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
    .line 1065
    if-eqz v0, :cond_2

    #@30
    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@33
    .line 1062
    :cond_2
    return-object v2

    #@34
    .line 1065
    :cond_3
    if-eqz v0, :cond_4

    #@36
    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@39
    .line 1070
    :cond_4
    return-object v5

    #@3a
    .line 1064
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@3b
    .line 1065
    if-eqz v0, :cond_5

    #@3d
    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@40
    .line 1064
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
    .line 1023
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
    .line 1024
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    #@11
    .line 1026
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 1027
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@17
    .line 1037
    if-eqz v0, :cond_0

    #@19
    .line 1038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1c
    .line 1028
    :cond_0
    return-object v6

    #@1d
    .line 1030
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 1031
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
    .line 1032
    .local v2, "status":I
    const/16 v3, 0x8

    #@30
    if-ne v3, v2, :cond_3

    #@32
    .line 1033
    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@34
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-object v3

    #@38
    .line 1037
    if-eqz v0, :cond_2

    #@3a
    .line 1038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@3d
    .line 1033
    :cond_2
    return-object v3

    #@3e
    .line 1037
    .end local v2    # "status":I
    :cond_3
    if-eqz v0, :cond_4

    #@40
    .line 1038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@43
    .line 1042
    :cond_4
    return-object v6

    #@44
    .line 1036
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    #@45
    .line 1037
    if-eqz v0, :cond_5

    #@47
    .line 1038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@4a
    .line 1036
    :cond_5
    throw v3
.end method

.method public varargs markRowDeleted([J)I
    .locals 6
    .param p1, "ids"    # [J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 961
    if-eqz p1, :cond_0

    #@5
    array-length v1, p1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 963
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "input param \'ids\' can\'t be null"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 965
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    #@13
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@16
    .line 966
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "deleted"

    #@19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@20
    .line 969
    array-length v1, p1

    #@21
    if-ne v1, v5, :cond_2

    #@23
    .line 970
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@25
    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@27
    aget-wide v4, p1, v4

    #@29
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@30
    move-result v1

    #@31
    return v1

    #@32
    .line 973
    :cond_2
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    #@34
    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@36
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 974
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 973
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@41
    move-result v1

    #@42
    return v1
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
    .line 1010
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
    .line 996
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
    .line 997
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@d
    .line 998
    return-object v4

    #@e
    .line 1000
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    #@10
    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@12
    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    #@15
    return-object v1
.end method

.method public varargs remove([J)I
    .locals 1
    .param p1, "ids"    # [J

    #@0
    .prologue
    .line 986
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public varargs restartDownload([J)V
    .locals 8
    .param p1, "ids"    # [J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1080
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
    .line 1082
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
    .line 1083
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
    .line 1084
    .local v1, "status":I
    const/16 v3, 0x8

    #@24
    if-eq v1, v3, :cond_0

    #@26
    const/16 v3, 0x10

    #@28
    if-eq v1, v3, :cond_0

    #@2a
    .line 1085
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
    .line 1086
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
    .line 1085
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
    .line 1089
    .end local v1    # "status":I
    :catchall_0
    move-exception v3

    #@50
    .line 1090
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@53
    .line 1089
    throw v3

    #@54
    .line 1082
    .restart local v1    # "status":I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1090
    .end local v1    # "status":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@5b
    .line 1093
    new-instance v2, Landroid/content/ContentValues;

    #@5d
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@60
    .line 1094
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "current_bytes"

    #@63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6a
    .line 1095
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
    .line 1096
    const-string/jumbo v3, "_data"

    #@78
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    #@7b
    .line 1097
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
    .line 1098
    const-string/jumbo v3, "numfailed"

    #@8a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@91
    .line 1099
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
    .line 1079
    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    #@0
    .prologue
    .line 929
    if-eqz p1, :cond_0

    #@2
    .line 930
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    #@4
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@6
    .line 928
    :goto_0
    return-void

    #@7
    .line 932
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@9
    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    #@b
    goto :goto_0
.end method
