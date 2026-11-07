.class public final Landroid/health/connect/datatypes/BloodPressureRecord$Builder;
.super Ljava/lang/Object;
.source "BloodPressureRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BloodPressureRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBodyPosition:I

.field private final blacklist mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

.field private final blacklist mMeasurementLocation:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mSystolic:Landroid/health/connect/datatypes/units/Pressure;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;I)V
    .registers 9
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "measurementLocation"    # I
    .param p4, "systolic"    # Landroid/health/connect/datatypes/units/Pressure;
    .param p5, "diastolic"    # Landroid/health/connect/datatypes/units/Pressure;
    .param p6, "bodyPosition"    # I

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Landroid/health/connect/datatypes/BloodPressureRecord$BloodPressureMeasurementLocation;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/BloodPressureRecord$BloodPressureMeasurementLocation;

    .line 354
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {p3, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 356
    iput-object p2, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mTime:Ljava/time/Instant;

    .line 357
    iput p3, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMeasurementLocation:I

    .line 358
    iput-object p4, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    .line 359
    iput-object p5, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    .line 360
    iput p6, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mBodyPosition:I

    .line 361
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 362
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/BloodPressureRecord;
    .registers 11

    .line 401
    new-instance v0, Landroid/health/connect/datatypes/BloodPressureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMeasurementLocation:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    iget-object v6, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    iget v7, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mBodyPosition:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/BloodPressureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;IZLandroid/health/connect/datatypes/BloodPressureRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/BloodPressureRecord;
    .registers 11

    .line 385
    new-instance v0, Landroid/health/connect/datatypes/BloodPressureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mMeasurementLocation:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    iget-object v6, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    iget v7, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mBodyPosition:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/BloodPressureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;IZLandroid/health/connect/datatypes/BloodPressureRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/BloodPressureRecord$Builder;
    .registers 2

    .line 375
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 376
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BloodPressureRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 367
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iput-object p1, p0, Landroid/health/connect/datatypes/BloodPressureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 369
    return-object p0
.end method
