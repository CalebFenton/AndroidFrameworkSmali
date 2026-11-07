.class public Landroid/app/appsearch/EnterpriseGlobalSearchSession;
.super Landroid/app/appsearch/ReadOnlyGlobalSearchSession;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# direct methods
.method public static synthetic blacklist $r8$lambda$t3IIZ8MJUP0UCQLIAq_IGKydjVE(Ljava/util/function/Consumer;Landroid/app/appsearch/EnterpriseGlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/EnterpriseGlobalSearchSession;->lambda$createEnterpriseGlobalSearchSession$0(Ljava/util/function/Consumer;Landroid/app/appsearch/EnterpriseGlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static blacklist createEnterpriseGlobalSearchSession(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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
            "Landroid/app/appsearch/EnterpriseGlobalSearchSession;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/EnterpriseGlobalSearchSession;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroid/app/appsearch/EnterpriseGlobalSearchSession;-><init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/app/appsearch/EnterpriseGlobalSearchSession$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {p0, p4, v0}, Landroid/app/appsearch/EnterpriseGlobalSearchSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/EnterpriseGlobalSearchSession;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3, p0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession;->initialize(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static synthetic blacklist lambda$createEnterpriseGlobalSearchSession$0(Ljava/util/function/Consumer;Landroid/app/appsearch/EnterpriseGlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V
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
