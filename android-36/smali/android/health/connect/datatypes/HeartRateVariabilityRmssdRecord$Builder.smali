.class public final Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;
.super Ljava/lang/Object;
.source "HeartRateVariabilityRmssdRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mHeartRateVariabilityMillis:D

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;D)V
    .registers 7
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "heartRateVariabilityMillis"    # D

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 101
    iput-object p2, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mTime:Ljava/time/Instant;

    .line 102
    iput-wide p3, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mHeartRateVariabilityMillis:D

    .line 103
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;
    .registers 9

    .line 135
    new-instance v0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mHeartRateVariabilityMillis:D

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;DZLandroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;
    .registers 9

    .line 128
    new-instance v0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mHeartRateVariabilityMillis:D

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;DZLandroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;
    .registers 2

    .line 118
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 119
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 112
    return-object p0
.end method
