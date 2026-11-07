.class public final Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;
.super Ljava/lang/Object;
.source "BloodGlucoseRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BloodGlucoseRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

.field private final blacklist mMealType:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mRelationToMeal:I

.field private final blacklist mSpecimenSource:I

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/BloodGlucose;II)V
    .registers 8
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "specimenSource"    # I
    .param p4, "level"    # Landroid/health/connect/datatypes/units/BloodGlucose;
    .param p5, "relationToMeal"    # I
    .param p6, "mealType"    # I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iput-object p1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 273
    iput-object p2, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mTime:Ljava/time/Instant;

    .line 274
    iput p3, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mSpecimenSource:I

    .line 275
    iput-object p4, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    .line 276
    iput p5, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mRelationToMeal:I

    .line 277
    iput p6, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMealType:I

    .line 278
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/BloodGlucoseRecord;
    .registers 11

    .line 317
    new-instance v0, Landroid/health/connect/datatypes/BloodGlucoseRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mSpecimenSource:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    iget v6, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mRelationToMeal:I

    iget v7, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMealType:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/BloodGlucoseRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/BloodGlucose;IIZLandroid/health/connect/datatypes/BloodGlucoseRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/BloodGlucoseRecord;
    .registers 11

    .line 301
    new-instance v0, Landroid/health/connect/datatypes/BloodGlucoseRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mSpecimenSource:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mLevel:Landroid/health/connect/datatypes/units/BloodGlucose;

    iget v6, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mRelationToMeal:I

    iget v7, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mMealType:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/BloodGlucoseRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/BloodGlucose;IIZLandroid/health/connect/datatypes/BloodGlucoseRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;
    .registers 2

    .line 292
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 293
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 284
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iput-object p1, p0, Landroid/health/connect/datatypes/BloodGlucoseRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 286
    return-object p0
.end method
