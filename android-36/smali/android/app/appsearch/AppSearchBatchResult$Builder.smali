.class public final Landroid/app/appsearch/AppSearchBatchResult$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchBatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAll:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private blacklist mBuilt:Z

.field private blacklist mFailures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private blacklist mSuccesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TKeyType;TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mBuilt:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TKeyType;TValueType;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 9
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mBuilt:Z

    .line 11
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/app/appsearch/AppSearchBatchResult;->-$$Nest$fgetmSuccesses(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 12
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/app/appsearch/AppSearchBatchResult;->-$$Nest$fgetmFailures(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/app/appsearch/AppSearchBatchResult;->-$$Nest$fgetmAll(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_22

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 22
    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mBuilt:Z

    .line 34
    .line 35
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/AppSearchBatchResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TKeyType;TValueType;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p0}, Landroid/app/appsearch/AppSearchBatchResult;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public whitelist setFailure(Ljava/lang/Object;ILjava/lang/String;)Landroid/app/appsearch/AppSearchBatchResult$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/appsearch/AppSearchBatchResult$Builder<",
            "TKeyType;TValueType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public whitelist setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;)",
            "Landroid/app/appsearch/AppSearchBatchResult$Builder<",
            "TKeyType;TValueType;>;"
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
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1e

    .line 15
    .line 16
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mFailures:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mSuccesses:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :goto_28
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBatchResult$Builder;->mAll:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public whitelist setSuccess(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/appsearch/AppSearchBatchResult$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)",
            "Landroid/app/appsearch/AppSearchBatchResult$Builder<",
            "TKeyType;TValueType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
