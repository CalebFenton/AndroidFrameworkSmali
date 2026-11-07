.class public Landroid/app/appsearch/GlobalSearchSession;
.super Landroid/app/appsearch/ReadOnlyGlobalSearchSession;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchGlobalSearchSe"


# instance fields
.field private blacklist mIsClosed:Z

.field private blacklist mIsMutated:Z

.field private final blacklist mObserverCallbacksLocked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/app/appsearch/observer/ObserverCallback;",
            "Landroid/app/appsearch/aidl/IAppSearchObserverProxy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0FExu_W_04hTFpeD8cKSvkyCdqc(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/GlobalSearchSession;->lambda$createGlobalSearchSession$0(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Z)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsMutated:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 15
    .line 16
    return-void
.end method

.method static blacklist createGlobalSearchSession(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/IAppSearchManager;",
            "Landroid/os/UserHandle;",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/GlobalSearchSession;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/GlobalSearchSession;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroid/app/appsearch/GlobalSearchSession;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {p0, p4, v0}, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3, p0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->initialize(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static synthetic blacklist lambda$createGlobalSearchSession$0(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {p2}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsMutated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_26

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 6
    .line 7
    if-nez v0, :cond_26

    .line 8
    .line 9
    :try_start_8
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 10
    .line 11
    new-instance v1, Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

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
    iput-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 29
    .line 30
    return-void

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    const-string v0, "AppSearchGlobalSearchSe"

    .line 33
    .line 34
    const-string v1, "Unable to close the GlobalSearchSession"

    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public whitelist getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GetByDocumentIdRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "GlobalSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p5}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public whitelist getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "GlobalSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public whitelist openBlobForRead(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
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
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "GlobalSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->openBlobForRead(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public whitelist registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/appsearch/exceptions/AppSearchException;
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
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const-string v1, "GlobalSearchSession has already been closed"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_18
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    if-eqz v0, :cond_2c

    .line 34
    .line 35
    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/appsearch/aidl/IAppSearchObserverProxy;

    .line 40
    .line 41
    goto :goto_2d

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_79

    .line 45
    :cond_2c
    const/4 v2, 0x0

    .line 46
    :goto_2d
    if-nez v2, :cond_34

    .line 47
    .line 48
    new-instance v2, Landroid/app/appsearch/GlobalSearchSession$2;

    .line 49
    .line 50
    invoke-direct {v2, p0, p3, p4}, Landroid/app/appsearch/GlobalSearchSession$2;-><init>(Landroid/app/appsearch/GlobalSearchSession;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_29

    .line 51
    .line 52
    .line 53
    :cond_34
    :try_start_34
    iget-object p3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 54
    .line 55
    new-instance v3, Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;

    .line 56
    .line 57
    iget-object v4, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 58
    .line 59
    iget-object v7, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    move-object v5, p1

    .line 66
    move-object v6, p2

    .line 67
    invoke-direct/range {v3 .. v9}, Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Landroid/os/UserHandle;J)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, v3, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->registerObserverCallback(Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_49} :catch_72
    .catchall {:try_start_34 .. :try_end_49} :catchall_29

    .line 74
    :try_start_49
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_64

    .line 83
    .line 84
    if-nez v0, :cond_5f

    .line 85
    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_5f
    invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :cond_64
    new-instance p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p2, p1}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :catch_72
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0

    .line 122
    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_49 .. :try_end_7a} :catchall_29

    .line 123
    throw p0
.end method

.method public whitelist reportSystemUsage(Landroid/app/appsearch/ReportSystemUsageRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/ReportSystemUsageRequest;",
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
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    const-string v2, "GlobalSearchSession has already been closed"

    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_12
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 20
    .line 21
    new-instance v2, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;

    .line 22
    .line 23
    iget-object v3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/appsearch/ReportSystemUsageRequest;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p1}, Landroid/app/appsearch/ReportSystemUsageRequest;->getDatabaseName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    new-instance v6, Landroid/app/appsearch/ReportUsageRequest;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/appsearch/ReportSystemUsageRequest;->getNamespace()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {p1}, Landroid/app/appsearch/ReportSystemUsageRequest;->getDocumentId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {p1}, Landroid/app/appsearch/ReportSystemUsageRequest;->getUsageTimestampMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/app/appsearch/ReportUsageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    iget-object v8, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-direct/range {v2 .. v10}, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/ReportUsageRequest;ZLandroid/os/UserHandle;J)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/app/appsearch/GlobalSearchSession$1;

    .line 61
    .line 62
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/GlobalSearchSession$1;-><init>(Landroid/app/appsearch/GlobalSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v2, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->reportUsage(Landroid/app/appsearch/aidl/ReportUsageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 66
    .line 67
    .line 68
    iput-boolean v1, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsMutated:Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_45} :catch_46

    .line 69
    .line 70
    return-void

    .line 71
    :catch_46
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method

.method public whitelist search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "GlobalSearchSession has already been closed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public whitelist unregisterObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/appsearch/exceptions/AppSearchException;
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
    iget-boolean v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mIsClosed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const-string v1, "GlobalSearchSession has already been closed"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_12
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map;

    .line 26
    .line 27
    if-nez v0, :cond_21

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    goto :goto_6e

    .line 34
    :cond_21
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/appsearch/aidl/IAppSearchObserverProxy;

    .line 39
    .line 40
    if-nez v2, :cond_2b

    .line 41
    .line 42
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_1e

    .line 43
    return-void

    .line 44
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 45
    .line 46
    new-instance v4, Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;

    .line 47
    .line 48
    iget-object v5, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 49
    .line 50
    iget-object v7, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    move-object v6, p1

    .line 57
    invoke-direct/range {v4 .. v9}, Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v3, v4, v2}, Landroid/app/appsearch/aidl/IAppSearchManager;->unregisterObserverCallback(Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3f} :catch_67
    .catchall {:try_start_2b .. :try_end_3f} :catchall_1e

    .line 64
    :try_start_3f
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_59

    .line 73
    .line 74
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_57

    .line 82
    .line 83
    iget-object p0, p0, Landroid/app/appsearch/GlobalSearchSession;->mObserverCallbacksLocked:Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_57
    monitor-exit v1

    .line 89
    return-void

    .line 90
    :cond_59
    new-instance p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p2, p1}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :catch_67
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_1e

    .line 112
    throw p0
.end method
