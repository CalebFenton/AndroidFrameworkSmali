.class public final Landroid/health/connect/datatypes/CervicalMucusRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "CervicalMucusRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation;,
        Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance;,
        Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAppearance:I

.field private final blacklist mSensation:I


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IIZ)V
    .registers 9
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "sensation"    # I
    .param p5, "appearance"    # I
    .param p6, "skipValidation"    # Z

    .line 57
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p4, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 65
    sget-object v0, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {p5, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 69
    iput p4, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mSensation:I

    .line 70
    iput p5, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mAppearance:I

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IIZLandroid/health/connect/datatypes/CervicalMucusRecord-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/health/connect/datatypes/CervicalMucusRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IIZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 178
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 179
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/CervicalMucusRecord;

    .line 180
    .local v1, "that":Landroid/health/connect/datatypes/CervicalMucusRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getSensation()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getSensation()I

    move-result v4

    if-ne v3, v4, :cond_24

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getAppearance()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getAppearance()I

    move-result v4

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public whitelist getAppearance()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mAppearance:I

    return v0
.end method

.method public whitelist getSensation()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mSensation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 186
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getSensation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getAppearance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;
    .registers 4

    .line 257
    new-instance v0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;-><init>()V

    .line 260
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    .line 270
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 271
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 272
    iget v1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mSensation:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->setSensation(I)Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    .line 273
    iget v1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord;->mAppearance:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;->setAppearance(I)Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    .line 274
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 36
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CervicalMucusRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    move-result-object v0

    return-object v0
.end method
