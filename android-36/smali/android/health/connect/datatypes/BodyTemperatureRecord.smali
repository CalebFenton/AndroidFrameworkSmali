.class public final Landroid/health/connect/datatypes/BodyTemperatureRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BodyTemperatureRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mMeasurementLocation:I

.field private final blacklist mTemperature:Landroid/health/connect/datatypes/units/Temperature;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Temperature;Z)V
    .registers 16
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "measurementLocation"    # I
    .param p5, "temperature"    # Landroid/health/connect/datatypes/units/Temperature;
    .param p6, "skipValidation"    # Z

    .line 56
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/health/connect/datatypes/BodyTemperatureMeasurementLocation;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/BodyTemperatureMeasurementLocation;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p4, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 65
    if-nez p6, :cond_29

    .line 66
    invoke-virtual {p5}, Landroid/health/connect/datatypes/units/Temperature;->getInCelsius()D

    move-result-wide v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-string v8, "temperature"

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 68
    :cond_29
    iput p4, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mMeasurementLocation:I

    .line 69
    iput-object p5, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Temperature;ZLandroid/health/connect/datatypes/BodyTemperatureRecord-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/health/connect/datatypes/BodyTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Temperature;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 98
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 99
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/BodyTemperatureRecord;

    .line 100
    .local v1, "that":Landroid/health/connect/datatypes/BodyTemperatureRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMeasurementLocation()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMeasurementLocation()I

    move-result v4

    if-ne v3, v4, :cond_28

    .line 101
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getTemperature()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getTemperature()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Temperature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 100
    :goto_29
    return v0
.end method

.method public whitelist getMeasurementLocation()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mMeasurementLocation:I

    return v0
.end method

.method public whitelist getTemperature()Landroid/health/connect/datatypes/units/Temperature;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 107
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMeasurementLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getTemperature()Landroid/health/connect/datatypes/units/Temperature;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;
    .registers 4

    .line 180
    new-instance v0, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    .line 193
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 194
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 195
    iget v1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mMeasurementLocation:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;->setMeasurementLocation(I)Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    .line 196
    iget-object v1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Temperature;->getInCelsius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;->setTemperature(D)Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    .line 197
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyTemperatureRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    move-result-object v0

    return-object v0
.end method
