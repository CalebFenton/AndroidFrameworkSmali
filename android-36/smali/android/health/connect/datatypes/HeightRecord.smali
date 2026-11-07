.class public final Landroid/health/connect/datatypes/HeightRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "HeightRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/HeightRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist HEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Length;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Length;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/datatypes/AggregationType<",
            "Landroid/health/connect/datatypes/units/Length;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHeight:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 40
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const-class v1, Landroid/health/connect/datatypes/units/Length;

    const/16 v2, 0x36

    const/4 v3, 0x2

    const/16 v4, 0x18

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;

    .line 51
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x1

    const-class v2, Landroid/health/connect/datatypes/units/Length;

    const/16 v3, 0x38

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;

    .line 62
    new-instance v0, Landroid/health/connect/datatypes/AggregationType;

    const/4 v1, 0x0

    const-class v2, Landroid/health/connect/datatypes/units/Length;

    const/16 v3, 0x37

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/health/connect/datatypes/AggregationType;-><init>(IIILjava/lang/Class;)V

    sput-object v0, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;Z)V
    .registers 13
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "height"    # Landroid/health/connect/datatypes/units/Length;
    .param p5, "skipValidation"    # Z

    .line 82
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-nez p5, :cond_1e

    .line 88
    invoke-virtual {p4}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-string v6, "height"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 90
    :cond_1e
    iput-object p4, p0, Landroid/health/connect/datatypes/HeightRecord;->mHeight:Landroid/health/connect/datatypes/units/Length;

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/HeightRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/HeightRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 110
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/HeightRecord;

    .line 112
    .local v0, "that":Landroid/health/connect/datatypes/HeightRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getHeight()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/HeightRecord;->getHeight()Landroid/health/connect/datatypes/units/Length;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Length;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getHeight()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/health/connect/datatypes/HeightRecord;->mHeight:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 118
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getHeight()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/HeightRecordInternal;
    .registers 4

    .line 179
    new-instance v0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;-><init>()V

    .line 182
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    .line 192
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/HeightRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 193
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 194
    iget-object v1, p0, Landroid/health/connect/datatypes/HeightRecord;->mHeight:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/HeightRecordInternal;->setHeight(D)Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    .line 195
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeightRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    move-result-object v0

    return-object v0
.end method
