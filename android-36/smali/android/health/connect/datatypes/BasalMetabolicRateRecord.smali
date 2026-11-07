.class public final Landroid/health/connect/datatypes/BasalMetabolicRateRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BasalMetabolicRateRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BasalMetabolicRateRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist BASAL_CALORIES_TOTAL:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Energy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBasalMetabolicRate:Landroid/health/connect/datatypes/units/Power;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 159
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/16 v1, 0x10

    const-class v2, Landroid/health/connect/datatypes/units/Energy;

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->BASAL_CALORIES_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Power;Z)V
    .registers 13
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "basalMetabolicRate"    # Landroid/health/connect/datatypes/units/Power;
    .param p5, "skipValidation"    # Z

    .line 52
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    if-nez p5, :cond_22

    .line 58
    nop

    .line 59
    invoke-virtual {p4}, Landroid/health/connect/datatypes/units/Power;->getInWatts()D

    move-result-wide v0

    .line 58
    const-wide/16 v2, 0x0

    const-wide v4, 0x407e4424dd2f1aa0L    # 484.259

    const-string v6, "basalMetabolicRate"

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 61
    :cond_22
    iput-object p4, p0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->mBasalMetabolicRate:Landroid/health/connect/datatypes/units/Power;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Power;ZLandroid/health/connect/datatypes/BasalMetabolicRateRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Power;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 82
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;

    .line 84
    .local v0, "that":Landroid/health/connect/datatypes/BasalMetabolicRateRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getBasalMetabolicRate()Landroid/health/connect/datatypes/units/Power;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getBasalMetabolicRate()Landroid/health/connect/datatypes/units/Power;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Power;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getBasalMetabolicRate()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->mBasalMetabolicRate:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 90
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getBasalMetabolicRate()Landroid/health/connect/datatypes/units/Power;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;
    .registers 4

    .line 169
    new-instance v0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;-><init>()V

    .line 172
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    .line 182
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 183
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 184
    iget-object v1, p0, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->mBasalMetabolicRate:Landroid/health/connect/datatypes/units/Power;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Power;->getInWatts()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;->setBasalMetabolicRate(D)Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    .line 185
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    move-result-object v0

    return-object v0
.end method
