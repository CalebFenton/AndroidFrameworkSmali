.class public Landroid/health/connect/internal/datatypes/SpeedRecordInternal;
.super Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.source "SpeedRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<",
        "Landroid/health/connect/datatypes/SpeedRecord;",
        "Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mSpeedRecordSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/SeriesRecordInternal;-><init>()V

    return-void
.end method

.method private blacklist getExternalSamples()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    .line 88
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "speedRecords":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    .line 90
    .local v2, "speedRecordSample":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    new-instance v3, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    .line 92
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getSpeed()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/Velocity;->fromMetersPerSecond(D)Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v4

    .line 93
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getEpochMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;-><init>(Landroid/health/connect/datatypes/units/Velocity;Ljava/time/Instant;Z)V

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "speedRecordSample":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    goto :goto_11

    .line 96
    :cond_37
    return-object v0
.end method


# virtual methods
.method public blacklist getSamples()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_23

    .line 49
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;-><init>(DJ)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 51
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 79
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    .line 81
    .local v1, "speedRecordSample":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getSpeed()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    .end local v1    # "speedRecordSample":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    goto :goto_f

    .line 84
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

    .line 38
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SpeedRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/SpeedRecordInternal;"
        }
    .end annotation

    .line 62
    .local p1, "samples":Ljava/util/Set;, "Ljava/util/Set<+Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->mSpeedRecordSamples:Ljava/util/Set;

    .line 64
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 38
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/SpeedRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/SpeedRecord;
    .registers 6

    .line 70
    new-instance v0, Landroid/health/connect/datatypes/SpeedRecord$Builder;

    .line 71
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->getExternalSamples()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/SpeedRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SpeedRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SpeedRecord$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SpeedRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SpeedRecord$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/SpeedRecord;

    move-result-object v0

    .line 70
    return-object v0
.end method
