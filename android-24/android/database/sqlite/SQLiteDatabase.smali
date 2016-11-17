.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$1;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mHasAttachedDbsLocked:Z

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->-assertionsDisabled:Z

    #@d
    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    #@f
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@12
    .line 77
    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@14
    .line 186
    const/4 v0, 0x6

    #@15
    new-array v0, v0, [Ljava/lang/String;

    #@17
    const-string/jumbo v3, ""

    #@1a
    aput-object v3, v0, v1

    #@1c
    const-string/jumbo v1, " OR ROLLBACK "

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, " OR ABORT "

    #@24
    const/4 v2, 0x2

    #@25
    aput-object v1, v0, v2

    #@27
    const-string/jumbo v1, " OR FAIL "

    #@2a
    const/4 v2, 0x3

    #@2b
    aput-object v1, v0, v2

    #@2d
    const-string/jumbo v1, " OR IGNORE "

    #@30
    const/4 v2, 0x4

    #@31
    aput-object v1, v0, v2

    #@33
    const-string/jumbo v1, " OR REPLACE "

    #@36
    const/4 v2, 0x5

    #@37
    aput-object v1, v0, v2

    #@39
    .line 185
    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    #@3b
    .line 69
    return-void

    #@3c
    :cond_0
    move v0, v2

    #@3d
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    #@3
    .line 83
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$1;

    #@5
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    #@8
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    #@a
    .line 112
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@11
    .line 116
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    #@17
    .line 258
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@19
    .line 259
    if-eqz p4, :cond_0

    #@1b
    .end local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    :goto_0
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    #@1d
    .line 260
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1f
    invoke-direct {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    #@22
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@24
    .line 257
    return-void

    #@25
    .line 259
    .restart local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    :cond_0
    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    #@27
    .end local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    #@2a
    goto :goto_0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 4
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    #@0
    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 507
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v1

    #@7
    .line 508
    if-eqz p2, :cond_0

    #@9
    const/4 v0, 0x2

    #@a
    .line 511
    :goto_0
    const/4 v2, 0x0

    #@b
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x0

    #@10
    .line 507
    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 513
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@16
    .line 504
    return-void

    #@17
    .line 509
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 512
    :catchall_0
    move-exception v0

    #@1a
    .line 513
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@1d
    .line 512
    throw v0
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2041
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2042
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2043
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@9
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2040
    return-void

    #@e
    .line 2041
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 830
    const-string/jumbo v0, ":memory:"

    #@3
    .line 831
    const/high16 v1, 0x10000000

    #@5
    .line 830
    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 730
    if-nez p0, :cond_0

    #@2
    .line 731
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "file must not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 735
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@e
    move-result v0

    #@f
    .line 736
    .local v0, "deleted":Z
    new-instance v5, Ljava/io/File;

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    const-string/jumbo v7, "-journal"

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@2f
    move-result v5

    #@30
    or-int/2addr v0, v5

    #@31
    .line 737
    new-instance v5, Ljava/io/File;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    const-string/jumbo v7, "-shm"

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@51
    move-result v5

    #@52
    or-int/2addr v0, v5

    #@53
    .line 738
    new-instance v5, Ljava/io/File;

    #@55
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    const-string/jumbo v7, "-wal"

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@70
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@73
    move-result v5

    #@74
    or-int/2addr v0, v5

    #@75
    .line 740
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@78
    move-result-object v1

    #@79
    .line 741
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    #@7b
    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    const-string/jumbo v6, "-mj"

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    .line 743
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$2;

    #@95
    invoke-direct {v5, v4}, Landroid/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    #@98
    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    #@9b
    move-result-object v2

    #@9c
    .line 749
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    #@9e
    .line 750
    const/4 v5, 0x0

    #@9f
    array-length v6, v2

    #@a0
    :goto_0
    if-ge v5, v6, :cond_1

    #@a2
    aget-object v3, v2, v5

    #@a4
    .line 751
    .local v3, "masterJournal":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@a7
    move-result v7

    #@a8
    or-int/2addr v0, v7

    #@a9
    .line 750
    add-int/lit8 v5, v5, 0x1

    #@ab
    goto :goto_0

    #@ac
    .line 755
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "masterJournal":Ljava/io/File;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private dispose(Z)V
    .locals 3
    .param p1, "finalized"    # Z

    #@0
    .prologue
    .line 279
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 281
    if-eqz p1, :cond_0

    #@9
    .line 282
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@e
    .line 284
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 287
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@15
    .line 288
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v1, 0x0

    #@16
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 291
    if-nez p1, :cond_2

    #@1b
    .line 292
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@1d
    monitor-enter v2

    #@1e
    .line 293
    :try_start_1
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@20
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    monitor-exit v2

    #@24
    .line 296
    if-eqz v0, :cond_2

    #@26
    .line 297
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    #@29
    .line 277
    :cond_2
    return-void

    #@2a
    .line 279
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1

    #@2d
    .line 292
    .restart local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_1
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 2
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 2067
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2068
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2069
    const-string/jumbo v0, ""

    #@a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@d
    .line 2070
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2066
    return-void

    #@14
    .line 2067
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 3
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z

    #@0
    .prologue
    .line 2061
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "db$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    #@14
    .line 2062
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    #@17
    goto :goto_0

    #@18
    .line 2060
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1662
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 1664
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x3

    #@8
    if-ne v2, v3, :cond_1

    #@a
    .line 1665
    const/4 v0, 0x0

    #@b
    .line 1666
    .local v0, "disableWal":Z
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 1667
    :try_start_1
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1668
    const/4 v2, 0x1

    #@13
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 1669
    const/4 v0, 0x1

    #@16
    :cond_0
    :try_start_2
    monitor-exit v3

    #@17
    .line 1672
    if-eqz v0, :cond_1

    #@19
    .line 1673
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    #@1c
    .line 1677
    .end local v0    # "disableWal":Z
    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    #@1e
    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 1679
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@24
    move-result v2

    #@25
    .line 1681
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@28
    .line 1684
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@2b
    .line 1679
    return v2

    #@2c
    .line 1666
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "disableWal":Z
    :catchall_0
    move-exception v2

    #@2d
    :try_start_5
    monitor-exit v3

    #@2e
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2f
    .line 1683
    .end local v0    # "disableWal":Z
    :catchall_1
    move-exception v2

    #@30
    .line 1684
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@33
    .line 1683
    throw v2

    #@34
    .line 1680
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2
    move-exception v2

    #@35
    .line 1681
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@38
    .line 1680
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tables"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 963
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_4

    #@7
    .line 965
    const/16 v2, 0x20

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    .line 966
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    #@f
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v0

    #@13
    .line 968
    .local v0, "commapos":I
    if-lez v1, :cond_1

    #@15
    if-lt v1, v0, :cond_0

    #@17
    if-gez v0, :cond_1

    #@19
    .line 969
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 970
    :cond_1
    if-lez v0, :cond_3

    #@20
    if-lt v0, v1, :cond_2

    #@22
    if-gez v1, :cond_3

    #@24
    .line 971
    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 973
    :cond_3
    return-object p0

    #@2a
    .line 975
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2c
    const-string/jumbo v3, "Invalid tables"

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2049
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2050
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@7
    monitor-enter v2

    #@8
    .line 2051
    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@a
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 2053
    return-object v0

    #@13
    .line 2050
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2033
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2034
    .local v2, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "db$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    #@19
    .line 2035
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    #@1c
    goto :goto_0

    #@1d
    .line 2037
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-object v2
.end method

.method private static isMainThread()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 392
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@4
    move-result-object v0

    #@5
    .line 393
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@a
    move-result-object v2

    #@b
    if-ne v0, v2, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :cond_0
    return v1
.end method

.method private isReadOnlyLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1715
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@3
    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private open()V
    .locals 5

    #@0
    .prologue
    .line 793
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 790
    :goto_0
    return-void

    #@4
    .line 794
    :catch_0
    move-exception v0

    #@5
    .line 795
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    #@8
    .line 796
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b
    goto :goto_0

    #@c
    .line 798
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v1

    #@d
    .line 799
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "SQLiteDatabase"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Failed to open database \'"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, "\'."

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    .line 800
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@35
    .line 801
    throw v1
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 671
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    .line 695
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    #@2
    invoke-direct {v0, p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V

    #@5
    .line 696
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    #@8
    .line 697
    return-object v0
.end method

.method private openInner()V
    .locals 3

    #@0
    .prologue
    .line 806
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 807
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 806
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 807
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 808
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1b
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@21
    .line 809
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    #@23
    const-string/jumbo v2, "close"

    #@26
    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v1

    #@2a
    .line 812
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@2c
    monitor-enter v1

    #@2d
    .line 813
    :try_start_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    monitor-exit v1

    #@34
    .line 805
    return-void

    #@35
    .line 812
    :catchall_1
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 704
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 711
    const/high16 v0, 0x10000000

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    .line 719
    const/high16 v0, 0x10000000

    #@2
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static releaseMemory()I
    .locals 1

    #@0
    .prologue
    .line 309
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    #@0
    .prologue
    .line 2186
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2187
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "The database \'"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@14
    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 2188
    const-string/jumbo v2, "\' is not open."

    #@1d
    .line 2187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 2185
    :cond_0
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 2
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    #@0
    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 641
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p2, p3, p1, v1}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    .line 643
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@f
    .line 641
    return v0

    #@10
    .line 642
    :catchall_0
    move-exception v0

    #@11
    .line 643
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@14
    .line 642
    throw v0
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "function"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    #@0
    .prologue
    .line 845
    new-instance v1, Landroid/database/sqlite/SQLiteCustomFunction;

    #@2
    invoke-direct {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    #@5
    .line 847
    .local v1, "wrapper":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 848
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@b
    .line 850
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@d
    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 852
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@14
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@16
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 843
    return-void

    #@1b
    .line 853
    :catch_0
    move-exception v0

    #@1c
    .line 854
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1e
    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@23
    .line 855
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 847
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method public beginTransaction()V
    .locals 2

    #@0
    .prologue
    .line 418
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    #@5
    .line 417
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    #@5
    .line 441
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    #@0
    .prologue
    .line 471
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    #@4
    .line 470
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    #@4
    .line 499
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 996
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 998
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@c
    .line 996
    return-object v0

    #@d
    .line 997
    :catchall_0
    move-exception v0

    #@e
    .line 998
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@11
    .line 997
    throw v0
.end method

.method createSession()Landroid/database/sqlite/SQLiteSession;
    .locals 3

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 367
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@6
    .line 368
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v2

    #@9
    .line 370
    new-instance v1, Landroid/database/sqlite/SQLiteSession;

    #@b
    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    #@e
    return-object v1

    #@f
    .line 366
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1497
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 1499
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "DELETE FROM "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 1500
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, " WHERE "

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1499
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3a
    .line 1502
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v1

    #@3e
    .line 1504
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@41
    .line 1507
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@44
    .line 1502
    return v1

    #@45
    .line 1500
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :try_start_3
    const-string/jumbo v1, ""

    #@48
    goto :goto_0

    #@49
    .line 1503
    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v1

    #@4a
    .line 1504
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@4d
    .line 1503
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4e
    .line 1506
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v1

    #@4f
    .line 1507
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@52
    .line 1506
    throw v1
.end method

.method public disableWriteAheadLogging()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x20000000

    #@2
    .line 1995
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 1996
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@8
    .line 1998
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@a
    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    and-int/2addr v1, v5

    #@d
    if-nez v1, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 1999
    return-void

    #@11
    .line 2002
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@13
    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@15
    const v4, -0x20000001

    #@18
    and-int/2addr v3, v4

    #@19
    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 2004
    :try_start_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@1d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1f
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    monitor-exit v2

    #@23
    .line 1994
    return-void

    #@24
    .line 2005
    :catch_0
    move-exception v0

    #@25
    .line 2006
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@27
    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@29
    or-int/2addr v3, v5

    #@2a
    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@2c
    .line 2007
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .line 1995
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public enableWriteAheadLogging()Z
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x20000000

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 1946
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1947
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@a
    .line 1949
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@c
    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    and-int/2addr v1, v6

    #@f
    if-eqz v1, :cond_0

    #@11
    monitor-exit v2

    #@12
    .line 1950
    return v4

    #@13
    .line 1953
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    monitor-exit v2

    #@1a
    .line 1956
    return v5

    #@1b
    .line 1959
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 1960
    const-string/jumbo v1, "SQLiteDatabase"

    #@26
    const-string/jumbo v3, "can\'t enable WAL for memory databases."

    #@29
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    monitor-exit v2

    #@2d
    .line 1961
    return v5

    #@2e
    .line 1966
    :cond_2
    :try_start_3
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 1967
    const-string/jumbo v1, "SQLiteDatabase"

    #@35
    const/4 v3, 0x3

    #@36
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    .line 1968
    const-string/jumbo v1, "SQLiteDatabase"

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "this database: "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@4d
    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 1969
    const-string/jumbo v4, " has attached databases. can\'t  enable WAL."

    #@56
    .line 1968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@61
    :cond_3
    monitor-exit v2

    #@62
    .line 1971
    return v5

    #@63
    .line 1974
    :cond_4
    :try_start_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@65
    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@67
    or-int/2addr v3, v6

    #@68
    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6a
    .line 1976
    :try_start_5
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@6c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@6e
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@71
    monitor-exit v2

    #@72
    .line 1982
    return v4

    #@73
    .line 1977
    :catch_0
    move-exception v0

    #@74
    .line 1978
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@76
    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@78
    const v4, -0x20000001

    #@7b
    and-int/2addr v3, v4

    #@7c
    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@7e
    .line 1979
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@7f
    .line 1946
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@80
    monitor-exit v2

    #@81
    throw v1
.end method

.method public endTransaction()V
    .locals 2

    #@0
    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 524
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 526
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@e
    .line 521
    return-void

    #@f
    .line 525
    :catchall_0
    move-exception v0

    #@10
    .line 526
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@13
    .line 525
    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1608
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    #@4
    .line 1607
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1655
    if-nez p2, :cond_0

    #@2
    .line 1656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Empty bindArgs"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1658
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    #@e
    .line 1654
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 268
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    #@7
    .line 264
    return-void

    #@8
    .line 267
    :catchall_0
    move-exception v0

    #@9
    .line 268
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    #@c
    .line 267
    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2083
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 2084
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 2085
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@b
    if-nez v2, :cond_0

    #@d
    monitor-exit v3

    #@e
    .line 2086
    return-object v4

    #@f
    .line 2089
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    #@11
    if-nez v2, :cond_1

    #@13
    .line 2099
    new-instance v2, Landroid/util/Pair;

    #@15
    const-string/jumbo v4, "main"

    #@18
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1a
    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@1c
    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@22
    monitor-exit v3

    #@23
    .line 2100
    return-object v0

    #@24
    .line 2103
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@27
    monitor-exit v3

    #@28
    .line 2108
    const/4 v1, 0x0

    #@29
    .line 2110
    .local v1, "c":Landroid/database/Cursor;
    :try_start_3
    const-string/jumbo v2, "pragma database_list;"

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v1

    #@31
    .line 2111
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 2117
    new-instance v2, Landroid/util/Pair;

    #@39
    const/4 v3, 0x1

    #@3a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    const/4 v4, 0x2

    #@3f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2119
    .end local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@4b
    .line 2120
    if-eqz v1, :cond_2

    #@4d
    .line 2121
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@50
    .line 2119
    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@51
    .line 2125
    :catchall_1
    move-exception v2

    #@52
    .line 2126
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@55
    .line 2125
    throw v2

    #@56
    .line 2084
    :catchall_2
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 2120
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_3
    if-eqz v1, :cond_4

    #@5b
    .line 2121
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5e
    .line 2126
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@61
    .line 2124
    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 330
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@5
    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    .line 330
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public getMaximumSize()J
    .locals 4

    #@0
    .prologue
    .line 884
    const-string/jumbo v2, "PRAGMA max_page_count;"

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    .line 885
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    #@b
    move-result-wide v2

    #@c
    mul-long/2addr v2, v0

    #@d
    return-wide v2
.end method

.method public getPageSize()J
    .locals 2

    #@0
    .prologue
    .line 913
    const-string/jumbo v0, "PRAGMA page_size;"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1757
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1758
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@5
    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    .line 1757
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 653
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    return-object v0
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .locals 2
    .param p1, "readOnly"    # Z

    #@0
    .prologue
    .line 381
    if-eqz p1, :cond_1

    #@2
    const/4 v0, 0x1

    #@3
    .line 383
    .local v0, "flags":I
    :goto_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 384
    or-int/lit8 v0, v0, 0x4

    #@b
    .line 386
    :cond_0
    return v0

    #@c
    .line 382
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x2

    #@d
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    #@8
    return-object v0
.end method

.method public getVersion()I
    .locals 2

    #@0
    .prologue
    .line 866
    const-string/jumbo v0, "PRAGMA user_version;"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public inTransaction()Z
    .locals 1

    #@0
    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 556
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    .line 558
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@e
    .line 556
    return v0

    #@f
    .line 557
    :catchall_0
    move-exception v0

    #@10
    .line 558
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@13
    .line 557
    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1343
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-wide v2

    #@5
    return-wide v2

    #@6
    .line 1344
    :catch_0
    move-exception v0

    #@7
    .line 1345
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Error inserting "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 1346
    const-wide/16 v2, -0x1

    #@23
    return-wide v2
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1369
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1442
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@4
    .line 1444
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1445
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "INSERT"

    #@c
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1446
    sget-object v8, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    #@11
    aget-object v8, v8, p4

    #@13
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1447
    const-string/jumbo v8, " INTO "

    #@19
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 1448
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1449
    const/16 v8, 0x28

    #@21
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 1451
    const/4 v0, 0x0

    #@25
    .line 1452
    .local v0, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_0

    #@27
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    #@2a
    move-result v8

    #@2b
    if-lez v8, :cond_0

    #@2d
    .line 1453
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    #@30
    move-result v5

    #@31
    .line 1454
    .local v5, "size":I
    :cond_0
    if-lez v5, :cond_4

    #@33
    .line 1455
    new-array v0, v5, [Ljava/lang/Object;

    #@35
    .line 1456
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@36
    .line 1457
    .local v3, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    #@39
    move-result-object v8

    #@3a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v2

    #@3e
    .local v2, "colName$iterator":Ljava/util/Iterator;
    move v4, v3

    #@3f
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_2

    #@45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Ljava/lang/String;

    #@4b
    .line 1458
    .local v1, "colName":Ljava/lang/String;
    if-lez v4, :cond_1

    #@4d
    const-string/jumbo v8, ","

    #@50
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 1459
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1460
    add-int/lit8 v3, v4, 0x1

    #@58
    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5b
    move-result-object v8

    #@5c
    aput-object v8, v0, v4

    #@5e
    move v4, v3

    #@5f
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@60
    .line 1458
    :cond_1
    const-string/jumbo v8, ""

    #@63
    goto :goto_1

    #@64
    .line 1462
    .end local v1    # "colName":Ljava/lang/String;
    :cond_2
    const/16 v8, 0x29

    #@66
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    .line 1463
    const-string/jumbo v8, " VALUES ("

    #@6c
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 1464
    const/4 v3, 0x0

    #@70
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_5

    #@72
    .line 1465
    if-lez v3, :cond_3

    #@74
    const-string/jumbo v8, ",?"

    #@77
    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1464
    add-int/lit8 v3, v3, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 1465
    :cond_3
    const-string/jumbo v8, "?"

    #@80
    goto :goto_3

    #@81
    .line 1468
    .end local v2    # "colName$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .local v0, "bindArgs":[Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    const-string/jumbo v9, ") VALUES (NULL"

    #@88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 1470
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    :cond_5
    const/16 v8, 0x29

    #@8d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    .line 1472
    new-instance v7, Landroid/database/sqlite/SQLiteStatement;

    #@92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-direct {v7, p0, v8, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@99
    .line 1474
    .local v7, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9c
    move-result-wide v8

    #@9d
    .line 1476
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a0
    .line 1479
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@a3
    .line 1474
    return-wide v8

    #@a4
    .line 1475
    :catchall_0
    move-exception v8

    #@a5
    .line 1476
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@a8
    .line 1475
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a9
    .line 1478
    .end local v5    # "size":I
    .end local v6    # "sql":Ljava/lang/StringBuilder;
    .end local v7    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    #@aa
    .line 1479
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@ad
    .line 1478
    throw v8
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 10

    #@0
    .prologue
    .line 2144
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 2146
    const/4 v0, 0x0

    #@4
    .line 2148
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 2149
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    #@a
    .line 2150
    new-instance v7, Ljava/lang/IllegalStateException;

    #@c
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "databaselist for: "

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    const-string/jumbo v9, " couldn\'t "

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    .line 2151
    const-string/jumbo v9, "be retrieved. probably because the database is closed"

    #@2a
    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@36
    .line 2153
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    #@37
    .line 2155
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    #@39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    .line 2156
    .local v1, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_2
    new-instance v7, Landroid/util/Pair;

    #@3e
    const-string/jumbo v8, "main"

    #@41
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@48
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4b
    move-object v0, v1

    #@4c
    .line 2159
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    const/4 v3, 0x0

    #@4d
    .local v3, "i":I
    :goto_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@50
    move-result v7

    #@51
    if-ge v3, v7, :cond_5

    #@53
    .line 2160
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Landroid/util/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@59
    .line 2161
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@5a
    .line 2163
    .local v5, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v8, "PRAGMA "

    #@62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@68
    check-cast v7, Ljava/lang/String;

    #@6a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    const-string/jumbo v8, ".integrity_check(1);"

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@7c
    move-result-object v5

    #@7d
    .line 2164
    .local v5, "prog":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    .line 2165
    .local v6, "rslt":Ljava/lang/String;
    const-string/jumbo v7, "ok"

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@87
    move-result v7

    #@88
    if-nez v7, :cond_2

    #@8a
    .line 2167
    const-string/jumbo v8, "SQLiteDatabase"

    #@8d
    new-instance v7, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v9, "PRAGMA integrity_check on "

    #@95
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9b
    check-cast v7, Ljava/lang/String;

    #@9d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v7

    #@a1
    const-string/jumbo v9, " returned: "

    #@a4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b3
    .line 2171
    if-eqz v5, :cond_1

    #@b5
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b8
    .line 2168
    :cond_1
    const/4 v7, 0x0

    #@b9
    .line 2175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@bc
    .line 2168
    return v7

    #@bd
    .line 2171
    :cond_2
    if-eqz v5, :cond_3

    #@bf
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@c2
    .line 2159
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@c4
    goto :goto_0

    #@c5
    .line 2170
    .end local v5    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local v6    # "rslt":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@c6
    .line 2171
    if-eqz v5, :cond_4

    #@c8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@cb
    .line 2170
    :cond_4
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@cc
    .line 2174
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    #@cd
    .line 2175
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@d0
    .line 2174
    throw v7

    #@d1
    .line 2175
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@d4
    .line 2177
    const/4 v7, 0x1

    #@d5
    return v7

    #@d6
    .line 2174
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .restart local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v7

    #@d7
    move-object v0, v1

    #@d8
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_1
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    #@0
    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 577
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    .line 579
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@e
    .line 577
    return v0

    #@f
    .line 578
    :catchall_0
    move-exception v0

    #@10
    .line 579
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@13
    .line 578
    throw v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 594
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInMemoryDatabase()Z
    .locals 2

    #@0
    .prologue
    .line 1725
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1726
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 1725
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isOpen()Z
    .locals 2

    #@0
    .prologue
    .line 1736
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1737
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 1736
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public isReadOnly()Z
    .locals 2

    #@0
    .prologue
    .line 1709
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1710
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1709
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2021
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2022
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@7
    .line 2024
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@9
    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    const/high16 v3, 0x20000000

    #@d
    and-int/2addr v2, v3

    #@e
    if-eqz v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 2021
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 937
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 953
    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    #@0
    .prologue
    .line 1748
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    #@3
    move-result v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    #@4
    .line 273
    return-void
.end method

.method onCorruption()V
    .locals 2

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const v1, 0x124fc

    #@7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@a
    .line 340
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    #@c
    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    #@f
    .line 338
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1204
    const/4 v1, 0x0

    #@1
    .line 1205
    const/4 v9, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    .line 1204
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1242
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move-object/from16 v7, p6

    #@9
    move-object/from16 v8, p7

    #@b
    move-object/from16 v9, p8

    #@d
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1036
    const/4 v1, 0x0

    #@1
    .line 1037
    const/4 v11, 0x0

    #@2
    move-object v0, p0

    #@3
    move v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object/from16 v5, p4

    #@8
    move-object/from16 v6, p5

    #@a
    move-object/from16 v7, p6

    #@c
    move-object/from16 v8, p7

    #@e
    move-object/from16 v9, p8

    #@10
    move-object/from16 v10, p9

    #@12
    .line 1036
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 1077
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object/from16 v5, p4

    #@7
    move-object/from16 v6, p5

    #@9
    move-object/from16 v7, p6

    #@b
    move-object/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    move-object/from16 v10, p9

    #@11
    move-object/from16 v11, p10

    #@13
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1118
    const/4 v11, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object/from16 v4, p4

    #@7
    move-object/from16 v5, p5

    #@9
    move-object/from16 v6, p6

    #@b
    move-object/from16 v7, p7

    #@d
    move-object/from16 v8, p8

    #@f
    move-object/from16 v9, p9

    #@11
    move-object/from16 v10, p10

    #@13
    .line 1117
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 1160
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    move v0, p2

    #@4
    move-object v1, p3

    #@5
    move-object v2, p4

    #@6
    move-object v3, p5

    #@7
    move-object v4, p7

    #@8
    move-object/from16 v5, p8

    #@a
    move-object/from16 v6, p9

    #@c
    move-object/from16 v7, p10

    #@e
    .line 1162
    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 1166
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move-object v3, p6

    #@19
    move-object/from16 v5, p11

    #@1b
    .line 1165
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v0

    #@1f
    .line 1168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@22
    .line 1165
    return-object v0

    #@23
    .line 1167
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@24
    .line 1168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@27
    .line 1167
    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, v1

    #@5
    move-object v5, v1

    #@6
    .line 1257
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, v1

    #@5
    move-object v5, p3

    #@6
    .line 1275
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1293
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 1316
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    #@5
    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    #@8
    .line 1318
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_0

    #@a
    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :goto_0
    invoke-interface {v0, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    .line 1321
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@11
    .line 1318
    return-object v1

    #@12
    .restart local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 1320
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :catchall_0
    move-exception v1

    #@16
    .line 1321
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@19
    .line 1320
    throw v1
.end method

.method public reopenReadWrite()V
    .locals 5

    #@0
    .prologue
    .line 770
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 771
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@6
    .line 773
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    monitor-exit v3

    #@d
    .line 774
    return-void

    #@e
    .line 778
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@10
    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@12
    .line 779
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@14
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@16
    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@18
    and-int/lit8 v4, v4, -0x2

    #@1a
    or-int/lit8 v4, v4, 0x0

    #@1c
    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 782
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@20
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@22
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    monitor-exit v3

    #@26
    .line 769
    return-void

    #@27
    .line 783
    :catch_0
    move-exception v0

    #@28
    .line 784
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2a
    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@2c
    .line 785
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .line 770
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldOpenFlags":I
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1391
    const/4 v1, 0x5

    #@1
    .line 1390
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-wide v2

    #@5
    return-wide v2

    #@6
    .line 1392
    :catch_0
    move-exception v0

    #@7
    .line 1393
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Error inserting "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 1394
    const-wide/16 v2, -0x1

    #@23
    return-wide v2
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    const/4 v0, 0x5

    #@1
    .line 1417
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1854
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1855
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@6
    .line 1857
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@8
    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    monitor-exit v2

    #@d
    .line 1858
    return-void

    #@e
    .line 1861
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@10
    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 1863
    :try_start_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@14
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@16
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 1853
    return-void

    #@1b
    .line 1864
    :catch_0
    move-exception v0

    #@1c
    .line 1865
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1e
    if-eqz p1, :cond_1

    #@20
    const/4 v1, 0x0

    #@21
    :goto_0
    iput-boolean v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@23
    .line 1866
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    .line 1854
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 1865
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    #@28
    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1773
    if-nez p1, :cond_0

    #@2
    .line 1774
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "locale must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1777
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 1778
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@11
    .line 1780
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@13
    iget-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    #@15
    .line 1781
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@17
    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1783
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@1b
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1d
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 1772
    return-void

    #@22
    .line 1784
    :catch_0
    move-exception v0

    #@23
    .line 1785
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@25
    iput-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    #@27
    .line 1786
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    .line 1777
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 322
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 5
    .param p1, "cacheSize"    # I

    #@0
    .prologue
    .line 1805
    const/16 v2, 0x64

    #@2
    if-gt p1, v2, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 1806
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    .line 1807
    const-string/jumbo v3, "expected value between 0 and 100"

    #@b
    .line 1806
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1810
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v3

    #@12
    .line 1811
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    #@15
    .line 1813
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@17
    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    #@19
    .line 1814
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1b
    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1816
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    #@1f
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@21
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v3

    #@25
    .line 1804
    return-void

    #@26
    .line 1817
    :catch_0
    move-exception v0

    #@27
    .line 1818
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@29
    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    #@2b
    .line 1819
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 1810
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldMaxSqlCacheSize":I
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public setMaximumSize(J)J
    .locals 11
    .param p1, "numBytes"    # J

    #@0
    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    #@3
    move-result-wide v4

    #@4
    .line 897
    .local v4, "pageSize":J
    div-long v2, p1, v4

    #@6
    .line 899
    .local v2, "numPages":J
    rem-long v6, p1, v4

    #@8
    const-wide/16 v8, 0x0

    #@a
    cmp-long v6, v6, v8

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 900
    const-wide/16 v6, 0x1

    #@10
    add-long/2addr v2, v6

    #@11
    .line 902
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "PRAGMA max_page_count = "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 903
    const/4 v7, 0x0

    #@26
    .line 902
    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@29
    move-result-wide v0

    #@2a
    .line 904
    .local v0, "newPageCount":J
    mul-long v6, v0, v4

    #@2c
    return-wide v6
.end method

.method public setPageSize(J)V
    .locals 3
    .param p1, "numBytes"    # J

    #@0
    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PRAGMA page_size = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@17
    .line 923
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    #@0
    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@3
    .line 542
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 544
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@d
    .line 539
    return-void

    #@e
    .line 543
    :catchall_0
    move-exception v0

    #@f
    .line 544
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@12
    .line 543
    throw v0
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    #@0
    .prologue
    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PRAGMA user_version = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@17
    .line 874
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SQLiteDatabase: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1525
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    #@0
    .prologue
    .line 1544
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    #@5
    move-result v9

    #@6
    if-nez v9, :cond_1

    #@8
    .line 1545
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v10, "Empty values"

    #@d
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v9

    #@11
    .line 1548
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    #@14
    .line 1550
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@16
    const/16 v9, 0x78

    #@18
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b
    .line 1551
    .local v7, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "UPDATE "

    #@1e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1552
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    #@23
    aget-object v9, v9, p5

    #@25
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 1553
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1554
    const-string/jumbo v9, " SET "

    #@2e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1557
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    #@34
    move-result v6

    #@35
    .line 1558
    .local v6, "setValuesSize":I
    if-nez p4, :cond_2

    #@37
    move v1, v6

    #@38
    .line 1559
    .local v1, "bindArgsSize":I
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    #@3a
    .line 1560
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@3b
    .line 1561
    .local v4, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    #@3e
    move-result-object v9

    #@3f
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v3

    #@43
    .local v3, "colName$iterator":Ljava/util/Iterator;
    move v5, v4

    #@44
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v9

    #@48
    if-eqz v9, :cond_4

    #@4a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ljava/lang/String;

    #@50
    .line 1562
    .local v2, "colName":Ljava/lang/String;
    if-lez v5, :cond_3

    #@52
    const-string/jumbo v9, ","

    #@55
    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1563
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 1564
    add-int/lit8 v4, v5, 0x1

    #@5d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@60
    move-result-object v9

    #@61
    aput-object v9, v0, v5

    #@63
    .line 1565
    const-string/jumbo v9, "=?"

    #@66
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move v5, v4

    #@6a
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    #@6b
    .line 1558
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v2    # "colName":Ljava/lang/String;
    .end local v3    # "colName$iterator":Ljava/util/Iterator;
    .end local v5    # "i":I
    :cond_2
    array-length v9, p4

    #@6c
    add-int v1, v6, v9

    #@6e
    goto :goto_0

    #@6f
    .line 1562
    .restart local v0    # "bindArgs":[Ljava/lang/Object;
    .restart local v1    # "bindArgsSize":I
    .restart local v2    # "colName":Ljava/lang/String;
    .restart local v3    # "colName$iterator":Ljava/util/Iterator;
    .restart local v5    # "i":I
    :cond_3
    const-string/jumbo v9, ""

    #@72
    goto :goto_2

    #@73
    .line 1567
    .end local v2    # "colName":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    #@75
    .line 1568
    move v4, v6

    #@76
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    #@78
    .line 1569
    sub-int v9, v4, v6

    #@7a
    aget-object v9, p4, v9

    #@7c
    aput-object v9, v0, v4

    #@7e
    .line 1568
    add-int/lit8 v4, v4, 0x1

    #@80
    goto :goto_3

    #@81
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_5
    move v4, v5

    #@82
    .line 1572
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@85
    move-result v9

    #@86
    if-nez v9, :cond_7

    #@88
    .line 1573
    const-string/jumbo v9, " WHERE "

    #@8b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 1574
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 1577
    :cond_7
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    #@93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9a
    .line 1579
    .local v8, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    move-result v9

    #@9e
    .line 1581
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a1
    .line 1584
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@a4
    .line 1579
    return v9

    #@a5
    .line 1580
    :catchall_0
    move-exception v9

    #@a6
    .line 1581
    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@a9
    .line 1580
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@aa
    .line 1583
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v3    # "colName$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .end local v6    # "setValuesSize":I
    .end local v7    # "sql":Ljava/lang/StringBuilder;
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v9

    #@ab
    .line 1584
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    #@ae
    .line 1583
    throw v9
.end method

.method public validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 1699
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@3
    move-result-object v0

    #@4
    .line 1700
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    .line 1699
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    #@d
    .line 1698
    return-void
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 608
    const-wide/16 v0, -0x1

    #@2
    .line 607
    const/4 v2, 0x0

    #@3
    invoke-direct {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    #@0
    .prologue
    .line 620
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    #@0
    .prologue
    .line 635
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method
