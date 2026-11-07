.class public final Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "WheelchairPushesRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x6
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/WheelchairPushesRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCount()J
    .registers 3

    .line 34
    iget v0, p0, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->mCount:I

    .line 57
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 61
    iget v0, p0, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method

.method public blacklist setCount(I)Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;
    .registers 2
    .param p1, "count"    # I

    .line 40
    iput p1, p0, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->mCount:I

    .line 41
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/WheelchairPushesRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/WheelchairPushesRecord;
    .registers 7

    .line 47
    new-instance v0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->getCount()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;J)V

    .line 49
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/WheelchairPushesRecord;

    move-result-object v0

    .line 47
    return-object v0
.end method
