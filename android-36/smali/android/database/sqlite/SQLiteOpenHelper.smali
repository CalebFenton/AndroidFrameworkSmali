.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final blacklist sDbLock:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private greylist-max-o mIsInitializing:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mMinimumSupportedVersion:I

.field private final greylist mName:Ljava/lang/String;

.field private final greylist-max-o mNewVersion:I

.field private greylist-max-o mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->sDbLock:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "minimumSupportedVersion"    # I
    .param p5, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3c

    .line 178
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 180
    iput p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 181
    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    .line 182
    invoke-direct {p0, p5}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "lock":Ljava/lang/Object;
    invoke-static {}, Landroid/database/sqlite/Flags;->concurrentOpenHelper()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v1, :cond_25

    goto :goto_33

    .line 188
    :cond_25
    sget-object v1, Landroid/database/sqlite/SQLiteOpenHelper;->sDbLock:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    new-instance v3, Landroid/database/sqlite/SQLiteOpenHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteOpenHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_39

    .line 186
    :cond_33
    :goto_33
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 190
    :goto_39
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mLock:Ljava/lang/Object;

    .line 191
    return-void

    .line 176
    .end local v0    # "lock":Ljava/lang/Object;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 137
    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "version":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "name":Ljava/lang/String;
    .local v3, "version":I
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 138
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .end local p4    # "version":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "name":Ljava/lang/String;
    .local v3, "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .local v4, "version":I
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 95
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "minimumSupportedVersion"    # I
    .param p6, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 166
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p4    # "version":I
    .end local p5    # "minimumSupportedVersion":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "name":Ljava/lang/String;
    .local v3, "version":I
    .local v4, "minimumSupportedVersion":I
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 168
    iget-object p1, v0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 169
    iget-object p1, v0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {p1, p6}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 170
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .end local p4    # "version":I
    .end local p5    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    .local v1, "context":Landroid/content/Context;
    .local v2, "name":Ljava/lang/String;
    .local v3, "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .local v4, "version":I
    .local v6, "errorHandler":Landroid/database/DatabaseErrorHandler;
    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V

    .line 118
    return-void
.end method

