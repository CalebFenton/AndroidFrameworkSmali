.class public final Landroid/health/connect/datatypes/SleepSessionRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "SleepSessionRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x26
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/SleepSessionRecord$Builder;,
        Landroid/health/connect/datatypes/SleepSessionRecord$StageType;,
        Landroid/health/connect/datatypes/SleepSessionRecord$Stage;
    }
.end annotation


# static fields
.field public static final whitelist SLEEP_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mStages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 55
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x26

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0x42

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/SleepSessionRecord;->SLEEP_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 18
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p7, "notes"    # Ljava/lang/CharSequence;
    .param p8, "title"    # Ljava/lang/CharSequence;
    .param p9, "skipValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    .line 90
    .local p6, "stages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SleepSessionRecord$Stage;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 98
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    nop

    .line 102
    invoke-static {p2, p4, p6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->sortAndValidateTimeIntervalHolders(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mStages:Ljava/util/List;

    .line 103
    iput-object p7, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mNotes:Ljava/lang/CharSequence;

    .line 104
    move-object/from16 v1, p8

    iput-object v1, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mTitle:Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/SleepSessionRecord-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/health/connect/datatypes/SleepSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 129
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/SleepSessionRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 130
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 131
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/SleepSessionRecord;

    .line 132
    .local v1, "that":Landroid/health/connect/datatypes/SleepSessionRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 133
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 134
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStages()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v2

    .line 132
    :goto_40
    return v0
.end method

.method public whitelist getNotes()Ljava/lang/CharSequence;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mNotes:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getStages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mStages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 139
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStages()Ljava/util/List;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    .registers 4

    .line 423
    new-instance v0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;-><init>()V

    .line 426
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 436
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 437
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 438
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 439
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 440
    nop

    .line 441
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getStages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/SleepSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/SleepSessionRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 440
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setSleepStages(Ljava/util/List;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 443
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 444
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 447
    :cond_e3
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 448
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 450
    :cond_f4
    return-object v0
.end method
