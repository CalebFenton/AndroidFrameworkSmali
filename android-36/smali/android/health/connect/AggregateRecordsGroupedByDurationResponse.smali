.class public final Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;
.super Ljava/lang/Object;
.source "AggregateRecordsGroupedByDurationResponse.java"


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
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private final blacklist mResult:Ljava/util/Map;
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

.field private final blacklist mStartTime:Ljava/time/Instant;


# direct methods
.method public static synthetic blacklist $r8$lambda$tU0BflVVQOqY57AwHq3xTbBeQYU(Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/Map;)V
    .registers 6
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/AggregateResult<",
            "*>;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mStartTime:Ljava/time/Instant;

    .line 58
    iput-object p2, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mEndTime:Ljava/time/Instant;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mResult:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;)V

    invoke-interface {p3, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 67
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Landroid/health/connect/AggregateResult;

    .line 62
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mResult:Ljava/util/Map;

    .line 64
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getInstance()Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getAggregationTypeFor(I)Landroid/health/connect/datatypes/AggregationType;

    move-result-object v1

    .line 62
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

    .line 90
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mResult:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

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

    .line 108
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mResult:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getDataOriginsInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 82
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mEndTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 74
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mStartTime:Ljava/time/Instant;

    return-object v0
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

    .line 99
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;->mResult:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getZoneOffsetInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method
