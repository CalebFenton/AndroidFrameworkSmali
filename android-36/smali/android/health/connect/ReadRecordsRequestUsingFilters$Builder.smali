.class public final Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
.super Ljava/lang/Object;
.source "ReadRecordsRequestUsingFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ReadRecordsRequestUsingFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAscending:Z

.field private final blacklist mDataOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsOrderingSet:Z

.field private blacklist mPageSize:I

.field private blacklist mPageToken:J

.field private final blacklist mRecordType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mDataOrigins:Ljava/util/Set;

    .line 114
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageSize:I

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageToken:J

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mAscending:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mIsOrderingSet:Z

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mRecordType:Ljava/lang/Class;

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist addDataOrigins(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    .registers 3
    .param p1, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ")",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mDataOrigins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/ReadRecordsRequestUsingFilters;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters<",
            "TT;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageToken:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mIsOrderingSet:Z

    if-nez v0, :cond_d

    goto :goto_15

    .line 222
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both pageToken and sort order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_15
    :goto_15
    new-instance v2, Landroid/health/connect/ReadRecordsRequestUsingFilters;

    iget-object v3, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    iget-object v4, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mRecordType:Ljava/lang/Class;

    iget-object v5, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mDataOrigins:Ljava/util/Set;

    iget v6, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageSize:I

    iget-wide v7, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageToken:J

    iget-boolean v9, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mAscending:Z

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/health/connect/ReadRecordsRequestUsingFilters;-><init>(Landroid/health/connect/TimeRangeFilter;Ljava/lang/Class;Ljava/util/Set;IJZLandroid/health/connect/ReadRecordsRequestUsingFilters-IA;)V

    return-object v2
.end method

.method public whitelist setAscending(Z)Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    .registers 3
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mAscending:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mIsOrderingSet:Z

    .line 203
    return-object p0
.end method

.method public whitelist setPageSize(I)Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    .registers 5
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_a

    .line 176
    iput p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageSize:I

    .line 177
    return-object p0

    .line 168
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Valid pageSize range is 1 - 5000, requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPageToken(J)Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    .registers 3
    .param p1, "pageToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mPageToken:J

    .line 188
    return-object p0
.end method

.method public whitelist setTimeRangeFilter(Landroid/health/connect/TimeRangeFilter;)Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;
    .registers 2
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/TimeRangeFilter;",
            ")",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder<TT;>;"
    iput-object p1, p0, Landroid/health/connect/ReadRecordsRequestUsingFilters$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 155
    return-object p0
.end method
