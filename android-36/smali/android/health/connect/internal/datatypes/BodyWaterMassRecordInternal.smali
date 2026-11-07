.class public final Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "BodyWaterMassRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x22
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/BodyWaterMassRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBodyWaterMass:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->mBodyWaterMass:D

    return-void
.end method


# virtual methods
.method public blacklist getBodyWaterMass()D
    .registers 3

    .line 42
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->mBodyWaterMass:D

    return-wide v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->mBodyWaterMass:D

    .line 34
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 38
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->mBodyWaterMass:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    return-void
.end method

.method public blacklist setBodyWaterMass(D)V
    .registers 3
    .param p1, "bodyWaterMass"    # D

    .line 46
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->mBodyWaterMass:D

    .line 47
    return-void
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/BodyWaterMassRecord;
    .registers 6

    .line 52
    new-instance v0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;

    .line 53
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->getBodyWaterMass()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Mass;)V

    .line 54
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/BodyWaterMassRecord;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 27
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/BodyWaterMassRecord;

    move-result-object v0

    return-object v0
.end method
