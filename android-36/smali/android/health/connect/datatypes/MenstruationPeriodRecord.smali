.class public final Landroid/health/connect/datatypes/MenstruationPeriodRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "MenstruationPeriodRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V
    .registers 15
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "skipValidation"    # Z

    .line 45
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "metadata":Landroid/health/connect/datatypes/Metadata;
    .end local p2    # "startTime":Ljava/time/Instant;
    .end local p3    # "startZoneOffset":Ljava/time/ZoneOffset;
    .end local p4    # "endTime":Ljava/time/Instant;
    .end local p5    # "endZoneOffset":Ljava/time/ZoneOffset;
    .end local p6    # "skipValidation":Z
    .local v1, "metadata":Landroid/health/connect/datatypes/Metadata;
    .local v2, "startTime":Ljava/time/Instant;
    .local v3, "startZoneOffset":Ljava/time/ZoneOffset;
    .local v4, "endTime":Ljava/time/Instant;
    .local v5, "endZoneOffset":Ljava/time/ZoneOffset;
    .local v6, "skipValidation":Z
    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZLandroid/health/connect/datatypes/MenstruationPeriodRecord-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 64
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 70
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;
    .registers 4

    .line 153
    new-instance v0, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;-><init>()V

    .line 156
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;

    .line 166
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 167
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 168
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 169
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 170
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 27
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;

    move-result-object v0

    return-object v0
.end method
