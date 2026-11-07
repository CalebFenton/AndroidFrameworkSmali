.class public final Landroid/health/connect/AggregateRecordsResponse;
.super Ljava/lang/Object;
.source "AggregateRecordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mAggregateResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;",
            "Landroid/health/connect/AggregateResult<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5hPvAoyWUJwgVdIPXzsfamO9gmE(Landroid/health/connect/AggregateRecordsResponse;Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/AggregateRecordsResponse;->lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/AggregateResult<",
            "*>;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    .local p1, "aggregateResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    .line 46
    new-instance v0, Landroid/health/connect/AggregateRecordsResponse$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/health/connect/AggregateRecordsResponse$$ExternalSyntheticLambda1;-><init>(Landroid/health/connect/AggregateRecordsResponse;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 53
    return-void
.end method

.method public static blacklist getDataOriginsInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Ljava/util/Map<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Landroid/health/connect/AggregateResult<",
            "TU;>;>;)",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 75
    .local p0, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TU;>;"
    .local p1, "mAggregateResults":Ljava/util/Map;, "Ljava/util/Map<Landroid/health/connect/datatypes/AggregationType<TU;>;Landroid/health/connect/AggregateResult<TU;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/AggregateResult;

    .line 79
    .local v0, "result":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TU;>;"
    if-nez v0, :cond_10

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 83
    :cond_10
    invoke-virtual {v0}, Landroid/health/connect/AggregateResult;->getDataOrigins()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getFirstAggregationType()Landroid/health/connect/datatypes/AggregationType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/AggregationType;

    return-object v0
.end method

.method public static blacklist getInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Ljava/util/Map<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Landroid/health/connect/AggregateResult<",
            "TU;>;>;)TU;"
        }
    .end annotation

    .line 91
    .local p0, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TU;>;"
    .local p1, "mAggregateResults":Ljava/util/Map;, "Ljava/util/Map<Landroid/health/connect/datatypes/AggregationType<TU;>;Landroid/health/connect/AggregateResult<TU;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/AggregateResult;

    .line 95
    .local v0, "result":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TU;>;"
    if-nez v0, :cond_d

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_d
    invoke-virtual {v0}, Landroid/health/connect/AggregateResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getZoneOffsetInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/time/ZoneOffset;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Ljava/util/Map<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TU;>;",
            "Landroid/health/connect/AggregateResult<",
            "TU;>;>;)",
            "Ljava/time/ZoneOffset;"
        }
    .end annotation

    .line 60
    .local p0, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TU;>;"
    .local p1, "mAggregateResults":Ljava/util/Map;, "Ljava/util/Map<Landroid/health/connect/datatypes/AggregationType<TU;>;Landroid/health/connect/AggregateResult<TU;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/AggregateResult;

    .line 64
    .local v0, "result":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TU;>;"
    if-nez v0, :cond_d

    .line 65
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_d
    invoke-virtual {v0}, Landroid/health/connect/AggregateResult;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getAggregateResults$1(Ljava/util/Map;Landroid/health/connect/datatypes/AggregationType;Landroid/health/connect/AggregateResult;)V
    .registers 4
    .param p0, "aggregateResultMap"    # Ljava/util/Map;
    .param p1, "key"    # Landroid/health/connect/datatypes/AggregationType;
    .param p2, "value"    # Landroid/health/connect/AggregateResult;

    .line 111
    nop

    .line 112
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getInstance()Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getIdFor(Landroid/health/connect/datatypes/AggregationType;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Landroid/health/connect/AggregateResult;

    .line 48
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    .line 50
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getInstance()Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getAggregationTypeFor(I)Landroid/health/connect/datatypes/AggregationType;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist get(Landroid/health/connect/datatypes/AggregationType;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAggregateResults()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/AggregateResult<",
            "*>;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    .local v0, "aggregateResultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    iget-object v1, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    new-instance v2, Landroid/health/connect/AggregateRecordsResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/health/connect/AggregateRecordsResponse$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 114
    return-object v0
.end method

.method public whitelist getDataOrigins(Landroid/health/connect/datatypes/AggregationType;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getDataOriginsInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFirstZoneOffset()Ljava/time/ZoneOffset;
    .registers 3

    .line 142
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    invoke-direct {p0}, Landroid/health/connect/AggregateRecordsResponse;->getFirstAggregationType()Landroid/health/connect/datatypes/AggregationType;

    move-result-object v0

    .line 143
    .local v0, "firstAggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/health/connect/AggregateRecordsResponse;->getZoneOffset(Landroid/health/connect/datatypes/AggregationType;)Ljava/time/ZoneOffset;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist getZoneOffset(Landroid/health/connect/datatypes/AggregationType;)Ljava/time/ZoneOffset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;)",
            "Ljava/time/ZoneOffset;"
        }
    .end annotation

    .line 132
    .local p0, "this":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsResponse;->mAggregateResults:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getZoneOffsetInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method
