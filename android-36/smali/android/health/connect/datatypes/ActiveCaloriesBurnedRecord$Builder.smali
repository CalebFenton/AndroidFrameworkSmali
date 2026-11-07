.class public final Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;
.super Ljava/lang/Object;
.source "ActiveCaloriesBurnedRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mEnergy:Landroid/health/connect/datatypes/units/Energy;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Energy;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "energy"    # Landroid/health/connect/datatypes/units/Energy;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 61
    iput-object p2, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 62
    iput-object p3, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 63
    iput-object p4, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    .line 64
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 65
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;
    .registers 10

    .line 121
    new-instance v0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Energy;ZLandroid/health/connect/datatypes/ActiveCaloriesBurnedRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;
    .registers 10

    .line 106
    new-instance v0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Energy;ZLandroid/health/connect/datatypes/ActiveCaloriesBurnedRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;
    .registers 2

    .line 96
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 97
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;
    .registers 2

    .line 89
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 90
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 83
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 74
    return-object p0
.end method
