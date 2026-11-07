.class public final Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;
.super Ljava/lang/Object;
.source "RespiratoryRateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/RespiratoryRateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mRate:D

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;D)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "rate"    # D

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 105
    iput-object p2, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mTime:Ljava/time/Instant;

    .line 106
    iput-wide p3, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mRate:D

    .line 107
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/RespiratoryRateRecord;
    .registers 9

    .line 139
    new-instance v0, Landroid/health/connect/datatypes/RespiratoryRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mRate:D

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/RespiratoryRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;DZLandroid/health/connect/datatypes/RespiratoryRateRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/RespiratoryRateRecord;
    .registers 9

    .line 131
    new-instance v0, Landroid/health/connect/datatypes/RespiratoryRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mRate:D

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/RespiratoryRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;DZLandroid/health/connect/datatypes/RespiratoryRateRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;
    .registers 2

    .line 121
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 122
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Landroid/health/connect/datatypes/RespiratoryRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 115
    return-object p0
.end method
