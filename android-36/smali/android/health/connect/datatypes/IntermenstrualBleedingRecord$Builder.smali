.class public final Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;
.super Ljava/lang/Object;
.source "IntermenstrualBleedingRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;)V
    .registers 4
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 75
    iput-object p2, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mTime:Ljava/time/Instant;

    .line 76
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;
    .registers 7

    .line 106
    new-instance v0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ZLandroid/health/connect/datatypes/IntermenstrualBleedingRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;
    .registers 7

    .line 100
    new-instance v0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ZLandroid/health/connect/datatypes/IntermenstrualBleedingRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;
    .registers 2

    .line 90
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 91
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 84
    return-object p0
.end method
