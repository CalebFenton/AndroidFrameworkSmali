.class public final Landroid/database/sqlite/SQLiteRawStatement;
.super Ljava/lang/Object;
.source "SQLiteRawStatement.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteRawStatement$SQLiteDataType;
    }
.end annotation


# static fields
.field private static final blacklist SQLITE_BUSY:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_BLOB:I = 0x4

.field public static final whitelist SQLITE_DATA_TYPE_FLOAT:I = 0x2

.field public static final whitelist SQLITE_DATA_TYPE_INTEGER:I = 0x1

.field public static final whitelist SQLITE_DATA_TYPE_NULL:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_TEXT:I = 0x3

.field private static final blacklist SQLITE_DONE:I = 0x65

.field private static final blacklist SQLITE_LOCKED:I = 0x6

.field private static final blacklist SQLITE_ROW:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteRawStatement"


# instance fields
.field private final blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final blacklist mSession:Landroid/database/sqlite/SQLiteSession;

.field private final blacklist mSql:Ljava/lang/String;

.field private final blacklist mStatement:J

.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    .line 168
    iput-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    .line 170
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 171
    iput-object p2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/database/sqlite/SQLiteSession;->acquirePersistentStatement(Ljava/lang/String;Ljava/io/Closeable;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 174
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    .line 175
    return-void
.end method

.method private static native blacklist nativeBindBlob(JI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindDouble(JID)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindInt(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindLong(JIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindNull(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterIndex(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindText(JILjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeClearBindings(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBlob(JI)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBuffer(JI[BIII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBytes(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnDouble(JI)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnInt(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnLong(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnText(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReset(JZ)V
.end method

.method private static native blacklist nativeStep(JZ)I
.end method

.method private blacklist throwIfInvalid()V
    .registers 4

    .line 183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_31

    .line 185
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_15

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "method called on a closed statement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method called on a foreign thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_31
    return-void
.end method

.method private blacklist throwIfInvalidBounds(III)V
    .registers 8
    .param p1, "arrayLength"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 198
    if-ltz p1, :cond_5a

    .line 201
    const-string v0, " for array length "

    const-string/jumbo v1, "invalid offset "

    if-ltz p2, :cond_3b

    if-ge p2, p1, :cond_3b

    .line 205
    if-lez p3, :cond_12

    sub-int v2, p1, p2

    if-lt v2, p3, :cond_12

    .line 210
    return-void

    .line 206
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist bindBlob(I[B)V
    .registers 9
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # [B

    .line 396
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 399
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    array-length v5, p2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":[B
    .local v2, "parameterIndex":I
    .local v3, "value":[B
    :try_start_c
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 401
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 402
    nop

    .line 403
    return-void

    .line 401
    :catchall_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "parameterIndex":I
    .end local v3    # "value":[B
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":[B
    :catchall_17
    move-exception v0

    move v2, p1

    move-object v3, p2

    move-object p1, v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":[B
    .restart local v2    # "parameterIndex":I
    .restart local v3    # "value":[B
    :goto_1b
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 402
    throw p1
.end method

.method public whitelist bindBlob(I[BII)V
    .registers 12
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 422
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 424
    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    .line 426
    :try_start_a
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_1b

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .local v3, "parameterIndex":I
    .local v4, "value":[B
    .local v5, "offset":I
    .local v6, "length":I
    :try_start_10
    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 428
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v3    # "parameterIndex":I
    .end local v4    # "value":[B
    .end local v5    # "offset":I
    .end local v6    # "length":I
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":[B
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    :catchall_1b
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .restart local v3    # "parameterIndex":I
    .restart local v4    # "value":[B
    .restart local v5    # "offset":I
    .restart local v6    # "length":I
    :goto_21
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 429
    throw p1
.end method

.method public whitelist bindDouble(ID)V
    .registers 6
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # D

    .line 445
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 447
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindDouble(JID)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 449
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 450
    throw v0
.end method

.method public whitelist bindInt(II)V
    .registers 5
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # I

    .line 465
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 467
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindInt(JII)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 469
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 470
    throw v0
.end method

.method public whitelist bindLong(IJ)V
    .registers 6
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # J

    .line 485
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 487
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindLong(JIJ)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 489
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 490
    throw v0
.end method

.method public whitelist bindNull(I)V
    .registers 4
    .param p1, "parameterIndex"    # I

    .line 505
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 507
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindNull(JI)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 509
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 510
    throw v0
.end method

.method public whitelist bindText(ILjava/lang/String;)V
    .registers 5
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 526
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 529
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindText(JILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 531
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 532
    nop

    .line 533
    return-void

    .line 531
    :catchall_10
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 532
    throw v0
.end method

.method public whitelist clearBindings()V
    .registers 3

    .line 315
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 317
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeClearBindings(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 319
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 320
    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 221
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 222
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-virtual {v0, v1, p0}, Landroid/database/sqlite/SQLiteSession;->releasePersistentStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Ljava/io/Closeable;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    .line 225
    :cond_11
    return-void
.end method

.method public whitelist getColumnBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .line 647
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 649
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBlob(JI)[B

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 651
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 649
    return-object v0

    .line 651
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 652
    throw v0
.end method

.method public whitelist getColumnDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 708
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 710
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnDouble(JI)D

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 712
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 710
    return-wide v0

    .line 712
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 713
    throw v0
.end method

.method public whitelist getColumnInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 733
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 735
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnInt(JI)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 737
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 735
    return v0

    .line 737
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 738
    throw v0
.end method

.method public whitelist getColumnLength(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 620
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 622
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBytes(JI)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 624
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 622
    return v0

    .line 624
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 625
    throw v0
.end method

.method public whitelist getColumnLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 758
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 760
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnLong(JI)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 762
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 760
    return-wide v0

    .line 762
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 763
    throw v0
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .line 594
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 596
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnName(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 598
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 596
    return-object v0

    .line 598
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 599
    throw v0
.end method

.method public whitelist getColumnText(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .line 784
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 786
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnText(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 788
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 786
    return-object v0

    .line 788
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 789
    throw v0
.end method

.method public whitelist getColumnType(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 571
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 573
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnType(JI)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 575
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 573
    return v0

    .line 575
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 576
    throw v0
.end method

.method public whitelist getParameterCount()I
    .registers 3

    .line 333
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 335
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterCount(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 337
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 335
    return v0

    .line 337
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 338
    throw v0
.end method

.method public whitelist getParameterIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 356
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterIndex(JLjava/lang/String;)I

    move-result v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 358
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 356
    return v0

    .line 358
    :catchall_10
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 359
    throw v0
.end method

.method public whitelist getParameterName(I)Ljava/lang/String;
    .registers 4
    .param p1, "parameterIndex"    # I

    .line 375
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 377
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterName(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 379
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 377
    return-object v0

    .line 379
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 380
    throw v0
.end method

.method public whitelist getResultColumnCount()I
    .registers 3

    .line 544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 546
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnCount(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 548
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 546
    return v0

    .line 548
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 549
    throw v0
.end method

.method public whitelist isOpen()Z
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist readColumnBlob(I[BIII)I
    .registers 14
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "srcOffset"    # I

    .line 681
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 683
    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    .line 685
    :try_start_a
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_1c

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "columnIndex":I
    .end local p2    # "buffer":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .end local p5    # "srcOffset":I
    .local v3, "columnIndex":I
    .local v4, "buffer":[B
    .local v5, "offset":I
    .local v6, "length":I
    .local v7, "srcOffset":I
    :try_start_11
    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBuffer(JI[BIII)I

    move-result p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    .line 687
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 685
    return p1

    .line 687
    :catchall_19
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .end local v3    # "columnIndex":I
    .end local v4    # "buffer":[B
    .end local v5    # "offset":I
    .end local v6    # "length":I
    .end local v7    # "srcOffset":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "buffer":[B
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    .restart local p5    # "srcOffset":I
    :catchall_1c
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object p1, v0

    .end local p1    # "columnIndex":I
    .end local p2    # "buffer":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .end local p5    # "srcOffset":I
    .restart local v3    # "columnIndex":I
    .restart local v4    # "buffer":[B
    .restart local v5    # "offset":I
    .restart local v6    # "length":I
    .restart local v7    # "srcOffset":I
    :goto_23
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 688
    throw p1
.end method

.method public whitelist reset()V
    .registers 4

    .line 298
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 300
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeReset(JZ)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 302
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_e
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 303
    throw v0
.end method

.method public whitelist step()Z
    .registers 5

    .line 249
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 251
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_73

    .line 252
    .local v0, "err":I
    const-string v1, "database "

    sparse-switch v0, :sswitch_data_78

    .line 264
    :try_start_f
    new-instance v1, Landroid/database/sqlite/SQLiteException;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_73

    goto :goto_5b

    .line 256
    :sswitch_12
    nop

    .line 266
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 256
    const/4 v1, 0x0

    return v1

    .line 254
    :sswitch_18
    nop

    .line 266
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 254
    return v2

    .line 260
    :sswitch_1d
    :try_start_1d
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " locked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    throw v2

    .line 258
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    :sswitch_3c
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " busy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    throw v2

    .line 264
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    throw v1
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_73

    .line 266
    .end local v0    # "err":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteRawStatement;
    :catchall_73
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 267
    throw v0

    :sswitch_data_78
    .sparse-switch
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_1d
        0x64 -> :sswitch_18
        0x65 -> :sswitch_12
    .end sparse-switch
.end method

.method public blacklist stepNoThrow()I
    .registers 4

    .line 281
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 283
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 285
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 283
    return v0

    .line 285
    :catchall_e
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 286
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 794
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteRawStatement;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 797
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: (closed) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
