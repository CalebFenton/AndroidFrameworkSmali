.class public final Landroid/health/connect/datatypes/StepsRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "StepsRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/StepsRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist STEPS_COUNT_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCount:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 136
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/StepsRecord;->STEPS_COUNT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZ)V
    .registers 17
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "count"    # J
    .param p8, "skipValidation"    # Z

    .line 153
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 161
    if-nez p8, :cond_19

    .line 162
    const-wide/32 v5, 0xf4240

    const-string v7, "stepsCount"

    const-wide/16 v3, 0x0

    move-wide v1, p6

    invoke-static/range {v1 .. v7}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(JJJLjava/lang/String;)V

    .line 164
    :cond_19
    iput-wide p6, p0, Landroid/health/connect/datatypes/StepsRecord;->mCount:J

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/StepsRecord-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/health/connect/datatypes/StepsRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 184
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 185
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/StepsRecord;

    .line 186
    .local v1, "record":Landroid/health/connect/datatypes/StepsRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getCount()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/StepsRecord;->getCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0
.end method

.method public whitelist getCount()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroid/health/connect/datatypes/StepsRecord;->mCount:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 194
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/StepsRecordInternal;
    .registers 4

    .line 200
    new-instance v0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;-><init>()V

    .line 203
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    .line 213
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/StepsRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 214
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 215
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 216
    invoke-virtual {p0}, Landroid/health/connect/datatypes/StepsRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 217
    iget-wide v1, p0, Landroid/health/connect/datatypes/StepsRecord;->mCount:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/StepsRecordInternal;->setCount(I)Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    .line 218
    return-object v0
.end method
