.class public final Landroid/database/sqlite/SqliteWrapper;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# static fields
.field private static final greylist-max-o SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String; = "unable to open database file"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SqliteWrapper"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static greylist checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .line 49
    invoke-static {p1}, Landroid/database/sqlite/SqliteWrapper;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    const v0, 0x10405d8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void

    .line 53
    :cond_12
    throw p1
.end method

.method public static greylist delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 95
    :catch_5
    move-exception v0

    .line 96
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when delete: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 98
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 106
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when insert: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 110
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .registers 3
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .line 44
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 61
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 62
    :catch_5
    move-exception v0

    .line 63
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when query: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 65
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o requery(Landroid/content/Context;Landroid/database/Cursor;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 72
    :catch_5
    move-exception v0

    .line 73
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when requery: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 75
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .line 82
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 83
    :catch_5
    move-exception v0

    .line 84
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when update: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 86
    const/4 v1, -0x1

    return v1
.end method
