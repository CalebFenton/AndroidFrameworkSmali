.class public final Landroid/health/connect/datatypes/DistanceRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "DistanceRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/DistanceRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist DISTANCE_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Length;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDistance:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 142
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x7

    const-class v2, Landroid/health/connect/datatypes/units/Length;

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/DistanceRecord;->DISTANCE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;Z)V
    .registers 16
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "distance"    # Landroid/health/connect/datatypes/units/Length;
    .param p7, "skipValidation"    # Z

    .line 168
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 176
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    if-nez p7, :cond_21

    .line 178
    nop

    .line 179
    invoke-virtual {p6}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    .line 178
    const-wide/16 v3, 0x0

    const-wide v5, 0x412e848000000000L    # 1000000.0

    const-string v7, "revolutionsPerMinute"

    invoke-static/range {v1 .. v7}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 181
    :cond_21
    iput-object p6, p0, Landroid/health/connect/datatypes/DistanceRecord;->mDistance:Landroid/health/connect/datatypes/units/Length;

    .line 182
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/DistanceRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/datatypes/DistanceRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 202
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 203
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/DistanceRecord;

    .line 204
    .local v0, "that":Landroid/health/connect/datatypes/DistanceRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/DistanceRecord;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Length;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getDistance()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/health/connect/datatypes/DistanceRecord;->mDistance:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 212
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/DistanceRecordInternal;
    .registers 4

    .line 218
    new-instance v0, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;-><init>()V

    .line 221
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    .line 231
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/DistanceRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 232
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 233
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 234
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 235
    iget-object v1, p0, Landroid/health/connect/datatypes/DistanceRecord;->mDistance:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;->setDistance(D)Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    .line 236
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DistanceRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    move-result-object v0

    return-object v0
.end method
