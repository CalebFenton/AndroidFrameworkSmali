.class public final Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "RespiratoryRateRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1f
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/RespiratoryRateRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mRate:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getRate()D
    .registers 3

    .line 34
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->mRate:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->mRate:D

    .line 55
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->mRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    return-void
.end method

.method public blacklist setRate(D)Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;
    .registers 3
    .param p1, "rate"    # D

    .line 40
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->mRate:D

    .line 41
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/RespiratoryRateRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/RespiratoryRateRecord;
    .registers 6

    .line 47
    new-instance v0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->getRate()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;D)V

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/RespiratoryRateRecord;

    move-result-object v0

    .line 47
    return-object v0
.end method
