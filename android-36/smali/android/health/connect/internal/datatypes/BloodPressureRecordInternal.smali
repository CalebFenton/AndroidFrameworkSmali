.class public final Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "BloodPressureRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/BloodPressureRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBodyPosition:I

.field private blacklist mDiastolic:D

.field private blacklist mMeasurementLocation:I

.field private blacklist mSystolic:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBodyPosition()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mBodyPosition:I

    return v0
.end method

.method public blacklist getDiastolic()D
    .registers 3

    .line 62
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mDiastolic:D

    return-wide v0
.end method

.method public blacklist getMeasurementLocation()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mMeasurementLocation:I

    return v0
.end method

.method public blacklist getSystolic()D
    .registers 3

    .line 51
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mSystolic:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mMeasurementLocation:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mSystolic:D

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mDiastolic:D

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mBodyPosition:I

    .line 104
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 108
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mMeasurementLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mSystolic:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mDiastolic:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mBodyPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method

.method public blacklist setBodyPosition(I)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    .registers 2
    .param p1, "bodyPosition"    # I

    .line 80
    iput p1, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mBodyPosition:I

    .line 81
    return-object p0
.end method

.method public blacklist setDiastolic(D)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    .registers 3
    .param p1, "diastolic"    # D

    .line 68
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mDiastolic:D

    .line 69
    return-object p0
.end method

.method public blacklist setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    .registers 2
    .param p1, "measurementLocation"    # I

    .line 46
    iput p1, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mMeasurementLocation:I

    .line 47
    return-object p0
.end method

.method public blacklist setSystolic(D)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    .registers 3
    .param p1, "systolic"    # D

    .line 57
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->mSystolic:D

    .line 58
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/BloodPressureRecord;
    .registers 8

    .line 87
    new-instance v0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getMeasurementLocation()I

    move-result v3

    .line 91
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getSystolic()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/Pressure;->fromMillimetersOfMercury(D)Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getDiastolic()D

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/health/connect/datatypes/units/Pressure;->fromMillimetersOfMercury(D)Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v5

    .line 93
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getBodyPosition()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;I)V

    .line 94
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BloodPressureRecord$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/BloodPressureRecord;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/BloodPressureRecord;

    move-result-object v0

    return-object v0
.end method
