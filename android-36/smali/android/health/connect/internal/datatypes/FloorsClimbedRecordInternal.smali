.class public final Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "FloorsClimbedRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x5
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/FloorsClimbedRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mFloors:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFloors()D
    .registers 3

    .line 33
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->mFloors:D

    return-wide v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->mFloors:D

    .line 56
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 60
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->mFloors:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    return-void
.end method

.method public blacklist setFloors(D)Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;
    .registers 3
    .param p1, "floors"    # D

    .line 39
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->mFloors:D

    .line 40
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/FloorsClimbedRecord;
    .registers 7

    .line 46
    new-instance v0, Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;

    .line 47
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->getFloors()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;D)V

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/health/connect/datatypes/FloorsClimbedRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/FloorsClimbedRecord;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/FloorsClimbedRecord;

    move-result-object v0

    return-object v0
.end method
