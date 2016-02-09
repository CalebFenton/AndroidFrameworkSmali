.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mCurrentRowID:Ljava/lang/Long;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    #@a
    .line 76
    new-instance v0, Landroid/database/DataSetObservable;

    #@c
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    #@f
    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@11
    .line 77
    new-instance v0, Landroid/database/ContentObservable;

    #@13
    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    #@16
    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    #@18
    .line 79
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@1a
    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    #@1c
    .line 208
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@1f
    .line 207
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    #@0
    .prologue
    .line 459
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v1, v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@8
    move-result v0

    #@9
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 460
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@f
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    #@11
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    #@18
    throw v0

    #@19
    .line 458
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    #@3
    .line 168
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    #@5
    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    #@8
    .line 169
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    #@b
    .line 166
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 192
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@7
    .line 193
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    #@9
    .line 194
    .local v0, "data":[C
    if-eqz v0, :cond_0

    #@b
    array-length v2, v0

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 195
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@15
    move-result-object v2

    #@16
    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    #@18
    .line 199
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    #@1e
    .line 189
    .end local v0    # "data":[C
    :goto_1
    return-void

    #@1f
    .line 197
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@26
    goto :goto_0

    #@27
    .line 201
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    #@29
    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    #@3
    .line 137
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    #@0
    .prologue
    .line 248
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    #@3
    .line 247
    return-void
.end method

.method protected finalize()V
    .locals 3

    #@0
    .prologue
    .line 466
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 467
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@a
    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@c
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@f
    .line 470
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/database/AbstractCursor;->mClosed:Z

    #@11
    if-nez v1, :cond_1

    #@13
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 465
    :cond_1
    :goto_0
    return-void

    #@17
    .line 471
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "getBlob is not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 306
    const/16 v5, 0x2e

    #@3
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v4

    #@7
    .line 307
    .local v4, "periodIndex":I
    if-eq v4, v8, :cond_0

    #@9
    .line 308
    new-instance v1, Ljava/lang/Exception;

    #@b
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    #@e
    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Cursor"

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "requesting column name with table name -- "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 310
    add-int/lit8 v5, v4, 0x1

    #@2a
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 314
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v3, v0

    #@33
    .line 315
    .local v3, "length":I
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@36
    .line 316
    aget-object v5, v0, v2

    #@38
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 317
    return v2

    #@3f
    .line 315
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 326
    :cond_2
    return v8
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 332
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "column \'"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "\' does not exist"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 335
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    aget-object v0, v0, p1

    #@6
    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 409
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final getPosition()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@2
    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 109
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 447
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    #@0
    .prologue
    .line 416
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 297
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 298
    return v0

    #@9
    .line 300
    :cond_0
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    #@b
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@e
    move-result v3

    #@f
    if-ne v2, v3, :cond_1

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 289
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 290
    return v0

    #@9
    .line 292
    :cond_0
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_1

    #@e
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    #@2
    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 439
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final isFirst()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public final isLast()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 283
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@4
    move-result v0

    #@5
    .line 284
    .local v0, "cnt":I
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    #@7
    add-int/lit8 v3, v0, -0x1

    #@9
    if-ne v2, v3, :cond_0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :cond_0
    return v1
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@2
    add-int/2addr v0, p1

    #@3
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    #@0
    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 219
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    #@5
    move-result v0

    #@6
    .line 220
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    #@8
    .line 221
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@a
    .line 222
    return v2

    #@b
    .line 226
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 227
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    #@f
    .line 228
    return v2

    #@10
    .line 232
    :cond_1
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    #@12
    if-ne p1, v2, :cond_2

    #@14
    .line 233
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 236
    :cond_2
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    #@18
    invoke-virtual {p0, v2, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    #@1b
    move-result v1

    #@1c
    .line 237
    .local v1, "result":Z
    if-nez v1, :cond_3

    #@1e
    .line 238
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    #@20
    .line 243
    :goto_0
    return v1

    #@21
    .line 240
    :cond_3
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    #@23
    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 373
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    #@9
    .line 375
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    #@b
    if-eqz v0, :cond_0

    #@d
    if-eqz p1, :cond_0

    #@f
    .line 376
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@11
    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    #@13
    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 372
    return-void

    #@1a
    .line 373
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@6
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@b
    .line 145
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    #@e
    .line 147
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@10
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    #@13
    .line 142
    return-void
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    .line 184
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    #@5
    .line 344
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    #@5
    .line 357
    return-void
.end method

.method public requery()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 152
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 153
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@b
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    #@d
    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@f
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@12
    .line 154
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    #@14
    .line 156
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@16
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    #@19
    .line 157
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 431
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 421
    if-nez p1, :cond_0

    #@2
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@4
    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    #@6
    .line 420
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 390
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    #@7
    .line 389
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 395
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 396
    :try_start_0
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    #@5
    .line 397
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@7
    .line 398
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 399
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@d
    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@f
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@12
    .line 401
    :cond_0
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    #@14
    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    #@17
    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@19
    .line 402
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    #@1b
    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    #@1d
    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-virtual {v0, v2, v4, v3, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@23
    .line 403
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 394
    return-void

    #@28
    .line 395
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 352
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    #@6
    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    #@9
    .line 349
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    #@5
    .line 362
    return-void
.end method
