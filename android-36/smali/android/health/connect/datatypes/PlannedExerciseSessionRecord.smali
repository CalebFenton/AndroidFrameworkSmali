.class public final Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "PlannedExerciseSessionRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x28
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCompletedExerciseSessionId:Ljava/lang/String;

.field private final blacklist mExerciseType:I

.field private final blacklist mHasExplicitTime:Ljava/lang/Boolean;

.field private final blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;Ljava/lang/String;Z)V
    .registers 21
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "hasExplicitTime"    # Ljava/lang/Boolean;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "notes"    # Ljava/lang/CharSequence;
    .param p9, "exerciseType"    # I
    .param p11, "completedExerciseSessionId"    # Ljava/lang/String;
    .param p12, "skipValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 88
    .local p10, "blocks":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/PlannedExerciseBlock;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p12

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 96
    iput-object p6, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mHasExplicitTime:Ljava/lang/Boolean;

    .line 97
    iput-object p7, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mTitle:Ljava/lang/CharSequence;

    .line 98
    move-object/from16 v1, p8

    iput-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mNotes:Ljava/lang/CharSequence;

    .line 99
    move/from16 v2, p9

    iput v2, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mExerciseType:I

    .line 100
    move-object/from16 v3, p10

    iput-object v3, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mBlocks:Ljava/util/List;

    .line 101
    move-object/from16 v4, p11

    iput-object v4, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mCompletedExerciseSessionId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/PlannedExerciseSessionRecord-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$toRecordInternal$0(Landroid/health/connect/datatypes/PlannedExerciseBlock;)Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    .registers 2
    .param p0, "it"    # Landroid/health/connect/datatypes/PlannedExerciseBlock;

    .line 460
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->toInternalObject()Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 163
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 164
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 165
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 166
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    .line 167
    .local v1, "that":Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 168
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 169
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getExerciseType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getExerciseType()I

    move-result v4

    if-ne v3, v4, :cond_61

    .line 170
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->hasExplicitTime()Z

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->hasExplicitTime()Z

    move-result v4

    if-ne v3, v4, :cond_61

    .line 172
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getCompletedExerciseSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getCompletedExerciseSessionId()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 173
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getBlocks()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move v0, v2

    .line 167
    :goto_62
    return v0
.end method

.method public whitelist getBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mBlocks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCompletedExerciseSessionId()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mCompletedExerciseSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDuration()Ljava/time/Duration;
    .registers 3

    .line 131
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExerciseType()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mExerciseType:I

    return v0
.end method

.method public whitelist getNotes()Ljava/lang/CharSequence;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mNotes:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getStartDate()Ljava/time/LocalDate;
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist hasExplicitTime()Z
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->mHasExplicitTime:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 178
    nop

    .line 179
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 182
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getExerciseType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 183
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->hasExplicitTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 184
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getCompletedExerciseSessionId()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getBlocks()Ljava/util/List;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 4

    .line 427
    new-instance v0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;-><init>()V

    .line 430
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 440
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 441
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 442
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 443
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 444
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c4

    .line 445
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 447
    :cond_c4
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 448
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 450
    :cond_d5
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getExerciseType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setExerciseType(I)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 451
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->hasExplicitTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setHasExplicitTime(Z)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 455
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getCompletedExerciseSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 456
    nop

    .line 457
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getCompletedExerciseSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setCompletedExerciseSessionId(Ljava/util/UUID;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 459
    :cond_f5
    nop

    .line 460
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 459
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->setExerciseBlocks(Ljava/util/List;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 461
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    move-result-object v0

    return-object v0
.end method
