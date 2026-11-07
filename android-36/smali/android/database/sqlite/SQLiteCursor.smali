.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final greylist-max-o NO_COUNT:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private greylist-max-o mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mColumns:[Ljava/lang/String;

.field private greylist-max-o mCount:I

.field private greylist-max-o mCursorWindowCapacity:I

.field private final greylist-max-o mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final greylist mEditTable:Ljava/lang/String;

.field private greylist-max-o mFillWindowForwardOnly:Z

.field private final greylist mQuery:Landroid/database/sqlite/SQLiteQuery;


# direct methods
.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 6
    .param p1, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p2, "editTable"    # Ljava/lang/String;
    .param p3, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .line 98
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 99
    if-eqz p3, :cond_18

    .line 102
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 103
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 105
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 107
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 108
    return-void

    .line 100
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 86
    return-void
.end method

.method private greylist fillWindow(I)V
    .registers 6
    .param p1, "requiredPos"    # I

    .line 139
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 141
    :try_start_b
    const-string/jumbo v0, "requiredPos cannot be negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 144
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_49

    .line 145
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 146
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    .line 147
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_LOG:Z

    if-eqz v0, :cond_5e

    .line 148
    const-string v0, "SQLiteCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received count(*) from native_fill_window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 151
    :cond_49
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFillWindowForwardOnly:Z

    if-eqz v0, :cond_4f

    move v0, p1

    goto :goto_55

    .line 152
    :cond_4f
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    :goto_55
    nop

    .line 153
    .local v0, "startPos":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_5e} :catch_60

    .line 162
    .end local v0    # "startPos":I
    :cond_5e
    :goto_5e
    nop

    .line 163
    return-void

    .line 155
    :catch_60
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->closeWindow()V

    .line 161
    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 207
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 210
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 211
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public whitelist deactivate()V
    .registers 2

    .line 201
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 202
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 203
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 6

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_56

    .line 279
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 280
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 282
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 284
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", query = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const/16 v3, 0x3e8

    if-le v1, v3, :cond_44

    goto :goto_45

    :cond_44
    move v3, v1

    :goto_45
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_0 .. :try_end_56} :catchall_5b

    .line 291
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_56
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_5b
    move-exception v0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 292
    throw v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .registers 8
    .param p1, "columnName"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 169
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 170
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 171
    .local v1, "columnCount":I
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 172
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1d

    .line 173
    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 175
    .end local v3    # "i":I
    :cond_1d
    iput-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 179
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "columnCount":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1f
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 180
    .local v0, "periodIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    .line 181
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesting column name with table name -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteCursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 187
    .local v2, "i":Ljava/lang/Integer;
    if-eqz v2, :cond_5b

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 190
    :cond_5b
    return v1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 131
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 134
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public whitelist getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onMove(II)Z
    .registers 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 121
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 122
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1e

    .line 123
    :cond_1b
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 126
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist requery()Z
    .registers 6

    .line 216
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 217
    return v1

    .line 220
    :cond_8
    monitor-enter p0

    .line 221
    :try_start_9
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    .line 222
    monitor-exit p0

    return v1

    .line 225
    :cond_17
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_20

    .line 226
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    .line 228
    :cond_20
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 229
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 231
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 232
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_4f

    .line 235
    :try_start_2b
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2f} :catch_30

    return v0

    .line 236
    :catch_30
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requery() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    return v1

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public whitelist setFillWindowForwardOnly(Z)V
    .registers 2
    .param p1, "fillWindowForwardOnly"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mFillWindowForwardOnly:Z

    .line 268
    return-void
.end method

.method public whitelist setSelectionArguments([Ljava/lang/String;)V
    .registers 3
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 253
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public whitelist setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/database/CursorWindow;

    .line 245
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 247
    return-void
.end method
