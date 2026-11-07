.class Landroid/app/appsearch/SearchResults$1;
.super Landroid/app/appsearch/aidl/AppSearchResultCallback;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/SearchResults;->wrapCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/app/appsearch/aidl/AppSearchResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/aidl/AppSearchResultCallback<",
        "Landroid/app/appsearch/SearchResultPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/appsearch/SearchResults;

.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$h7HAW-nHJlL0dZLDDQ8GtycIiKQ(Landroid/app/appsearch/SearchResults$1;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/appsearch/SearchResults$1;->lambda$onResult$0(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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
    iput-object p1, p0, Landroid/app/appsearch/SearchResults$1;->this$0:Landroid/app/appsearch/SearchResults;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/app/appsearch/SearchResults$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/app/appsearch/SearchResults$1;->val$callback:Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchResultCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResults$1;->this$0:Landroid/app/appsearch/SearchResults;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchResults;->-$$Nest$minvokeCallback(Landroid/app/appsearch/SearchResults;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SearchResultPage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResults$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/SearchResults$1;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    new-instance v2, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1, v1}, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/SearchResults$1;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
