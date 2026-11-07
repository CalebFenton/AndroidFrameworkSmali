.class public final Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "CyclingPedalingCadenceRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;,
        Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist RPM_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RPM_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RPM_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCyclingPedalingCadenceRecordSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 40
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Ljava/lang/Double;

    const/16 v2, 0x4b

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 53
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Double;

    const/16 v3, 0x4c

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 66
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Double;

    const/16 v3, 0x4d

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_MAX:Landroid/health/connect/datatypes/AggregationType;

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
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;Z)V"
        }
    .end annotation

    .line 93
    .local p6, "cyclingPedalingCadenceRecordSamples":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;>;"
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

    .line 101
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-nez v6, :cond_25

    .line 103
    nop

    .line 106
    invoke-interface {p6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-static {v2, v4, p1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateSampleStartAndEndTime(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V

    .line 112
    :cond_25
    iput-object p6, v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->mCyclingPedalingCadenceRecordSamples:Ljava/util/List;

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/CyclingPedalingCadenceRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 307
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    .line 308
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    .line 309
    .local v0, "other":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1d

    return v1

    .line 310
    :cond_1d
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1e
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    .line 311
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    invoke-virtual {v3}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v3

    .line 312
    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    invoke-virtual {v5}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_74

    .line 313
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    invoke-virtual {v3}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 314
    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    invoke-virtual {v5}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_71

    goto :goto_74

    .line 310
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 315
    :cond_74
    :goto_74
    return v1

    .line 318
    .end local v2    # "idx":I
    :cond_75
    const/4 v1, 0x1

    return v1

    .line 320
    .end local v0    # "other":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
    :cond_77
    return v1
.end method

.method public whitelist getSamples()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->mCyclingPedalingCadenceRecordSamples:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 326
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;
    .registers 10

    .line 332
    new-instance v0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;-><init>()V

    .line 335
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    .line 345
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;
    new-instance v1, Ljava/util/HashSet;

    .line 346
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 349
    .local v1, "samples":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;>;"
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    .line 350
    .local v3, "cyclingPedalingCadenceRecordSample":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;
    new-instance v4, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    .line 352
    invoke-virtual {v3}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v5

    .line 353
    invoke-virtual {v3}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;-><init>(DJ)V

    .line 350
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v3    # "cyclingPedalingCadenceRecordSample":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;
    goto :goto_9c

    .line 355
    :cond_bd
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    .line 356
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 357
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 358
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 359
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 361
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    move-result-object v0

    return-object v0
.end method
