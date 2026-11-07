.class public final Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "ElevationGainedRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x4
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/ElevationGainedRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mElevation:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getElevation()D
    .registers 3

    .line 35
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->mElevation:D

    return-wide v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->mElevation:D

    .line 61
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->mElevation:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 66
    return-void
.end method

.method public blacklist setElevation(D)Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;
    .registers 3
    .param p1, "elevation"    # D

    .line 41
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->mElevation:D

    .line 42
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/ElevationGainedRecord;
    .registers 7

    .line 48
    new-instance v0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;

    .line 49
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->getElevation()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Length;)V

    .line 53
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ElevationGainedRecord;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/ElevationGainedRecord;

    move-result-object v0

    return-object v0
.end method
