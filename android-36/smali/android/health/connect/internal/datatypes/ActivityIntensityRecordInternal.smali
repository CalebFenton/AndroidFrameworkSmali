.class public final Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "ActivityIntensityRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x2a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/ActivityIntensityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mActivityIntensityType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getActivityIntensityType()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->mActivityIntensityType:I

    return v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->mActivityIntensityType:I

    .line 42
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 46
    iget v0, p0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->mActivityIntensityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method

.method public blacklist setActivityIntensityType(I)Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;
    .registers 2
    .param p1, "activityIntensityType"    # I

    .line 76
    iput p1, p0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->mActivityIntensityType:I

    .line 77
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/ActivityIntensityRecord;
    .registers 6

    .line 51
    new-instance v0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;

    .line 53
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    iget v4, p0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->mActivityIntensityType:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V

    .line 55
    .local v0, "builder":Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 56
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;

    .line 59
    :cond_20
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 60
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;

    .line 63
    :cond_2d
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ActivityIntensityRecord;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/ActivityIntensityRecord;

    move-result-object v0

    return-object v0
.end method
