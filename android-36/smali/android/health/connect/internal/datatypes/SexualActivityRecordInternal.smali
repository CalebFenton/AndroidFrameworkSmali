.class public final Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "SexualActivityRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/SexualActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mProtectionUsed:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getProtectionUsed()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->mProtectionUsed:I

    return v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->mProtectionUsed:I

    .line 57
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 61
    iget v0, p0, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->mProtectionUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method

.method public blacklist setProtectionUsed(I)Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;
    .registers 2
    .param p1, "protectionUsed"    # I

    .line 42
    iput p1, p0, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->mProtectionUsed:I

    .line 43
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/SexualActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/SexualActivityRecord;
    .registers 5

    .line 49
    new-instance v0, Landroid/health/connect/datatypes/SexualActivityRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->getProtectionUsed()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/SexualActivityRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;I)V

    .line 50
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SexualActivityRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SexualActivityRecord$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SexualActivityRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/SexualActivityRecord;

    move-result-object v0

    .line 49
    return-object v0
.end method
