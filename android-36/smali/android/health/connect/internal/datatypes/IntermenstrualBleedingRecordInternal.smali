.class public final Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "IntermenstrualBleedingRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x24
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 31
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 34
    return-void
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;
    .registers 4

    .line 39
    new-instance v0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;)V

    .line 40
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    move-result-object v0

    return-object v0
.end method
