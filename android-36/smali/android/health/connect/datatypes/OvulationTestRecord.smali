.class public final Landroid/health/connect/datatypes/OvulationTestRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "OvulationTestRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/OvulationTestRecord$OvulationTestResult;,
        Landroid/health/connect/datatypes/OvulationTestRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mResult:I


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IZ)V
    .registers 8
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "result"    # I
    .param p5, "skipValidation"    # Z

    .line 50
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Landroid/health/connect/datatypes/OvulationTestRecord$OvulationTestResult;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/OvulationTestRecord$OvulationTestResult;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p4, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 56
    iput p4, p0, Landroid/health/connect/datatypes/OvulationTestRecord;->mResult:I

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/OvulationTestRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/OvulationTestRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 121
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 122
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/OvulationTestRecord;

    .line 123
    .local v1, "that":Landroid/health/connect/datatypes/OvulationTestRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getResult()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/OvulationTestRecord;->getResult()I

    move-result v4

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/health/connect/datatypes/OvulationTestRecord;->mResult:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 129
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;
    .registers 4

    .line 193
    new-instance v0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;-><init>()V

    .line 196
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    .line 206
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 207
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 208
    iget v1, p0, Landroid/health/connect/datatypes/OvulationTestRecord;->mResult:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;->setResult(I)Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    .line 209
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/health/connect/datatypes/OvulationTestRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    move-result-object v0

    return-object v0
.end method
