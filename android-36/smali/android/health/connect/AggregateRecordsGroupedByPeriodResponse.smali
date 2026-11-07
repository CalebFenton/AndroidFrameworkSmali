.class public final Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;
.super Ljava/lang/Object;
.source "AggregateRecordsGroupedByPeriodResponse.java"


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
.field private blacklist mEndTime:Ljava/time/LocalDateTime;

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

.field private blacklist mStartTime:Ljava/time/LocalDateTime;


# direct methods
.method public static synthetic blacklist $r8$lambda$FDOgCPOjX11JNccc04Rxu0z1rS0(Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/util/Map;)V
    .registers 6
    .param p1, "startTime"    # Ljava/time/LocalDateTime;
    .param p2, "endTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            "Ljava/time/LocalDateTime;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/AggregateResult<",
            "*>;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mStartTime:Ljava/time/LocalDateTime;

    .line 58
    iput-object p2, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mEndTime:Ljava/time/LocalDateTime;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mResult:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;)V

    invoke-interface {p3, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 67
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Landroid/health/connect/AggregateResult;

    .line 62
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mResult:Ljava/util/Map;

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

    .line 102
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mResult:Ljava/util/Map;

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

    .line 120
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mResult:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getDataOriginsInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEndTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 88
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mEndTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 74
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mStartTime:Ljava/time/LocalDateTime;

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

    .line 111
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mResult:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/health/connect/AggregateRecordsResponse;->getZoneOffsetInternal(Landroid/health/connect/datatypes/AggregationType;Ljava/util/Map;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEndTime(Ljava/time/LocalDateTime;)Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;
    .registers 2
    .param p1, "endTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mEndTime:Ljava/time/LocalDateTime;

    .line 94
    return-object p0
.end method

.method public blacklist setStartTime(Ljava/time/LocalDateTime;)Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;
    .registers 2
    .param p1, "startTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;, "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;"
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->mStartTime:Ljava/time/LocalDateTime;

    .line 80
    return-object p0
.end method
