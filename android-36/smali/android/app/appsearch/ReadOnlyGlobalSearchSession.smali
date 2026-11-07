.class public abstract Landroid/app/appsearch/ReadOnlyGlobalSearchSession;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# instance fields
.field protected final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mIsForEnterprise:Z

.field protected final blacklist mService:Landroid/app/appsearch/aidl/IAppSearchManager;

.field protected final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mIsForEnterprise:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public whitelist getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 16
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
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_f
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 17
    .line 18
    new-instance v1, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 21
    .line 22
    iget-object v6, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    iget-boolean v9, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mIsForEnterprise:Z

    .line 29
    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-object v5, p3

    .line 33
    invoke-direct/range {v1 .. v9}, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/os/UserHandle;JZ)V

    .line 34
    .line 35
    .line 36
    invoke-static {p4, p5}, Landroid/app/appsearch/SearchSessionUtil;->createGetDocumentCallback(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {v0, v1, p0}, Landroid/app/appsearch/aidl/IAppSearchManager;->getDocuments(Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2a} :catch_2b

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    move-object p0, v0

    .line 46
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public whitelist getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
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
    :try_start_c
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 14
    .line 15
    new-instance v1, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 18
    .line 19
    iget-object v5, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    iget-boolean v8, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mIsForEnterprise:Z

    .line 26
    .line 27
    move-object v3, p1

    .line 28
    move-object v4, p2

    .line 29
    invoke-direct/range {v1 .. v8}, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;JZ)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$3;

    .line 33
    .line 34
    invoke-direct {p1, p0, p3, p4}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$3;-><init>(Landroid/app/appsearch/ReadOnlyGlobalSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->getSchema(Landroid/app/appsearch/aidl/GetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_27} :catch_28

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

.method public blacklist getService()Landroid/app/appsearch/aidl/IAppSearchManager;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 2
    .line 3
    return-object p0
.end method

.method protected blacklist initialize(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/aidl/InitializeAidlRequest;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

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
    new-instance v2, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, p2}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1;-><init>(Landroid/app/appsearch/ReadOnlyGlobalSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

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

.method public blacklist isForEnterprise()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mIsForEnterprise:Z

    .line 2
    .line 3
    return p0
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
    :try_start_0
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v5, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$2;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2, p3}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$2;-><init>(Landroid/app/appsearch/ReadOnlyGlobalSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->openBlobForRead(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_1e
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public whitelist search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/app/appsearch/SearchResults;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 12
    .line 13
    iget-object v6, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mUserHandle:Landroid/os/UserHandle;

    .line 14
    .line 15
    iget-boolean v7, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->mIsForEnterprise:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/app/appsearch/SearchResults;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
