.class public final Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;
.super Ljava/lang/Object;
.source "ElevationGainedRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ElevationGainedRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mElevation:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Length;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "elevation"    # Landroid/health/connect/datatypes/units/Length;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 59
    iput-object p2, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 60
    iput-object p3, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 61
    iput-object p4, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mElevation:Landroid/health/connect/datatypes/units/Length;

    .line 62
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 63
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ElevationGainedRecord;
    .registers 10

    .line 119
    new-instance v0, Landroid/health/connect/datatypes/ElevationGainedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mElevation:Landroid/health/connect/datatypes/units/Length;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ElevationGainedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ElevationGainedRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ElevationGainedRecord;
    .registers 10

    .line 104
    new-instance v0, Landroid/health/connect/datatypes/ElevationGainedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mElevation:Landroid/health/connect/datatypes/units/Length;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ElevationGainedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ElevationGainedRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;
    .registers 2

    .line 94
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 95
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;
    .registers 2

    .line 87
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 88
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 81
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/health/connect/datatypes/ElevationGainedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 72
    return-object p0
.end method
