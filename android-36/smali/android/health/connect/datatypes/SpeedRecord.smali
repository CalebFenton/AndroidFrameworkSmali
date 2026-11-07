.class public final Landroid/health/connect/datatypes/SpeedRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "SpeedRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;,
        Landroid/health/connect/datatypes/SpeedRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist SPEED_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Velocity;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SPEED_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Velocity;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SPEED_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Velocity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSpeedRecordSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Velocity;

    const/16 v2, 0x4e

    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 53
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Landroid/health/connect/datatypes/units/Velocity;

    const/16 v3, 0x4f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 65
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x0

    const-class v2, Landroid/health/connect/datatypes/units/Velocity;

    const/16 v3, 0x50

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_MAX:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Z)V
    .registers 16
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p7, "skipValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;",
            ">;Z)V"
        }
    .end annotation

    .line 91
    .local p6, "speedRecordSamples":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    .end local p1    # "metadata":Landroid/health/connect/datatypes/Metadata;
    .end local p2    # "startTime":Ljava/time/Instant;
    .end local p3    # "startZoneOffset":Ljava/time/ZoneOffset;
    .end local p4    # "endTime":Ljava/time/Instant;
    .end local p5    # "endZoneOffset":Ljava/time/ZoneOffset;
    .end local p7    # "skipValidation":Z
    .local v1, "metadata":Landroid/health/connect/datatypes/Metadata;
    .local v2, "startTime":Ljava/time/Instant;
    .local v3, "startZoneOffset":Ljava/time/ZoneOffset;
    .local v4, "endTime":Ljava/time/Instant;
    .local v5, "endZoneOffset":Ljava/time/ZoneOffset;
    .local v6, "skipValidation":Z
    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 99
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    if-nez v6, :cond_25

    .line 101
    nop

    .line 104
    invoke-interface {p6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Landroid/health/connect/datatypes/SpeedRecord$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/health/connect/datatypes/SpeedRecord$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-static {v2, v4, p1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateSampleStartAndEndTime(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 108
    :cond_25
    iput-object p6, v0, Landroid/health/connect/datatypes/SpeedRecord;->mSpeedRecordSamples:Ljava/util/List;

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/SpeedRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/datatypes/SpeedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 298
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    instance-of v0, p1, Landroid/health/connect/datatypes/SpeedRecord;

    if-eqz v0, :cond_7e

    .line 299
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/SpeedRecord;

    .line 300
    .local v0, "other":Landroid/health/connect/datatypes/SpeedRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_21

    return v1

    .line 301
    :cond_21
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_22
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 302
    nop

    .line 303
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    invoke-virtual {v3}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v3

    .line 304
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    invoke-virtual {v4}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v4

    .line 302
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 305
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    invoke-virtual {v3}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 306
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    invoke-virtual {v5}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_78

    goto :goto_7b

    .line 301
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 307
    :cond_7b
    :goto_7b
    return v1

    .line 310
    .end local v2    # "idx":I
    :cond_7c
    const/4 v1, 0x1

    return v1

    .line 312
    .end local v0    # "other":Landroid/health/connect/datatypes/SpeedRecord;
    :cond_7e
    return v1
.end method

.method public whitelist getSamples()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/health/connect/datatypes/SpeedRecord;->mSpeedRecordSamples:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 318
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/SpeedRecordInternal;
    .registers 10

    .line 324
    new-instance v0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;-><init>()V

    .line 327
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    .line 337
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/SpeedRecordInternal;
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 339
    .local v1, "samples":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;>;"
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    .line 340
    .local v3, "speedRecordSample":Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;
    new-instance v4, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    .line 342
    invoke-virtual {v3}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/health/connect/datatypes/units/Velocity;->getInMetersPerSecond()D

    move-result-wide v5

    .line 343
    invoke-virtual {v3}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;-><init>(DJ)V

    .line 340
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v3    # "speedRecordSample":Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;
    goto :goto_9c

    .line 345
    :cond_c1
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    .line 346
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 347
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 348
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 349
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 351
    return-object v0
.end method