.method private greylist-max-o getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 11
    .param p1, "writable"    # Z

    .line 365
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1d

    .line 366
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1d

    .line 369
    :cond_10
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 371
    :cond_1a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 375
    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_165

    .line 379
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 381
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_24
    iget-object v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_158

    .line 382
    const/4 v3, 0x1

    :try_start_28
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 384
    if-eqz v0, :cond_38

    .line 385
    if-eqz p1, :cond_7e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 386
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    goto :goto_7e

    .line 388
    :cond_38
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_48

    .line 389
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v3

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->createInMemory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    goto :goto_7e

    .line 391
    :cond_48
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 392
    .local v4, "filePath":Ljava/io/File;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v5
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_155

    .line 394
    .local v5, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :try_start_56
    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    .line 396
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->setFilePermissionsForDb(Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/database/SQLException; {:try_start_56 .. :try_end_62} :catch_63
    .catchall {:try_start_56 .. :try_end_62} :catchall_155

    .line 405
    goto :goto_7e

    .line 397
    :catch_63
    move-exception v6

    .line 398
    .local v6, "ex":Landroid/database/SQLException;
    if-nez p1, :cond_153

    .line 401
    :try_start_66
    sget-object v7, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t open database for writing (will try read-only):"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v7

    .line 403
    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v3

    .line 404
    .end local v5    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .local v3, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    invoke-static {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v0, v5

    .line 408
    .end local v3    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .end local v4    # "filePath":Ljava/io/File;
    .end local v6    # "ex":Landroid/database/SQLException;
    :cond_7e
    :goto_7e
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 410
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 411
    .local v3, "version":I
    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_141

    .line 412
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_10c

    .line 417
    if-lez v3, :cond_e2

    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    if-ge v3, v4, :cond_e2

    .line 418
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v4, "databaseFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 421
    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 422
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 423
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_66 .. :try_end_b1} :catchall_155

    .line 453
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 454
    if-eqz v0, :cond_bc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_bc

    .line 455
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 423
    :cond_bc
    return-object v5

    .line 425
    :cond_bd
    :try_start_bd
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to delete obsolete database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v5

    .line 429
    .end local v4    # "databaseFile":Ljava/io/File;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_e2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_e5
    .catchall {:try_start_bd .. :try_end_e5} :catchall_155

    .line 431
    if-nez v3, :cond_eb

    .line 432
    :try_start_e7
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_fa

    .line 434
    :cond_eb
    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v3, v4, :cond_f5

    .line 435
    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_fa

    .line 437
    :cond_f5
    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 440
    :goto_fa
    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 441
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_102
    .catchall {:try_start_e7 .. :try_end_102} :catchall_106

    .line 443
    :try_start_102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    goto :goto_141

    .line 443
    :catchall_106
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v4

    .line 413
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_10c
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t upgrade read-only database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v4

    .line 448
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_141
    :goto_141
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 449
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 450
    monitor-exit v2
    :try_end_147
    .catchall {:try_start_102 .. :try_end_147} :catchall_155

    .line 453
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 454
    if-eqz v0, :cond_152

    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_152

    .line 455
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 450
    :cond_152
    return-object v0

    .line 399
    .end local v3    # "version":I
    .local v4, "filePath":Ljava/io/File;
    .restart local v5    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .restart local v6    # "ex":Landroid/database/SQLException;
    :cond_153
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    :try_start_154
    throw v6

    .line 451
    .end local v4    # "filePath":Ljava/io/File;
    .end local v5    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .end local v6    # "ex":Landroid/database/SQLException;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :catchall_155
    move-exception v3

    monitor-exit v2
    :try_end_157
    .catchall {:try_start_154 .. :try_end_157} :catchall_155

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    :try_start_157
    throw v3
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_158

    .line 453
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :catchall_158
    move-exception v2

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 454
    if-eqz v0, :cond_164

    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_164

    .line 455
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 457
    :cond_164
    throw v2

    .line 376
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o setFilePermissionsForDb(Ljava/lang/String;)V
    .registers 3
    .param p0, "dbPath"    # Ljava/lang/String;

    .line 461
    const/16 v0, 0x1b0

    .line 462
    .local v0, "perms":I
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 463
    return-void
.end method

.method private greylist-max-o setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .registers 4
    .param p1, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 278
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 279
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 280
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 3

    monitor-enter p0

    .line 469
    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_1b

    .line 471
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 472
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .line 475
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    :cond_19
    monitor-exit p0

    return-void

    .line 469
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v0
.end method

.method public whitelist getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 359
    monitor-enter p0

    .line 360
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 361
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public whitelist getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 335
    monitor-enter p0

    .line 336
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 337
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public greylist-max-o onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 508
    return-void
.end method

.method public whitelist onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 494
    return-void
.end method

.method public abstract whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public whitelist onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 570
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 587
    return-void
.end method

.method public abstract whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public whitelist setIdleConnectionTimeout(J)V
    .registers 5
    .param p1, "idleConnectionTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_16

    .line 308
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection timeout setting cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "idleConnectionTimeoutMs":J
    throw v0

    .line 311
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "idleConnectionTimeoutMs":J
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 312
    monitor-exit p0

    .line 313
    return-void

    .line 312
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public whitelist setLookasideConfig(II)V
    .registers 5
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 249
    monitor-enter p0

    .line 250
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_16

    .line 251
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lookaside memory config cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "slotSize":I
    .end local p2    # "slotCount":I
    throw v0

    .line 254
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "slotSize":I
    .restart local p2    # "slotCount":I
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 255
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public whitelist setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 4
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-enter p0

    .line 269
    :try_start_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 270
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenParams cannot be set after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    throw v0

    .line 273
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :cond_19
    :goto_19
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 274
    monitor-exit p0

    .line 275
    return-void

    .line 274
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public whitelist setWriteAheadLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_2f

    .line 215
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 216
    if-eqz p1, :cond_25

    .line 217
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_2a

    .line 219
    :cond_25
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 222
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setWriteAheadLoggingEnabled(Z)V

    .line 226
    :cond_2f
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method
