.class public final Landroid/health/connect/AggregateRecordsRequest;
.super Ljava/lang/Object;
.source "AggregateRecordsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/AggregateRecordsRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mAggregationTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mDataOriginsFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Set;Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;)V
    .registers 4
    .param p2, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;>;",
            "Landroid/health/connect/TimeRangeFilter;",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    .local p1, "aggregationTypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/AggregationType<TT;>;>;"
    .local p3, "dataOriginsFilter":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Landroid/health/connect/AggregateRecordsRequest;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 49
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsRequest;->mAggregationTypes:Ljava/util/Set;

    .line 50
    iput-object p3, p0, Landroid/health/connect/AggregateRecordsRequest;->mDataOriginsFilter:Ljava/util/Set;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Landroid/health/connect/AggregateRecordsRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/AggregateRecordsRequest;-><init>(Ljava/util/Set;Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public whitelist getAggregationTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest;->mAggregationTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getDataOriginsFilters()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest;->mDataOriginsFilter:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;
    .registers 2

    .line 58
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    return-object v0
.end method
