.class public final Landroid/app/appsearch/AppSearchBatchResult;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchBatchResult$Builder;
    }
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
.field private final blacklist mAll:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mFailures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mSuccesses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKeyType;TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAll(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mAll:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailures(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mFailures:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccesses(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mSuccesses:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TKeyType;TValueType;>;",
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;",
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchBatchResult;->mSuccesses:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/AppSearchBatchResult;->mFailures:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/AppSearchBatchResult;->mAll:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public blacklist checkSuccess()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "AppSearchBatchResult has failures: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public whitelist getAll()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mAll:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getFailures()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyType;",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mFailures:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getSuccesses()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyType;TValueType;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mSuccesses:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist isSuccess()Z
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mFailures:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{\n  successes: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBatchResult;->mSuccesses:Ljava/util/Map;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n  failures: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBatchResult;->mFailures:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "\n}"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
