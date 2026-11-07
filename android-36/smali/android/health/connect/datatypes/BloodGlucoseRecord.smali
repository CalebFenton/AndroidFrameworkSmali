.class public final Landroid/health/connect/datatypes/BloodGlucoseRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BloodGlucoseRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x19
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource;,
        Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType;,
        Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

.field private final blacklist mMealType:I

.field private final blacklist mRelationToMeal:I

.field private final blacklist mSpecimenSource:I


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/BloodGlucose;IIZ)V
    .registers 16
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "specimenSource"    # I
    .param p5, "level"    # Landroid/health/connect/datatypes/units/BloodGlucose;
    .param p6, "relationToMeal"    # I
    .param p7, "mealType"    # I
    .param p8, "skipValidation"    # Z

    .line 63
    invoke-direct {p0, p1, p2, p3, p8}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-nez p8, :cond_1e

    .line 69
    invoke-virtual {p5}, Landroid/health/connect/datatypes/units/BloodGlucose;->getInMillimolesPerLiter()D

    move-result-wide v0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    const-string v6, "level"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 71
    :cond_1e
    sget-object v0, Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p4, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 73
    sget-object v0, Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {p6, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 77
    sget-object v0, Landroid/health/connect/datatypes/MealType;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/MealType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 78
    iput p4, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mSpecimenSource:I

    .line 79
    iput-object p5, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    .line 80
    iput p6, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mRelationToMeal:I

    .line 81
    iput p7, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mMealType:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/BloodGlucose;IIZLandroid/health/connect/datatypes/BloodGlucoseRecord-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/health/connect/datatypes/BloodGlucoseRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/BloodGlucose;IIZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 221
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 222
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/BloodGlucoseRecord;

    .line 223
    .local v1, "that":Landroid/health/connect/datatypes/BloodGlucoseRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getSpecimenSource()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getSpecimenSource()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 224
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getRelationToMeal()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getRelationToMeal()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 225
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMealType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMealType()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 226
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getLevel()Landroid/health/connect/datatypes/units/BloodGlucose;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getLevel()Landroid/health/connect/datatypes/units/BloodGlucose;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 223
    :goto_3d
    return v0
.end method

.method public whitelist getLevel()Landroid/health/connect/datatypes/units/BloodGlucose;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    return-object v0
.end method

.method public whitelist getMealType()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mMealType:I

    return v0
.end method

.method public whitelist getRelationToMeal()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mRelationToMeal:I

    return v0
.end method

.method public whitelist getSpecimenSource()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mSpecimenSource:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 232
    nop

    .line 233
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getSpecimenSource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getLevel()Landroid/health/connect/datatypes/units/BloodGlucose;

    move-result-object v2

    .line 236
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getRelationToMeal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 237
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMealType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    .registers 4

    .line 332
    new-instance v0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;-><init>()V

    .line 335
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 345
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 346
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 347
    iget v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mSpecimenSource:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setSpecimenSource(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 348
    iget-object v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/BloodGlucose;->getInMillimolesPerLiter()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setLevel(D)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 349
    iget v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mRelationToMeal:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setRelationToMeal(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 350
    iget v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord;->mMealType:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;->setMealType(I)Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 351
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodGlucoseRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    move-result-object v0

    return-object v0
.end method
