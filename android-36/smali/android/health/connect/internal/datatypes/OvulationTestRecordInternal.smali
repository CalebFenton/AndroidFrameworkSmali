.class public final Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "OvulationTestRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1e
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/OvulationTestRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mResult:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getResult()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->mResult:I

    return v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->mResult:I

    .line 56
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 60
    iget v0, p0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method

.method public blacklist setResult(I)Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;
    .registers 2
    .param p1, "result"    # I

    .line 41
    iput p1, p0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->mResult:I

    .line 42
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/OvulationTestRecord;
    .registers 5

    .line 48
    new-instance v0, Landroid/health/connect/datatypes/OvulationTestRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->getResult()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/OvulationTestRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;I)V

    .line 49
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/OvulationTestRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/OvulationTestRecord$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/health/connect/datatypes/OvulationTestRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/OvulationTestRecord;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/OvulationTestRecord;

    move-result-object v0

    return-object v0
.end method
