.class public final Landroid/health/connect/datatypes/BodyFatRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BodyFatRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BodyFatRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mPercentage:Landroid/health/connect/datatypes/units/Percentage;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Percentage;Z)V
    .registers 13
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "percentage"    # Landroid/health/connect/datatypes/units/Percentage;
    .param p5, "skipValidation"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    if-nez p5, :cond_1e

    .line 55
    invoke-virtual {p4}, Landroid/health/connect/datatypes/units/Percentage;->getValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-string v6, "bodyFatPercentage"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 57
    :cond_1e
    iput-object p4, p0, Landroid/health/connect/datatypes/BodyFatRecord;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Percentage;ZLandroid/health/connect/datatypes/BodyFatRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/BodyFatRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Percentage;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 77
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/BodyFatRecord;

    .line 79
    .local v0, "that":Landroid/health/connect/datatypes/BodyFatRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getPercentage()Landroid/health/connect/datatypes/units/Percentage;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/BodyFatRecord;->getPercentage()Landroid/health/connect/datatypes/units/Percentage;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Percentage;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getPercentage()Landroid/health/connect/datatypes/units/Percentage;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/health/connect/datatypes/BodyFatRecord;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 85
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getPercentage()Landroid/health/connect/datatypes/units/Percentage;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;
    .registers 4

    .line 148
    new-instance v0, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    .line 161
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 162
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 163
    iget-object v1, p0, Landroid/health/connect/datatypes/BodyFatRecord;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Percentage;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;->setPercentage(D)Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    .line 164
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyFatRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    move-result-object v0

    return-object v0
.end method
