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
.field public static final whitelist DATABASE_MODE_2LINES:I = 0x2

.field public static final whitelist DATABASE_MODE_QUERIES:I = 0x1

.field private static final greylist-max-o DATABASE_VERSION:I = 0x200

.field private static final greylist-max-o NULL_COLUMN:Ljava/lang/String; = "query"

.field private static final greylist-max-o ORDER_BY:Ljava/lang/String; = "date DESC"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SuggestionsProvider"

.field private static final greylist-max-o URI_MATCH_SUGGEST:I = 0x1

.field private static final greylist-max-o sDatabaseName:Ljava/lang/String; = "suggestions.db"

.field private static final greylist-max-o sSuggestions:Ljava/lang/String; = "suggestions"


# instance fields
.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mMode:I

.field private greylist-max-o mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private greylist-max-o mSuggestSuggestionClause:Ljava/lang/String;

.field private greylist mSuggestionProjection:[Ljava/lang/String;

.field private greylist-max-o mSuggestionsUri:Landroid/net/Uri;

.field private greylist-max-o mTwoLineDisplay:Z

.field private greylist-max-o mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 228
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 230
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 231
    .local v1, "length":I
    const/4 v2, 0x1

    const-string v3, "Unknown Uri"

    if-ne v1, v2, :cond_3f

    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "base":Ljava/lang/String;
    const/4 v4, 0x0

    .line 237
    .local v4, "count":I
    const-string/jumbo v5, "suggestions"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 238
    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 242
    .end local v4    # "count":I
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 243
    return v3

    .line 240
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_39
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    .end local v2    # "base":Ljava/lang/String;
    .end local v4    # "count":I
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 252
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 253
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 255
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 256
    .local v0, "length":I
    if-lt v0, v1, :cond_38

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "base":Ljava/lang/String;
    const-string/jumbo v3, "suggestions"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 259
    if-ne v0, v1, :cond_31

    .line 260
    const-string/jumbo v1, "vnd.android.cursor.dir/suggestion"

    return-object v1

    .line 261
    :cond_31
    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 262
    const-string/jumbo v1, "vnd.android.cursor.item/suggestion"

    return-object v1

    .line 266
    .end local v2    # "base":Ljava/lang/String;
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 275
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 278
    .local v1, "length":I
    const-string v2, "Unknown Uri"

    const/4 v3, 0x1

    if-lt v1, v3, :cond_5a

    .line 282
    const-wide/16 v4, -0x1

    .line 283
    .local v4, "rowID":J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 284
    .local v6, "base":Ljava/lang/String;
    const/4 v7, 0x0

    .line 285
    .local v7, "newUri":Landroid/net/Uri;
    const-string/jumbo v8, "suggestions"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_43

    .line 286
    if-ne v1, v3, :cond_43

    .line 287
    const-string/jumbo v3, "query"

    invoke-virtual {v0, v8, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 288
    cmp-long v3, v4, v10

    if-lez v3, :cond_43

    .line 289
    iget-object v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 293
    :cond_43
    cmp-long v3, v4, v10

    if-ltz v3, :cond_54

    .line 296
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 297
    return-object v7

    .line 294
    :cond_54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    .end local v4    # "rowID":J
    .end local v6    # "base":Ljava/lang/String;
    .end local v7    # "newUri":Landroid/net/Uri;
    :cond_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist onCreate()Z
    .registers 4

    .line 306
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    if-eqz v0, :cond_19

    .line 309
    iget v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    add-int/lit16 v0, v0, 0x200

    .line 310
    .local v0, "mWorkingDbVersion":I
    new-instance v1, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 312
    const/4 v1, 0x1

    return v1

    .line 307
    .end local v0    # "mWorkingDbVersion":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider not configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 323
    move-object v0, p3

    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 326
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_62

    .line 329
    aget-object v1, p4, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "suggestSelection":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v5, v1

    move-object v6, v3

    .local v3, "myArgs":[Ljava/lang/String;
    goto :goto_48

    .line 333
    .end local v1    # "suggestSelection":Ljava/lang/String;
    .end local v3    # "myArgs":[Ljava/lang/String;
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "like":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v3, :cond_40

    .line 335
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "myArgs":[Ljava/lang/String;
    goto :goto_44

    .line 337
    .end local v3    # "myArgs":[Ljava/lang/String;
    :cond_40
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "myArgs":[Ljava/lang/String;
    :goto_44
    iget-object v4, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v3

    .line 342
    .end local v1    # "like":Ljava/lang/String;
    .end local v3    # "myArgs":[Ljava/lang/String;
    .local v5, "suggestSelection":Ljava/lang/String;
    .local v6, "myArgs":[Ljava/lang/String;
    :goto_48
    iget-object v4, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    const-string v9, "date DESC"

    const/4 v10, 0x0

    const-string/jumbo v3, "suggestions"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 344
    .local v1, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 345
    return-object v1

    .line 349
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v5    # "suggestSelection":Ljava/lang/String;
    .end local v6    # "myArgs":[Ljava/lang/String;
    :cond_62
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 350
    .local v1, "length":I
    const-string v5, "Unknown Uri"

    const/4 v6, 0x2

    if-eq v1, v4, :cond_78

    if-ne v1, v6, :cond_72

    goto :goto_78

    .line 351
    :cond_72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_78
    :goto_78
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 355
    .local v7, "base":Ljava/lang/String;
    const-string/jumbo v8, "suggestions"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "useProjection":[Ljava/lang/String;
    if-eqz p2, :cond_9e

    array-length v8, p2

    if-lez v8, :cond_9e

    .line 361
    array-length v8, p2

    add-int/2addr v8, v4

    new-array v5, v8, [Ljava/lang/String;

    .line 362
    array-length v8, p2

    invoke-static {p2, v3, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    array-length v3, p2

    const-string v8, "_id AS _id"

    aput-object v8, v5, v3

    .line 366
    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v3

    .line 367
    .local v11, "whereClause":Ljava/lang/StringBuilder;
    if-ne v1, v6, :cond_c1

    .line 368
    const-string v3, "(_id = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_c1
    if-eqz v0, :cond_e1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e1

    .line 373
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_d4

    .line 374
    const-string v3, " AND "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_d4
    const/16 v3, 0x28

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const/16 v3, 0x29

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :cond_e1
    move-object v4, v5

    .end local v5    # "useProjection":[Ljava/lang/String;
    .local v4, "useProjection":[Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v7

    .end local v7    # "base":Ljava/lang/String;
    .local v3, "base":Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 386
    .local v5, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 387
    return-object v5

    .line 356
    .end local v3    # "base":Ljava/lang/String;
    .end local v4    # "useProjection":[Ljava/lang/String;
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v11    # "whereClause":Ljava/lang/StringBuilder;
    .restart local v7    # "base":Ljava/lang/String;
    :cond_fe
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected whitelist setupSuggestions(Ljava/lang/String;I)V
    .registers 10
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_82

    .line 181
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    .line 184
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    .line 185
    iput p2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/suggestions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    .line 189
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 190
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v3, "search_suggest_query"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    iget-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v0, :cond_6c

    .line 193
    const-string v0, "display1 LIKE ? OR display2 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    .line 195
    const-string/jumbo v5, "query AS suggest_intent_query"

    const-string v6, "_id"

    const-string v1, "0 AS suggest_format"

    const-string v2, "\'android.resource://system/17301578\' AS suggest_icon_1"

    const-string v3, "display1 AS suggest_text_1"

    const-string v4, "display2 AS suggest_text_2"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    goto :goto_81

    .line 206
    :cond_6c
    const-string v0, "display1 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "query AS suggest_intent_query"

    const-string v1, "_id"

    const-string v2, "0 AS suggest_format"

    const-string v3, "\'android.resource://system/17301578\' AS suggest_icon_1"

    const-string v4, "display1 AS suggest_text_1"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    .line 220
    :goto_81
    return-void

    .line 178
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
