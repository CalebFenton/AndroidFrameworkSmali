.class public final Landroid/health/connect/datatypes/SkinTemperatureRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "SkinTemperatureRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x27
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/SkinTemperatureRecord$SkinTemperatureMeasurementLocation;,
        Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;,
        Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist MEASUREMENT_LOCATION_FINGER:I = 0x1

.field public static final whitelist MEASUREMENT_LOCATION_TOE:I = 0x2

.field public static final whitelist MEASUREMENT_LOCATION_UNKNOWN:I = 0x0

.field public static final whitelist MEASUREMENT_LOCATION_WRIST:I = 0x3

.field public static final whitelist SKIN_TEMPERATURE_DELTA_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/TemperatureDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SKIN_TEMPERATURE_DELTA_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/TemperatureDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SKIN_TEMPERATURE_DELTA_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/TemperatureDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VALID_MEASUREMENT_LOCATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBaseline:Landroid/health/connect/datatypes/units/Temperature;

.field private final blacklist mDeltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasurementLocation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 67
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    const/16 v2, 0x54

    const/4 v3, 0x2

    const/16 v4, 0x27

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 78
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    const/16 v2, 0x55

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 89
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    const/16 v2, 0x56

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_MAX:Landroid/health/connect/datatypes/AggregationType;

    .line 316
    nop

    .line 318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 321
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 317
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->VALID_MEASUREMENT_LOCATIONS:Ljava/util/Set;

    .line 316
    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Temperature;Ljava/util/List;IZ)V
    .registers 20
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "baseline"    # Landroid/health/connect/datatypes/units/Temperature;
    .param p8, "measurementLocation"    # I
    .param p9, "skipValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Landroid/health/connect/datatypes/units/Temperature;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;IZ)V"
        }
    .end annotation

    .line 121
    .local p7, "deltas":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;>;"
    move-object/from16 v8, p6

    move/from16 v9, p8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 129
    if-nez p9, :cond_41

    .line 130
    if-eqz v8, :cond_21

    .line 131
    invoke-virtual {v8}, Landroid/health/connect/datatypes/units/Temperature;->getInCelsius()D

    move-result-wide v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const-string v7, "temperature"

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 133
    :cond_21
    sget-object v1, Landroid/health/connect/datatypes/SkinTemperatureRecord;->VALID_MEASUREMENT_LOCATIONS:Ljava/util/Set;

    const-class v2, Landroid/health/connect/datatypes/SkinTemperatureRecord$SkinTemperatureMeasurementLocation;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v9, v1, v2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 137
    nop

    .line 138
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-static {p2, p4, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateSampleStartAndEndTime(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 140
    :cond_41
    iput-object v8, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    .line 141
    nop

    .line 143
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda1;-><init>()V

    .line 144
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 145
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 142
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mDeltas:Ljava/util/List;

    .line 146
    iput v9, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mMeasurementLocation:I

    .line 147
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Temperature;Ljava/util/List;IZLandroid/health/connect/datatypes/SkinTemperatureRecord-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/health/connect/datatypes/SkinTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Temperature;Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic blacklist lambda$toRecordInternal$0(Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;)Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    .registers 6
    .param p0, "delta"    # Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;

    .line 222
    new-instance v0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    .line 224
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getDelta()Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/TemperatureDelta;->getInCelsius()D

    move-result-wide v1

    .line 225
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;-><init>(DJ)V

    .line 222
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 181
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 182
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 183
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 184
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    .line 185
    .local v0, "that":Landroid/health/connect/datatypes/SkinTemperatureRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getBaseline()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getBaseline()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 186
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMeasurementLocation()I

    move-result v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMeasurementLocation()I

    move-result v3

    if-eq v2, v3, :cond_2d

    goto :goto_3a

    .line 187
    :cond_2d
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getDeltas()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 186
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getBaseline()Landroid/health/connect/datatypes/units/Temperature;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    return-object v0
.end method

.method public whitelist getDeltas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mDeltas:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMeasurementLocation()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord;->mMeasurementLocation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 195
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getBaseline()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getDeltas()Ljava/util/List;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 51
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
    .registers 4

    .line 201
    new-instance v0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;-><init>()V

    .line 204
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    .line 214
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getBaseline()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 215
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getBaseline()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setBaseline(Landroid/health/connect/datatypes/units/Temperature;)Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    .line 218
    :cond_94
    nop

    .line 219
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/SkinTemperatureRecord$$ExternalSyntheticLambda0;-><init>()V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 226
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 218
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SeriesRecordInternal;

    .line 227
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getMeasurementLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    .line 228
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 229
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 230
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 231
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 233
    return-object v0
.end method
