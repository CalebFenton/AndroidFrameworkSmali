.class public Landroid/content/SearchRecentSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SearchRecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_MODE_2LINES:I = 0x2

.field public static final DATABASE_MODE_QUERIES:I = 0x1

.field private static final DATABASE_VERSION:I = 0x200

.field private static final NULL_COLUMN:Ljava/lang/String; = "query"

.field private static final ORDER_BY:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "SuggestionsProvider"

.field private static final URI_MATCH_SUGGEST:I = 0x1

.field private static final sDatabaseName:Ljava/lang/String; = "suggestions.db"

.field private static final sSuggestions:Ljava/lang/String; = "suggestions"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMode:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSuggestSuggestionClause:Ljava/lang/String;

.field private mSuggestionProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mTwoLineDisplay:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 226
    iget-object v4, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v2

    #@6
    .line 228
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@9
    move-result-object v4

    #@a
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    .line 229
    .local v3, "length":I
    const/4 v4, 0x1

    #@f
    if-eq v3, v4, :cond_0

    #@11
    .line 230
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "Unknown Uri"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@1d
    move-result-object v4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 234
    .local v0, "base":Ljava/lang/String;
    const/4 v1, 0x0

    #@26
    .line 235
    .local v1, "count":I
    const-string/jumbo v4, "suggestions"

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 236
    const-string/jumbo v4, "suggestions"

    #@32
    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    .line 240
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3d
    move-result-object v4

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@42
    .line 241
    return v1

    #@43
    .line 238
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v5, "Unknown Uri"

    #@48
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 250
    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    #@3
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@6
    move-result v2

    #@7
    if-ne v2, v4, :cond_0

    #@9
    .line 251
    const-string/jumbo v2, "vnd.android.cursor.dir/vnd.android.search.suggest"

    #@c
    return-object v2

    #@d
    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@14
    move-result v1

    #@15
    .line 254
    .local v1, "length":I
    if-lt v1, v4, :cond_2

    #@17
    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@1a
    move-result-object v2

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 256
    .local v0, "base":Ljava/lang/String;
    const-string/jumbo v2, "suggestions"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 257
    if-ne v1, v4, :cond_1

    #@2d
    .line 258
    const-string/jumbo v2, "vnd.android.cursor.dir/suggestion"

    #@30
    return-object v2

    #@31
    .line 259
    :cond_1
    const/4 v2, 0x2

    #@32
    if-ne v1, v2, :cond_2

    #@34
    .line 260
    const-string/jumbo v2, "vnd.android.cursor.item/suggestion"

    #@37
    return-object v2

    #@38
    .line 264
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v3, "Unknown Uri"

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    .line 273
    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v1

    #@9
    .line 275
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@c
    move-result-object v6

    #@d
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    .line 276
    .local v2, "length":I
    if-ge v2, v8, :cond_0

    #@13
    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v7, "Unknown Uri"

    #@18
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v6

    #@1c
    .line 280
    :cond_0
    const-wide/16 v4, -0x1

    #@1e
    .line 281
    .local v4, "rowID":J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    const/4 v7, 0x0

    #@23
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    .line 282
    .local v0, "base":Ljava/lang/String;
    const/4 v3, 0x0

    #@2a
    .line 283
    .local v3, "newUri":Landroid/net/Uri;
    const-string/jumbo v6, "suggestions"

    #@2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 284
    if-ne v2, v8, :cond_1

    #@35
    .line 285
    const-string/jumbo v6, "suggestions"

    #@38
    const-string/jumbo v7, "query"

    #@3b
    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@3e
    move-result-wide v4

    #@3f
    .line 286
    cmp-long v6, v4, v10

    #@41
    if-lez v6, :cond_1

    #@43
    .line 287
    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    #@45
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@4c
    move-result-object v3

    #@4d
    .line 291
    .end local v3    # "newUri":Landroid/net/Uri;
    :cond_1
    cmp-long v6, v4, v10

    #@4f
    if-gez v6, :cond_2

    #@51
    .line 292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v7, "Unknown Uri"

    #@56
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v6

    #@5a
    .line 294
    :cond_2
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@61
    move-result-object v6

    #@62
    const/4 v7, 0x0

    #@63
    invoke-virtual {v6, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@66
    .line 295
    return-object v3
.end method

.method public onCreate()Z
    .locals 3

    #@0
    .prologue
    .line 304
    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    #@6
    if-nez v1, :cond_1

    #@8
    .line 305
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider not configured"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 307
    :cond_1
    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    #@13
    add-int/lit16 v0, v1, 0x200

    #@15
    .line 308
    .local v0, "mWorkingDbVersion":I
    new-instance v1, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;

    #@17
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2, v0}, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    #@1e
    iput-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@20
    .line 310
    const/4 v1, 0x1

    #@21
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v2

    #@8
    .line 324
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@11
    move-result v3

    #@12
    const/4 v4, 0x1

    #@13
    if-ne v3, v4, :cond_2

    #@15
    .line 327
    const/4 v3, 0x0

    #@16
    aget-object v3, p4, v3

    #@18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 328
    const/4 v5, 0x0

    #@1f
    .line 329
    .local v5, "suggestSelection":Ljava/lang/String;
    const/4 v6, 0x0

    #@20
    .line 340
    .end local v5    # "suggestSelection":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "suggestions"

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    #@27
    .line 341
    const-string/jumbo v9, "date DESC"

    #@2a
    const/4 v7, 0x0

    #@2b
    const/4 v8, 0x0

    #@2c
    const/4 v10, 0x0

    #@2d
    .line 340
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v16

    #@31
    .line 342
    .local v16, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@38
    move-result-object v3

    #@39
    move-object/from16 v0, v16

    #@3b
    move-object/from16 v1, p1

    #@3d
    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    #@40
    .line 343
    return-object v16

    #@41
    .line 331
    .end local v16    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "%"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    const/4 v4, 0x0

    #@4e
    aget-object v4, p4, v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    const-string/jumbo v4, "%"

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v18

    #@5f
    .line 332
    .local v18, "like":Ljava/lang/String;
    move-object/from16 v0, p0

    #@61
    iget-boolean v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    #@63
    if-eqz v3, :cond_1

    #@65
    .line 333
    const/4 v3, 0x2

    #@66
    new-array v6, v3, [Ljava/lang/String;

    #@68
    const/4 v3, 0x0

    #@69
    aput-object v18, v6, v3

    #@6b
    const/4 v3, 0x1

    #@6c
    aput-object v18, v6, v3

    #@6e
    .line 337
    .local v6, "myArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    #@70
    iget-object v5, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    #@72
    .local v5, "suggestSelection":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 335
    .end local v5    # "suggestSelection":Ljava/lang/String;
    .end local v6    # "myArgs":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@74
    new-array v6, v3, [Ljava/lang/String;

    #@76
    const/4 v3, 0x0

    #@77
    aput-object v18, v6, v3

    #@79
    .restart local v6    # "myArgs":[Ljava/lang/String;
    goto :goto_1

    #@7a
    .line 347
    .end local v6    # "myArgs":[Ljava/lang/String;
    .end local v18    # "like":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@7d
    move-result-object v3

    #@7e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@81
    move-result v17

    #@82
    .line 348
    .local v17, "length":I
    const/4 v3, 0x1

    #@83
    move/from16 v0, v17

    #@85
    if-eq v0, v3, :cond_3

    #@87
    const/4 v3, 0x2

    #@88
    move/from16 v0, v17

    #@8a
    if-eq v0, v3, :cond_3

    #@8c
    .line 349
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8e
    const-string/jumbo v4, "Unknown Uri"

    #@91
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v3

    #@95
    .line 352
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@98
    move-result-object v3

    #@99
    const/4 v4, 0x0

    #@9a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v8

    #@9e
    check-cast v8, Ljava/lang/String;

    #@a0
    .line 353
    .local v8, "base":Ljava/lang/String;
    const-string/jumbo v3, "suggestions"

    #@a3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v3

    #@a7
    if-nez v3, :cond_4

    #@a9
    .line 354
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@ab
    const-string/jumbo v4, "Unknown Uri"

    #@ae
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v3

    #@b2
    .line 357
    :cond_4
    const/4 v9, 0x0

    #@b3
    .line 358
    .local v9, "useProjection":[Ljava/lang/String;
    if-eqz p2, :cond_5

    #@b5
    move-object/from16 v0, p2

    #@b7
    array-length v3, v0

    #@b8
    if-lez v3, :cond_5

    #@ba
    .line 359
    move-object/from16 v0, p2

    #@bc
    array-length v3, v0

    #@bd
    add-int/lit8 v3, v3, 0x1

    #@bf
    new-array v9, v3, [Ljava/lang/String;

    #@c1
    .line 360
    .local v9, "useProjection":[Ljava/lang/String;
    move-object/from16 v0, p2

    #@c3
    array-length v3, v0

    #@c4
    const/4 v4, 0x0

    #@c5
    const/4 v7, 0x0

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-static {v0, v4, v9, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@cb
    .line 361
    move-object/from16 v0, p2

    #@cd
    array-length v3, v0

    #@ce
    const-string/jumbo v4, "_id AS _id"

    #@d1
    aput-object v4, v9, v3

    #@d3
    .line 364
    .end local v9    # "useProjection":[Ljava/lang/String;
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    #@d5
    const/16 v3, 0x100

    #@d7
    move-object/from16 v0, v19

    #@d9
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@dc
    .line 365
    .local v19, "whereClause":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    #@dd
    move/from16 v0, v17

    #@df
    if-ne v0, v3, :cond_6

    #@e1
    .line 366
    const-string/jumbo v3, "(_id = "

    #@e4
    move-object/from16 v0, v19

    #@e6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v4

    #@ea
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@ed
    move-result-object v3

    #@ee
    const/4 v7, 0x1

    #@ef
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f2
    move-result-object v3

    #@f3
    check-cast v3, Ljava/lang/String;

    #@f5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v3

    #@f9
    const-string/jumbo v4, ")"

    #@fc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    .line 370
    :cond_6
    if-eqz p3, :cond_8

    #@101
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@104
    move-result v3

    #@105
    if-lez v3, :cond_8

    #@107
    .line 371
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    #@10a
    move-result v3

    #@10b
    if-lez v3, :cond_7

    #@10d
    .line 372
    const-string/jumbo v3, " AND "

    #@110
    move-object/from16 v0, v19

    #@112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 375
    :cond_7
    const/16 v3, 0x28

    #@117
    move-object/from16 v0, v19

    #@119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11c
    .line 376
    move-object/from16 v0, v19

    #@11e
    move-object/from16 v1, p3

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    .line 377
    const/16 v3, 0x29

    #@125
    move-object/from16 v0, v19

    #@127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12a
    .line 381
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v10

    #@12e
    .line 382
    const/4 v12, 0x0

    #@12f
    const/4 v13, 0x0

    #@130
    .line 383
    const/4 v15, 0x0

    #@131
    move-object v7, v2

    #@132
    move-object/from16 v11, p4

    #@134
    move-object/from16 v14, p5

    #@136
    .line 381
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@139
    move-result-object v16

    #@13a
    .line 384
    .restart local v16    # "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    #@13d
    move-result-object v3

    #@13e
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@141
    move-result-object v3

    #@142
    move-object/from16 v0, v16

    #@144
    move-object/from16 v1, p1

    #@146
    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    #@149
    .line 385
    return-object v16
.end method

.method protected setupSuggestions(Ljava/lang/String;I)V
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 175
    and-int/lit8 v0, p2, 0x1

    #@d
    if-nez v0, :cond_1

    #@f
    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 179
    :cond_1
    and-int/lit8 v0, p2, 0x2

    #@17
    if-eqz v0, :cond_2

    #@19
    move v0, v1

    #@1a
    :goto_0
    iput-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    #@1c
    .line 182
    new-instance v0, Ljava/lang/String;

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    #@23
    .line 183
    iput p2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    #@25
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "content://"

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v3, "/suggestions"

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    #@48
    .line 187
    new-instance v0, Landroid/content/UriMatcher;

    #@4a
    const/4 v3, -0x1

    #@4b
    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    #@4e
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    #@50
    .line 188
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    #@52
    iget-object v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    #@54
    const-string/jumbo v4, "search_suggest_query"

    #@57
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@5a
    .line 190
    iget-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    #@5c
    if-eqz v0, :cond_3

    #@5e
    .line 191
    const-string/jumbo v0, "display1 LIKE ? OR display2 LIKE ?"

    #@61
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    #@63
    .line 193
    const/4 v0, 0x6

    #@64
    new-array v0, v0, [Ljava/lang/String;

    #@66
    .line 194
    const-string/jumbo v3, "0 AS suggest_format"

    #@69
    aput-object v3, v0, v2

    #@6b
    .line 195
    const-string/jumbo v2, "\'android.resource://system/17301578\' AS suggest_icon_1"

    #@6e
    aput-object v2, v0, v1

    #@70
    .line 198
    const-string/jumbo v1, "display1 AS suggest_text_1"

    #@73
    aput-object v1, v0, v5

    #@75
    .line 199
    const-string/jumbo v1, "display2 AS suggest_text_2"

    #@78
    aput-object v1, v0, v6

    #@7a
    .line 200
    const-string/jumbo v1, "query AS suggest_intent_query"

    #@7d
    aput-object v1, v0, v7

    #@7f
    .line 201
    const-string/jumbo v1, "_id"

    #@82
    const/4 v2, 0x5

    #@83
    aput-object v1, v0, v2

    #@85
    .line 193
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    #@87
    .line 173
    :goto_1
    return-void

    #@88
    :cond_2
    move v0, v2

    #@89
    .line 179
    goto :goto_0

    #@8a
    .line 204
    :cond_3
    const-string/jumbo v0, "display1 LIKE ?"

    #@8d
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    #@8f
    .line 206
    const/4 v0, 0x5

    #@90
    new-array v0, v0, [Ljava/lang/String;

    #@92
    .line 207
    const-string/jumbo v3, "0 AS suggest_format"

    #@95
    aput-object v3, v0, v2

    #@97
    .line 208
    const-string/jumbo v2, "\'android.resource://system/17301578\' AS suggest_icon_1"

    #@9a
    aput-object v2, v0, v1

    #@9c
    .line 211
    const-string/jumbo v1, "display1 AS suggest_text_1"

    #@9f
    aput-object v1, v0, v5

    #@a1
    .line 212
    const-string/jumbo v1, "query AS suggest_intent_query"

    #@a4
    aput-object v1, v0, v6

    #@a6
    .line 213
    const-string/jumbo v1, "_id"

    #@a9
    aput-object v1, v0, v7

    #@ab
    .line 206
    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    #@ad
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
