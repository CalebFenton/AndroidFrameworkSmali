.class public final Landroid/health/connect/datatypes/RestingHeartRateRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "RestingHeartRateRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist BPM_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist BPM_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist BPM_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBeatsPerMinute:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 44
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Ljava/lang/Long;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_MAX:Landroid/health/connect/datatypes/AggregationType;

    .line 56
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0x3a

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 68
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x2

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0x41

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_AVG:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;JZ)V
    .registers 14
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "beatsPerMinute"    # J
    .param p6, "skipValidation"    # Z

    .line 88
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-nez p6, :cond_19

    .line 93
    const-wide/16 v4, 0x12c

    const-string v6, "beatsPerMinute"

    const-wide/16 v2, 0x1

    move-wide v0, p4

    .end local p4    # "beatsPerMinute":J
    .local v0, "beatsPerMinute":J
    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(JJJLjava/lang/String;)V

    goto :goto_1a

    .line 92
    .end local v0    # "beatsPerMinute":J
    .restart local p4    # "beatsPerMinute":J
    :cond_19
    move-wide v0, p4

    .line 95
    .end local p4    # "beatsPerMinute":J
    .restart local v0    # "beatsPerMinute":J
    :goto_1a
    iput-wide v0, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->mBeatsPerMinute:J

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/RestingHeartRateRecord-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/health/connect/datatypes/RestingHeartRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;JZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 114
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 115
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/RestingHeartRateRecord;

    .line 116
    .local v1, "that":Landroid/health/connect/datatypes/RestingHeartRateRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getBeatsPerMinute()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getBeatsPerMinute()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0
.end method

.method public whitelist getBeatsPerMinute()J
    .registers 3

    .line 101
    iget-wide v0, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->mBeatsPerMinute:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 122
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getBeatsPerMinute()J

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

    .line 34
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;
    .registers 4

    .line 186
    new-instance v0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;-><init>()V

    .line 189
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    .line 199
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/RestingHeartRateRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 201
    iget-wide v1, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord;->mBeatsPerMinute:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;->setBeatsPerMinute(I)Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    .line 202
    return-object v0
.end method
