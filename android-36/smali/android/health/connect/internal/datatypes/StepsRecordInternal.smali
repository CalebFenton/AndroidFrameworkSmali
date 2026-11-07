.class public final Landroid/health/connect/internal/datatypes/StepsRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "StepsRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/StepsRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->mCount:I

    return-void
.end method


# virtual methods
.method public blacklist getCount()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->mCount:I

    return v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->mCount:I

    .line 57
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 61
    iget v0, p0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method

.method public blacklist setCount(I)Landroid/health/connect/internal/datatypes/StepsRecordInternal;
    .registers 2
    .param p1, "count"    # I

    .line 41
    iput p1, p0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->mCount:I

    .line 42
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/StepsRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/StepsRecord;
    .registers 7

    .line 48
    new-instance v0, Landroid/health/connect/datatypes/StepsRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/StepsRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;J)V

    .line 49
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/StepsRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsRecord$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/StepsRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsRecord$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/health/connect/datatypes/StepsRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/StepsRecord;

    move-result-object v0

    .line 48
    return-object v0
.end method
