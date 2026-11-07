.class public final Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
.super Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.source "BloodGlucoseRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x19
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
        "Landroid/health/connect/datatypes/BloodGlucoseRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mLevel:D

.field private blacklist mMealType:I

.field private blacklist mRelationToMeal:I

.field private blacklist mSpecimenSource:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLevel()D
    .registers 3

    .line 50
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mLevel:D

    return-wide v0
.end method

.method public blacklist getMealType()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mMealType:I

    return v0
.end method

.method public blacklist getRelationToMeal()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mRelationToMeal:I

    return v0
.end method

.method public blacklist getSpecimenSource()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mSpecimenSource:I

    return v0
.end method

.method blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mSpecimenSource:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mLevel:D

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mRelationToMeal:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mMealType:I

    .line 104
    return-void
.end method

.method blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 108
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mSpecimenSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mRelationToMeal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mMealType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method

.method public blacklist setLevel(D)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    .registers 3
    .param p1, "level"    # D

    .line 56
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mLevel:D

    .line 57
    return-object p0
.end method

.method public blacklist setMealType(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    .registers 2
    .param p1, "mealType"    # I

    .line 80
    iput p1, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mMealType:I

    .line 81
    return-object p0
.end method

.method public blacklist setRelationToMeal(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    .registers 2
    .param p1, "relationToMeal"    # I

    .line 68
    iput p1, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mRelationToMeal:I

    .line 69
    return-object p0
.end method

.method public blacklist setSpecimenSource(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    .registers 2
    .param p1, "specimenSource"    # I

    .line 45
    iput p1, p0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->mSpecimenSource:I

    .line 46
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/BloodGlucoseRecord;
    .registers 8

    .line 87
    new-instance v0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getSpecimenSource()I

    move-result v3

    .line 91
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getLevel()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/health/connect/datatypes/units/BloodGlucose;->fromMillimolesPerLiter(D)Landroid/health/connect/datatypes/units/BloodGlucose;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getRelationToMeal()I

    move-result v5

    .line 93
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getMealType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/BloodGlucose;II)V

    .line 94
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/BloodGlucoseRecord;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/BloodGlucoseRecord;

    move-result-object v0

    return-object v0
.end method
