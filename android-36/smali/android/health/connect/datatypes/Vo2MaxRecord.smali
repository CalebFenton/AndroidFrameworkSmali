.class public final Landroid/health/connect/datatypes/Vo2MaxRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "Vo2MaxRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod;,
        Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mMeasurementMethod:I

.field private final blacklist mVo2MillilitersPerMinuteKilogram:D


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IDZ)V
    .registers 20
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "measurementMethod"    # I
    .param p5, "vo2MillilitersPerMinuteKilogram"    # D
    .param p7, "skipValidation"    # Z

    .line 55
    move/from16 v0, p4

    move/from16 v1, p7

    move-object v2, p3

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v3, Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod;->VALID_TYPES:Ljava/util/Set;

    const-class v4, Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v0, v3, v4}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 63
    if-nez v1, :cond_29

    .line 64
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-string v11, "vo2MillilitersPerMinuteKilogram"

    const-wide/16 v7, 0x0

    move-wide/from16 v5, p5

    invoke-static/range {v5 .. v11}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 67
    :cond_29
    iput v0, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mMeasurementMethod:I

    .line 68
    move-wide/from16 v5, p5

    iput-wide v5, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mVo2MillilitersPerMinuteKilogram:D

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IDZLandroid/health/connect/datatypes/Vo2MaxRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/datatypes/Vo2MaxRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IDZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 135
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 136
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/Vo2MaxRecord;

    .line 137
    .local v1, "that":Landroid/health/connect/datatypes/Vo2MaxRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMeasurementMethod()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMeasurementMethod()I

    move-result v4

    if-ne v3, v4, :cond_28

    .line 139
    invoke-virtual {v1}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getVo2MillilitersPerMinuteKilogram()D

    move-result-wide v3

    .line 140
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getVo2MillilitersPerMinuteKilogram()D

    move-result-wide v5

    .line 138
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 137
    :goto_29
    return v0
.end method

.method public whitelist getMeasurementMethod()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mMeasurementMethod:I

    return v0
.end method

.method public whitelist getVo2MillilitersPerMinuteKilogram()D
    .registers 3

    .line 83
    iget-wide v0, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mVo2MillilitersPerMinuteKilogram:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 147
    nop

    .line 148
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMeasurementMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getVo2MillilitersPerMinuteKilogram()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;
    .registers 4

    .line 229
    new-instance v0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    .line 242
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 243
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Vo2MaxRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 244
    iget v1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mMeasurementMethod:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->setMeasurementMethod(I)Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    .line 245
    iget-wide v1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord;->mVo2MillilitersPerMinuteKilogram:D

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;->setVo2MillilitersPerMinuteKilogram(D)Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    .line 246
    return-object v0
.end method
