.class public final Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;
.super Ljava/lang/Object;
.source "OxygenSaturationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/OxygenSaturationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mPercentage:Landroid/health/connect/datatypes/units/Percentage;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Percentage;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "percentage"    # Landroid/health/connect/datatypes/units/Percentage;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 108
    iput-object p2, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mTime:Ljava/time/Instant;

    .line 109
    iput-object p3, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    .line 110
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/OxygenSaturationRecord;
    .registers 8

    .line 142
    new-instance v0, Landroid/health/connect/datatypes/OxygenSaturationRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/OxygenSaturationRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Percentage;ZLandroid/health/connect/datatypes/OxygenSaturationRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/OxygenSaturationRecord;
    .registers 8

    .line 134
    new-instance v0, Landroid/health/connect/datatypes/OxygenSaturationRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mPercentage:Landroid/health/connect/datatypes/units/Percentage;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/OxygenSaturationRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Percentage;ZLandroid/health/connect/datatypes/OxygenSaturationRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;
    .registers 2

    .line 124
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 125
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Landroid/health/connect/datatypes/OxygenSaturationRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 118
    return-object p0
.end method
