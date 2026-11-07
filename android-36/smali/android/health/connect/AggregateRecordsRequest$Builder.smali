.class public final Landroid/health/connect/AggregateRecordsRequest$Builder;
.super Ljava/lang/Object;
.source "AggregateRecordsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/AggregateRecordsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor whitelist <init>(Landroid/health/connect/TimeRangeFilter;)V
    .registers 3
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 86
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest$Builder;, "Landroid/health/connect/AggregateRecordsRequest$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mAggregationTypes:Ljava/util/Set;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mDataOriginsFilter:Ljava/util/Set;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist addAggregationType(Landroid/health/connect/datatypes/AggregationType;)Landroid/health/connect/AggregateRecordsRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "TT;>;)",
            "Landroid/health/connect/AggregateRecordsRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest$Builder;, "Landroid/health/connect/AggregateRecordsRequest$Builder<TT;>;"
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mAggregationTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public whitelist addDataOriginsFilter(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/AggregateRecordsRequest$Builder;
    .registers 3
    .param p1, "dataOriginsFilter"    # Landroid/health/connect/datatypes/DataOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ")",
            "Landroid/health/connect/AggregateRecordsRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest$Builder;, "Landroid/health/connect/AggregateRecordsRequest$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mDataOriginsFilter:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/AggregateRecordsRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/AggregateRecordsRequest<",
            "TT;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/health/connect/AggregateRecordsRequest$Builder;, "Landroid/health/connect/AggregateRecordsRequest$Builder<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mAggregationTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 126
    new-instance v0, Landroid/health/connect/AggregateRecordsRequest;

    iget-object v1, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mAggregationTypes:Ljava/util/Set;

    iget-object v2, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    iget-object v3, p0, Landroid/health/connect/AggregateRecordsRequest$Builder;->mDataOriginsFilter:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/AggregateRecordsRequest;-><init>(Ljava/util/Set;Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Landroid/health/connect/AggregateRecordsRequest-IA;)V

    return-object v0

    .line 122
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one of the aggregation types must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
