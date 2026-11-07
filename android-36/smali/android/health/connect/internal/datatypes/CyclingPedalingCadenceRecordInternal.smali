.class public Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;
.super Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.source "CyclingPedalingCadenceRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<",
        "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;",
        "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;",
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
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    .line 94
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "cyclingPedalingCadenceRecords":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    .line 97
    .local v2, "cyclingPedalingCadenceRecordSample":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    new-instance v3, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    .line 99
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v4

    .line 101
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getEpochMillis()J

    move-result-wide v6

    .line 100
    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;-><init>(DLjava/time/Instant;Z)V

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "cyclingPedalingCadenceRecordSample":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    goto :goto_11

    .line 104
    :cond_33
    return-object v0
.end method


# virtual methods
.method public blacklist getSamples()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_23

    .line 75
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;-><init>(DJ)V

    .line 75
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 78
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 82
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    .line 85
    .local v1, "cyclingPedalingCadenceRecordSample":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    .end local v1    # "cyclingPedalingCadenceRecordSample":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    goto :goto_f

    .line 88
    :cond_2a
    return-void
.end method

.method public blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;"
        }
    .end annotation

    .line 54
    .local p1, "samples":Ljava/util/Set;, "Ljava/util/Set<+Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->mCyclingPedalingCadenceRecordSamples:Ljava/util/Set;

    .line 57
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
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
    .registers 6

    .line 63
    new-instance v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;

    .line 64
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->getExternalSamples()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 65
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    move-result-object v0

    return-object v0
.end method
