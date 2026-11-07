.class public final Landroid/health/connect/datatypes/WeightRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "WeightRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/WeightRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist WEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Mass;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Mass;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Mass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mWeight:Landroid/health/connect/datatypes/units/Mass;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 39
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Mass;

    const/16 v2, 0x3c

    const/4 v3, 0x2

    const/16 v4, 0x1a

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 50
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x0

    const-class v2, Landroid/health/connect/datatypes/units/Mass;

    const/16 v3, 0x3d

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;

    .line 61
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Landroid/health/connect/datatypes/units/Mass;

    const/16 v3, 0x3e

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Z)V
    .registers 13
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "weight"    # Landroid/health/connect/datatypes/units/Mass;
    .param p5, "skipValidation"    # Z

    .line 81
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    if-nez p5, :cond_21

    .line 87
    invoke-virtual {p4}, Landroid/health/connect/datatypes/units/Mass;->getInGrams()D

    move-result-wide v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-string v6, "weight"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 89
    :cond_21
    iput-object p4, p0, Landroid/health/connect/datatypes/WeightRecord;->mWeight:Landroid/health/connect/datatypes/units/Mass;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/WeightRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/WeightRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 109
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/WeightRecord;

    .line 111
    .local v0, "that":Landroid/health/connect/datatypes/WeightRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getWeight()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/WeightRecord;->getWeight()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getWeight()Landroid/health/connect/datatypes/units/Mass;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/health/connect/datatypes/WeightRecord;->mWeight:Landroid/health/connect/datatypes/units/Mass;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 117
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getWeight()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/WeightRecordInternal;
    .registers 4

    .line 179
    new-instance v0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;-><init>()V

    .line 182
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    .line 192
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/WeightRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 193
    invoke-virtual {p0}, Landroid/health/connect/datatypes/WeightRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 194
    iget-object v1, p0, Landroid/health/connect/datatypes/WeightRecord;->mWeight:Landroid/health/connect/datatypes/units/Mass;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Mass;->getInGrams()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/WeightRecordInternal;->setWeight(D)Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    .line 195
    return-object v0
.end method
