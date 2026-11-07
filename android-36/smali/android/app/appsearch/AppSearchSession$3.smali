.class Landroid/app/appsearch/AppSearchSession$3;
.super Landroid/app/appsearch/aidl/AppSearchResultCallback;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/AppSearchSession;->getNamespaces(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/aidl/AppSearchResultCallback<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Gcl0qdiknPdFeNhG3mZmpRKGWs8(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSession$3;->lambda$onResult$0(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSession$3;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p3, p0, Landroid/app/appsearch/AppSearchSession$3;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchResultCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onResult$0(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$3;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$3;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-direct {v1, p1, p0, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
