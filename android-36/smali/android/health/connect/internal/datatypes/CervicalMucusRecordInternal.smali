.class public final Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "CervicalMucusRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/CervicalMucusRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mSensation:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAppearance()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mAppearance:I

    return v0
.end method

.method public blacklist getSensation()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mSensation:I

    return v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mSensation:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mAppearance:I

    .line 72
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 76
    iget v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mSensation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method

.method public blacklist setAppearance(I)Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;
    .registers 2
    .param p1, "appearance"    # I

    .line 55
    iput p1, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mAppearance:I

    .line 56
    return-object p0
.end method

.method public blacklist setSensation(I)Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;
    .registers 2
    .param p1, "sensation"    # I

    .line 43
    iput p1, p0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->mSensation:I

    .line 44
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/CervicalMucusRecord;
    .registers 6

    .line 62
    new-instance v0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;

    .line 63
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->getSensation()I

    move-result v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->getAppearance()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;II)V

    .line 64
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/CervicalMucusRecord;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/CervicalMucusRecord;

    move-result-object v0

    return-object v0
.end method
