.class public Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;
.super Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.source "HeartRateRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<",
        "Landroid/health/connect/datatypes/HeartRateRecord;",
        "Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mHeartRateHeartRateSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/SeriesRecordInternal;-><init>()V

    return-void
.end method

.method private blacklist getExternalSamples()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    .line 120
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v0, "heartRateRecords":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;

    .line 123
    .local v2, "heartRateSample":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    new-instance v3, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;

    .line 125
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getBeatsPerMinute()I

    move-result v4

    int-to-long v4, v4

    .line 126
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getEpochMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;-><init>(JLjava/time/Instant;Z)V

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "heartRateSample":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    goto :goto_11

    .line 130
    :cond_34
    return-object v0
.end method


# virtual methods
.method public blacklist getSamples()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_23

    .line 104
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;-><init>(IJ)V

    .line 104
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 107
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 111
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;

    .line 113
    .local v1, "heartRateSample":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getBeatsPerMinute()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    .end local v1    # "heartRateSample":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    goto :goto_f

    .line 116
    :cond_2a
    return-void
.end method

.method public blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;"
        }
    .end annotation

    .line 85
    .local p1, "samples":Ljava/util/Set;, "Ljava/util/Set<+Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->mHeartRateHeartRateSamples:Ljava/util/Set;

    .line 86
    return-object p0
.end method

.method public bridge synthetic blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/HeartRateRecord;
    .registers 6

    .line 92
    new-instance v0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;

    .line 93
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->getExternalSamples()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/HeartRateRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 94
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeartRateRecord$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeartRateRecord$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/HeartRateRecord;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/HeartRateRecord;

    move-result-object v0

    return-object v0
.end method
