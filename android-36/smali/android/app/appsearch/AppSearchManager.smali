.class public Landroid/app/appsearch/AppSearchManager;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchManager$SearchContext;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/appsearch/aidl/IAppSearchManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/appsearch/aidl/IAppSearchManager;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/AppSearchManager;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public whitelist createEnterpriseGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/EnterpriseGlobalSearchSession;",
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
    iget-object v0, p0, Landroid/app/appsearch/AppSearchManager;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {p0, v2}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->createAttributionSource(Landroid/content/Context;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, v1, p0, p1, p2}, Landroid/app/appsearch/EnterpriseGlobalSearchSession;->createEnterpriseGlobalSearchSession(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public whitelist createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/GlobalSearchSession;",
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
    iget-object v0, p0, Landroid/app/appsearch/AppSearchManager;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {p0, v2}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->createAttributionSource(Landroid/content/Context;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, v1, p0, p1, p2}, Landroid/app/appsearch/GlobalSearchSession;->createGlobalSearchSession(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public whitelist createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchManager$SearchContext;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/AppSearchSession;",
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
    iget-object v1, p0, Landroid/app/appsearch/AppSearchManager;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v0, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v0, v3}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->createAttributionSource(Landroid/content/Context;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {}, Landroid/app/appsearch/AppSearchEnvironmentFactory;->getEnvironmentInstance()Landroid/app/appsearch/AppSearchEnvironment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p0, p0, Landroid/app/appsearch/AppSearchManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-interface {v0, p0}, Landroid/app/appsearch/AppSearchEnvironment;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v0, p1

    .line 39
    move-object v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-static/range {v0 .. v6}, Landroid/app/appsearch/AppSearchSession;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/io/File;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
