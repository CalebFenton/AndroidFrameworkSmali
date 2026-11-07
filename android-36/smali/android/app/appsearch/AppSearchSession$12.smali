.class Landroid/app/appsearch/AppSearchSession$12;
.super Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/appsearch/BatchResultCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$0iVjfIj0bjXg01GhHLUYb9vwakI(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSession$12;->lambda$onSystemError$1(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BeZpKDQNwochAkbBnoQeQaHDKK0(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSession$12;->lambda$onResult$0(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSession$12;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p3, p0, Landroid/app/appsearch/AppSearchSession$12;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onResult$0(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->getResult()Landroid/app/appsearch/AppSearchBatchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroid/app/appsearch/BatchResultCallback;->onResult(Landroid/app/appsearch/AppSearchBatchResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onSystemError$1(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/app/appsearch/SearchSessionUtil;->sendSystemErrorToCallback(Landroid/app/appsearch/AppSearchResult;Landroid/app/appsearch/BatchResultCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$12;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$12;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;-><init>(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public blacklist onSystemError(Landroid/app/appsearch/aidl/AppSearchResultParcel;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$12;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$12;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p1, p0, v2}, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
