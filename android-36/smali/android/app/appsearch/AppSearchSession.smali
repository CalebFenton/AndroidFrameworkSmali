.class public final Landroid/app/appsearch/AppSearchSession;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchSession"


# instance fields
.field private final blacklist mCacheDirectory:Ljava/io/File;

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private blacklist mIsClosed:Z

.field private blacklist mIsMutated:Z

.field private final blacklist mService:Landroid/app/appsearch/aidl/IAppSearchManager;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$-BjMD4HT8Po541eH1Pgr2Rro5qc(Ljava/util/function/Consumer;)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$3(Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-mhstwwtUyYJpzu4YMlpK1ZbBwI(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$54fMVLT_fezkWV4z_BL90xBeLbk(Ljava/util/function/Consumer;)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$5(Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5NOZjntWJnfIy52KXcKO5POe6NM(Ljava/util/function/Consumer;Landroid/app/appsearch/InternalSetSchemaResponse;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$6(Ljava/util/function/Consumer;Landroid/app/appsearch/InternalSetSchemaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B3VfI6ywS-orauS5jefX7ekZ5sU(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$7(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C7HUYWan2clWbhFaa2PdR5gBtpQ(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;JJ)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p9}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$9(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Rgzl-kTE3mIuG7lquP1HK4gimv4(Ljava/util/function/Consumer;Ljava/lang/Exception;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$8(Ljava/util/function/Consumer;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$T-a3GegzZ8CioSTRoxGm8gsyXlU(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$4(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W9dndAJys9FFxAPVsMfdLiPn6ZI(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$1(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$me5Woj_qxXQheD8-kbhuaZMCG0Y(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/AppSearchSession;->lambda$setSchemaWithMigrations$2(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 8
    .line 9
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 12
    .line 13
    iput-object p3, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 14
    .line 15
    iput-object p4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Landroid/app/appsearch/AppSearchSession;->mCacheDirectory:Ljava/io/File;

    .line 18
    .line 19
    return-void
.end method

.method static blacklist createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/io/File;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchManager$SearchContext;",
            "Landroid/app/appsearch/aidl/IAppSearchManager;",
            "Landroid/os/UserHandle;",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchSession;

    .line 2
    .line 3
    iget-object v4, p0, Landroid/app/appsearch/AppSearchManager$SearchContext;->mDatabaseName:Ljava/lang/String;

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/app/appsearch/AppSearchSession;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p5, p6}, Landroid/app/appsearch/AppSearchSession;->initialize(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private blacklist initialize(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/aidl/InitializeAidlRequest;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/appsearch/aidl/InitializeAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Landroid/os/UserHandle;J)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/app/appsearch/AppSearchSession$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, p2}, Landroid/app/appsearch/AppSearchSession$1;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->initialize(Landroid/app/appsearch/aidl/InitializeAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_18
    move-exception p0

    .line 26
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$1(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$2(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$3(Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Received null InternalSetSchemaResponse during setSchema call"

    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$4(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$5(Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Received null response during setSchema call"

    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$6(Ljava/util/function/Consumer;Landroid/app/appsearch/InternalSetSchemaResponse;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Landroid/app/appsearch/InternalSetSchemaResponse;->getErrorMessage()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$7(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic blacklist lambda$setSchemaWithMigrations$8(Ljava/util/function/Consumer;Ljava/lang/Exception;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->throwableToFailedResult(Ljava/lang/Throwable;)Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic blacklist lambda$setSchemaWithMigrations$9(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;JJ)V
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2
    iget-object v1, v0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    invoke-virtual {v1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v13, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    iget-object v2, v0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v13, v1, v2}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 5
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    new-instance v3, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v1}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/appsearch/AppSearchSession;->getSchema(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 10
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 11
    new-instance v0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v0, v5, v1, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V

    invoke-static {v4, v5, v0}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void

    :catch_47
    move-exception v0

    goto/16 :goto_231

    .line 12
    :cond_4a
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GetSchemaResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {v1}, Landroid/app/appsearch/GetSchemaResponse;->getVersion()I

    move-result v11

    .line 14
    invoke-virtual/range {p3 .. p3}, Landroid/app/appsearch/SetSchemaRequest;->getVersion()I

    move-result v12

    .line 15
    invoke-virtual {v1}, Landroid/app/appsearch/GetSchemaResponse;->getSchemas()Ljava/util/Set;

    move-result-object v1

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/app/appsearch/SetSchemaRequest;->getMigrators()Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-static {v1, v2, v11, v12}, Landroid/app/appsearch/util/SchemaMigrationUtil;->getActiveMigrators(Ljava/util/Set;Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v16

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 19
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7b

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 20
    invoke-direct/range {v0 .. v5}, Landroid/app/appsearch/AppSearchSession;->setSchemaNoMigrations(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    .line 21
    :cond_7b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 22
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 23
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 24
    new-instance v19, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;

    iget-object v10, v0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    iget-object v8, v0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroid/app/appsearch/SetSchemaRequest;->getVersion()I

    move-result v25

    move-wide/from16 v30, v1

    iget-object v1, v0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    const/16 v29, 0x1

    const/16 v24, 0x0

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v26, v1

    move-object/from16 v21, v8

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v29}, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILandroid/os/UserHandle;JI)V

    move-object/from16 v1, v19

    .line 27
    iget-object v2, v0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    new-instance v8, Landroid/app/appsearch/AppSearchSession$16;

    invoke-direct {v8, v0, v9, v3}, Landroid/app/appsearch/AppSearchSession$16;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v1, v8}, Landroid/app/appsearch/aidl/IAppSearchManager;->setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 28
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 29
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 30
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_d2

    .line 31
    new-instance v0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    const/16 v2, 0xd

    invoke-direct {v0, v5, v1, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V

    invoke-static {v4, v5, v0}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void

    .line 32
    :cond_d2
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/InternalSetSchemaResponse;

    if-nez v1, :cond_e4

    .line 33
    new-instance v0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;I)V

    invoke-static {v4, v5, v0}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void

    .line 34
    :cond_e4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 36
    invoke-static {v1, v8}, Landroid/app/appsearch/util/SchemaMigrationUtil;->checkDeletedAndIncompatibleAfterMigration(Landroid/app/appsearch/InternalSetSchemaResponse;Ljava/util/Set;)V

    .line 37
    new-instance v8, Landroid/app/appsearch/AppSearchMigrationHelper;

    iget-object v9, v0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    iget-object v10, v0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/app/appsearch/SetSchemaRequest;->getSchemas()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/app/appsearch/AppSearchSession;->mCacheDirectory:Ljava/io/File;

    move-object/from16 v25, v1

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v19 .. v25}, Landroid/app/appsearch/AppSearchMigrationHelper;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/Set;Ljava/io/File;)V
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_110} :catch_47
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_6 .. :try_end_110} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_110} :catch_47
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_110} :catch_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_110} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_110} :catch_47

    move-object/from16 v8, v19

    .line 39
    :try_start_112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    .line 40
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_148

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 42
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/appsearch/Migrator;

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v1

    const/4 v1, 0x1

    .line 43
    invoke-virtual/range {v8 .. v13}, Landroid/app/appsearch/AppSearchMigrationHelper;->queryAndTransform(Ljava/lang/String;Landroid/app/appsearch/Migrator;IILandroid/app/appsearch/stats/SchemaMigrationStats$Builder;)V

    move-object/from16 v1, v19

    goto :goto_11e

    :catchall_144
    move-exception v0

    move-object v1, v0

    goto/16 :goto_228

    :cond_148
    const/4 v1, 0x1

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 46
    invoke-virtual/range {v32 .. v32}, Landroid/app/appsearch/InternalSetSchemaResponse;->isSuccess()Z

    move-result v19

    if-eqz v19, :cond_15f

    move-wide/from16 v35, v2

    move-wide/from16 v19, v6

    move-object/from16 v0, v32

    goto/16 :goto_1d9

    :cond_15f
    move-wide/from16 v35, v2

    .line 47
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    new-instance v19, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;

    iget-object v3, v0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    move-object/from16 v20, v3

    iget-object v3, v0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/app/appsearch/SetSchemaRequest;->getVersion()I

    move-result v25

    move-object/from16 v21, v3

    iget-object v3, v0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    const/16 v29, 0x2

    const/16 v24, 0x1

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v26, v3

    invoke-direct/range {v19 .. v29}, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILandroid/os/UserHandle;JI)V

    move-object/from16 v3, v19

    move-wide/from16 v19, v6

    .line 52
    iget-object v6, v0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    new-instance v7, Landroid/app/appsearch/AppSearchSession$17;

    invoke-direct {v7, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession$17;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v6, v3, v7}, Landroid/app/appsearch/aidl/IAppSearchManager;->setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 54
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchResult;

    .line 55
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1b7

    .line 56
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    const/16 v2, 0xe

    invoke-direct {v1, v5, v0, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V

    invoke-static {v4, v5, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    :try_end_1b3
    .catchall {:try_start_112 .. :try_end_1b3} :catchall_144

    .line 57
    :goto_1b3
    :try_start_1b3
    invoke-virtual {v8}, Landroid/app/appsearch/AppSearchMigrationHelper;->close()V
    :try_end_1b6
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1b6} :catch_47
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_1b3 .. :try_end_1b6} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_1b3 .. :try_end_1b6} :catch_47
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1b6} :catch_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b3 .. :try_end_1b6} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_1b3 .. :try_end_1b6} :catch_47

    return-void

    .line 58
    :cond_1b7
    :try_start_1b7
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/InternalSetSchemaResponse;

    if-nez v0, :cond_1c9

    .line 59
    new-instance v0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v5, v1}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;I)V

    invoke-static {v4, v5, v0}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    goto :goto_1b3

    .line 60
    :cond_1c9
    invoke-virtual {v0}, Landroid/app/appsearch/InternalSetSchemaResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1d9

    .line 61
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v0, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;I)V

    invoke-static {v4, v5, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    goto :goto_1b3

    .line 62
    :cond_1d9
    :goto_1d9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v6, v19, p6

    long-to-int v3, v6

    .line 63
    invoke-virtual {v13, v3}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setExecutorAcquisitionLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    move-result-object v3

    sub-long v6, v17, v14

    long-to-int v6, v6

    .line 64
    invoke-virtual {v3, v6}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setGetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    move-result-object v3

    sub-long v6, v35, v30

    long-to-int v6, v6

    .line 65
    invoke-virtual {v3, v6}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setFirstSetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    move-result-object v3

    .line 66
    invoke-virtual/range {v32 .. v32}, Landroid/app/appsearch/InternalSetSchemaResponse;->isSuccess()Z

    move-result v6

    .line 67
    invoke-virtual {v3, v6}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setIsFirstSetSchemaSuccess(Z)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    move-result-object v3

    sub-long v9, v9, v33

    long-to-int v6, v9

    .line 68
    invoke-virtual {v3, v6}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setQueryAndTransformLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    move-result-object v3

    sub-long/2addr v1, v11

    long-to-int v1, v1

    .line 69
    invoke-virtual {v3, v1}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setSecondSetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    .line 70
    new-instance v1, Landroid/app/appsearch/SetSchemaResponse$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/appsearch/InternalSetSchemaResponse;->getSetSchemaResponse()Landroid/app/appsearch/SetSchemaResponse;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/appsearch/SetSchemaResponse$Builder;-><init>(Landroid/app/appsearch/SetSchemaResponse;)V

    .line 72
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->addMigratedTypes(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;

    move-result-object v0

    move-wide/from16 v1, p8

    .line 73
    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/app/appsearch/AppSearchMigrationHelper;->putMigratedDocuments(Landroid/app/appsearch/SetSchemaResponse$Builder;Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;J)Landroid/app/appsearch/AppSearchResult;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    const/16 v2, 0xf

    invoke-direct {v1, v5, v0, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V

    invoke-static {v4, v5, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    :try_end_227
    .catchall {:try_start_1b7 .. :try_end_227} :catchall_144

    goto :goto_1b3

    .line 75
    :goto_228
    :try_start_228
    invoke-virtual {v8}, Landroid/app/appsearch/AppSearchMigrationHelper;->close()V
    :try_end_22b
    .catchall {:try_start_228 .. :try_end_22b} :catchall_22c

    goto :goto_230

    :catchall_22c
    move-exception v0

    :try_start_22d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_230
    throw v1
    :try_end_231
    .catch Landroid/os/RemoteException; {:try_start_22d .. :try_end_231} :catch_47
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_22d .. :try_end_231} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_22d .. :try_end_231} :catch_47
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_231} :catch_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22d .. :try_end_231} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_22d .. :try_end_231} :catch_47

    .line 76
    :goto_231
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, v5, v0, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;I)V

    invoke-static {v4, v5, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist setSchemaNoMigrations(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaRequest;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaRequest;->isForceOverride()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaRequest;->getVersion()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-object v7, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const/4 v10, 0x0

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-direct/range {v0 .. v10}, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILandroid/os/UserHandle;JI)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/app/appsearch/AppSearchSession$15;

    .line 28
    .line 29
    move-object/from16 p3, p5

    .line 30
    .line 31
    invoke-direct {p1, p0, p4, p3}, Landroid/app/appsearch/AppSearchSession$15;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 35
    .line 36
    invoke-interface {p0, v0, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_27
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private blacklist setSchemaWithMigrations(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaRequest;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v9

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v7

    .line 9
    new-instance v0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    move-object v6, p3

    .line 15
    move-object/from16 v2, p5

    .line 16
    .line 17
    move-object/from16 v3, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;JJ)V

    .line 20
    .line 21
    .line 22
    invoke-static {p4, v3, v0}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static blacklist toGenericDocumentParcels(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_20

    .line 16
    .line 17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/app/appsearch/GenericDocument;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_a

    .line 33
    :cond_20
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_26

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 6
    .line 7
    if-nez v0, :cond_26

    .line 8
    .line 9
    :try_start_8
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 10
    .line 11
    new-instance v1, Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Landroid/os/UserHandle;J)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/app/appsearch/aidl/IAppSearchManager;->persistToDisk(Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 29
    .line 30
    return-void

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    const-string v0, "AppSearchSession"

    .line 33
    .line 34
    const-string v1, "Unable to close the AppSearchSession"

    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public whitelist commitBlob(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/CommitBlobResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "AppSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    new-instance v1, Landroid/app/appsearch/aidl/CommitBlobAidlRequest;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/CommitBlobAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/app/appsearch/AppSearchSession$7;

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$7;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->commitBlob(Landroid/app/appsearch/aidl/CommitBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public whitelist getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/GetByDocumentIdRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    const-string v1, "AppSearchSession has already been closed"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_18
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 26
    .line 27
    new-instance v1, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;

    .line 28
    .line 29
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 30
    .line 31
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v5, p1

    .line 41
    invoke-direct/range {v1 .. v9}, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/os/UserHandle;JZ)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p3}, Landroid/app/appsearch/SearchSessionUtil;->createGetDocumentCallback(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {v0, v1, p0}, Landroid/app/appsearch/aidl/IAppSearchManager;->getDocuments(Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_32} :catch_33

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_33
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public whitelist getNamespaces(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const-string v1, "AppSearchSession has already been closed"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_f
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 17
    .line 18
    new-instance v1, Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 21
    .line 22
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-direct/range {v1 .. v6}, Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/app/appsearch/AppSearchSession$3;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, p2}, Landroid/app/appsearch/AppSearchSession$3;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->getNamespaces(Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_28} :catch_29

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_29
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public whitelist getSchema(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const-string v1, "AppSearchSession has already been closed"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_15
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 23
    .line 24
    new-instance v1, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 27
    .line 28
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-direct/range {v1 .. v8}, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;JZ)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroid/app/appsearch/AppSearchSession$2;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1, p2}, Landroid/app/appsearch/AppSearchSession$2;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->getSchema(Landroid/app/appsearch/aidl/GetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2f} :catch_30

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_30
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public whitelist getStorageInfo(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/StorageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const-string v1, "AppSearchSession has already been closed"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_f
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 17
    .line 18
    new-instance v1, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 21
    .line 22
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-direct/range {v1 .. v6}, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/app/appsearch/AppSearchSession$14;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, p2}, Landroid/app/appsearch/AppSearchSession$14;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->getStorageInfo(Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_28} :catch_29

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_29
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public whitelist openBlobForRead(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/OpenBlobForReadResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "AppSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    new-instance v1, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/app/appsearch/AppSearchSession$8;

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$8;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->openBlobForRead(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public whitelist openBlobForWrite(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/OpenBlobForWriteResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "AppSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    new-instance v1, Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/app/appsearch/AppSearchSession$5;

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$5;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->openBlobForWrite(Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public whitelist put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/PutDocumentsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    const-string v2, "AppSearchSession has already been closed"

    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v6, Landroid/app/appsearch/aidl/DocumentsParcel;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/appsearch/PutDocumentsRequest;->getGenericDocuments()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/app/appsearch/AppSearchSession;->toGenericDocumentParcels(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/app/appsearch/PutDocumentsRequest;->getTakenActionGenericDocuments()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/app/appsearch/AppSearchSession;->toGenericDocumentParcels(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v6, v0, p1}, Landroid/app/appsearch/aidl/DocumentsParcel;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :try_start_27
    iget-object p1, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 41
    .line 42
    new-instance v3, Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;

    .line 43
    .line 44
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 45
    .line 46
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v7, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    invoke-direct/range {v3 .. v9}, Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/app/appsearch/aidl/DocumentsParcel;Landroid/os/UserHandle;J)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/app/appsearch/AppSearchSession$4;

    .line 58
    .line 59
    invoke-direct {v0, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$4;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v3, v0}, Landroid/app/appsearch/aidl/IAppSearchManager;->putDocuments(Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v1, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_42} :catch_43

    .line 66
    .line 67
    return-void

    .line 68
    :catch_43
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public whitelist remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/RemoveByDocumentIdRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "AppSearchSession has already been closed"

    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 5
    :try_start_12
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    new-instance v2, Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;

    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/os/UserHandle;J)V

    new-instance p1, Landroid/app/appsearch/AppSearchSession$12;

    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$12;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 7
    invoke-interface {v0, v2, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeByDocumentId(Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V

    .line 8
    iput-boolean v1, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 9
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public whitelist remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/SearchSpec;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "AppSearchSession has already been closed"

    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Landroid/app/appsearch/SearchSpec;->getJoinSpec()Landroid/app/appsearch/JoinSpec;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 16
    :try_start_1b
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    new-instance v2, Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;

    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;J)V

    new-instance p1, Landroid/app/appsearch/AppSearchSession$13;

    invoke-direct {p1, p0, p3, p4}, Landroid/app/appsearch/AppSearchSession$13;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 18
    invoke-interface {v0, v2, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeByQuery(Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 19
    iput-boolean v1, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    move-object p0, v0

    .line 20
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    return-void

    .line 21
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JoinSpec not allowed in removeByQuery, but JoinSpec was provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist removeBlob(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/RemoveBlobResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "AppSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    new-instance v1, Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/app/appsearch/AppSearchSession$6;

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$6;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeBlob(Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public whitelist reportUsage(Landroid/app/appsearch/ReportUsageRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/ReportUsageRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    xor-int/2addr v0, v10

    .line 20
    const-string v1, "AppSearchSession has already been closed"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_18
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 26
    .line 27
    new-instance v1, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;

    .line 28
    .line 29
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 30
    .line 31
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v7, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v5, p1

    .line 41
    invoke-direct/range {v1 .. v9}, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/ReportUsageRequest;ZLandroid/os/UserHandle;J)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/app/appsearch/AppSearchSession$11;

    .line 45
    .line 46
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$11;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->reportUsage(Landroid/app/appsearch/aidl/ReportUsageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v10, p0, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_36

    .line 53
    .line 54
    return-void

    .line 55
    :catch_36
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public whitelist search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;
    .registers 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const-string v1, "AppSearchSession has already been closed"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/app/appsearch/SearchResults;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 19
    .line 20
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 21
    .line 22
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v8, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    move-object v6, p1

    .line 28
    move-object v7, p2

    .line 29
    invoke-direct/range {v2 .. v9}, Landroid/app/appsearch/SearchResults;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;Z)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public whitelist searchSuggestion(Ljava/lang/String;Landroid/app/appsearch/SearchSuggestionSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/SearchSuggestionSpec;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const-string v1, "AppSearchSession has already been closed"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_15
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 23
    .line 24
    new-instance v1, Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 27
    .line 28
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    move-object v4, p1

    .line 37
    move-object v5, p2

    .line 38
    invoke-direct/range {v1 .. v8}, Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSuggestionSpec;Landroid/os/UserHandle;J)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroid/app/appsearch/AppSearchSession$10;

    .line 42
    .line 43
    invoke-direct {p1, p0, p3, p4}, Landroid/app/appsearch/AppSearchSession$10;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->searchSuggestion(Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_30} :catch_31

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_31
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public whitelist setBlobVisibility(Landroid/app/appsearch/SetBlobVisibilityRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetBlobVisibilityRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "AppSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_9
    invoke-static {p1}, Landroid/app/appsearch/InternalVisibilityConfig;->toInternalVisibilityConfigs(Landroid/app/appsearch/SetBlobVisibilityRequest;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 15
    .line 16
    new-instance v1, Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;

    .line 17
    .line 18
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 19
    .line 20
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSession;->mDatabaseName:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Landroid/app/appsearch/AppSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Landroid/app/appsearch/AppSearchSession$9;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/AppSearchSession$9;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->setBlobVisibility(Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public whitelist setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSession;->mIsClosed:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    const-string v2, "AppSearchSession has already been closed"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaRequest;->getSchemas()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v0, v2, :cond_47

    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/app/appsearch/AppSearchSchema;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getParentTypes()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_44

    .line 53
    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v3, 0x22

    .line 57
    .line 58
    if-lt v2, v3, :cond_3c

    .line 59
    .line 60
    goto :goto_44

    .line 61
    :cond_3c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 62
    .line 63
    const-string p1, "SCHEMA_ADD_PARENT_TYPE is not available on this AppSearch implementation."

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_44
    :goto_44
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_1f

    .line 72
    :cond_47
    invoke-static {p1}, Landroid/app/appsearch/InternalVisibilityConfig;->toInternalVisibilityConfigs(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaRequest;->getMigrators()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5d

    .line 85
    .line 86
    move-object v3, p0

    .line 87
    move-object v4, p1

    .line 88
    move-object v7, p3

    .line 89
    move-object v8, p4

    .line 90
    invoke-direct/range {v3 .. v8}, Landroid/app/appsearch/AppSearchSession;->setSchemaNoMigrations(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 91
    .line 92
    .line 93
    goto :goto_65

    .line 94
    :cond_5d
    move-object v3, p0

    .line 95
    move-object v4, p1

    .line 96
    move-object v7, p2

    .line 97
    move-object v8, p3

    .line 98
    move-object v9, p4

    .line 99
    invoke-direct/range {v3 .. v9}, Landroid/app/appsearch/AppSearchSession;->setSchemaWithMigrations(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    :goto_65
    iput-boolean v1, v3, Landroid/app/appsearch/AppSearchSession;->mIsMutated:Z

    .line 103
    .line 104
    return-void
.end method
