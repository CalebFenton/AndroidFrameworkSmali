.class public final Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "BasalMetabolicRateRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/BasalMetabolicRateRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBasalMetabolicRate:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBasalMetabolicRate()D
    .registers 3

    .line 36
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->mBasalMetabolicRate:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->mBasalMetabolicRate:D

    .line 58
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 62
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->mBasalMetabolicRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    return-void
.end method

.method public blacklist setBasalMetabolicRate(D)Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;
    .registers 3
    .param p1, "basalMetabolicRate"    # D

    .line 42
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->mBasalMetabolicRate:D

    .line 43
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/BasalMetabolicRateRecord;
    .registers 6

    .line 49
    new-instance v0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;

    .line 50
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->getBasalMetabolicRate()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/units/Power;->fromWatts(D)Landroid/health/connect/datatypes/units/Power;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Power;)V

    .line 51
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/BasalMetabolicRateRecord;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/BasalMetabolicRateRecord;

    move-result-object v0

    return-object v0
.end method
