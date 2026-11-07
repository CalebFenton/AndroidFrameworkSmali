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
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field protected whitelist mClosed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mContentObservable:Landroid/database/ContentObservable;

.field protected whitelist mContentResolver:Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected greylist mCurrentRowID:Ljava/lang/Long;

.field private final greylist-max-o mDataSetObservable:Landroid/database/DataSetObservable;

.field private greylist-max-p mExtras:Landroid/os/Bundle;

.field private greylist mNotifyUri:Landroid/net/Uri;

.field private blacklist mNotifyUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected whitelist mPos:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected greylist mRowIdColumnIndex:I

.field private greylist-max-o mSelfObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mSelfObserverLock:Ljava/lang/Object;

.field private greylist-max-o mSelfObserverRegistered:Z

.field protected greylist mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 86
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 88
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 229
    invoke-direct {p0}, Landroid/database/AbstractCursor;->initCloseGuard()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 230
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_30

    .line 231
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "AbstractCursor.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 233
    :cond_30
    return-void
.end method

.method private blacklist initCloseGuard()Ldalvik/system/CloseGuard;
    .registers 2

    .line 237
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initCloseGuard$ravenwood()Ldalvik/system/CloseGuard;
    .registers 2

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected whitelist checkPosition()V
    .registers 4

    .line 534
    const/4 v0, -0x1

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_e

    .line 537
    return-void

    .line 535
    :cond_e
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 185
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 186
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 187
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_14

    .line 188
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 190
    :cond_14
    return-void
.end method

.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 8
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 211
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 213
    iget-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 214
    .local v2, "data":[C
    if-eqz v2, :cond_1b

    array-length v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_13

    goto :goto_1b

    .line 217
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_21

    .line 215
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 219
    :goto_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 220
    .end local v2    # "data":[C
    goto :goto_2a

    .line 221
    :cond_28
    iput v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 223
    :goto_2a
    return-void
.end method

.method public whitelist deactivate()V
    .registers 1

    .line 151
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 152
    return-void
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 281
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 282
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3

    .line 541
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 542
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 545
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 546
    :cond_19
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_22

    .line 547
    :catch_21
    move-exception v0

    :cond_22
    :goto_22
    nop

    .line 548
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 4
    .param p1, "column"    # I

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColumnCount()I
    .registers 2

    .line 146
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .registers 8
    .param p1, "columnName"    # Ljava/lang/String;

    .line 339
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 340
    .local v0, "periodIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    .line 341
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 342
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

    const-string v4, "Cursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 346
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2d
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "columnNames":[Ljava/lang/String;
    array-length v3, v2

    .line 348
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_41

    .line 349
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 350
    return v4

    .line 348
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 359
    .end local v4    # "i":I
    :cond_41
    return v1
.end method

.method public whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 7
    .param p1, "columnName"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, "index":I
    if-ltz v0, :cond_7

    .line 375
    return v0

    .line 366
    :cond_7
    const-string v1, ""

    .line 368
    .local v1, "availableColumns":Ljava/lang/String;
    :try_start_9
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_13

    move-object v1, v2

    .line 371
    goto :goto_1b

    .line 369
    :catch_13
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Cursor"

    const-string v4, "Cannot collect column names for debug purposes"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist. Available columns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .line 380
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract whitelist getColumnNames()[Ljava/lang/String;
.end method

.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getDouble(I)D
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 501
    iget-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract whitelist getFloat(I)F
.end method

.method public abstract whitelist getInt(I)I
.end method

.method public abstract whitelist getLong(I)J
.end method

.method public whitelist getNotificationUri()Landroid/net/Uri;
    .registers 3

    .line 477
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v0

    return-object v1

    .line 479
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getNotificationUris()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 486
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist getPosition()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract whitelist getShort(I)S
.end method

.method public abstract whitelist getString(I)Ljava/lang/String;
.end method

.method public whitelist getType(I)I
    .registers 3
    .param p1, "column"    # I

    .line 122
    const/4 v0, 0x3

    return v0
.end method

.method protected whitelist getUpdatedField(I)Ljava/lang/Object;
    .registers 3
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWantsAllOnMoveCalls()Z
    .registers 2

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist isAfterLast()Z
    .registers 4

    .line 330
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 331
    return v1

    .line 333
    :cond_8
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public final whitelist isBeforeFirst()Z
    .registers 4

    .line 322
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 323
    return v1

    .line 325
    :cond_8
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist isClosed()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected whitelist isFieldUpdated(I)Z
    .registers 3
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist isFirst()Z
    .registers 2

    .line 311
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final whitelist isLast()Z
    .registers 4

    .line 316
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 317
    .local v0, "cnt":I
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public abstract whitelist isNull(I)Z
.end method

.method public final whitelist move(I)Z
    .registers 3
    .param p1, "offset"    # I

    .line 286
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToFirst()Z
    .registers 2

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToLast()Z
    .registers 2

    .line 296
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToNext()Z
    .registers 2

    .line 301
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .line 252
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 253
    .local v0, "count":I
    const/4 v1, 0x0

    if-lt p1, v0, :cond_a

    .line 254
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 255
    return v1

    .line 259
    :cond_a
    const/4 v2, -0x1

    if-gez p1, :cond_10

    .line 260
    iput v2, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 261
    return v1

    .line 265
    :cond_10
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_16

    .line 266
    const/4 v1, 0x1

    return v1

    .line 269
    :cond_16
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v1, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 270
    .local v1, "result":Z
    if-nez v1, :cond_21

    .line 271
    iput v2, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_23

    .line 273
    :cond_21
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 276
    :goto_23
    return v1
.end method

.method public final whitelist moveToPrevious()Z
    .registers 2

    .line 306
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 413
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 415
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_2a

    .line 416
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 417
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_2a

    .line 418
    iget-object v3, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 419
    .local v3, "notifyUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 417
    .end local v3    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 422
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method protected greylist-max-o onDeactivateOrClose()V
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_e

    .line 157
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 160
    :cond_e
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 161
    return-void
.end method

.method public whitelist onMove(II)Z
    .registers 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 385
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 386
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 398
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public whitelist requery()Z
    .registers 7

    .line 165
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_26

    .line 166
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_24

    .line 168
    iget-object v3, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 169
    .local v3, "notifyUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    .end local v3    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 171
    .end local v2    # "i":I
    :cond_24
    iput-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 173
    .end local v0    # "size":I
    :cond_26
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 174
    return v1
.end method

.method public whitelist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 506
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 496
    if-nez p1, :cond_5

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 497
    return-void
.end method

.method public whitelist setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 435
    return-void
.end method

.method public whitelist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p2, "notifyUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/AbstractCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V

    .line 443
    return-void
.end method

.method public blacklist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p3, "userHandle"    # I
    .param p4, "registerSelfObserver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;IZ)V"
        }
    .end annotation

    .line 454
    .local p2, "notifyUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    .line 456
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 457
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 458
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1f

    .line 459
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    iput-boolean v2, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 462
    :cond_1f
    if-eqz p4, :cond_46

    .line 463
    new-instance v1, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v1, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 464
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 465
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_44

    .line 466
    iget-object v4, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 467
    .local v4, "notifyUri":Landroid/net/Uri;
    iget-object v5, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v3, v6, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    .end local v4    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 470
    .end local v2    # "i":I
    :cond_44
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 472
    .end local v1    # "size":I
    :cond_46
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 391
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_9

    .line 392
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 394
    :cond_9
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 403
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 404
    return-void
.end method
