.class public final Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
.super Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.source "SkinTemperatureRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x27
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<",
        "Landroid/health/connect/datatypes/SkinTemperatureRecord;",
        "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBaseline:Landroid/health/connect/datatypes/units/Temperature;

.field private blacklist mDeltaSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasurementLocation:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/SeriesRecordInternal;-><init>()V

    .line 45
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Temperature;->fromCelsius(D)Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    return-void
.end method

.method private blacklist getExternalDeltas()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    .line 171
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "skinTemperatureDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    .line 174
    .local v2, "skinTemperatureDeltaSample":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    new-instance v3, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;

    .line 177
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mTemperatureDeltaInCelsius()D

    move-result-wide v4

    .line 176
    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/TemperatureDelta;->fromCelsius(D)Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v4

    .line 178
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;-><init>(Landroid/health/connect/datatypes/units/TemperatureDelta;Ljava/time/Instant;Z)V

    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v2    # "skinTemperatureDeltaSample":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    goto :goto_11

    .line 181
    :cond_37
    return-object v0
.end method


# virtual methods
.method public blacklist getBaseline()Landroid/health/connect/datatypes/units/Temperature;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    return-object v0
.end method

.method public blacklist getMeasurementLocation()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mMeasurementLocation:I

    return v0
.end method

.method public blacklist getSamples()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mMeasurementLocation:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Temperature;->fromCelsius(D)Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    .line 56
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1c
    if-ge v1, v0, :cond_33

    .line 57
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;-><init>(DJ)V

    .line 57
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 61
    .end local v1    # "idx":I
    :cond_33
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    iget v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mMeasurementLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Temperature;->getInCelsius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    .line 69
    .local v1, "skinTemperatureDeltaSample":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mTemperatureDeltaInCelsius()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    .end local v1    # "skinTemperatureDeltaSample":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    goto :goto_1d

    .line 72
    :cond_38
    return-void
.end method

.method public blacklist setBaseline(Landroid/health/connect/datatypes/units/Temperature;)Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
    .registers 2
    .param p1, "baseline"    # Landroid/health/connect/datatypes/units/Temperature;

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    .line 117
    return-object p0
.end method

.method public blacklist setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
    .registers 2
    .param p1, "measurementLocation"    # I

    .line 130
    iput p1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mMeasurementLocation:I

    .line 131
    return-object p0
.end method

.method public blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal;"
        }
    .end annotation

    .line 100
    .local p1, "samples":Ljava/util/Set;, "Ljava/util/Set<+Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mDeltaSamples:Ljava/util/Set;

    .line 102
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 41
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/SkinTemperatureRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/SkinTemperatureRecord;
    .registers 6

    .line 76
    new-instance v0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    .line 77
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V

    .line 78
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getExternalDeltas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->setDeltas(Ljava/util/List;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getMeasurementLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->setMeasurementLocation(I)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    move-result-object v0

    .line 82
    .local v0, "builder":Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Temperature;->getInCelsius()D

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_42

    .line 83
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->setBaseline(Landroid/health/connect/datatypes/units/Temperature;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;

    .line 85
    :cond_42
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/SkinTemperatureRecord;

    move-result-object v1

    return-object v1
.end method
