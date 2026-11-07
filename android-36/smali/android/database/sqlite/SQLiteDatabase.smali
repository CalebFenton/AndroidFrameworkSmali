.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$OpenParams;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseOpenFlags;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$SyncMode;,
        Landroid/database/sqlite/SQLiteDatabase$JournalMode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CONFLICT_ABORT:I = 0x2

.field public static final whitelist CONFLICT_FAIL:I = 0x3

.field public static final whitelist CONFLICT_IGNORE:I = 0x4

.field public static final whitelist CONFLICT_NONE:I = 0x0

.field public static final whitelist CONFLICT_REPLACE:I = 0x5

.field public static final whitelist CONFLICT_ROLLBACK:I = 0x1

.field public static final greylist CONFLICT_VALUES:[Ljava/lang/String;

.field public static final whitelist CREATE_IF_NECESSARY:I = 0x10000000

.field private static final greylist-max-o DEBUG_CLOSE_IDLE_CONNECTIONS:Z

.field public static final blacklist ENABLE_LEGACY_COMPATIBILITY_WAL:I = -0x80000000

.field public static final whitelist ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final greylist-max-o EVENT_DB_CORRUPT:I = 0x124fc

.field public static final whitelist JOURNAL_MODE_DELETE:Ljava/lang/String; = "DELETE"

.field public static final whitelist JOURNAL_MODE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final whitelist JOURNAL_MODE_OFF:Ljava/lang/String; = "OFF"

.field public static final whitelist JOURNAL_MODE_PERSIST:Ljava/lang/String; = "PERSIST"

.field public static final whitelist JOURNAL_MODE_TRUNCATE:Ljava/lang/String; = "TRUNCATE"

.field public static final whitelist JOURNAL_MODE_WAL:Ljava/lang/String; = "WAL"

.field public static final whitelist MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final blacklist NO_DOUBLE_QUOTED_STRS:I = 0x20

.field public static final whitelist NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final whitelist OPEN_READONLY:I = 0x1

.field public static final whitelist OPEN_READWRITE:I = 0x0

.field private static final greylist-max-o OPEN_READ_MASK:I = 0x1

.field public static final whitelist SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field public static final whitelist SYNC_MODE_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final whitelist SYNC_MODE_FULL:Ljava/lang/String; = "FULL"

.field public static final whitelist SYNC_MODE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final whitelist SYNC_MODE_OFF:Ljava/lang/String; = "OFF"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static greylist-max-o sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final greylist mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private greylist mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private greylist-max-o mHasAttachedDbsLocked:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-r mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 94
    nop

    .line 100
    nop

    .line 101
    const-string/jumbo v0, "persist.debug.sqlite.close_idle_connections"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    .line 106
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 214
    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p5, "lookasideSlotSize"    # I
    .param p6, "lookasideSlotCount"    # I
    .param p7, "idleConnectionTimeoutMs"    # J
    .param p9, "journalMode"    # Ljava/lang/String;
    .param p10, "syncMode"    # Ljava/lang/String;

    .line 490
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 111
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 141
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTrackClosure:Z

    .line 492
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 493
    if-eqz p4, :cond_24

    move-object v0, p4

    goto :goto_29

    :cond_24
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    :goto_29
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 494
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 495
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p5, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 496
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p6, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 499
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 500
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 501
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 503
    :cond_49
    const-wide v0, 0x7fffffffffffffffL

    .line 505
    .local v0, "effectiveTimeoutMs":J
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v2

    if-nez v2, :cond_67

    .line 508
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-ltz v2, :cond_5e

    .line 509
    move-wide v0, p7

    goto :goto_67

    .line 510
    :cond_5e
    sget-boolean v2, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    if-eqz v2, :cond_67

    .line 511
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getIdleConnectionTimeout()I

    move-result v2

    int-to-long v0, v2

    .line 514
    :cond_67
    :goto_67
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-wide v0, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 515
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->isLegacyCompatibilityWalEnabled()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 516
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 518
    :cond_7a
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->NO_DOUBLE_QUOTED_STRS:Z

    if-eqz v2, :cond_86

    .line 519
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 521
    :cond_86
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p9, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 522
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p10, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    .line 523
    return-void
.end method

.method private blacklist beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V
    .registers 7
    .param p1, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "mode"    # I

    .line 842
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 846
    if-nez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 847
    .local v0, "readOnly":Z
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    .line 848
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v2

    .line 847
    const/4 v3, 0x0

    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_19

    .line 850
    .end local v0    # "readOnly":Z
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 851
    nop

    .line 852
    return-void

    .line 850
    :catchall_19
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 851
    throw v0
.end method

.method private greylist beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .registers 4
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .line 830
    nop

    .line 831
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_6

    .line 832
    :cond_5
    const/4 v0, 0x1

    .line 830
    :goto_6
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    .line 833
    return-void
.end method

.method private greylist collectDbStats(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 2699
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2700
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_c

    .line 2701
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2703
    :cond_c
    monitor-exit v0

    .line 2704
    return-void

    .line 2703
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static whitelist create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1215
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createInMemory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1231
    nop

    .line 1232
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 1231
    const-string v1, ":memory:"

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist deleteDatabase(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 1098
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist deleteDatabase(Ljava/io/File;Z)Z
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "removeCheckFile"    # Z

    .line 1104
    if-eqz p0, :cond_c1

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "deleted":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1110
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1111
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1112
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1115
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wipecheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1117
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1118
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_c0

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-mj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1126
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_c0

    .line 1127
    array-length v4, v3

    const/4 v5, 0x0

    :goto_b4
    if-ge v5, v4, :cond_c0

    aget-object v6, v3, v5

    .line 1128
    .local v6, "masterJournal":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    or-int/2addr v0, v7

    .line 1127
    .end local v6    # "masterJournal":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 1132
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "files":[Ljava/io/File;
    :cond_c0
    return v0

    .line 1105
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o dispose(Z)V
    .registers 5
    .param p1, "finalized"    # Z

    .line 541
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_13

    .line 543
    if-eqz p1, :cond_e

    .line 544
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 546
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 549
    :cond_13
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 550
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 551
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2e

    .line 553
    if-nez p1, :cond_2d

    .line 554
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 555
    :try_start_1e
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2a

    .line 558
    if-eqz v1, :cond_2d

    .line 559
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_2d

    .line 556
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2

    .line 562
    :cond_2d
    :goto_2d
    return-void

    .line 551
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method static blacklist dumpAll(Landroid/util/Printer;ZZ)V
    .registers 16
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z
    .param p2, "isSystem"    # Z

    .line 2751
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2754
    .local v0, "directories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 2755
    .local v1, "totalStatementsTimeInMs":J
    const-wide/16 v3, 0x0

    .line 2757
    .local v3, "totalStatementsCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabasePools()Ljava/util/ArrayList;

    move-result-object v5

    .line 2759
    .local v5, "activeConnectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    new-instance v6, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2761
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2762
    .local v7, "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-virtual {v7, p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;ZLandroid/util/ArraySet;)V

    .line 2763
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v8

    add-long/2addr v1, v8

    .line 2764
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 2765
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_19

    .line 2767
    :cond_33
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_f0

    .line 2771
    const-string v6, "Statements Executed per Database"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " :    "

    const-string v9, "  "

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2773
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2774
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2773
    invoke-interface {p0, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2775
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_42

    .line 2776
    :cond_77
    const-string v6, ""

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total Statements Executed for all Active Databases: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2781
    new-instance v7, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2783
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2784
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2785
    const-string v6, "Statement Time per Database (ms)"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_da

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2787
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2788
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2787
    invoke-interface {p0, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2789
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_a9

    .line 2790
    :cond_da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Statements Time for all Active Databases (ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2795
    :cond_f0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_116

    .line 2796
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 2797
    .local v6, "dirs":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2798
    array-length v7, v6

    const/4 v8, 0x0

    :goto_107
    if-ge v8, v7, :cond_116

    aget-object v9, v6, v8

    .line 2799
    .local v9, "dir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V

    .line 2798
    .end local v9    # "dir":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_107

    .line 2802
    .end local v6    # "dirs":[Ljava/lang/String;
    :cond_116
    return-void
.end method

.method private static blacklist dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V
    .registers 10
    .param p0, "pw"    # Landroid/util/Printer;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "isSystem"    # Z

    .line 2805
    const-string v0, ""

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database files in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2808
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_89

    array-length v1, v0

    if-nez v1, :cond_2f

    goto :goto_89

    .line 2812
    :cond_2f
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2814
    array-length v1, v0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_88

    aget-object v3, v0, v2

    .line 2815
    .local v3, "f":Ljava/io/File;
    if-eqz p2, :cond_64

    .line 2820
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2821
    .local v4, "name":Ljava/lang/String;
    const-string v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    const-string v5, ".db-wal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 2822
    const-string v5, ".db-journal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 2823
    const-string v5, "-wipecheck"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 2824
    goto :goto_85

    .line 2827
    .end local v4    # "name":Ljava/lang/String;
    :cond_64
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2828
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2827
    const-string v5, "  %-40s %7db %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2814
    .end local v3    # "f":Ljava/io/File;
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 2830
    :cond_88
    return-void

    .line 2809
    :cond_89
    :goto_89
    const-string v1, "  [none]"

    invoke-interface {p0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2810
    return-void
.end method

.method public static whitelist findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "tables"    # Ljava/lang/String;

    .line 1463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1465
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1466
    .local v0, "spacepos":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1468
    .local v1, "commapos":I
    const/4 v2, 0x0

    if-lez v0, :cond_1e

    if-lt v0, v1, :cond_19

    if-gez v1, :cond_1e

    .line 1469
    :cond_19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1470
    :cond_1e
    if-lez v1, :cond_29

    if-lt v1, v0, :cond_24

    if-gez v0, :cond_29

    .line 1471
    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1473
    :cond_29
    return-object p0

    .line 1475
    .end local v0    # "spacepos":I
    .end local v1    # "commapos":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getActiveDatabasePools()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteConnectionPool;",
            ">;"
        }
    .end annotation

    .line 2716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2717
    .local v0, "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 2718
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 2719
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2720
    :try_start_21
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v5, :cond_2a

    .line 2721
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    :cond_2a
    monitor-exit v4

    .line 2724
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_12

    .line 2723
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2c
    move-exception v2

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    .end local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :try_start_2e
    throw v2

    .line 2725
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :cond_2f
    monitor-exit v1

    .line 2726
    return-object v0

    .line 2725
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_31

    throw v2
.end method

.method private static greylist getActiveDatabases()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .line 2708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2709
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 2710
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2711
    monitor-exit v1

    .line 2712
    return-object v0

    .line 2711
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v2
.end method

.method static greylist-max-o getDbStats()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .line 2690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2691
    .local v0, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    .line 2692
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2693
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_d

    .line 2694
    :cond_1d
    return-object v0
.end method

.method public static blacklist getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 3327
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 3326
    invoke-static {v0, v2, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 3328
    .local v0, "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3329
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3330
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_46} :catch_47

    .line 3328
    return-object v1

    .line 3331
    .end local v0    # "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    :catch_47
    move-exception v0

    .line 3332
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[unable to obtain timestamp]"

    return-object v1
.end method

.method private static greylist-max-o isMainThread()Z
    .registers 2

    .line 655
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 656
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private greylist-max-o isReadOnlyLocked()Z
    .registers 3

    .line 2354
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method static synthetic blacklist lambda$dumpAll$0(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .registers 6
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2760
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$dumpAll$1(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .registers 6
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2782
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$dumpDatabaseDirectory$2(Ljava/io/File;Ljava/io/File;)I
    .registers 4
    .param p0, "a"    # Ljava/io/File;
    .param p1, "b"    # Ljava/io/File;

    .line 2812
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o open()V
    .registers 5

    .line 1171
    const-string v0, "SQLiteDatabase"

    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1180
    goto :goto_1a

    .line 1181
    :catch_6
    move-exception v1

    goto :goto_1e

    .line 1172
    :catch_8
    move-exception v1

    .line 1173
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->isCorruptException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1174
    const-string v2, "Database corruption detected in open()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1176
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V

    .line 1185
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_1a
    nop

    .line 1186
    return-void

    .line 1178
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_1c
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1e} :catch_6

    .line 1182
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1184
    throw v1
.end method

.method public static whitelist openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "path"    # Ljava/io/File;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1024
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .line 1009
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1060
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v1, p0

    move-object v3, p1

    move v2, p2

    move-object v4, p3

    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .end local p2    # "flags":I
    .end local p3    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    .local v1, "path":Ljava/lang/String;
    .local v2, "flags":I
    .local v3, "factory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .local v4, "errorHandler":Landroid/database/DatabaseErrorHandler;
    invoke-direct/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V

    .line 1062
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1063
    return-object v0
.end method

.method private static greylist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1030
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "OpenParams cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1031
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v4

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v5

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v6

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v7

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v8

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v9

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v12

    move-object v3, p0

    .end local p0    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    invoke-direct/range {v2 .. v12}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V

    .line 1035
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1036
    return-object v2
.end method

.method private greylist-max-o openInner()V
    .registers 4

    .line 1189
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    nop

    .line 1191
    :try_start_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1192
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1193
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_24

    .line 1195
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1196
    :try_start_17
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    monitor-exit v1

    .line 1198
    return-void

    .line 1197
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v0

    .line 1193
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    throw v1

    :catchall_24
    move-exception v1

    goto :goto_22
.end method

.method public static whitelist openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1071
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1079
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1087
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist releaseMemory()I
    .registers 1

    .line 571
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method private greylist-max-o throwIfNotOpenLocked()V
    .registers 4

    .line 2943
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_5

    .line 2947
    return-void

    .line 2944
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 3314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB wipe detected: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3315
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3318
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3319
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "STACKTRACE"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 3314
    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3321
    return-void
.end method

.method static blacklist wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stacktrace"    # Ljava/lang/Throwable;

    .line 3338
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3339
    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3340
    return-void
.end method

.method private greylist-max-o yieldIfContendedHelper(ZJ)Z
    .registers 6
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .line 976
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 978
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 980
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 978
    return v0

    .line 980
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 981
    throw v0
.end method


# virtual methods
.method public whitelist beginTransaction()V
    .registers 3

    .line 681
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 682
    return-void
.end method

.method public whitelist beginTransactionNonExclusive()V
    .registers 3

    .line 705
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 706
    return-void
.end method

.method public whitelist beginTransactionReadOnly()V
    .registers 2

    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerReadOnly(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 737
    return-void
.end method

.method public whitelist beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 768
    return-void
.end method

.method public whitelist beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 798
    return-void
.end method

.method public whitelist beginTransactionWithListenerReadOnly(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    .line 825
    return-void
.end method

.method public whitelist compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1496
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1498
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1496
    return-object v0

    .line 1498
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1499
    throw v0
.end method

.method public whitelist createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 2263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    new-instance v0, Landroid/database/sqlite/SQLiteRawStatement;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteRawStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method greylist-max-o createSession()Landroid/database/sqlite/SQLiteSession;
    .registers 3

    .line 629
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 631
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 632
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 633
    new-instance v0, Landroid/database/sqlite/SQLiteSession;

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    .line 632
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 2034
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2036
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2037
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_2e
    const-string v2, ""

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_4c

    .line 2039
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_46

    .line 2041
    :try_start_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    .line 2044
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2039
    return v1

    .line 2041
    :catchall_46
    move-exception v1

    :try_start_47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2042
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "whereClause":Ljava/lang/String;
    .end local p3    # "whereArgs":[Ljava/lang/String;
    throw v1
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    .line 2044
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "whereClause":Ljava/lang/String;
    .restart local p3    # "whereArgs":[Ljava/lang/String;
    :catchall_4c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2045
    throw v0
.end method

.method public whitelist disableWriteAheadLogging()V
    .registers 6

    .line 2644
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2645
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2647
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2649
    .local v1, "oldFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2651
    monitor-exit v0

    return-void

    .line 2656
    :cond_1a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2657
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3f

    .line 2660
    :try_start_2e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_35} :catch_38
    .catchall {:try_start_2e .. :try_end_35} :catchall_3f

    .line 2664
    nop

    .line 2665
    .end local v1    # "oldFlags":I
    :try_start_36
    monitor-exit v0

    .line 2666
    return-void

    .line 2661
    .restart local v1    # "oldFlags":I
    :catch_38
    move-exception v2

    .line 2662
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2663
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 2665
    .end local v1    # "oldFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public whitelist enableWriteAheadLogging()Z
    .registers 6

    .line 2594
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2595
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2597
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 2599
    monitor-exit v0

    return v2

    .line 2602
    :cond_17
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 2605
    monitor-exit v0

    return v3

    .line 2608
    :cond_20
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2609
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    monitor-exit v0

    return v3

    .line 2615
    :cond_31
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v1, :cond_63

    .line 2616
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2617
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this database: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_61
    monitor-exit v0

    return v3

    .line 2623
    :cond_63
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_83

    .line 2625
    :try_start_6c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_73} :catch_76
    .catchall {:try_start_6c .. :try_end_73} :catchall_83

    .line 2629
    nop

    .line 2630
    :try_start_74
    monitor-exit v0

    .line 2631
    return v2

    .line 2626
    :catch_76
    move-exception v1

    .line 2627
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2628
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1

    .line 2630
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_83

    throw v1
.end method

.method public whitelist endTransaction()V
    .registers 3

    .line 859
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 861
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 863
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 864
    nop

    .line 865
    return-void

    .line 863
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 864
    throw v0
.end method

.method public whitelist execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-static {p2}, Landroid/database/DatabaseUtils;->deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 1346
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1347
    :try_start_a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1349
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1350
    .local v1, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_34

    .line 1352
    :try_start_20
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_27} :catch_2a
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    .line 1356
    nop

    .line 1357
    .end local v1    # "index":I
    :try_start_28
    monitor-exit v0

    .line 1358
    return-void

    .line 1353
    .restart local v1    # "index":I
    :catch_2a
    move-exception v2

    .line 1354
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1355
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2

    .line 1357
    .end local v1    # "index":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public whitelist execSQL(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2155
    return-void
.end method

.method public whitelist execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2208
    if-eqz p2, :cond_6

    .line 2211
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2212
    return-void

    .line 2209
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2217
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2219
    :try_start_3
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 2220
    .local v0, "statementType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 2221
    const/4 v1, 0x0

    .line 2222
    .local v1, "disableWal":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5c

    .line 2223
    :try_start_e
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v3, :cond_1b

    .line 2224
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    .line 2225
    const/4 v1, 0x1

    .line 2226
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->disableIdleConnectionHandler()V

    .line 2228
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_22

    .line 2229
    if-eqz v1, :cond_25

    .line 2230
    :try_start_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5c

    goto :goto_25

    .line 2228
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_5c

    .line 2234
    .end local v1    # "disableWal":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :cond_25
    :goto_25
    const/16 v1, 0x8

    :try_start_27
    new-instance v2, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4d

    .line 2235
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_43

    .line 2236
    :try_start_30
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4d

    .line 2240
    if-ne v0, v1, :cond_3f

    .line 2241
    :try_start_35
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V

    .line 2242
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->clearAcquiredConnectionsPreparedStatementCache()V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_5c

    .line 2246
    :cond_3f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2235
    return v3

    .line 2234
    :catchall_43
    move-exception v3

    :try_start_44
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v4

    :try_start_49
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "statementType":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :goto_4c
    throw v3
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 2240
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_4d
    move-exception v2

    if-ne v0, v1, :cond_5a

    .line 2241
    :try_start_50
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V

    .line 2242
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->clearAcquiredConnectionsPreparedStatementCache()V

    .line 2244
    :cond_5a
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5c

    .line 2246
    .end local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2247
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 528
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 530
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 531
    throw v0
.end method

.method public whitelist getAttachedDbs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2841
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2842
    :try_start_8
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 2843
    monitor-exit v1

    return-object v3

    .line 2846
    :cond_f
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_24

    .line 2856
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    monitor-exit v1

    return-object v0

    .line 2860
    :cond_24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2861
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_61

    .line 2865
    const/4 v1, 0x0

    .line 2867
    .local v1, "c":Landroid/database/Cursor;
    :try_start_29
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 2868
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2874
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_54

    goto :goto_31

    .line 2877
    :cond_4a
    if-eqz v1, :cond_4f

    .line 2878
    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c

    .line 2881
    :cond_4f
    nop

    .line 2883
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2881
    return-object v0

    .line 2877
    :catchall_54
    move-exception v2

    if-eqz v1, :cond_5a

    .line 2878
    :try_start_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2880
    :cond_5a
    nop

    .end local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5c

    .line 2883
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_5c
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2884
    throw v1

    .line 2861
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2
.end method

.method greylist-max-o getLabel()Ljava/lang/String;
    .registers 3

    .line 592
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 594
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getLastChangedRowCount()J
    .registers 3

    .line 2296
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->getLastChangedRowCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastInsertRowId()J
    .registers 3

    .line 2282
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->getLastInsertRowId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMaximumSize()J
    .registers 5

    .line 1384
    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1385
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public whitelist getPageSize()J
    .registers 3

    .line 1413
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getPath()Ljava/lang/String;
    .registers 3

    .line 2396
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2397
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2398
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist getStatementCacheMissRate()D
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2466
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2467
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2469
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getStatementCacheMissRate()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2470
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getSyncedTables()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method greylist-max-o getThreadDefaultConnectionFlags(Z)I
    .registers 4
    .param p1, "readOnly"    # Z

    .line 644
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 645
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 646
    .local v0, "flags":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 647
    or-int/lit8 v0, v0, 0x4

    .line 649
    :cond_e
    return v0
.end method

.method greylist getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .registers 2

    .line 624
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public whitelist getTotalChangedRowCount()J
    .registers 3

    .line 2324
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->getTotalChangedRowCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalPreparedStatements()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2732
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2734
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    return v0
.end method

.method public blacklist getTotalStatementCacheMisses()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2740
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2742
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 3

    .line 1366
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist inTransaction()Z
    .registers 2

    .line 891
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 893
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 895
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 893
    return v0

    .line 895
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 896
    throw v0
.end method

.method public whitelist insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 1877
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide v0

    .line 1878
    :catch_6
    move-exception v0

    .line 1879
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1880
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1903
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 14
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .line 1977
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1979
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1980
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    const-string v1, " INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1986
    const/4 v1, 0x0

    .line 1987
    .local v1, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1988
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 1989
    .local v2, "size":I
    :goto_30
    const/16 v3, 0x29

    if-lez v2, :cond_7c

    .line 1990
    new-array v4, v2, [Ljava/lang/Object;

    move-object v1, v4

    .line 1991
    const/4 v4, 0x0

    .line 1992
    .local v4, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1993
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_51

    const-string v7, ","

    goto :goto_53

    :cond_51
    const-string v7, ""

    :goto_53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v4

    .line 1996
    .end local v6    # "colName":Ljava/lang/String;
    move v4, v7

    goto :goto_40

    .line 1997
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1998
    const-string v5, " VALUES ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    const/4 v4, 0x0

    :goto_6c
    if-ge v4, v2, :cond_7b

    .line 2000
    if-lez v4, :cond_73

    const-string v5, ",?"

    goto :goto_75

    :cond_73
    const-string v5, "?"

    :goto_75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 2002
    .end local v4    # "i":I
    :cond_7b
    goto :goto_85

    .line 2003
    :cond_7c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") VALUES (NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    :goto_85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2007
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_a2

    .line 2009
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_9c

    .line 2011
    :try_start_95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_a2

    .line 2014
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2009
    return-wide v4

    .line 2011
    :catchall_9c
    move-exception v4

    :try_start_9d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2012
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "nullColumnHack":Ljava/lang/String;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "conflictAlgorithm":I
    throw v4
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_a2

    .line 2014
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "bindArgs":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "nullColumnHack":Ljava/lang/String;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "conflictAlgorithm":I
    :catchall_a2
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2015
    throw v0
.end method

.method public whitelist isDatabaseIntegrityOk()Z
    .registers 9

    .line 2901
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2903
    const/4 v0, 0x0

    .line 2905
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 2906
    if-eqz v0, :cond_c

    .line 2914
    goto :goto_48

    .line 2907
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "databaselist for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_2f} :catch_32
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2f

    .line 2932
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2f
    move-exception v0

    goto/16 :goto_cc

    .line 2910
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_32
    move-exception v1

    .line 2912
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 2913
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2916
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c6

    .line 2917
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_55
    .catchall {:try_start_33 .. :try_end_55} :catchall_2f

    .line 2918
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2920
    .local v3, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".integrity_check(1);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v3, v4

    .line 2921
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v4

    .line 2922
    .local v4, "rslt":Ljava/lang/String;
    const-string/jumbo v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b6

    .line 2924
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA integrity_check on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_56 .. :try_end_ab} :catchall_be

    .line 2925
    nop

    .line 2928
    if-eqz v3, :cond_b1

    :try_start_ae
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_2f

    .line 2932
    :cond_b1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2925
    const/4 v5, 0x0

    return v5

    .line 2928
    .end local v4    # "rslt":Ljava/lang/String;
    :cond_b6
    if-eqz v3, :cond_bb

    :try_start_b8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2916
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 2928
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :catchall_be
    move-exception v4

    if-eqz v3, :cond_c4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2929
    :cond_c4
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v4
    :try_end_c6
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_2f

    .line 2932
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :cond_c6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2933
    nop

    .line 2934
    const/4 v0, 0x1

    return v0

    .line 2932
    :goto_cc
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2933
    throw v0
.end method

.method public whitelist isDbLockedByCurrentThread()Z
    .registers 2

    .line 912
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 914
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 916
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 914
    return v0

    .line 916
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 917
    throw v0
.end method

.method public whitelist isDbLockedByOtherThreads()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isInMemoryDatabase()Z
    .registers 3

    .line 2364
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2365
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2366
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist isOpen()Z
    .registers 3

    .line 2375
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2376
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 2377
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist isReadOnly()Z
    .registers 3

    .line 2348
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2349
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2350
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist isWriteAheadLoggingEnabled()Z
    .registers 4

    .line 2677
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2678
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2680
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2682
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1438
    return-void
.end method

.method public whitelist markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1454
    return-void
.end method

.method public whitelist needUpgrade(I)Z
    .registers 3
    .param p1, "newVersion"    # I

    .line 2387
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected whitelist onAllReferencesReleased()V
    .registers 2

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 537
    return-void
.end method

.method greylist-max-o onCorruption()V
    .registers 3

    .line 601
    const v0, 0x124fc

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 602
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    return-void
.end method

.method public whitelist query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .line 1725
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .line 1766
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .line 1540
    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 23
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

    .line 1586
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
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

    .line 1630
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    return-object v11
.end method

.method public whitelist queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 21
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

    .line 1678
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1680
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    :try_start_f
    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1683
    .local v3, "sql":Ljava/lang/String;
    nop

    .line 1684
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1683
    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1686
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1683
    return-object v0

    .line 1686
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_26
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1687
    throw v0
.end method

.method public whitelist rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1783
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    .local v2, "sql":Ljava/lang/String;
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1803
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local v2, "sql":Ljava/lang/String;
    .local v3, "selectionArgs":[Ljava/lang/String;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .line 1823
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .end local p2    # "sql":Ljava/lang/String;
    .end local p3    # "selectionArgs":[Ljava/lang/String;
    .end local p4    # "editTable":Ljava/lang/String;
    .local v1, "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .local v2, "sql":Ljava/lang/String;
    .local v3, "selectionArgs":[Ljava/lang/String;
    .local v4, "editTable":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1847
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1849
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 1851
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_c

    move-object v1, p1

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    :goto_e
    invoke-interface {v0, v1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 1854
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1851
    return-object v1

    .line 1854
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1855
    throw v0
.end method

.method public greylist reopenReadWrite()V
    .registers 5

    .line 1148
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1151
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1152
    monitor-exit v0

    return-void

    .line 1156
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1157
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v3, -0x2

    or-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2f

    .line 1160
    :try_start_1e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_25} :catch_28
    .catchall {:try_start_1e .. :try_end_25} :catchall_2f

    .line 1164
    nop

    .line 1165
    .end local v1    # "oldOpenFlags":I
    :try_start_26
    monitor-exit v0

    .line 1166
    return-void

    .line 1161
    .restart local v1    # "oldOpenFlags":I
    :catch_28
    move-exception v2

    .line 1162
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1163
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 1165
    .end local v1    # "oldOpenFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 1925
    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide v0

    .line 1927
    :catch_6
    move-exception v0

    .line 1928
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1929
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1952
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setCustomAggregateFunction(Ljava/lang/String;Ljava/util/function/BinaryOperator;)V
    .registers 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1306
    .local p2, "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1312
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_27

    .line 1314
    :try_start_13
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_27

    .line 1318
    nop

    .line 1319
    :try_start_1b
    monitor-exit v0

    .line 1320
    return-void

    .line 1315
    :catch_1d
    move-exception v1

    .line 1316
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1319
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist setCustomScalarFunction(Ljava/lang/String;Ljava/util/function/UnaryOperator;)V
    .registers 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1260
    .local p2, "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1266
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_27

    .line 1268
    :try_start_13
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_27

    .line 1272
    nop

    .line 1273
    :try_start_1b
    monitor-exit v0

    .line 1274
    return-void

    .line 1269
    :catch_1d
    move-exception v1

    .line 1270
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1273
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist setForeignKeyConstraintsEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 2503
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2504
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2506
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_e

    .line 2507
    monitor-exit v0

    return-void

    .line 2510
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    .line 2512
    :try_start_12
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    .line 2516
    nop

    .line 2517
    :try_start_1a
    monitor-exit v0

    .line 2518
    return-void

    .line 2513
    :catch_1c
    move-exception v1

    .line 2514
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2515
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 2517
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2412
    if-eqz p1, :cond_24

    .line 2416
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2417
    :try_start_5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2419
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2420
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_21

    .line 2422
    :try_start_10
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_17} :catch_1a
    .catchall {:try_start_10 .. :try_end_17} :catchall_21

    .line 2426
    nop

    .line 2427
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :try_start_18
    monitor-exit v0

    .line 2428
    return-void

    .line 2423
    .restart local v1    # "oldLocale":Ljava/util/Locale;
    :catch_1a
    move-exception v2

    .line 2424
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2425
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "locale":Ljava/util/Locale;
    throw v2

    .line 2427
    .end local v1    # "oldLocale":Ljava/util/Locale;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "locale":Ljava/util/Locale;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v1

    .line 2413
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLockingEnabled(Z)V
    .registers 2
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    return-void
.end method

.method public whitelist setMaxSqlCacheSize(I)V
    .registers 6
    .param p1, "cacheSize"    # I

    .line 2444
    const/16 v0, 0x64

    if-gt p1, v0, :cond_28

    if-ltz p1, :cond_28

    .line 2449
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2450
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2452
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2453
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_25

    .line 2455
    :try_start_14
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1b} :catch_1e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_25

    .line 2459
    nop

    .line 2460
    .end local v1    # "oldMaxSqlCacheSize":I
    :try_start_1c
    monitor-exit v0

    .line 2461
    return-void

    .line 2456
    .restart local v1    # "oldMaxSqlCacheSize":I
    :catch_1e
    move-exception v2

    .line 2457
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2458
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "cacheSize":I
    throw v2

    .line 2460
    .end local v1    # "oldMaxSqlCacheSize":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "cacheSize":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_25

    throw v1

    .line 2445
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaximumSize(J)J
    .registers 11
    .param p1, "numBytes"    # J

    .line 1396
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    .line 1397
    .local v0, "pageSize":J
    div-long v2, p1, v0

    .line 1399
    .local v2, "numPages":J
    rem-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    .line 1400
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1402
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA max_page_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 1404
    .local v4, "newPageCount":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public whitelist setPageSize(J)V
    .registers 5
    .param p1, "numBytes"    # J

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public whitelist setTransactionSuccessful()V
    .registers 2

    .line 877
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 879
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 881
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 882
    throw v0
.end method

.method public whitelist setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 2064
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "whereClause":Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    .local v1, "table":Ljava/lang/String;
    .local v2, "values":Landroid/content/ContentValues;
    .local v3, "whereClause":Ljava/lang/String;
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 15
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .line 2084
    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 2088
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2090
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2091
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    .line 2098
    .local v1, "setValuesSize":I
    if-nez p4, :cond_2e

    move v2, v1

    goto :goto_30

    :cond_2e
    array-length v2, p4

    add-int/2addr v2, v1

    .line 2099
    .local v2, "bindArgsSize":I
    :goto_30
    new-array v3, v2, [Ljava/lang/Object;

    .line 2100
    .local v3, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2101
    .local v4, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2102
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_4c

    const-string v7, ","

    goto :goto_4e

    :cond_4c
    const-string v7, ""

    :goto_4e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v4

    .line 2105
    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    move v4, v7

    .end local v6    # "colName":Ljava/lang/String;
    goto :goto_3b

    .line 2107
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_63
    if-eqz p4, :cond_71

    .line 2108
    move v4, v1

    :goto_66
    if-ge v4, v2, :cond_71

    .line 2109
    sub-int v5, v4, v1

    aget-object v5, p4, v5

    aput-object v5, v3, v4

    .line 2108
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 2112
    :cond_71
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 2113
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    :cond_7f
    new-instance v5, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_b .. :try_end_88} :catchall_99

    .line 2119
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_88
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_93

    .line 2121
    :try_start_8c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_99

    .line 2124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2119
    return v6

    .line 2121
    :catchall_93
    move-exception v6

    :try_start_94
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2122
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "whereClause":Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    .end local p5    # "conflictAlgorithm":I
    throw v6
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_99

    .line 2124
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "setValuesSize":I
    .end local v2    # "bindArgsSize":I
    .end local v3    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "whereClause":Ljava/lang/String;
    .restart local p4    # "whereArgs":[Ljava/lang/String;
    .restart local p5    # "conflictAlgorithm":I
    :catchall_99
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2125
    throw v0

    .line 2085
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2338
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 2339
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    .line 2338
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 2340
    return-void
.end method

.method public whitelist yieldIfContended()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 944
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public whitelist yieldIfContendedSafely()Z
    .registers 4

    .line 957
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public whitelist yieldIfContendedSafely(J)Z
    .registers 4
    .param p1, "sleepAfterYieldDelay"    # J

    .line 972
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
