.class public final Landroid/health/connect/datatypes/MindfulnessSessionRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "MindfulnessSessionRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x29
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/MindfulnessSessionRecord$MindfulnessSessionType;,
        Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist MINDFULNESS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MINDFULNESS_SESSION_TYPE_BREATHING:I = 0x3

.field public static final whitelist MINDFULNESS_SESSION_TYPE_MEDITATION:I = 0x1

.field public static final whitelist MINDFULNESS_SESSION_TYPE_MOVEMENT:I = 0x5

.field public static final whitelist MINDFULNESS_SESSION_TYPE_MUSIC:I = 0x4

.field public static final whitelist MINDFULNESS_SESSION_TYPE_OTHER:I = 0x2

.field public static final whitelist MINDFULNESS_SESSION_TYPE_UNGUIDED:I = 0x6

.field public static final whitelist MINDFULNESS_SESSION_TYPE_UNKNOWN:I

.field private static final blacklist VALID_MINDFULNESS_SESSION_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMindfulnessSessionType:I

.field private final blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 54
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x29

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0x57

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->MINDFULNESS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    .line 86
    nop

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 90
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 92
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 93
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 94
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 87
    invoke-static/range {v5 .. v11}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->VALID_MINDFULNESS_SESSION_TYPES:Ljava/util/Set;

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 18
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "mindfulnessSessionType"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "notes"    # Ljava/lang/CharSequence;
    .param p9, "skipValidation"    # Z

    .line 123
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/IntervalRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V

    .line 131
    if-nez p9, :cond_19

    .line 132
    sget-object v1, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->VALID_MINDFULNESS_SESSION_TYPES:Ljava/util/Set;

    const-class v2, Landroid/health/connect/datatypes/MindfulnessSessionRecord$MindfulnessSessionType;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {p6, v1, v2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 137
    :cond_19
    iput p6, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mMindfulnessSessionType:I

    .line 138
    iput-object p7, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mTitle:Ljava/lang/CharSequence;

    .line 139
    move-object/from16 v1, p8

    iput-object v1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mNotes:Ljava/lang/CharSequence;

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/MindfulnessSessionRecord-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 163
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 164
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 165
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    .line 166
    .local v1, "that":Landroid/health/connect/datatypes/MindfulnessSessionRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMindfulnessSessionType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMindfulnessSessionType()I

    move-result v4

    if-ne v3, v4, :cond_3b

    .line 167
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 168
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v2

    .line 166
    :goto_3c
    return v0
.end method

.method public whitelist getMindfulnessSessionType()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mMindfulnessSessionType:I

    return v0
.end method

.method public whitelist getNotes()Ljava/lang/CharSequence;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mNotes:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 173
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMindfulnessSessionType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
    .registers 4

    .line 297
    new-instance v0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;-><init>()V

    .line 300
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 310
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 311
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 312
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 313
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 314
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getMindfulnessSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setMindfulnessSessionType(I)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 315
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 316
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 318
    :cond_cb
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 319
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->getNotes()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 321
    :cond_dc
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    move-result-object v0

    return-object v0
.end method
