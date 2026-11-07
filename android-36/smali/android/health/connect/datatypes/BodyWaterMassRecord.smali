.class public final Landroid/health/connect/datatypes/BodyWaterMassRecord;
.super Landroid/health/connect/datatypes/InstantRecord;
.source "BodyWaterMassRecord.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Z)V
    .registers 13
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "bodyWaterMass"    # Landroid/health/connect/datatypes/units/Mass;
    .param p5, "skipValidation"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/health/connect/datatypes/InstantRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V

    .line 50
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    if-nez p5, :cond_18

    .line 52
    invoke-virtual {p4}, Landroid/health/connect/datatypes/units/Mass;->getInGrams()D

    move-result-wide v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-string v6, "mass"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 54
    :cond_18
    iput-object p4, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/BodyWaterMassRecord-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/BodyWaterMassRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 73
    :cond_4
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/InstantRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/BodyWaterMassRecord;

    .line 75
    .local v0, "that":Landroid/health/connect/datatypes/BodyWaterMassRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getBodyWaterMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getBodyWaterMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getBodyWaterMass()Landroid/health/connect/datatypes/units/Mass;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 81
    invoke-super {p0}, Landroid/health/connect/datatypes/InstantRecord;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getBodyWaterMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;
    .registers 4

    .line 141
    new-instance v0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;

    .line 154
    .local v0, "recordInternal":Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 155
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;

    .line 156
    iget-object v1, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Mass;->getInGrams()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;->setBodyWaterMass(D)V

    .line 157
    return-object v0
.end method

.method public bridge synthetic blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/health/connect/datatypes/BodyWaterMassRecord;->toRecordInternal()Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;

    move-result-object v0

    return-object v0
.end method
