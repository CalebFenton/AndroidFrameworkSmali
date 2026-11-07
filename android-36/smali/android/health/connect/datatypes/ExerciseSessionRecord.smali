.class public final Landroid/health/connect/datatypes/ExerciseSessionRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "ExerciseSessionRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x25
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist EXERCISE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExerciseType:I

.field private final blacklist mHasRoute:Z

.field private final blacklist mLaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mPlannedExerciseSessionId:Ljava/lang/String;

.field private final blacklist mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

.field private final blacklist mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 53
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x25

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0x43

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->EXERCISE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/health/connect/datatypes/ExerciseRoute;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 26
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "notes"    # Ljava/lang/CharSequence;
    .param p7, "exerciseType"    # I
    .param p8, "title"    # Ljava/lang/CharSequence;
    .param p9, "route"    # Landroid/health/connect/datatypes/ExerciseRoute;
    .param p10, "hasRoute"    # Z
    .param p13, "plannedExerciseSessionId"    # Ljava/lang/String;
    .param p14, "skipValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneOffset;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "Landroid/health/connect/datatypes/ExerciseRoute;",
            "Z",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 101
    .local p11, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseSegment;>;"
    .local p12, "laps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseLap;>;"
    move/from16 v0, p7

    move-object/from16 v1, p9

    move/from16 v2, p10

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p14

    invoke-direct/range {v3 .. v10}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 109
    move-object/from16 v4, p6

    iput-object v4, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mNotes:Ljava/lang/CharSequence;

    .line 110
    iput v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mExerciseType:I

    .line 111
    move-object/from16 v6, p8

    iput-object v6, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mTitle:Ljava/lang/CharSequence;

    .line 112
    if-eqz v1, :cond_2a

    if-eqz v2, :cond_22

    goto :goto_2a

    .line 113
    :cond_22
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "HasRoute must be true if the route is not null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 115
    :cond_2a
    :goto_2a
    iput-object v1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

    .line 116
    if-nez p14, :cond_31

    .line 117
    invoke-static {p2, p4, v1}, Landroid/health/connect/datatypes/validation/ExerciseSessionTypesValidation;->validateExerciseRouteTimestamps(Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/ExerciseRoute;)V

    .line 120
    :cond_31
    iput-boolean v2, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mHasRoute:Z

    .line 121
    nop

    .line 124
    move-object/from16 v8, p11

    invoke-static {p2, p4, v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->sortAndValidateTimeIntervalHolders(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 122
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mSegments:Ljava/util/List;

    .line 125
    if-nez p14, :cond_47

    .line 126
    iget-object v9, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mSegments:Ljava/util/List;

    invoke-static {v0, v9}, Landroid/health/connect/datatypes/validation/ExerciseSessionTypesValidation;->validateSessionAndSegmentsTypes(ILjava/util/List;)V

    .line 128
    :cond_47
    nop

    .line 131
    move-object/from16 v9, p12

    invoke-static {p2, p4, v9}, Landroid/health/connect/datatypes/validation/ValidationUtils;->sortAndValidateTimeIntervalHolders(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 129
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mLaps:Ljava/util/List;

    .line 132
    move-object/from16 v10, p13

    iput-object v10, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mPlannedExerciseSessionId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/health/connect/datatypes/ExerciseRoute;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/ExerciseSessionRecord-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/health/connect/datatypes/ExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/health/connect/datatypes/ExerciseRoute;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 196
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 197
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 198
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    .line 199
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseSessionRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getExerciseType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getExerciseType()I

    move-result v4

    if-ne v3, v4, :cond_73

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 201
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 202
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 203
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 204
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getPlannedExerciseSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getPlannedExerciseSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 205
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    goto :goto_74

    :cond_73
    move v0, v2

    .line 199
    :goto_74
    return v0
.end method

.method public whitelist getExerciseType()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mExerciseType:I

    return v0
.end method

.method public whitelist getLaps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mLaps:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNotes()Ljava/lang/CharSequence;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mNotes:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPlannedExerciseSessionId()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mPlannedExerciseSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRoute()Landroid/health/connect/datatypes/ExerciseRoute;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

    return-object v0
.end method

.method public whitelist getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mSegments:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist hasRoute()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mHasRoute:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 210
    nop

    .line 211
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getExerciseType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    .line 214
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 215
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v5

    .line 216
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v6

    .line 217
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getPlannedExerciseSessionId()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 4

    .line 426
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;-><init>()V

    .line 429
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 439
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 440
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 441
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 442
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 444
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c4

    .line 445
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 448
    :cond_c4
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 449
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 452
    :cond_d5
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->hasRoute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setHasRoute(Z)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 453
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v1

    if-eqz v1, :cond_ed

    .line 454
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute;->toRouteInternal()Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setRoute(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 457
    :cond_ed
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11c

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11c

    .line 458
    nop

    .line 459
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getLaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/ExerciseSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/ExerciseSessionRecord$$ExternalSyntheticLambda0;-><init>()V

    .line 460
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 461
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 458
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setExerciseLaps(Ljava/util/List;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 464
    :cond_11c
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14b

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14b

    .line 465
    nop

    .line 466
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/ExerciseSessionRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/health/connect/datatypes/ExerciseSessionRecord$$ExternalSyntheticLambda1;-><init>()V

    .line 467
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 468
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 465
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setExerciseSegments(Ljava/util/List;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 470
    :cond_14b
    iget v1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mExerciseType:I

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setExerciseType(I)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 471
    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mPlannedExerciseSessionId:Ljava/lang/String;

    if-eqz v1, :cond_15d

    .line 472
    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord;->mPlannedExerciseSessionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->setPlannedExerciseSessionId(Ljava/util/UUID;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 474
    :cond_15d
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSessionRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    move-result-object v0

    return-object v0
.end method
