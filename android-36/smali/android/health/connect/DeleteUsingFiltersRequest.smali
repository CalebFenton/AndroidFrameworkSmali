.class public final Landroid/health/connect/DeleteUsingFiltersRequest;
.super Ljava/lang/Object;
.source "DeleteUsingFiltersRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDataOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/TimeRangeFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p2, "recordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;>;"
    .local p3, "dataOrigins":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 53
    iput-object p2, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mRecordTypes:Ljava/util/Set;

    .line 54
    iput-object p3, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mDataOrigins:Ljava/util/Set;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/DeleteUsingFiltersRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/DeleteUsingFiltersRequest;-><init>(Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public whitelist getDataOrigins()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mDataOrigins:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getRecordTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mRecordTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    return-object v0
.end method
