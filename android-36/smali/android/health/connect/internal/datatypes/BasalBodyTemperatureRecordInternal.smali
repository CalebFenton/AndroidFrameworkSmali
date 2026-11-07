.class public final Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "BasalBodyTemperatureRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x14
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mMeasurementLocation:I

.field private blacklist mTemperature:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMeasurementLocation()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mMeasurementLocation:I

    return v0
.end method

.method public blacklist getTemperature()D
    .registers 3

    .line 49
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mTemperature:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mMeasurementLocation:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mTemperature:D

    .line 75
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 79
    iget v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mMeasurementLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    return-void
.end method

.method public blacklist setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;
    .registers 2
    .param p1, "measurementLocation"    # I

    .line 44
    iput p1, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mMeasurementLocation:I

    .line 45
    return-object p0
.end method

.method public blacklist setTemperature(D)Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;
    .registers 3
    .param p1, "temperature"    # D

    .line 55
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->mTemperature:D

    .line 56
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;
    .registers 7

    .line 62
    new-instance v0, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord$Builder;

    .line 63
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->getMeasurementLocation()I

    move-result v3

    .line 66
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->getTemperature()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/Temperature;->fromCelsius(D)Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/Temperature;)V

    .line 67
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BasalBodyTemperatureRecord$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;

    move-result-object v0

    return-object v0
.end method
