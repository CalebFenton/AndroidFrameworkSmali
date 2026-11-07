.class public final Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "Vo2MaxRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/Vo2MaxRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mMeasurementMethod:I

.field private blacklist mVo2MillilitersPerMinuteKilogram:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMeasurementMethod()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mMeasurementMethod:I

    return v0
.end method

.method public blacklist getVo2MillilitersPerMinuteKilogram()D
    .registers 3

    .line 47
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mVo2MillilitersPerMinuteKilogram:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mMeasurementMethod:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mVo2MillilitersPerMinuteKilogram:D

    .line 74
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 78
    iget v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mMeasurementMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mVo2MillilitersPerMinuteKilogram:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    return-void
.end method

.method public blacklist setMeasurementMethod(I)Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;
    .registers 2
    .param p1, "measurementMethod"    # I

    .line 42
    iput p1, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mMeasurementMethod:I

    .line 43
    return-object p0
.end method

.method public blacklist setVo2MillilitersPerMinuteKilogram(D)Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;
    .registers 3
    .param p1, "vo2MillilitersPerMinuteKilogram"    # D

    .line 54
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->mVo2MillilitersPerMinuteKilogram:D

    .line 55
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/Vo2MaxRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/Vo2MaxRecord;
    .registers 7

    .line 61
    new-instance v0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;

    .line 62
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->getMeasurementMethod()I

    move-result v3

    .line 65
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->getVo2MillilitersPerMinuteKilogram()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ID)V

    .line 66
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/Vo2MaxRecord;

    move-result-object v0

    .line 61
    return-object v0
.end method
