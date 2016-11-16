.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private final mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 2
    .param p1, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p2, "editTable"    # Ljava/lang/String;
    .param p3, "query"    # Landroid/database/sqlite/SQLiteQuery;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    #@4
    .line 52
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@7
    .line 94
    if-nez p3, :cond_0

    #@9
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "query object cannot be null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 97
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 98
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    #@1a
    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    #@1d
    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    #@23
    .line 102
    :goto_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    #@25
    .line 103
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    #@27
    .line 104
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    #@29
    .line 105
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@2b
    .line 107
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    #@31
    .line 93
    return-void

    #@32
    .line 100
    :cond_1
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    #@34
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    #@3
    .line 79
    return-void
.end method

.method private fillWindow(I)V
    .locals 5
    .param p1, "requiredPos"    # I

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    #@b
    .line 141
    :try_start_0
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 142
    const/4 v2, 0x0

    #@11
    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    #@14
    move-result v1

    #@15
    .line 143
    .local v1, "startPos":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@17
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I

    #@1d
    move-result v2

    #@1e
    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@20
    .line 144
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@22
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    #@25
    move-result v2

    #@26
    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    #@28
    .line 145
    const-string/jumbo v2, "SQLiteCursor"

    #@2b
    const/4 v3, 0x3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 146
    const-string/jumbo v2, "SQLiteCursor"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "received count(*) from native_fill_window: "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    iget v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 137
    :cond_0
    :goto_0
    return-void

    #@4f
    .line 150
    .end local v1    # "startPos":I
    :cond_1
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    #@51
    .line 149
    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    #@54
    move-result v1

    #@55
    .line 151
    .restart local v1    # "startPos":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@57
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@59
    const/4 v4, 0x0

    #@5a
    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    goto :goto_0

    #@5e
    .line 153
    .end local v1    # "startPos":I
    :catch_0
    move-exception v0

    #@5f
    .line 158
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->closeWindow()V

    #@62
    .line 159
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 205
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    #@3
    .line 206
    monitor-enter p0

    #@4
    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    #@9
    .line 208
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    #@b
    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 204
    return-void

    #@10
    .line 206
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public deactivate()V
    .locals 1

    #@0
    .prologue
    .line 199
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    #@3
    .line 200
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    #@5
    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    #@8
    .line 198
    return-void
.end method

.method protected finalize()V
    .locals 5

    #@0
    .prologue
    const/16 v2, 0x3e8

    #@2
    .line 261
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 262
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 263
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 264
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    .line 266
    .local v0, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Finalizing a Cursor that has not been deactivated or closed. database = "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 267
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@22
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 268
    const-string/jumbo v4, ", table = "

    #@31
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 268
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    #@37
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 269
    const-string/jumbo v4, ", query = "

    #@3e
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 269
    if-le v0, v2, :cond_0

    #@44
    move v0, v2

    #@45
    .end local v0    # "len":I
    :cond_0
    const/4 v2, 0x0

    #@46
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 266
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 270
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    #@54
    .line 265
    invoke-static {v2, v3}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    .line 272
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    .line 275
    :cond_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    #@5d
    .line 258
    return-void

    #@5e
    .line 274
    :catchall_0
    move-exception v2

    #@5f
    .line 275
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    #@62
    .line 274
    throw v2
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 11
    .param p1, "columnName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 166
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    #@3
    if-nez v7, :cond_1

    #@5
    .line 167
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    #@7
    .line 168
    .local v1, "columns":[Ljava/lang/String;
    array-length v0, v1

    #@8
    .line 169
    .local v0, "columnCount":I
    new-instance v5, Ljava/util/HashMap;

    #@a
    const/high16 v7, 0x3f800000    # 1.0f

    #@c
    invoke-direct {v5, v0, v7}, Ljava/util/HashMap;-><init>(IF)V

    #@f
    .line 170
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@12
    .line 171
    aget-object v7, v1, v3

    #@14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 170
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 173
    :cond_0
    iput-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    #@20
    .line 177
    .end local v0    # "columnCount":I
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v7, 0x2e

    #@22
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@25
    move-result v6

    #@26
    .line 178
    .local v6, "periodIndex":I
    if-eq v6, v10, :cond_2

    #@28
    .line 179
    new-instance v2, Ljava/lang/Exception;

    #@2a
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@2d
    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SQLiteCursor"

    #@30
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "requesting column name with table name -- "

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 181
    add-int/lit8 v7, v6, 0x1

    #@49
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4c
    move-result-object p1

    #@4d
    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    #@4f
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Ljava/lang/Integer;

    #@55
    .line 185
    .local v4, "i":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    #@57
    .line 186
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v7

    #@5b
    return v7

    #@5c
    .line 188
    :cond_3
    return v10
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 131
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 132
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    #@9
    .line 134
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@b
    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@6
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    #@9
    move-result v0

    #@a
    if-ge p2, v0, :cond_2

    #@c
    .line 123
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    #@f
    .line 126
    :cond_1
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 122
    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@13
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    #@16
    move-result v0

    #@17
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@19
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    if-lt p2, v0, :cond_1

    #@20
    goto :goto_0
.end method

.method public requery()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 214
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 215
    return v4

    #@8
    .line 218
    :cond_0
    monitor-enter p0

    #@9
    .line 219
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    #@b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 220
    return v4

    #@17
    .line 223
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 224
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    #@1d
    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V

    #@20
    .line 226
    :cond_2
    const/4 v1, -0x1

    #@21
    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    #@23
    .line 227
    const/4 v1, -0x1

    #@24
    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@26
    .line 229
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    #@28
    invoke-interface {v1, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 233
    :try_start_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@2f
    move-result v1

    #@30
    return v1

    #@31
    .line 218
    :catchall_0
    move-exception v1

    #@32
    monitor-exit p0

    #@33
    throw v1

    #@34
    .line 234
    :catch_0
    move-exception v0

    #@35
    .line 236
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "SQLiteCursor"

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "requery() failed "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 237
    return v4
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    #@2
    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    #@5
    .line 250
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    #@0
    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    #@3
    .line 244
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    #@6
    .line 242
    return-void
.end method
