.class public final Landroid/health/connect/datatypes/BloodPressureRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BloodPressureRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BloodPressureRecord$BloodPressureMeasurementLocation;,
        Landroid/health/connect/datatypes/BloodPressureRecord$BodyPosition;,
        Landroid/health/connect/datatypes/BloodPressureRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist DIASTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIASTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIASTOLIC_MAX_VALUE:D = 300.0

.field public static final whitelist DIASTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIASTOLIC_MIN_VALUE:D = 10.0

.field public static final whitelist SYSTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SYSTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTOLIC_MAX_VALUE:D = 300.0

.field public static final whitelist SYSTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTOLIC_MIN_VALUE:D = 20.0


# instance fields
.field private final blacklist mBodyPosition:I

.field private final blacklist mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

.field private final blacklist mMeasurementLocation:I

.field private final blacklist mSystolic:Landroid/health/connect/datatypes/units/Pressure;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Pressure;

    const/16 v2, 0x44

    const/4 v3, 0x2

    const/16 v4, 0x17

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 63
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Pressure;

    const/16 v2, 0x45

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;

    .line 75
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Pressure;

    const/16 v2, 0x46

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 87
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x47

    const-class v2, Landroid/health/connect/datatypes/units/Pressure;

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 99
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x48

    const-class v2, Landroid/health/connect/datatypes/units/Pressure;

    invoke-direct {v0, v1, v5, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;

    .line 111
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x49

    const-class v2, Landroid/health/connect/datatypes/units/Pressure;

    invoke-direct {v0, v1, v6, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;IZ)V
    .registers 32
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "measurementLocation"    # I
    .param p5, "systolic"    # Landroid/health/connect/datatypes/units/Pressure;
    .param p6, "diastolic"    # Landroid/health/connect/datatypes/units/Pressure;
    .param p7, "bodyPosition"    # I
    .param p8, "skipValidation"    # Z

    .line 143
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct {v0, v4, v5, v6, v3}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 144
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v7, Landroid/health/connect/datatypes/BloodPressureRecord$BloodPressureMeasurementLocation;->VALID_TYPES:Ljava/util/Set;

    const-class v8, Landroid/health/connect/datatypes/BloodPressureRecord$BloodPressureMeasurementLocation;

    .line 152
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-static {v1, v7, v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 153
    if-nez v3, :cond_4f

    .line 154
    nop

    .line 155
    invoke-virtual/range {p5 .. p5}, Landroid/health/connect/datatypes/units/Pressure;->getInMillimetersOfMercury()D

    move-result-wide v9

    .line 154
    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    const-wide v13, 0x4072c00000000000L    # 300.0

    const-string v15, "systolic"

    invoke-static/range {v9 .. v15}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 159
    nop

    .line 160
    invoke-virtual/range {p6 .. p6}, Landroid/health/connect/datatypes/units/Pressure;->getInMillimetersOfMercury()D

    move-result-wide v16

    .line 159
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const-wide v20, 0x4072c00000000000L    # 300.0

    const-string v22, "diastolic"

    invoke-static/range {v16 .. v22}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 165
    :cond_4f
    sget-object v7, Landroid/health/connect/datatypes/BloodPressureRecord$BodyPosition;->VALID_TYPES:Ljava/util/Set;

    const-class v8, Landroid/health/connect/datatypes/BloodPressureRecord$BodyPosition;

    .line 166
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-static {v2, v7, v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 167
    iput v1, v0, Landroid/health/connect/datatypes/BloodPressureRecord;->mMeasurementLocation:I

    .line 168
    move-object/from16 v7, p5

    iput-object v7, v0, Landroid/health/connect/datatypes/BloodPressureRecord;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    .line 169
    move-object/from16 v8, p6

    iput-object v8, v0, Landroid/health/connect/datatypes/BloodPressureRecord;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    .line 170
    iput v2, v0, Landroid/health/connect/datatypes/BloodPressureRecord;->mBodyPosition:I

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;IZLandroid/health/connect/datatypes/BloodPressureRecord-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/health/connect/datatypes/BloodPressureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Pressure;Landroid/health/connect/datatypes/units/Pressure;IZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 298
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 299
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/BloodPressureRecord;

    .line 300
    .local v1, "that":Landroid/health/connect/datatypes/BloodPressureRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMeasurementLocation()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMeasurementLocation()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 301
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getBodyPosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodPressureRecord;->getBodyPosition()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 302
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getSystolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodPressureRecord;->getSystolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Pressure;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 303
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getDiastolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BloodPressureRecord;->getDiastolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Pressure;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 300
    :goto_41
    return v0
.end method

.method public whitelist getBodyPosition()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mBodyPosition:I

    return v0
.end method

.method public whitelist getDiastolic()Landroid/health/connect/datatypes/units/Pressure;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    return-object v0
.end method

.method public whitelist getMeasurementLocation()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mMeasurementLocation:I

    return v0
.end method

.method public whitelist getSystolic()Landroid/health/connect/datatypes/units/Pressure;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 309
    nop

    .line 310
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMeasurementLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getSystolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v2

    .line 313
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getDiastolic()Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v3

    .line 314
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getBodyPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 309
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    .registers 4

    .line 416
    new-instance v0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;-><init>()V

    .line 419
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 429
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 430
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 431
    iget v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mMeasurementLocation:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 432
    iget-object v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mSystolic:Landroid/health/connect/datatypes/units/Pressure;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Pressure;->getInMillimetersOfMercury()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setSystolic(D)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 433
    iget-object v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mDiastolic:Landroid/health/connect/datatypes/units/Pressure;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Pressure;->getInMillimetersOfMercury()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setDiastolic(D)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 434
    iget v1, p0, Landroid/health/connect/datatypes/BloodPressureRecord;->mBodyPosition:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;->setBodyPosition(I)Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 435
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BloodPressureRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    move-result-object v0

    return-object v0
.end method
