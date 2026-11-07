.class public final Landroid/health/connect/internal/datatypes/HeightRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "HeightRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x18
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/HeightRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mHeight:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHeight()D
    .registers 3

    .line 34
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->mHeight:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->mHeight:D

    .line 55
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->mHeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    return-void
.end method

.method public blacklist setHeight(D)Landroid/health/connect/internal/datatypes/HeightRecordInternal;
    .registers 3
    .param p1, "height"    # D

    .line 40
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->mHeight:D

    .line 41
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/HeightRecord;
    .registers 6

    .line 47
    new-instance v0, Landroid/health/connect/datatypes/HeightRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/HeightRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Length;)V

    .line 48
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/HeightRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeightRecord$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/health/connect/datatypes/HeightRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/HeightRecord;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/HeightRecord;

    move-result-object v0

    return-object v0
.end method
