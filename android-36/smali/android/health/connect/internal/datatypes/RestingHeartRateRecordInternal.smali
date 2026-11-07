.class public final Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "RestingHeartRateRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x21
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/RestingHeartRateRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBeatsPerMinute:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBeatsPerMinute()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->mBeatsPerMinute:I

    return v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->mBeatsPerMinute:I

    .line 55
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    iget v0, p0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->mBeatsPerMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method

.method public blacklist setBeatsPerMinute(I)Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;
    .registers 2
    .param p1, "beatsPerMinute"    # I

    .line 40
    iput p1, p0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->mBeatsPerMinute:I

    .line 41
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/RestingHeartRateRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/RestingHeartRateRecord;
    .registers 6

    .line 47
    new-instance v0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->getBeatsPerMinute()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;J)V

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/RestingHeartRateRecord;

    move-result-object v0

    .line 47
    return-object v0
.end method
