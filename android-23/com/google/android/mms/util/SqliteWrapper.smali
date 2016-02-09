.class public final Lcom/google/android/mms/util/SqliteWrapper;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# static fields
.field private static final SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String; = "unable to open database file"

.field private static final TAG:Ljava/lang/String; = "SqliteWrapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    #@0
    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/android/mms/util/SqliteWrapper;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 61
    const v0, 0x10400e5

    #@9
    .line 62
    const/4 v1, 0x0

    #@a
    .line 61
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@11
    .line 59
    return-void

    #@12
    .line 64
    :cond_0
    throw p1
.end method

.method public static delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 103
    :catch_0
    move-exception v0

    #@6
    .line 104
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    #@9
    const-string/jumbo v2, "Catch a SQLiteException when delete: "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 105
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    #@12
    .line 106
    const/4 v1, -0x1

    #@13
    return v1
.end method

.method public static insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 114
    :catch_0
    move-exception v0

    #@6
    .line 115
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    #@9
    const-string/jumbo v2, "Catch a SQLiteException when insert: "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 116
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    #@12
    .line 117
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method private static isLowMemory(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 42
    if-nez p0, :cond_0

    #@2
    .line 43
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 47
    :cond_0
    const-string/jumbo v2, "activity"

    #@7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 46
    check-cast v0, Landroid/app/ActivityManager;

    #@d
    .line 48
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    #@f
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@12
    .line 49
    .local v1, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@15
    .line 51
    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    #@17
    return v2
.end method

.method private static isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "unable to open database file"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 72
    :catch_0
    move-exception v0

    #@6
    .line 73
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    #@9
    const-string/jumbo v2, "Catch a SQLiteException when query: "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 74
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    #@12
    .line 75
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static requery(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 81
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 82
    :catch_0
    move-exception v0

    #@6
    .line 83
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    #@9
    const-string/jumbo v2, "Catch a SQLiteException when requery: "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 84
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    #@12
    .line 85
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public static update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 92
    :catch_0
    move-exception v0

    #@6
    .line 93
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    #@9
    const-string/jumbo v2, "Catch a SQLiteException when update: "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 94
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    #@12
    .line 95
    const/4 v1, -0x1

    #@13
    return v1
.end method
