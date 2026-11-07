.class public final Landroid/health/connect/ReadRecordsRequestUsingFilters;
.super Landroid/health/connect/ReadRecordsRequest;
.source "ReadRecordsRequestUsingFilters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Landroid/health/connect/ReadRecordsRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mAscending:Z

.field private final blacklist mDataOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageSize:I

.field private final blacklist mPageToken:J

.field private final blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/TimeRangeFilter;Ljava/lang/Class;Ljava/util/Set;IJZ)V
    .registers 9
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;
    .param p4, "pageSize"    # I
    .param p5, "pageToken"    # J
    .param p7, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/TimeRangeFilter;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;IJZ)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    .local p2, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "dataOrigins":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0, p2}, Landroid/health/connect/ReadRecordsRequest;-><init>(Ljava/lang/Class;)V

    .line 61
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 63
    iput-object p3, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mDataOrigins:Ljava/util/Set;

    .line 64
    iput p4, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mPageSize:I

    .line 65
    invoke-static {p5, p6, p7}, Landroid/health/connect/PageTokenWrapper;->from(JZ)Landroid/health/connect/PageTokenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/PageTokenWrapper;->isAscending()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mAscending:Z

    .line 66
    iput-wide p5, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mPageToken:J

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/TimeRangeFilter;Ljava/lang/Class;Ljava/util/Set;IJZLandroid/health/connect/ReadRecordsRequestUsingFilters-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/ReadRecordsRequestUsingFilters;-><init>(Landroid/health/connect/TimeRangeFilter;Ljava/lang/Class;Ljava/util/Set;IJZ)V

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

    .line 80
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mDataOrigins:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getPageSize()I
    .registers 2

    .line 86
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    iget v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mPageSize:I

    return v0
.end method

.method public whitelist getPageToken()J
    .registers 3

    .line 91
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mPageToken:J

    return-wide v0
.end method

.method public whitelist getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;
    .registers 2

    .line 72
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    return-object v0
.end method

.method public whitelist isAscending()Z
    .registers 2

    .line 96
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    iget-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters;->mAscending:Z

    return v0
.end method

.method public blacklist toReadRecordsRequestParcel()Landroid/health/connect/aidl/ReadRecordsRequestParcel;
    .registers 2

    .line 106
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<TT;>;"
    new-instance v0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/ReadRecordsRequestParcel;-><init>(Landroid/health/connect/ReadRecordsRequestUsingFilters;)V

    return-object v0
.end method
