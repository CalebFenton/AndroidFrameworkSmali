.class public Landroid/app/appsearch/SearchResults;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SearchResults"


# instance fields
.field private final blacklist mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private blacklist mIsClosed:Z

.field private blacklist mIsFirstLoad:Z

.field private final blacklist mIsForEnterprise:Z

.field private blacklist mNextPageToken:J

.field private final blacklist mQueryExpression:Ljava/lang/String;

.field private final blacklist mSearchSpec:Landroid/app/appsearch/SearchSpec;

.field private final blacklist mService:Landroid/app/appsearch/aidl/IAppSearchManager;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minvokeCallback(Landroid/app/appsearch/SearchResults;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/appsearch/SearchResults;->invokeCallback(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;Z)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsFirstLoad:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsClosed:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/app/appsearch/SearchResults;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroid/app/appsearch/SearchResults;->mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 19
    .line 20
    iput-object p3, p0, Landroid/app/appsearch/SearchResults;->mDatabaseName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p4, p0, Landroid/app/appsearch/SearchResults;->mQueryExpression:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iput-object p5, p0, Landroid/app/appsearch/SearchResults;->mSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 31
    .line 32
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p6, p0, Landroid/app/appsearch/SearchResults;->mUserHandle:Landroid/os/UserHandle;

    .line 36
    .line 37
    iput-boolean p7, p0, Landroid/app/appsearch/SearchResults;->mIsForEnterprise:Z

    .line 38
    .line 39
    return-void
.end method

.method private blacklist invokeCallback(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SearchResultPage;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2a

    .line 6
    .line 7
    :try_start_6
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/appsearch/SearchResultPage;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResultPage;->getNextPageToken()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Landroid/app/appsearch/SearchResults;->mNextPageToken:J

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResultPage;->getResults()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_20} :catch_21

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_21
    move-exception p0

    .line 35
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->throwableToFailedResult(Ljava/lang/Throwable;)Landroid/app/appsearch/AppSearchResult;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private blacklist wrapCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/app/appsearch/aidl/AppSearchResultCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;>;>;)",
            "Landroid/app/appsearch/aidl/AppSearchResultCallback<",
            "Landroid/app/appsearch/SearchResultPage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchResults$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroid/app/appsearch/SearchResults$1;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_27

    .line 4
    .line 5
    :try_start_4
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 6
    .line 7
    new-instance v1, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/app/appsearch/SearchResults;->mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 10
    .line 11
    iget-wide v3, p0, Landroid/app/appsearch/SearchResults;->mNextPageToken:J

    .line 12
    .line 13
    iget-object v5, p0, Landroid/app/appsearch/SearchResults;->mUserHandle:Landroid/os/UserHandle;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    iget-boolean v8, p0, Landroid/app/appsearch/SearchResults;->mIsForEnterprise:Z

    .line 20
    .line 21
    invoke-direct/range {v1 .. v8}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;JLandroid/os/UserHandle;JZ)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/app/appsearch/aidl/IAppSearchManager;->invalidateNextPageToken(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsClosed:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 29
    .line 30
    return-void

    .line 31
    :catch_1e
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    const-string v0, "SearchResults"

    .line 34
    .line 35
    const-string v1, "Unable to close the SearchResults"

    .line 36
    .line 37
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void
.end method

.method public whitelist getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
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
    iget-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsClosed:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    const-string v2, "SearchResults has already been closed"

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v8

    .line 20
    iget-boolean v0, p0, Landroid/app/appsearch/SearchResults;->mIsFirstLoad:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_51

    .line 24
    .line 25
    iput-boolean v2, p0, Landroid/app/appsearch/SearchResults;->mIsFirstLoad:Z

    .line 26
    .line 27
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mDatabaseName:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_37

    .line 30
    .line 31
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 32
    .line 33
    new-instance v3, Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;

    .line 34
    .line 35
    iget-object v4, p0, Landroid/app/appsearch/SearchResults;->mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 36
    .line 37
    iget-object v5, p0, Landroid/app/appsearch/SearchResults;->mQueryExpression:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v6, p0, Landroid/app/appsearch/SearchResults;->mSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 40
    .line 41
    iget-object v7, p0, Landroid/app/appsearch/SearchResults;->mUserHandle:Landroid/os/UserHandle;

    .line 42
    .line 43
    iget-boolean v10, p0, Landroid/app/appsearch/SearchResults;->mIsForEnterprise:Z

    .line 44
    .line 45
    invoke-direct/range {v3 .. v10}, Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;JZ)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/appsearch/SearchResults;->wrapCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/app/appsearch/aidl/AppSearchResultCallback;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v0, v3, p0}, Landroid/app/appsearch/aidl/IAppSearchManager;->globalSearch(Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 57
    .line 58
    new-instance v3, Landroid/app/appsearch/aidl/SearchAidlRequest;

    .line 59
    .line 60
    iget-object v4, p0, Landroid/app/appsearch/SearchResults;->mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 61
    .line 62
    iget-object v5, p0, Landroid/app/appsearch/SearchResults;->mDatabaseName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p0, Landroid/app/appsearch/SearchResults;->mQueryExpression:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v7, p0, Landroid/app/appsearch/SearchResults;->mSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 67
    .line 68
    move-wide v9, v8

    .line 69
    iget-object v8, p0, Landroid/app/appsearch/SearchResults;->mUserHandle:Landroid/os/UserHandle;

    .line 70
    .line 71
    invoke-direct/range {v3 .. v10}, Landroid/app/appsearch/aidl/SearchAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;J)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/app/appsearch/SearchResults;->wrapCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/app/appsearch/aidl/AppSearchResultCallback;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {v0, v3, p0}, Landroid/app/appsearch/aidl/IAppSearchManager;->search(Landroid/app/appsearch/aidl/SearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_51
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec;->getJoinSpec()Landroid/app/appsearch/JoinSpec;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_64

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/appsearch/JoinSpec;->getChildPropertyExpression()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_64

    .line 99
    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move v1, v2

    .line 102
    :goto_65
    iget-object v0, p0, Landroid/app/appsearch/SearchResults;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 103
    .line 104
    new-instance v3, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;

    .line 105
    .line 106
    iget-object v4, p0, Landroid/app/appsearch/SearchResults;->mAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 107
    .line 108
    iget-object v5, p0, Landroid/app/appsearch/SearchResults;->mDatabaseName:Ljava/lang/String;

    .line 109
    .line 110
    iget-wide v6, p0, Landroid/app/appsearch/SearchResults;->mNextPageToken:J

    .line 111
    .line 112
    move-wide v10, v8

    .line 113
    iget-object v9, p0, Landroid/app/appsearch/SearchResults;->mUserHandle:Landroid/os/UserHandle;

    .line 114
    .line 115
    iget-boolean v12, p0, Landroid/app/appsearch/SearchResults;->mIsForEnterprise:Z

    .line 116
    .line 117
    move v8, v1

    .line 118
    invoke-direct/range {v3 .. v12}, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;JILandroid/os/UserHandle;JZ)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/app/appsearch/SearchResults;->wrapCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/app/appsearch/aidl/AppSearchResultCallback;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-interface {v0, v3, p0}, Landroid/app/appsearch/aidl/IAppSearchManager;->getNextPage(Landroid/app/appsearch/aidl/GetNextPageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_7f} :catch_80

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catch_80
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
