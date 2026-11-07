.class public final Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "MenstruationPeriodRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xa
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/MenstruationPeriodRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 42
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 45
    return-void
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/MenstruationPeriodRecord;
    .registers 5

    .line 35
    new-instance v0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V

    .line 36
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    move-result-object v0

    return-object v0
.end method
