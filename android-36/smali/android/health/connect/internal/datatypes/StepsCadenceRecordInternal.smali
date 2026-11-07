.class public Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;
.super Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.source "StepsCadenceRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<",
        "Landroid/health/connect/datatypes/StepsCadenceRecord;",
        "Landroid/health/connect/datatypes/StepsCadenceRecord$StepsCadenceRecordSample;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mStepsCadenceRecordSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;",
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
            "Landroid/health/connect/datatypes/StepsCadenceRecord$StepsCadenceRecordSample;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v0, "stepsCadenceRecords":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/StepsCadenceRecord$StepsCadenceRecordSample;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;

    .line 82
    .local v2, "stepsCadenceRecordSample":Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;
    new-instance v3, Landroid/health/connect/datatypes/StepsCadenceRecord$StepsCadenceRecordSample;

    .line 84
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;->getRate()D

    move-result-wide v4

    .line 85
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;->getEpochMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/datatypes/StepsCadenceRecord$StepsCadenceRecordSample;-><init>(DLjava/time/Instant;Z)V

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "stepsCadenceRecordSample":Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;
    goto :goto_11

    .line 88
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
            "Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_23

    .line 73
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;-><init>(DJ)V

    .line 73
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 76
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 93
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;

    .line 95
    .local v1, "stepsCadenceRecordSample":Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;->getRate()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    .end local v1    # "stepsCadenceRecordSample":Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal$StepsCadenceRecordSample;
    goto :goto_f

    .line 98
    :cond_2a
    return-void
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
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;"
        }
    .end annotation

    .line 53
    .local p1, "samples":Ljava/util/Set;, "Ljava/util/Set<+Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->mStepsCadenceRecordSamples:Ljava/util/Set;

    .line 55
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/StepsCadenceRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/StepsCadenceRecord;
    .registers 6

    .line 61
    new-instance v0, Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;

    .line 62
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->getExternalSamples()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 63
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/health/connect/datatypes/StepsCadenceRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/StepsCadenceRecord;

    move-result-object v0

    .line 61
    return-object v0
.end method
