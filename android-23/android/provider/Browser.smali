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
.field public static final BOOKMARKS_URI:Landroid/net/Uri;

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri;

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 44
    const-string/jumbo v0, "content://browser/bookmarks"

    #@7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    #@d
    .line 77
    const/16 v0, 0xa

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 78
    const-string/jumbo v1, "_id"

    #@14
    aput-object v1, v0, v3

    #@16
    .line 79
    const-string/jumbo v1, "url"

    #@19
    aput-object v1, v0, v4

    #@1b
    .line 80
    const-string/jumbo v1, "visits"

    #@1e
    aput-object v1, v0, v5

    #@20
    .line 81
    const-string/jumbo v1, "date"

    #@23
    aput-object v1, v0, v6

    #@25
    .line 82
    const-string/jumbo v1, "bookmark"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 83
    const-string/jumbo v1, "title"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 84
    const-string/jumbo v1, "favicon"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 85
    const-string/jumbo v1, "thumbnail"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 86
    const-string/jumbo v1, "touch_icon"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 87
    const-string/jumbo v1, "user_entered"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 77
    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    #@4d
    .line 120
    new-array v0, v5, [Ljava/lang/String;

    #@4f
    .line 121
    const-string/jumbo v1, "_id"

    #@52
    aput-object v1, v0, v3

    #@54
    .line 122
    const-string/jumbo v1, "date"

    #@57
    aput-object v1, v0, v4

    #@59
    .line 120
    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    #@5b
    .line 136
    const-string/jumbo v0, "content://browser/searches"

    #@5e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@61
    move-result-object v0

    #@62
    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    #@64
    .line 143
    new-array v0, v6, [Ljava/lang/String;

    #@66
    .line 145
    const-string/jumbo v1, "_id"

    #@69
    aput-object v1, v0, v3

    #@6b
    .line 146
    const-string/jumbo v1, "search"

    #@6e
    aput-object v1, v0, v4

    #@70
    .line 147
    const-string/jumbo v1, "date"

    #@73
    aput-object v1, v0, v5

    #@75
    .line 143
    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    #@77
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, " OR url = "

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 262
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 351
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 361
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 406
    return-void
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 387
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    .line 376
    return-void
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 247
    new-instance v0, Landroid/database/MatrixCursor;

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/String;

    #@6
    const-string/jumbo v2, "url"

    #@9
    aput-object v2, v1, v3

    #@b
    invoke-direct {v0, v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@e
    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 259
    new-instance v0, Landroid/database/MatrixCursor;

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/String;

    #@6
    const-string/jumbo v2, "url"

    #@9
    aput-object v2, v1, v3

    #@b
    invoke-direct {v0, v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@e
    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 327
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 267
    const/4 v7, 0x0

    #@2
    .line 268
    .local v7, "secure":Z
    move-object v6, p1

    #@3
    .line 269
    .local v6, "compareString":Ljava/lang/String;
    const-string/jumbo v0, "http://"

    #@6
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 270
    const/4 v0, 0x7

    #@d
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 275
    :cond_0
    :goto_0
    const-string/jumbo v0, "www."

    #@14
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 276
    const/4 v0, 0x4

    #@1b
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 278
    :cond_1
    const/4 v8, 0x0

    #@20
    .line 279
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    #@22
    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    #@24
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    #@27
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    .line 282
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v1, "https://"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 281
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@41
    .line 283
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    #@44
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v1, "https://www."

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 284
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@5b
    .line 301
    :goto_1
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    #@5d
    const/4 v0, 0x2

    #@5e
    new-array v2, v0, [Ljava/lang/String;

    #@60
    const-string/jumbo v0, "_id"

    #@63
    const/4 v3, 0x0

    #@64
    aput-object v0, v2, v3

    #@66
    const-string/jumbo v0, "visits"

    #@69
    const/4 v3, 0x1

    #@6a
    aput-object v0, v2, v3

    #@6c
    .line 302
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    move-object v0, p0

    #@71
    move-object v5, v4

    #@72
    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@75
    move-result-object v0

    #@76
    return-object v0

    #@77
    .line 271
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v0, "https://"

    #@7a
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_0

    #@80
    .line 272
    const/16 v0, 0x8

    #@82
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    .line 273
    const/4 v7, 0x1

    #@87
    goto :goto_0

    #@88
    .line 287
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@8a
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    #@8d
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@90
    .line 288
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@93
    .line 290
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    #@96
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v1, "www."

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    .line 292
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@ad
    .line 294
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    #@b0
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v1, "http://"

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    .line 295
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@c7
    .line 297
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    #@ca
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v1, "http://"

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v0

    #@de
    .line 298
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@e1
    goto/16 :goto_1
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    #@0
    .prologue
    .line 422
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    const v0, 0x104037e

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 207
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringToSend"    # Ljava/lang/String;
    .param p2, "chooserDialogTitle"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.intent.action.SEND"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 225
    .local v2, "send":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    #@b
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 226
    const-string/jumbo v3, "android.intent.extra.TEXT"

    #@11
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 229
    :try_start_0
    invoke-static {v2, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@17
    move-result-object v1

    #@18
    .line 231
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@1a
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1d
    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 223
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    #@21
    .line 233
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 340
    return-void
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    #@0
    .prologue
    .line 316
    return-void
.end method
