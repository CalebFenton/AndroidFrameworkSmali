.class public final Landroid/health/connect/datatypes/ActivityIntensityRecord;
.super Landroid/health/connect/datatypes/IntervalRecord;
.source "ActivityIntensityRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x2a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ActivityIntensityRecord$ActivityIntensityType;,
        Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_INTENSITY_TYPE_MODERATE:I = 0x0

.field public static final whitelist ACTIVITY_INTENSITY_TYPE_VIGOROUS:I = 0x1

.field public static final whitelist DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTENSITY_MINUTES_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MODERATE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist VALID_ACTIVITY_INTENSITY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VIGOROUS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityIntensityType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 60
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Ljava/time/Duration;

    const/16 v2, 0x58

    const/4 v3, 0x3

    const/16 v4, 0x2a

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->MODERATE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    .line 72
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x59

    const-class v2, Ljava/time/Duration;

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->VIGOROUS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    .line 86
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x5a

    const-class v2, Ljava/time/Duration;

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    .line 107
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x5b

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->INTENSITY_MINUTES_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    .line 118
    nop

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->VALID_ACTIVITY_INTENSITY_TYPES:Ljava/util/Set;

    .line 118
    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;IZ)V
    .registers 16
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "activityIntensityType"    # I
    .param p7, "skipValidation"    # Z

    .line 142
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

    .line 150
    if-nez v6, :cond_18

    .line 151
    sget-object p1, Landroid/health/connect/datatypes/ActivityIntensityRecord;->VALID_ACTIVITY_INTENSITY_TYPES:Ljava/util/Set;

    const-class p2, Landroid/health/connect/datatypes/ActivityIntensityRecord$ActivityIntensityType;

    .line 154
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {p6, p1, p2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 156
    :cond_18
    iput p6, v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->mActivityIntensityType:I

    .line 157
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/ActivityIntensityRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/health/connect/datatypes/ActivityIntensityRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;IZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 168
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ActivityIntensityRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 169
    :cond_a
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/IntervalRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 170
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ActivityIntensityRecord;

    .line 171
    .local v1, "that":Landroid/health/connect/datatypes/ActivityIntensityRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getActivityIntensityType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getActivityIntensityType()I

    move-result v4

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method public whitelist getActivityIntensityType()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord;->mActivityIntensityType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 176
    invoke-super {p0}, Landroid/health/connect/datatypes/IntervalRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getActivityIntensityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;
    .registers 4

    .line 272
    new-instance v0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;-><init>()V

    .line 275
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;

    .line 285
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 286
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 287
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 288
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;

    .line 289
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->getActivityIntensityType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;->setActivityIntensityType(I)Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;

    .line 290
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ActivityIntensityRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;

    move-result-object v0

    return-object v0
.end method
