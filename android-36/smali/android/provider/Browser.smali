.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$BookmarkColumns;,
        Landroid/provider/Browser$SearchColumns;
    }
.end annotation


# static fields
.field public static final greylist BOOKMARKS_URI:Landroid/net/Uri;

.field public static final whitelist EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final whitelist EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final whitelist EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final greylist-max-o EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final greylist-max-o EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final greylist HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final greylist HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final greylist HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final greylist HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final greylist HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final greylist-max-o HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final greylist HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final greylist-max-o HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final greylist HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final greylist HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final whitelist INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "browser"

.field private static final greylist-max-o MAX_HISTORY_COUNT:I = 0xfa

.field public static final greylist SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final greylist SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final greylist SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final greylist SEARCHES_URI:Landroid/net/Uri;

.field public static final greylist TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final greylist TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final greylist TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 41
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 74
    const-string/jumbo v9, "touch_icon"

    const-string/jumbo v10, "user_entered"

    const-string v1, "_id"

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "visits"

    const-string v4, "date"

    const-string v5, "bookmark"

    const-string/jumbo v6, "title"

    const-string v7, "favicon"

    const-string/jumbo v8, "thumbnail"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 117
    const-string v0, "_id"

    const-string v1, "date"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 133
    const-string v2, "content://browser/searches"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 140
    const-string/jumbo v2, "search"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final greylist-max-o addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 261
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method public static final greylist addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    .line 397
    return-void
.end method

.method public static final greylist canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public static final greylist clearHistory(Landroid/content/ContentResolver;)V
    .registers 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 362
    return-void
.end method

.method public static final greylist clearSearches(Landroid/content/ContentResolver;)V
    .registers 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 406
    return-void
.end method

.method public static final greylist deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .line 387
    return-void
.end method

.method public static final greylist deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .line 376
    return-void
.end method

.method public static final greylist getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "url"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final greylist getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 257
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "url"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final greylist getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static final greylist-max-o getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "secure":Z
    move-object v1, p1

    .line 267
    .local v1, "compareString":Ljava/lang/String;
    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "https://"

    if-eqz v3, :cond_14

    .line 268
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 269
    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 270
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_21
    :goto_21
    const-string/jumbo v3, "www."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 274
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_2f
    const/4 v5, 0x0

    .line 277
    .local v5, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "url = "

    if-eqz v0, :cond_69

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .end local v5    # "whereClause":Ljava/lang/StringBuilder;
    .local v2, "whereClause":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    invoke-static {v2}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b7

    .line 285
    .end local v2    # "whereClause":Ljava/lang/StringBuilder;
    .restart local v5    # "whereClause":Ljava/lang/StringBuilder;
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .end local v5    # "whereClause":Ljava/lang/StringBuilder;
    .local v4, "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v4, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    invoke-static {v4}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "wwwString":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 292
    invoke-static {v4}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 295
    invoke-static {v4}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v2, v4

    .line 299
    .end local v3    # "wwwString":Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/StringBuilder;
    .restart local v2    # "whereClause":Ljava/lang/StringBuilder;
    :goto_b7
    sget-object v4, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string/jumbo v5, "visits"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .line 423
    return-void
.end method

.method public static final greylist saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static final whitelist sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .line 205
    const v0, 0x104099c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static final greylist sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringToSend"    # Ljava/lang/String;
    .param p2, "chooserDialogTitle"    # Ljava/lang/String;

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "send":Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :try_start_12
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 229
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_1e} :catch_1f

    .line 233
    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_20

    .line 231
    :catch_1f
    move-exception v1

    .line 234
    :goto_20
    return-void
.end method

.method public static final greylist truncateHistory(Landroid/content/ContentResolver;)V
    .registers 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 340
    return-void
.end method

.method public static final greylist updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    .line 315
    return-void
.end method
