.class public final Landroid/health/connect/internal/datatypes/WeightRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "WeightRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/WeightRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mWeight:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getWeight()D
    .registers 3

    .line 34
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->mWeight:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->mWeight:D

    .line 55
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->mWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    return-void
.end method

.method public blacklist setWeight(D)Landroid/health/connect/internal/datatypes/WeightRecordInternal;
    .registers 3
    .param p1, "weight"    # D

    .line 40
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->mWeight:D

    .line 41
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/WeightRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/WeightRecord;
    .registers 6

    .line 47
    new-instance v0, Landroid/health/connect/datatypes/WeightRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->getWeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/WeightRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Mass;)V

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/WeightRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/WeightRecord$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/health/connect/datatypes/WeightRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/WeightRecord;

    move-result-object v0

    .line 47
    return-object v0
.end method
